

CREATE OR REPLACE TRIGGER canGraduate
AFTER UPDATE ON CoreRequirements
FOR EACH ROW
DECLARE
  v_canGraduate number(10);
  v_complete varchar(20);

BEGIN

  v_canGraduate := 1;

  SELECT CTW1 INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT CTW2 INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT CNI1 INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT CNI2 INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT CNI3 INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT STS INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT CIVICENGAGEMENT INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT DIVERSITY INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT ETHICS INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT RTC1 INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT RTC2 INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT RTC3 INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT ELSJ INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT ADVANCEWRITING INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT ARTS INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT LANGUAGE INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT NATURALSCIENCE INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT SOCIALSCIENCE INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN
      v_canGraduate := 0;
  IF v_complete = 'wip' THEN
      v_canGraduate := 0;

  SELECT MATHEMATICS INTO v_complete FROM CoreRequirements;
  IF v_complete = 'incomplete'  THEN v_canGraduate := 0;
  IF v_complete = 'wip' THEN v_canGraduate := 0;
  

  IF v_canGraduate = 1 then
    UPDATE CoreStudents SET CoreStudents.corecomplete = 'complete'
         WHERE CoreStudents.StudentID = CoreRequirements.StudentID;

END;

/
show errors;