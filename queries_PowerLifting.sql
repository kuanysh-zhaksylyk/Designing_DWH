1. -- Select the number of championships held in Kazakhstan for all time 
SELECT NON EMPTY { [Measures].[Число Results] } ON COLUMNS, 
  NON EMPTY { ([Meets].[Meet Name].[Meet Name].MEMBERS, [Meets].[Federation].[Federation].ALLMEMBERS ) }  ON ROWS 
  FROM [Kuanyshdb1]  
  WHERE ( [Meets].[Meet Country].&[Kazakhstan] ) 

2. -- Select the top 3 strongest female powerlifters in the 82.5 kg weight class
SELECT { [Measures].[Wilks] } ON COLUMNS, TOPCOUNT ([Participants].[Participant ID].[Participant ID], 3, [Measures].[Wilks])  ON ROWS
  FROM  [Kuanyshdb1] 
  WHERE ( [Participants1].[Part].[Sex].&[F]&[82.5] ) 

3. -- Select the average deadlift result for men in the 67.5 kg weight category until it works 
SELECT [Measures].[Best Dead Lift Kg]  ON COLUMNS, NON EMPTY { ([Equipment].[Equipment Name].[Equipment Name].ALLMEMBERS, [Participants].[Participant ID].[Participant ID].ALLMEMBERS ) } ON ROWS 
  FROM [Kuanyshdb11] 
  WHERE ( [Participants1].[Part].[Sex].&[M]&[67.5] ) 

  WITH MEMBER [Measures].[AverageDeadLift] AS
    AVG(
        {[Participants].[Sex].[M]}
    )

4. -- Select all countries and the number of championships held 
SELECT order(([Measures].[Число Results]), ASC ) ON COLUMNS, non empty[Meets].[Country].[Meet Country] .Members ON ROWS
  FROM [Kuanyshdb1]

5. -- Select number of federations starting with the letter R
SELECT NON EMPTY { [Measures].[Число Results] } ON COLUMNS, NON EMPTY { ([Meets].[Federation].[Federation].ALLMEMBERS ) }  ON ROWS 
  FROM ( SELECT ( Filter( [Meets].[Federation].[Federation].ALLMEMBERS, Instr( [Meets].[Federation].currentmember.Properties( 'Member_Caption' ), 'R' )  > 0  ) ) ON COLUMNS 
  FROM [Kuanyshdb1]) 