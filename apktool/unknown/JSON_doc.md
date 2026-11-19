# Address Form

This documentation outlines the JSON structure for every form and related structs. Fields set to `nil` or absent indicate that they should not be displayed.

# Addresses

## AddressFormScheme
| Field         | Type                   | Description                                                        | Optional |
|---------------|------------------------|--------------------------------------------------------------------|----------|
| identifier    | String                 | A unique identifier for the scheme.                                | No       |
| description   | FormFieldScheme        | A description of the address form.                                 | Yes      |
| civility      | FormFieldScheme        | The civility of the individual associated with the address.        | Yes      |
| firstName     | FormFieldScheme        | The first name of the individual associated with the address.      | Yes      |
| lastName      | FormFieldScheme        | The last name of the individual associated with the address.       | Yes      |
| firstName2    | FormFieldScheme        | An alternative first name, primarily used in Japan.                | Yes      |
| lastName2     | FormFieldScheme        | An alternative last name, primarily used in Japan.                 | Yes      |
| address1      | FormFieldScheme        | The primary address line.                                          | Yes      |
| address2      | FormFieldScheme        | The secondary address line.                                        | No       |
| address3      | FormFieldScheme        | The tertiary address line.                                         | Yes      |
| street        | FormFieldScheme        | The street of the address.                                         | Yes      |
| streetNumber  | FormFieldScheme        | The street number of the address.                                  | Yes      |
| postalCode    | FormFieldScheme        | The postal code of the address.                                    | Yes      |
| city          | FormFieldScheme        | The city of the address.                                           | No       |
| county        | FormFieldScheme        | The county of the address.                                         | Yes      |
| state         | FormFieldScheme        | The state of the address.                                          | Yes      |
| country       | FormFieldScheme        | The country of the address.                                        | No       |
| phones        | PhoneNumberFormScheme  | Phone number information associated with the address.              | No       |

## Values

### AddressFormDependencyFieldValue

Values used in `FormFieldScheme.FieldType.DependentRemoteEnum.dependencyField` and `FormFieldScheme.FieldType.DependentEnum.dependencyField` in the context of the address form scheme.

| Value   | Description                     |
|---------|---------------------------------|
| country | Dependency on country field.    |
| state   | Dependency on state field.      |
| city    | Dependency on city field.       |


### AddressFormRemoteEnumIdentifierValue

Values used in `FormFieldScheme.FieldType.DependentRemoteEnum.identifier` in the context of the address form scheme.

| Value         | Description                                                 |
|---------------|-------------------------------------------------------------|
| chinaCities   | The enum containing the selectable values of china cities   |
| chinaCounties | The enum containing the selectable values of china counties |

# Appointments

## AppointmentFormScheme
| Field                 | Type                  | Description                                                                  | Optional |
|-----------------------|-----------------------|------------------------------------------------------------------------------|----------|
| identifier            | String                | A unique identifier for the scheme, corresponding to the dispatch identifier | No       |
| phone                 | PhoneNumberFormScheme | Contact phone number information associated with the appointment.            | No       |

## GuestAppointmentFormScheme
| Field                 | Type                  | Description                                                                  | Optional |
|-----------------------|-----------------------|------------------------------------------------------------------------------|----------|
| identifier            | String                | A unique identifier for the scheme, corresponding to the dispatch identifier | No       |
| civility              | FormFieldScheme       | The civility title of the individual (e.g., Mr., Ms.).                       | No       |
| firstName             | FormFieldScheme       | The first name of the individual.                                            | No       |
| lastName              | FormFieldScheme       | The last name of the individual.                                             | No       |
| firstName2            | FormFieldScheme       | An alternative first name, primarily used in Japan.                          | Yes      |
| lastName2             | FormFieldScheme       | An alternative last name, primarily used in Japan.                           | Yes      |
| country               | FormFieldScheme       | The ISO country code representing the individual's country                   | No       |
| suscribedInNewsletter | FormFieldScheme       | Indicates whether the user opts in to subscribe to the newsletter.           | No       |
| phone                 | PhoneNumberFormScheme | Contact phone number information associated with the appointment.            | No       |

# Profile

## ProfileFormScheme
| Field                   | Type                  | Description                                                                                                                                         | Optional |
|-------------------------|-----------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|----------|
| identifier              | String                | A unique identifier for the scheme, corresponding to the dispatch identifier                                                                        | No       |
| civility                | FormFieldScheme       | The civility title of the individual (e.g., Mr., Ms.).                                                                                              | No       |
| firstName               | FormFieldScheme       | The first name of the individual.                                                                                                                   | No       |
| lastName                | FormFieldScheme       | The last name of the individual.                                                                                                                    | No       |
| firstName2              | FormFieldScheme       | An alternative first name, primarily used in Japan.                                                                                                 | Yes      |
| lastName2               | FormFieldScheme       | An alternative last name, primarily used in Japan.                                                                                                  | Yes      |
| branchID                | FormFieldScheme       | Branch or head office number, used when you need to fulfill a tax invoice and purchase product on behalf of a company. Primarily used in Thailand.  | Yes      |
| vatCode                 | FormFieldScheme       | Tax ID. primarily used in Thailand.                                                                                                                 | Yes      |
| phone                   | PhoneNumberFormScheme | Phone number information associated with the profile.                                                                                               | NO       |

# Authentication

## AuthenticationFormScheme
| Field      | Type            | Description                                                                  | Optional |
|------------|-----------------|------------------------------------------------------------------------------|----------|
| identifier | String          | A unique identifier for the scheme, corresponding to the dispatch identifier | No       |
| email      | FormFieldScheme | The email address used for logging in.                                       | No       |
| password   | FormFieldScheme | The password associated with the account.                                    | No       |

