drop table if exists mega;

CREATE TABLE mega(
		_STATE 	DECIMAL(5,1),
		_GEOSTR DECIMAL(5,1), 		-- Geographic Stratum Code
		_DENSTR2 DECIMAL(5,1),		-- Household Density Stratum Code
		PRECALL DECIMAL(5,1),		-- Pre-Call Status Code
		REPNUM 	DECIMAL(9,1),		-- Replicate Number
		REPDEPTH DECIMAL(5,1),		-- Replicate Depth
		FMONTH 	DECIMAL(3,1),		-- File Month
		DISPCODE DECIMAL(5,1),		-- Final Disposition
		SEQNO 	DECIMAL(12,1),		-- Annual Sequence Number
		_PSU 	DECIMAL(12,1),
		NATTMPTS DECIMAL(5,1),
		NRECSEL DECIMAL(12,1),
		NRECSTR DECIMAL(12,1),
		CTELENUM DECIMAL(2,1),
		CELLFON DECIMAL(2,1),
		PVTRESID DECIMAL(2,1),
		NUMADULT	DECIMAL(5,1),
		NUMMEN	DECIMAL(5,1),
		NUMWOMEN DECIMAL(5,1),
		GENHLTH DECIMAL(5,1),
		PHYSHLTH DECIMAL(5,1),
		MENTHLTH DECIMAL(5,1),
		POORHLTH DECIMAL(5,1),
		HLTHPLN1 DECIMAL(5,1),
		PERSDOC2 DECIMAL(5,1),
		MEDCOST DECIMAL(5,1),
		CHECKUP1 DECIMAL(5,1),
		BPHIGH4 DECIMAL(5,1),
		BPMEDS DECIMAL(5,1),
		BLOODCHO DECIMAL(5,1),
		CHOLCHK DECIMAL(5,1),
		TOLDHI2 DECIMAL(5,1),
		CVDINFR4 DECIMAL(5,1),
		CVDCRHD4 DECIMAL(5,1),
		CVDSTRK3 DECIMAL(5,1),
		ASTHMA3 DECIMAL(5,1),
		ASTHNOW DECIMAL(10,2) DEFAULT NULL,
		CHCSCNCR DECIMAL(5,1),
		CHCOCNCR DECIMAL(5,1),
		CHCCOPD DECIMAL(5,1),
		HAVARTH3 DECIMAL(5,1),
		ADDEPEV2 DECIMAL(5,1),
		CHCKIDNY DECIMAL(5,1),
		CHCVISON DECIMAL(5,1),
		DIABETE3 DECIMAL(5,1),
		SMOKE100 DECIMAL(5,1),
		SMOKDAY2 DECIMAL(5,1),
		STOPSMK2 DECIMAL(5,1),
		LASTSMK2 DECIMAL(5,1),
		USENOW3 DECIMAL(5,1),
		AGE DECIMAL(5,1),
		HISPANC2 DECIMAL(5,1),
		ORACE2 DECIMAL(5,1),
		VETERAN3 DECIMAL(5,1),
		MARITAL DECIMAL(5,1),
		CHILDREN DECIMAL(5,1),
		EDUCA DECIMAL(5,1),
		EMPLOY DECIMAL(5,1),
		INCOME2 DECIMAL(10,1),
		WEIGHT2 DECIMAL(12,2),
		HEIGHT3 DECIMAL(12,2),
		CTYCODE1 DECIMAL(5,1),
		NUMHHOL2 DECIMAL(5,1),
		NUMPHON2 DECIMAL(5,1),
		CPDEMO1 DECIMAL(5,1),
		CPDEMO2 DECIMAL(5,1),
		CPDEMO3 DECIMAL(5,1),
		CPDEMO4 DECIMAL(10,1),
		RENTHOM1 DECIMAL(5,1),
		SEX DECIMAL(5,1),
		PREGNANT DECIMAL(5,1),
		FRUITJU1 DECIMAL(5,1),
		FRUIT1 DECIMAL(5,1),
		FVBEANS DECIMAL(5,1),
		FVGREEN DECIMAL(5,1),
		FVORANG DECIMAL(5,1),
		VEGETAB1 DECIMAL(5,1),
		EXERANY2 DECIMAL(5,1),
		EXRACT01 DECIMAL(5,1),
		EXEROFT1 DECIMAL(5,1),
		EXERHMM1 DECIMAL(5,1),
		EXRACT02 DECIMAL(5,1),
		EXEROFT2 DECIMAL(5,1),
		EXERHMM2 DECIMAL(5,1),
		STRENGTH DECIMAL(5,1),
		QLACTLM2 DECIMAL(5,1),
		USEEQUIP DECIMAL(5,1),
		LMTJOIN3 DECIMAL(5,1),
		ARTHDIS2 DECIMAL(5,1),
		ARTHSOCL DECIMAL(5,1),
		JOINPAIN DECIMAL(5,1),
		SEATBELT DECIMAL(5,1),
		FLUSHOT5 DECIMAL(5,1),
		FLSHTMY2 DECIMAL(10,2),
		IMFVPLAC DECIMAL(5,1),
		PNEUVAC3 DECIMAL(5,1),
		ALCDAY5 DECIMAL(5,1),
		AVEDRNK2 DECIMAL(5,1),
		DRNK3GE5 DECIMAL(5,1),
		MAXDRNKS DECIMAL(5,1),
		HIVTST6 DECIMAL(5,1),
		HIVTSTD3 DECIMAL(5,1),
		HIVRISK3 DECIMAL(5,1),
		PDIABTST DECIMAL(5,1),
		PREDIAB1 DECIMAL(5,1),
		DIABAGE2 DECIMAL(5,1),
		INSULIN DECIMAL(5,1),
		BLDSUGAR DECIMAL(5,1),
		FEETCHK2 DECIMAL(5,1),
		DOCTDIAB DECIMAL(5,1),
		CHKHEMO3 DECIMAL(5,1),
		FEETCHK DECIMAL(5,1),
		EYEEXAM DECIMAL(5,1),
		DIABEYE DECIMAL(5,1),
		DIABEDU DECIMAL(5,1),
		PAINACT2 DECIMAL(5,1),
		QLMENTL2 DECIMAL(5,1),
		QLSTRES2 DECIMAL(5,1),
		QLHLTH2 DECIMAL(5,1),
		SSBSUGAR DECIMAL(5,1),
		SSBFRUIT DECIMAL(5,1),
		SSBCALRI DECIMAL(5,1),
		PFPPREPR DECIMAL(5,1),
		PFPPRGNT DECIMAL(5,1),
		PFPPRVNT DECIMAL(5,1),
		TYPCNTR6 DECIMAL(5,1),
		NOBCUSE4 DECIMAL(12,1),
		FPCHLDF2 DECIMAL(12,1),
		PFPVITMN DECIMAL(12,1),
		VIDFCLT3 DECIMAL(12,1),
		VIREDIF3 DECIMAL(12,1),
		VIPRFVS3 DECIMAL(12,1),
		VINOCRE3 DECIMAL(12,1),
		VIEYEXM3 DECIMAL(12,1),
		VIINSUR3 DECIMAL(12,1),
		VICTRCT3 DECIMAL(12,1),
		VIGLUMA3 DECIMAL(12,1),
		VIMACDG3 DECIMAL(12,1),
		QLREST2 DECIMAL(12,1),
		SLEPTIME DECIMAL(12,1),
		SLEPSNOR DECIMAL(12,1),
		SLEPDAY DECIMAL(12,1),
		SLEPDRIV DECIMAL(12,1),
		WRKHCF1 DECIMAL(12,1),
		DIRCONT1 DECIMAL(12,1),
		DRHPAD1 DECIMAL(12,1),
		HAREHAB1 DECIMAL(12,1),
		STREHAB1 DECIMAL(12,1),
		CVDASPRN DECIMAL(12,1),
		ASPUNSAF DECIMAL(12,1),
		BPEATHBT DECIMAL(12,1),
		BPSALT DECIMAL(12,1),
		BPALCHOL DECIMAL(12,1),
		BPEXER DECIMAL(12,1),
		BPEATADV DECIMAL(12,1),
		BPSLTADV DECIMAL(12,1),
		BPALCADV DECIMAL(12,1),
		BPEXRADV DECIMAL(12,1),
		BPMEDADV DECIMAL(12,1),
		BPHI2MR DECIMAL(12,1),
		HASYMP1 DECIMAL(12,1),
		HASYMP2 DECIMAL(12,1),
		HASYMP3 DECIMAL(12,1),
		HASYMP4 DECIMAL(12,1),
		HASYMP5 DECIMAL(12,1),
		HASYMP6 DECIMAL(12,1),
		STRSYMP1 DECIMAL(12,1),
		STRSYMP2 DECIMAL(12,1),
		STRSYMP3 DECIMAL(12,1),
		STRSYMP4 DECIMAL(12,1),
		STRSYMP5 DECIMAL(12,1),
		STRSYMP6 DECIMAL(12,1),
		FIRSTAID DECIMAL(12,1),
		HADMAM DECIMAL(12,1),
		HOWLONG DECIMAL(12,1),
		PROFEXAM DECIMAL(12,1),
		LENGEXAM DECIMAL(12,1),
		HADPAP2 DECIMAL(12,1),
		LASTPAP2 DECIMAL(12,1),
		HADHYST2 DECIMAL(12,1),
		PCPSAREC DECIMAL(12,1),
		PSATEST1 DECIMAL(12,1),
		PSATIME DECIMAL(12,1),
		PCPSARSN DECIMAL(12,1),
		PCPSAADV DECIMAL(12,1),
		PCPSADIS DECIMAL(12,1),
		PCPSADEC DECIMAL(12,1),
		PROSTATE DECIMAL(12,1),
		BLDSTOOL DECIMAL(12,1),
		LSTBLDS3 DECIMAL(12,1),
		HADSIGM3 DECIMAL(12,1),
		HADSGCO1 DECIMAL(12,1),
		LASTSIG3 DECIMAL(12,1),
		SMCQUITL DECIMAL(12,1),
		SMCTRYQT DECIMAL(12,1),
		SMCCALQT DECIMAL(12,1),
		SMCPROGQ DECIMAL(12,1),
		SMCCNSLQ DECIMAL(12,1),
		SMCMEDQT DECIMAL(12,1),
		SMCTIMEQ DECIMAL(12,1),
		SMCPLANQ DECIMAL(12,1),
		SHSNWRK1 DECIMAL(12,1),
		SHSNHOM1 DECIMAL(12,1),
		SHSRIDEV DECIMAL(12,1),
		SHSINPUB DECIMAL(12,1),
		SHSHOMES DECIMAL(12,1),
		SHSVHICL DECIMAL(12,1),
		SHSALOW1 DECIMAL(12,1),
		ASTHMAGE DECIMAL(12,1),
		ASATTACK DECIMAL(12,1),
		ASERVIST DECIMAL(12,1),
		ASDRVIST DECIMAL(12,1),
		ASRCHKUP DECIMAL(12,1),
		ASACTLIM DECIMAL(12,1),
		ASYMPTOM DECIMAL(12,1),
		ASNOSLEP DECIMAL(12,1),
		ASTHMED3 DECIMAL(12,1),
		ASINHALR DECIMAL(12,1),
		ARTTODAY DECIMAL(12,1),
		ARTHWGT DECIMAL(12,1),
		ARTHEXER DECIMAL(12,1),
		ARTHEDU DECIMAL(12,1),
		TNSARCV DECIMAL(12,1),
		TNSARCNT DECIMAL(12,1),
		TNSASHT1 DECIMAL(12,1),
		HPVADVC2 DECIMAL(12,1),
		HPVADSHT DECIMAL(12,1),
		SHINGLE1 DECIMAL(12,1),
		COPDTEST DECIMAL(12,1),
		COPDQOL DECIMAL(12,1),
		COPDDOC DECIMAL(12,1),
		COPDHOSP DECIMAL(12,1),
		COPDMEDS DECIMAL(12,1),
		GPWELPR3 DECIMAL(12,1),
		GP3DYWTR DECIMAL(12,1),
		GP3DYFD1 DECIMAL(12,1),
		GP3DYPRS DECIMAL(12,1),
		GPBATRAD DECIMAL(12,1),
		GPFLSLIT DECIMAL(12,1),
		GPEMRCM1 DECIMAL(12,1),
		GPEMRIN1 DECIMAL(12,1),
		GPVACPL1 DECIMAL(12,1),
		GPMNDEVC DECIMAL(12,1),
		GPNOTEV1 DECIMAL(12,1),
		VHCOMBAT DECIMAL(12,1),
		VHDRPTSD DECIMAL(12,1),
		VHDRTBI DECIMAL(12,1),
		VHCOUNSL DECIMAL(12,1),
		VHTAKLIF DECIMAL(12,1),
		VHSUICID DECIMAL(12,1),
		RRCLASS2 DECIMAL(12,1),
		RRCOGNT2 DECIMAL(12,1),
		RRATWRK2 DECIMAL(12,1),
		RRHCARE3 DECIMAL(12,1),
		RRPHYSM2 DECIMAL(12,1),
		RREMTSM2 DECIMAL(12,1),
		ADPLEASR DECIMAL(12,1),
		ADDOWN DECIMAL(12,1),
		ADSLEEP DECIMAL(12,1),
		ADENERGY DECIMAL(12,1),
		ADEAT1 DECIMAL(12,1),
		ADFAIL DECIMAL(12,1),
		ADTHINK DECIMAL(12,1),
		ADMOVE DECIMAL(12,1),
		MISTMNT DECIMAL(12,1),
		ADANXEV DECIMAL(12,1),
		CIMEMLOS DECIMAL(12,1),
		CINOADLT DECIMAL(12,1),
		CIRBIAGE DECIMAL(12,1),
		CIHOWOFT DECIMAL(12,1),
		CIASSIST DECIMAL(12,1),
		CIINTFER DECIMAL(12,1),
		CIFAMCAR DECIMAL(12,1),
		CIHCPROF DECIMAL(12,1),
		CIMEDS DECIMAL(12,1),
		CIDIAGAZ DECIMAL(12,1),
		SCNTMONY DECIMAL(12,1),
		SCNTMEAL DECIMAL(12,1),
		SCNTPAID DECIMAL(12,1),
		SCNTWRK1 DECIMAL(12,1),
		SCNTLPAD DECIMAL(12,1),
		SCNTLWK1 DECIMAL(12,1),
		WHRTST9 DECIMAL(12,1),
		HIVRDTS2 DECIMAL(12,1),
		EMTSUPRT DECIMAL(12,1),
		LSATISFY DECIMAL(12,1),
		ACEDEPRS DECIMAL(12,1),
		ACEDRINK DECIMAL(12,1),
		ACEDRUGS DECIMAL(12,1),
		ACEPRISN DECIMAL(12,1),
		ACEDIVRC DECIMAL(12,1),
		ACEPUNCH DECIMAL(12,1),
		ACEHURT DECIMAL(12,1),
		ACESWEAR DECIMAL(12,1),
		ACETOUCH DECIMAL(12,1),
		ACETTHEM DECIMAL(12,1),
		ACEHVSEX DECIMAL(12,1),
		RCSGENDR DECIMAL(12,1),
		RCHISLAT DECIMAL(12,1),
		RCSBRACE DECIMAL(12,1),
		RCSRLTN2 DECIMAL(12,1),
		CASTHDX2 DECIMAL(12,1),
		CASTHNO2 DECIMAL(12,1),
		FLUSHCH2 DECIMAL(12,1),
		CHIMRCVE DECIMAL(12,1),
		CALLBACK DECIMAL(12,1),
		ADLTCHLD DECIMAL(12,1),
		CTELNUM1 DECIMAL(12,1),
		CELLFON2 DECIMAL(12,1),
		CADULT DECIMAL(12,1),
		PVTRESD2 DECIMAL(12,1),
		CSTATE DECIMAL(12,1),
		RSPSTATE DECIMAL(12,1),
		LANDLINE DECIMAL(12,1),
		PCTCELL DECIMAL(12,1),
		QSTVER DECIMAL(12,1),
		QSTLANG DECIMAL(12,1),
		MSCODE DECIMAL(12,1),
		_STSTR DECIMAL(12,1),
		_STRWT DECIMAL(12,1),
		_RAW DECIMAL(12,1),
		_WT2 DECIMAL(12,1),
		_RAWRAKE DECIMAL(12,1),
		_WT2RAKE DECIMAL(12,1),
		_REGION DECIMAL(12,1),
		_IMPAGE DECIMAL(12,1),
		_IMPRACE DECIMAL(12,1),
		_IMPNPH DECIMAL(12,1),
		O_STATE DECIMAL(12,1),
		CRACEASC DECIMAL(12,1),
		_CRACE DECIMAL(12,1),
		_RAWCH DECIMAL(12,1),
		_WT2CH DECIMAL(12,1),
		CHILDAGE DECIMAL(12,1),
		_CLCPM01 DECIMAL(12,1),
		_CLCPM02 DECIMAL(12,1),
		_CLCPM03 DECIMAL(12,1),
		_CLCPM04 DECIMAL(12,1),
		_CLCPM05 DECIMAL(12,1),
		_CLLCPWT DECIMAL(12,1),
		_LLCPM01 DECIMAL(12,1),
		_LLCPM02 DECIMAL(12,1),
		_LLCPM03 DECIMAL(12,1),
		_LLCPM04 DECIMAL(12,1),
		_LLCPM05 DECIMAL(12,1),
		_LLCPM06 DECIMAL(12,1),
		_LLCPM07 DECIMAL(12,1),
		_LLCPM08 DECIMAL(12,1),
		_LLCPM09 DECIMAL(12,1),
		_LLCPM10 DECIMAL(12,1),
		_LLCPM11 DECIMAL(12,1),
		_LLCPM12 DECIMAL(12,1),
		_LLCPWT DECIMAL(12,1),
		_RFHLTH DECIMAL(12,1),
		_HCVU651 DECIMAL(12,1),
		_RFHYPE5 DECIMAL(12,1),
		_CHOLCHK DECIMAL(12,1),
		_RFCHOL DECIMAL(12,1),
		_LTASTH1 DECIMAL(12,1),
		_CASTHM1 DECIMAL(12,1),
		_ASTHMS1 DECIMAL(12,1),
		_DRDXAR1 DECIMAL(12,1),
		_SMOKER3 DECIMAL(12,1),
		_RFSMOK3 DECIMAL(12,1),
		MRACEASC DECIMAL(12,1),
		_PRACE DECIMAL(12,1),
		_MRACE DECIMAL(12,1),
		RACE2 DECIMAL(12,1),
		_RACEG2 DECIMAL(12,1),
		_RACEGR2 DECIMAL(12,1),
		_RACE_G DECIMAL(12,1),
		_CNRACE DECIMAL(12,1),
		_CNRACEC DECIMAL(12,1),
		_AGEG5YR DECIMAL(12,1),
		_AGE65YR DECIMAL(12,1),
		_AGE_G DECIMAL(12,1),
		HTIN4 DECIMAL(12,1),
		HTM4 DECIMAL(12,1),
		WTKG3 DECIMAL(12,1),
		_BMI5 DECIMAL(12,1),
		_BMI5CAT DECIMAL(12,1),
		_RFBMI5 DECIMAL(12,1),
		_CHLDCNT DECIMAL(12,1),
		_EDUCAG DECIMAL(12,1),
		_INCOMG DECIMAL(12,1),
		FTJUDA1_ DECIMAL(12,1),
		FRUTDA1_ DECIMAL(12,1),
		BEANDAY_ DECIMAL(12,1),
		GRENDAY_ DECIMAL(12,1),
		ORNGDAY_ DECIMAL(12,1),
		VEGEDA1_ DECIMAL(12,1),
		_MISFRTN DECIMAL(12,1),
		_MISVEGN DECIMAL(12,1),
		_FRTRESP DECIMAL(12,1),
		_VEGRESP DECIMAL(12,1),
		_FRUTSUM DECIMAL(12,1),
		_VEGESUM DECIMAL(12,1),
		_FRT16 DECIMAL(12,1),
		_VEG23 DECIMAL(12,1),
		_FRUITEX DECIMAL(12,1),
		_VEGETEX DECIMAL(12,1),
		_TOTINDA DECIMAL(12,1),
		METVAL1_ DECIMAL(12,1),
		METVAL2_ DECIMAL(12,1),
		MAXVO2_ DECIMAL(12,1),
		FC60_ DECIMAL(12,1),
		ACTINT1_ DECIMAL(12,1),
		ACTINT2_ DECIMAL(12,1),
		PADUR1_ DECIMAL(12,1),
		PADUR2_ DECIMAL(12,1),
		PAFREQ1_ DECIMAL(12,1),
		PAFREQ2_ DECIMAL(12,1),
		_MINACT1 DECIMAL(12,1),
		_MINACT2 DECIMAL(12,1),
		STRFREQ_ DECIMAL(12,1),
		PAMISS_ DECIMAL(12,1),
		PAMIN1_ DECIMAL(12,1),
		PAMIN2_ DECIMAL(12,1),
		PAMIN_ DECIMAL(12,1),
		PAVIGM1_ DECIMAL(12,1),
		PAVIGM2_ DECIMAL(12,1),
		PAVIGMN_ DECIMAL(12,1),
		_PACAT DECIMAL(12,1),
		_PAINDEX DECIMAL(12,1),
		_PA150R1 DECIMAL(12,1),
		_PA300R1 DECIMAL(12,1),
		_PA3002L DECIMAL(12,1),
		_PASTRNG DECIMAL(12,1),
		_PAREC DECIMAL(12,1),
		_PASTAER DECIMAL(12,1),
		_RFSEAT2 DECIMAL(12,1),
		_RFSEAT3 DECIMAL(12,1),
		_FLSHOT5 DECIMAL(12,1),
		_PNEUMO2 DECIMAL(12,1),
		DRNKANY5 DECIMAL(12,1),
		DROCDY3_ DECIMAL(12,1),
		_RFBING5 DECIMAL(12,1),
		_DRNKDY4 DECIMAL(12,1),
		_DRNKMO4 DECIMAL(12,1),
		_RFDRHV4 DECIMAL(12,1),
		_RFDRMN4 DECIMAL(12,1),
		_RFDRWM4 DECIMAL(12,1),
		_AIDTST3 DECIMAL(12,1),
		HAVHPAD DECIMAL(12,1)
);

