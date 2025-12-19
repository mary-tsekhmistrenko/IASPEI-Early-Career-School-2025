from pathlib import Path
from obspy import UTCDateTime, read_inventory, read
from obspy.clients.fdsn import Client


DATA_PATH = Path('DATA')

if not DATA_PATH.is_dir():
    if DATA_PATH.exists():
        raise NotADirectoryError(f'{DATA_PATH} exists but is not a directory')
    raise FileExistsError(f'{DATA_PATH} does not exist')
    


def read_data(server, nslc, st, et, data_path=DATA_PATH):
    """
    Read miniSEED data from a file or online.  If file doesn't exist, creates it from online data

    Args:
        server (str): name of fdsn waveform server
        nslc (str): network.station.location.channel codes
        st (str or :class:`obspy.UTCDateTime`): starting time
        et (str or :class:`obspy.UTCDateTime`): ending time

    Returns:
        :class:`obspy.Stream`: data
    """
    st, et, net, sta, loc, cha = _expand_parameters(st, et, nslc)
    fpath = data_path / (net + "." + sta.replace("*","x") + ".mseed")
    # print(f'read_data {st=}, {et=}, {net=}, {loc=}, {cha=}, {fpath=}')
    if not fpath.exists():
        print(f'File {fpath} not found, reading {nslc} data from FDSN client')
        client = Client(server)
        stream = client.get_waveforms(net, sta, loc, cha, st, et)
        stream.merge(fill_value="interpolate")
        data_path.mkdir(exist_ok=True)
        stream.write(fpath, 'MSEED')
    else:
        stream = read(fpath, 'MSEED')
    return stream


def read_metadata(server, nslc, st, et, level="response", data_path=DATA_PATH):
    """
    Read StationXML metadata from a file or online  If file doesn't exist, creates it from online inventory

    Args:
        server (str): name of fdsn metadata server
        nslc (str): network.station.location.channel codes
        st (str or :class:`obspy.UTCDateTime`): starting time
        et (str or :class:`obspy.UTCDateTime`): ending time
        level (str): lowest level to include (from low to high: 'response', 'channel', 'station)

    Returns:
        :class:`obspy.Inventory`: metadata
    """
    st, et, net, sta, loc, cha = _expand_parameters(st, et, nslc)
    fpath = data_path / (net + "." + sta.replace("*","x") + ".xml")
    # print(f'read_metadata {st=}, {et=}, {net=}, {loc=}, {cha=}, {fpath=}')
    if not fpath.exists():
        print(f'File {fpath} not found, reading {nslc} data from FDSN client')
        client = Client(server)
        inv = client.get_stations(network=net, station=sta, channel=cha, location=loc, starttime=st, endtime=et, level=level)
        data_path.mkdir(exist_ok=True)
        inv.write(fpath,'STATIONXML')
    else:
        inv = read_inventory(fpath,'STATIONXML')
    return inv


def _expand_parameters(st, et, nslc):
    st, et = UTCDateTime(st), UTCDateTime(et)
    net, sta, loc, cha = nslc.split(".")
    return st, et, net, sta, loc, cha