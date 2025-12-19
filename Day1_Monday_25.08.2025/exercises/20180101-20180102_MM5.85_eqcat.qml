<?xml version='1.0' encoding='utf-8'?>
<q:quakeml xmlns="http://quakeml.org/xmlns/bed/1.2" xmlns:anss="http://anss.org/xmlns/event/0.1" xmlns:catalog="http://anss.org/xmlns/catalog/0.1" xmlns:q="http://quakeml.org/xmlns/quakeml/1.2">
  <eventParameters publicID="quakeml:earthquake.usgs.gov/fdsnws/event/1/query?starttime=2017-12-27T06%3A36%3A00.000000&amp;endtime=2018-01-02T23%3A59%3A59.999999&amp;minmagnitude=5.85&amp;orderby=time-asc">
    <creationInfo>
      <creationTime>2025-08-26T15:59:34.000000Z</creationTime>
    </creationInfo>
    <event publicID="quakeml:earthquake.usgs.gov/fdsnws/event/1/query?eventid=us1000bz0y&amp;format=quakeml" catalog:datasource="us" catalog:eventsource="us" catalog:eventid="1000bz0y">
      <preferredOriginID>quakeml:earthquake.usgs.gov/product/origin/us1000bz0y/us/1521847008040/product.xml</preferredOriginID>
      <preferredMagnitudeID>quakeml:earthquake.usgs.gov/product/origin/us1000bz0y/us/1521847008040/product.xml#magnitude</preferredMagnitudeID>
      <type>earthquake</type>
      <description>
        <text>south of the Fiji Islands</text>
        <type>earthquake name</type>
      </description>
      <creationInfo>
        <agencyID>us</agencyID>
        <creationTime>2022-05-03T18:47:08.601000Z</creationTime>
      </creationInfo>
      <origin publicID="quakeml:earthquake.usgs.gov/product/origin/us1000bz0y/us/1521847008040/product.xml" catalog:datasource="us" catalog:dataid="us1000bz0y" catalog:eventsource="us" catalog:eventid="1000bz0y">
        <time>
          <value>2018-01-02T14:57:19.070000Z</value>
        </time>
        <latitude>
          <value>-24.8235</value>
        </latitude>
        <longitude>
          <value>178.45</value>
        </longitude>
        <depth>
          <value>579490.0</value>
          <uncertainty>3300.0</uncertainty>
        </depth>
        <quality>
          <usedPhaseCount>108</usedPhaseCount>
          <standardError>0.95</standardError>
          <azimuthalGap>38.0</azimuthalGap>
          <minimumDistance>5.46</minimumDistance>
        </quality>
        <evaluationMode>manual</evaluationMode>
        <creationInfo>
          <agencyID>us</agencyID>
          <creationTime>2018-03-23T23:16:48.040000Z</creationTime>
        </creationInfo>
        <originUncertainty>
          <preferredDescription>horizontal uncertainty</preferredDescription>
          <horizontalUncertainty>9700.0</horizontalUncertainty>
        </originUncertainty>
      </origin>
      <magnitude publicID="quakeml:earthquake.usgs.gov/product/origin/us1000bz0y/us/1521847008040/product.xml#magnitude" catalog:datasource="us" catalog:dataid="us1000bz0y" catalog:eventsource="us" catalog:eventid="1000bz0y">
        <mag>
          <value>5.9</value>
          <uncertainty>0.05</uncertainty>
        </mag>
        <type>mww</type>
        <originID>quakeml:earthquake.usgs.gov/product/origin/us1000bz0y/us/1521847008040/product.xml</originID>
        <stationCount>38</stationCount>
        <evaluationMode>manual</evaluationMode>
        <creationInfo>
          <agencyID>us</agencyID>
          <creationTime>2018-03-23T23:16:48.040000Z</creationTime>
        </creationInfo>
      </magnitude>
    </event>
  </eventParameters>
</q:quakeml>
