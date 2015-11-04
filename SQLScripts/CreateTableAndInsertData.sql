/* © 2015 Microsoft. All rights reserved. */

CREATE TABLE StarterKit.dbo.InputSensorData
(
DeviceId varchar(25),
TranDate varchar(25),
sensor1  varchar(25),
sensor2  varchar(25),
sensor3  varchar(25),
sensor4  varchar(25),
sensor5  varchar(25),
sensor6  varchar(25),
sensor7  varchar(25),
sensor8  varchar(25),
sensor9  varchar(25),
sensor10  varchar(25),
sensor11  varchar(25),
sensor12  varchar(25),
sensor13  varchar(25),
sensor14 varchar(25),
sensor15 varchar(25),
sensor16 varchar(25)
)
GO

CREATE TABLE StarterKit.dbo.ScoringResults
(
DeviceId varchar(25),
TranDate varchar(25),
ScoredLabels  varchar(25),
ScoredProbabilities varchar(25),
)
GO

BULK INSERT StarterKit.dbo.inputSensorData
FROM '~\SampleData\InputSample\starterkit_inputdata.csv' 
WITH
(
FIRSTROW = 2,
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
)
GO