from flask_wtf import FlaskForm
from wtforms import StringField, FloatField, SubmitField, SelectField, IntegerField, validators
from wtforms.validators import DataRequired

class inputdataForm(FlaskForm):
    # Valores selectfield variables
    diqChoices = [('1', 'Yes'),('2', 'No'), ('3', 'Borderline')]
    hiqChoices = [('1', 'Yes'),('2', 'No')]
    hodChoices = [('1', '1'),('2', '2'), ('3', '3'), ('4', '4'), ('5', '5'), ('6', '6'), ('7', '7'), ('8', '8'),
    ('9', '9'), ('10', '10'), ('11', '11'), ('12', '12'), ('13', '13 or more')]
    hoqChoices = [('1', 'Owned'),('2', 'Rented'), ('3', 'Other arrangement')]
    hsdChoices = [('1', 'Excellent'),('2', 'Very good'), ('3', 'Good'), ('4', 'Fair'), ('5', 'Poor')]
    inqChoices = [('1', 'Yes'),('2', 'No')]
    mcqChoices = [('1', 'Yes'),('2', 'No')]
    mcq3Choices = [('1', 'Yes'),('2', 'No')]
    paq650Choices = [('1', 'Yes'),('2', 'No')]
    paq665Choices = [('1', 'Yes'),('2', 'No')]
    paq710Choices = [('0', 'Less than 1'), ('1', '1'),('2', '2'), ('3', '3'), ('4', '4'), ('5', '5 or more')]
    paq715Choices = [('0', 'Less than 1'), ('1', '1'),('2', '2'), ('3', '3'), ('4', '4'), ('5', '5 or more')]
    rhqChoices = [('0', '0'), ('1', '1'),('2', '2'), ('3', '3'), ('4', '4'), ('5', '5'), ('6', '6'), ('7', '7'), ('8', '8'),
    ('9', '9'), ('10', '10'), ('11', '11 or more')]
    sldChoices = [('1', '1'),('2', '2'), ('3', '3'), ('4', '4'), ('5', '5'), ('6', '6'), ('7', '7'), ('8', '8'),
    ('9', '9'), ('10', '10'), ('11', '11'), ('12', '12'), ('13', '13'), ('14', '14'), ('15', '15'), ('16', '16')]
    smqChoices = [('1', 'Every day'),('2', 'Some days'), ('3', 'Not at all')]
    riagChoices = [('1', 'Male'),('2', 'Female')]
    ridChoices = [('1', 'Mexican American'),('2', 'Other hispanic'), ('3', 'Non-hispanic white'), ('4', 'Non-hispanic black'),
    ('6', 'non-hispanic asian'), ('7', 'Other race including multiracial')]
    dmdChoices = [('1', 'Less than 9th grade'),('2', '9-11th grade (Includes 12th grade with no diploma)'),
    ('3', 'High school graduate/ GED or equivalent'), ('4', 'Some college or AA degree'),
    ('5', 'College graduate or above')]
    # Formulario
    bmi = FloatField('Body mass index (kg/m**2)', validators=[DataRequired()])
    waist=FloatField('Waist (cm)', validators=[DataRequired()])
    bpx=IntegerField('Diastolic: Blood pres (1st rdg) mm Hg', [validators.NumberRange(min=0, max=200)])
    diq = SelectField(u'Doctor told you have diabetes', choices = diqChoices, validators = [DataRequired()])
    lbxglu = FloatField('Fasting Glucose (mg/dL)', validators=[DataRequired()])
    lbxin = FloatField('Insulin (uU/mL)', validators=[DataRequired()])
    hiq = SelectField(u'Covered by health insurance', choices = hiqChoices, validators = [DataRequired()])
    hod = SelectField(u'Number of rooms in home', choices = hodChoices, validators = [DataRequired()])
    hoq = SelectField(u'Home', choices = hoqChoices, validators = [DataRequired()])
    hsd = SelectField(u'General health condition', choices = hsdChoices, validators = [DataRequired()])
    inq = SelectField(u'Income from wages', choices = inqChoices, validators = [DataRequired()])
    mcq = SelectField(u'Ever been told you have asthma', choices = mcqChoices, validators = [DataRequired()])
    mcq3 = SelectField(u'Close relative had diabetes?', choices = mcq3Choices, validators = [DataRequired()])
    paq650 = SelectField(u'Vigorous recreational activities', choices = paq650Choices, validators = [DataRequired()])
    paq665 = SelectField(u'Moderate recreational activities', choices = paq665Choices, validators = [DataRequired()])
    paq710 = SelectField(u'Hours watch TV past 30 days', choices = paq710Choices, validators = [DataRequired()])
    paq715 = SelectField(u'Hours use computer past 30 days', choices = paq715Choices, validators = [DataRequired()])
    rhq = SelectField(u'How many times have been pregnant', choices = rhqChoices, validators = [DataRequired()])
    sld = SelectField(u'How much sleep do you get (hours)?', choices = sldChoices, validators = [DataRequired()])
    smq = SelectField(u'Do you now smoke cigarrettes?', choices = smqChoices, validators = [DataRequired()])
    riag = SelectField(u'Gender', choices = riagChoices, validators = [DataRequired()])
    rida=IntegerField('Age (Years)', [validators.NumberRange(min=0, max=150)])
    rid = SelectField(u'Race', choices = ridChoices, validators = [DataRequired()])
    dmd = SelectField(u'Education level', choices = dmdChoices, validators = [DataRequired()])
    submit = SubmitField('Clasificar')