SET SESSION sql_mode = '';

LOAD DATA INFILE
	'/Users//Desktop/2011raw.csv'
INTO TABLE mega
FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
    ESCAPED BY '\\'


-- shrink mega table into medium table

drop table if exists medium_table;

CREATE TABLE medium_table AS
SELECT _STATE, AGE, MARITAL, EDUCA, EMPLOY, WEIGHT2, GENHLTH, PHYSHLTH, MENTHLTH, HLTHPLN1, MEDCOST,
		CHECKUP1, HIVTST6, DIABAGE2,BPMEDS, TOLDHI2, ASTHMA3, CHCSCNCR, CHCOCNCR, HAVARTH3, ADDEPEV2,
        CHCKIDNY, CHCVISON, DIABETE3,SMOKDAY2, ALCDAY5, MAXDRNKS,FRUITJU1, FRUIT1, FVBEANS, FVGREEN,
        FVORANG, EXERANY2, EXRACT01, EXEROFT1, QLACTLM2, USEEQUIP, LMTJOIN3,_IMPAGE, _RFHLTH, _HCVU651,
        _RFHYPE5, _DRDXAR1, _SMOKER3, WTKG3, _RFBMI5, _EDUCAG, FTJUDA1_, FRUTDA1_, BEANDAY_, GRENDAY_,
        ORNGDAY_, VEGEDA1_, _TOTINDA, _FLSHOT5, DROCDY3_, _RFBING5, _DRNKDY4, _RFDRHV4, _RFDRMN4, _AIDTST3
FROM mega;