# Common Schemes

## FormFieldScheme

| Field            | Type                                  | Description                                                                      | Optional |
|------------------|---------------------------------------|----------------------------------------------------------------------------------|----------|
| type             | FormFieldScheme.FieldType             | The type of the field, defining its behavior and constraints.                    | No       |
| isMandatory      | Bool                                  | Indicates whether the field is mandatory.                                        | No       |
| order            | Int                                   | The display order of the form field relative to other fields.                    | No       |

## FormFieldScheme.FieldType

| Field                | Type                                            | Description                                                                                        | Optional |
|----------------------|-------------------------------------------------|----------------------------------------------------------------------------------------------------|----------|
| readOnlyEnum         | FormFieldScheme.FieldType.ReadOnlyEnum          | A read-only field with a fixed value.                                                              | Yes      |
| freeform             | FormFieldScheme.FieldType.FreeForm              | A text field that can be freely edited.                                                            | Yes      |
| enum                 | FormFieldScheme.FieldType.Enum                  | A field that allows selection from a fixed set of values.                                          | Yes      |
| dependentRemoteEnum  | FormFieldScheme.FieldType.DependentRemoteEnum   | A field that requires fetching values from an external source, dependending on another field value | Yes      |
| dependentEnum        | FormFieldScheme.FieldType.DependentEnum         | A field that define different set of values, dependending on another field value.                  | Yes      |
| boolean              | FormFieldScheme.FieldType.Boolean               | A boolean field with an optional default value.                                                    | Yes      |

## FormFieldScheme.FieldType.ReadOnlyEnum

| Field       | Type         | Description                           | Optional |
|-------------|--------------|---------------------------------------|----------|
| value       | EnumScheme 	 | A read-only field with a fixed value. | No       |

## FormFieldScheme.FieldType.FreeForm

| Field            | Type         | Description                                        | Optional |
|------------------|--------------|----------------------------------------------------|----------|
| validationRegExp | String 	  |  The validation to apply when the field is non-empty | Yes      |
| defaultValue     | String 	  |  The default value to use                            | Yes      |

## FormFieldScheme.FieldType.Enum  

| Field            | Type         | Description                                          | Optional |
|------------------|--------------|------------------------------------------------------|----------|
| values           | [EnumScheme]  |  The selectable enum values                         | No       |
| defaultValue     | EnumScheme 	  |  The default value to use                          | Yes      |

## FormFieldScheme.FieldType.DependentRemoteEnum  

| Field            | Type                            | Description                                                                     | Optional |
|------------------|---------------------------------|---------------------------------------------------------------------------------|----------|
| dependencyField  | String                          | Specifies another field that must be filled in before this one can be enabled.  | No       |
| identifier       | String                          | The identifier of the remote enumeration                                        | No       |


## FormFieldScheme.FieldType.DependentEnum  

| Field            | Type                                                  | Description                                                                     | Optional |
|------------------|-------------------------------------------------------|---------------------------------------------------------------------------------|----------|
| dependencyField  | String                                                | Specifies another field that must be filled in before this one can be enabled.  | No       |
| dependentValues  | [FormFieldScheme.FieldType.DependentEnum.Value]       | A list mapping the dependency field values to sets of enum and default values.  | No       |

## FormFieldScheme.FieldType.DependentEnum.Value 

| Field            | Type         | Description                                                                                        | Optional |
|------------------|--------------|----------------------------------------------------------------------------------------------------|----------|
| dependencyValue  | String       | The specific value of the dependency field that triggers this enum scheme.                         | No       |
| enum             | [EnumScheme] | The list of enum schemes to use when the dependency field's value matches the `dependencyValue`.   | No       |
| defaultValue     | EnumScheme   | The value to use as default value when the dependency field's value matches the `dependencyValue`. | Yes      |

## FormFieldScheme.FieldType.Boolean  

| Field            | Type    | Description               | Optional |
|------------------|---------|---------------------------|----------|
| defaultValue     | Boolean | The default value to use  | Yes      |

## EnumScheme

| Field        | Type   | Description                                              | Optional |
|--------------|--------|----------------------------------------------------------|----------|
| identifier   | String | The unique identifier for the enum value, if applicable. | Yes      |
| displayValue | String | The display value of the enum value.                     | No       |

## PhoneNumberFormScheme
| Field               | Type            | Description                                                                                   | Optional |
|---------------------|-----------------|-----------------------------------------------------------------------------------------------|----------|
| minCount            | Int             | The minimum count of phone numbers required.                                                  | No       |
| maxCount            | Int             | The maximum count of phone numbers allowed.                                                   | No       |
| phoneNumberType     | FormFieldScheme | The type of the phone number(s).                                                              | No       |
| phoneNumberCountry  | FormFieldScheme | The country associated with the phone number(s), displayed as the international prefix.       | No       |
| phoneNumber         | FormFieldScheme | The national phone number.                                                                    | No       |
| order               | Int             | The display order of this form when used inside a parent form, relative to the parent fields. | No       |

# Common Values

## CivilityFormValue

| Value         | Description                      |
|---------------|----------------------------------|
| mr            | Mr.                              |
| ms            | Ms.                              |
| mrs           | Mrs.                             |
| mx            | Mx.                              |
| undisclosed   | Undisclosed                      |

## PhoneTypesFormValue

| Value         | Description           |
|---------------|-----------------------|
| home          | Landline phone number |
| mobile        | Mobile phone number   |
| work          | Work phone number     |
