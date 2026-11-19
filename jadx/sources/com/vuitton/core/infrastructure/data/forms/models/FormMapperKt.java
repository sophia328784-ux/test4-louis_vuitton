package com.vuitton.core.infrastructure.data.forms.models;

import com.vuitton.foundation.model.domain.model.forms.Form;
import com.vuitton.foundation.model.domain.model.forms.FormEnumDependentValue;
import com.vuitton.foundation.model.domain.model.forms.FormEnumValue;
import com.vuitton.foundation.model.domain.model.forms.FormField;
import com.vuitton.foundation.model.domain.model.forms.FormFieldBoolean;
import com.vuitton.foundation.model.domain.model.forms.FormFieldDependentEnum;
import com.vuitton.foundation.model.domain.model.forms.FormFieldDependentRemoteEnum;
import com.vuitton.foundation.model.domain.model.forms.FormFieldEnum;
import com.vuitton.foundation.model.domain.model.forms.FormFieldFreeform;
import com.vuitton.foundation.model.domain.model.forms.FormFieldGeneric;
import com.vuitton.foundation.model.domain.model.forms.FormFieldPhone;
import com.vuitton.foundation.model.domain.model.forms.FormFieldReadOnlyEnum;
import com.vuitton.foundation.model.domain.model.forms.FormFieldType;
import com.vuitton.foundation.model.domain.model.forms.FormSectionType;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"forms"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FormMapperKt {
    public static final Form a(AccountActivationFormDto accountActivationFormDto) {
        accountActivationFormDto.getClass();
        ListBuilder listBuilderV = CollectionsKt.v();
        listBuilderV.add(j(accountActivationFormDto.f66007b, FormSectionType.NEW_PASSWORD));
        listBuilderV.add(j(accountActivationFormDto.f66008c, FormSectionType.PRIVACY_POLICY_CONSENT));
        return new Form(CollectionsKt.o0(CollectionsKt.r(listBuilderV), new Comparator() { // from class: com.vuitton.core.infrastructure.data.forms.models.FormMapperKt$toDomain$$inlined$sortedBy$8
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.valueOf(((FormField) obj).f67588c).compareTo(Integer.valueOf(((FormField) obj2).f67588c));
            }
        }));
    }

    public static final Form b(AddressFormDto addressFormDto) {
        addressFormDto.getClass();
        ListBuilder listBuilderV = CollectionsKt.v();
        FormFieldDto formFieldDto = addressFormDto.f66011b;
        if (formFieldDto != null) {
            listBuilderV.add(j(formFieldDto, FormSectionType.ADDRESS1));
        }
        listBuilderV.add(j(addressFormDto.f66012c, FormSectionType.ADDRESS2));
        FormFieldDto formFieldDto2 = addressFormDto.d;
        if (formFieldDto2 != null) {
            listBuilderV.add(j(formFieldDto2, FormSectionType.ADDRESS3));
        }
        listBuilderV.add(j(addressFormDto.f66013e, FormSectionType.CITY));
        FormFieldDto formFieldDto3 = addressFormDto.f66014f;
        if (formFieldDto3 != null) {
            listBuilderV.add(j(formFieldDto3, FormSectionType.CIVILITY));
        }
        listBuilderV.add(j(addressFormDto.f66015h, FormSectionType.COUNTRY));
        FormFieldDto formFieldDto4 = addressFormDto.f66016i;
        if (formFieldDto4 != null) {
            listBuilderV.add(j(formFieldDto4, FormSectionType.COUNTY));
        }
        FormFieldDto formFieldDto5 = addressFormDto.f66017j;
        if (formFieldDto5 != null) {
            listBuilderV.add(j(formFieldDto5, FormSectionType.DESCRIPTION));
        }
        FormFieldDto formFieldDto6 = addressFormDto.f66018k;
        if (formFieldDto6 != null) {
            listBuilderV.add(j(formFieldDto6, FormSectionType.FIRSTNAME));
        }
        FormFieldDto formFieldDto7 = addressFormDto.l;
        if (formFieldDto7 != null) {
            listBuilderV.add(j(formFieldDto7, FormSectionType.FIRSTNAME2));
        }
        FormFieldDto formFieldDto8 = addressFormDto.m;
        if (formFieldDto8 != null) {
            listBuilderV.add(j(formFieldDto8, FormSectionType.LASTNAME));
        }
        FormFieldDto formFieldDto9 = addressFormDto.n;
        if (formFieldDto9 != null) {
            listBuilderV.add(j(formFieldDto9, FormSectionType.LASTNAME2));
        }
        listBuilderV.add(k(addressFormDto.o));
        FormFieldDto formFieldDto10 = addressFormDto.p;
        if (formFieldDto10 != null) {
            listBuilderV.add(j(formFieldDto10, FormSectionType.POSTAL_CODE));
        }
        FormFieldDto formFieldDto11 = addressFormDto.q;
        if (formFieldDto11 != null) {
            listBuilderV.add(j(formFieldDto11, FormSectionType.STATE));
        }
        FormFieldDto formFieldDto12 = addressFormDto.r;
        if (formFieldDto12 != null) {
            listBuilderV.add(j(formFieldDto12, FormSectionType.STREET));
        }
        FormFieldDto formFieldDto13 = addressFormDto.s;
        if (formFieldDto13 != null) {
            listBuilderV.add(j(formFieldDto13, FormSectionType.STREET_NUMBER));
        }
        return new Form(CollectionsKt.o0(CollectionsKt.r(listBuilderV), new Comparator() { // from class: com.vuitton.core.infrastructure.data.forms.models.FormMapperKt$toDomain$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.valueOf(((FormFieldGeneric) obj).getF67601c()).compareTo(Integer.valueOf(((FormFieldGeneric) obj2).getF67601c()));
            }
        }));
    }

    public static final Form c(AuthenticationFormDto authenticationFormDto) {
        authenticationFormDto.getClass();
        ListBuilder listBuilderV = CollectionsKt.v();
        listBuilderV.add(j(authenticationFormDto.f66021b, FormSectionType.EMAIL));
        listBuilderV.add(j(authenticationFormDto.f66022c, FormSectionType.PASSWORD));
        return new Form(CollectionsKt.o0(CollectionsKt.r(listBuilderV), new Comparator() { // from class: com.vuitton.core.infrastructure.data.forms.models.FormMapperKt$toDomain$$inlined$sortedBy$6
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.valueOf(((FormField) obj).f67588c).compareTo(Integer.valueOf(((FormField) obj2).f67588c));
            }
        }));
    }

    public static final Form d(BookingPersonalInfoFormDto bookingPersonalInfoFormDto) {
        bookingPersonalInfoFormDto.getClass();
        ListBuilder listBuilderV = CollectionsKt.v();
        listBuilderV.add(j(bookingPersonalInfoFormDto.f66029h, FormSectionType.EMAIL));
        FormFieldDto formFieldDto = bookingPersonalInfoFormDto.f66025b;
        if (formFieldDto != null) {
            listBuilderV.add(j(formFieldDto, FormSectionType.CIVILITY));
        }
        listBuilderV.add(j(bookingPersonalInfoFormDto.f66026c, FormSectionType.FIRSTNAME));
        listBuilderV.add(j(bookingPersonalInfoFormDto.d, FormSectionType.LASTNAME));
        FormFieldDto formFieldDto2 = bookingPersonalInfoFormDto.f66027e;
        if (formFieldDto2 != null) {
            listBuilderV.add(j(formFieldDto2, FormSectionType.FIRSTNAME2));
        }
        FormFieldDto formFieldDto3 = bookingPersonalInfoFormDto.f66028f;
        if (formFieldDto3 != null) {
            listBuilderV.add(j(formFieldDto3, FormSectionType.LASTNAME2));
        }
        FormFieldDto formFieldDto4 = bookingPersonalInfoFormDto.g;
        if (formFieldDto4 != null) {
            listBuilderV.add(j(formFieldDto4, FormSectionType.COUNTRY));
        }
        listBuilderV.add(k(bookingPersonalInfoFormDto.f66030i));
        listBuilderV.add(j(bookingPersonalInfoFormDto.f66031j, FormSectionType.BOOKING_MARKETING_EMAILS_CONSENT));
        FormFieldDto formFieldDto5 = bookingPersonalInfoFormDto.f66032k;
        if (formFieldDto5 != null) {
            listBuilderV.add(j(formFieldDto5, FormSectionType.BOOKING_PERSONAL_DATA_COLLECTION_CONSENT));
        }
        return new Form(CollectionsKt.o0(CollectionsKt.r(listBuilderV), new Comparator() { // from class: com.vuitton.core.infrastructure.data.forms.models.FormMapperKt$toDomain$$inlined$sortedBy$10
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.valueOf(((FormFieldGeneric) obj).getF67601c()).compareTo(Integer.valueOf(((FormFieldGeneric) obj2).getF67601c()));
            }
        }));
    }

    public static final Form e(CareServiceFormDto careServiceFormDto) {
        careServiceFormDto.getClass();
        ListBuilder listBuilderV = CollectionsKt.v();
        listBuilderV.add(j(careServiceFormDto.f66035b, FormSectionType.EMAIL));
        FormFieldDto formFieldDto = careServiceFormDto.f66036c;
        if (formFieldDto != null) {
            listBuilderV.add(j(formFieldDto, FormSectionType.POSTAL_CODE));
        }
        listBuilderV.add(k(careServiceFormDto.d));
        return new Form(CollectionsKt.o0(CollectionsKt.r(listBuilderV), new Comparator() { // from class: com.vuitton.core.infrastructure.data.forms.models.FormMapperKt$toDomain$$inlined$sortedBy$9
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.valueOf(((FormFieldGeneric) obj).getF67601c()).compareTo(Integer.valueOf(((FormFieldGeneric) obj2).getF67601c()));
            }
        }));
    }

    public static final Form f(CompleteProfileFormDto completeProfileFormDto) {
        completeProfileFormDto.getClass();
        ListBuilder listBuilderV = CollectionsKt.v();
        listBuilderV.add(j(completeProfileFormDto.f66044b, FormSectionType.EMAIL));
        listBuilderV.add(j(completeProfileFormDto.f66045c, FormSectionType.CIVILITY));
        listBuilderV.add(j(completeProfileFormDto.d, FormSectionType.FIRSTNAME));
        listBuilderV.add(j(completeProfileFormDto.f66046e, FormSectionType.LASTNAME));
        FormFieldDto formFieldDto = completeProfileFormDto.f66047f;
        if (formFieldDto != null) {
            listBuilderV.add(j(formFieldDto, FormSectionType.FIRSTNAME2));
        }
        FormFieldDto formFieldDto2 = completeProfileFormDto.g;
        if (formFieldDto2 != null) {
            listBuilderV.add(j(formFieldDto2, FormSectionType.LASTNAME2));
        }
        FormFieldDto formFieldDto3 = completeProfileFormDto.f66048h.f66041a;
        if (formFieldDto3 != null) {
            listBuilderV.add(j(formFieldDto3, FormSectionType.ALL_MARKETING_COMMUNICATIONS_CONSENTS));
        }
        return new Form(CollectionsKt.o0(CollectionsKt.r(listBuilderV), new Comparator() { // from class: com.vuitton.core.infrastructure.data.forms.models.FormMapperKt$toDomain$$inlined$sortedBy$7
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.valueOf(((FormField) obj).f67588c).compareTo(Integer.valueOf(((FormField) obj2).f67588c));
            }
        }));
    }

    public static final Form g(GuestAppointmentFormDto guestAppointmentFormDto) {
        guestAppointmentFormDto.getClass();
        ListBuilder listBuilderV = CollectionsKt.v();
        listBuilderV.add(j(guestAppointmentFormDto.f66105j, FormSectionType.EMAIL));
        listBuilderV.add(j(guestAppointmentFormDto.f66099b, FormSectionType.CIVILITY));
        listBuilderV.add(j(guestAppointmentFormDto.f66100c, FormSectionType.FIRSTNAME));
        listBuilderV.add(j(guestAppointmentFormDto.d, FormSectionType.LASTNAME));
        FormFieldDto formFieldDto = guestAppointmentFormDto.f66101e;
        if (formFieldDto != null) {
            listBuilderV.add(j(formFieldDto, FormSectionType.FIRSTNAME2));
        }
        FormFieldDto formFieldDto2 = guestAppointmentFormDto.f66102f;
        if (formFieldDto2 != null) {
            listBuilderV.add(j(formFieldDto2, FormSectionType.LASTNAME2));
        }
        listBuilderV.add(j(guestAppointmentFormDto.g, FormSectionType.COUNTRY));
        listBuilderV.add(k(guestAppointmentFormDto.f66104i));
        return new Form(CollectionsKt.o0(CollectionsKt.r(listBuilderV), new Comparator() { // from class: com.vuitton.core.infrastructure.data.forms.models.FormMapperKt$toDomain$$inlined$sortedBy$2
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.valueOf(((FormFieldGeneric) obj).getF67601c()).compareTo(Integer.valueOf(((FormFieldGeneric) obj2).getF67601c()));
            }
        }));
    }

    public static final Form h(ProfileFormDto profileFormDto) {
        profileFormDto.getClass();
        ListBuilder listBuilderV = CollectionsKt.v();
        listBuilderV.add(j(profileFormDto.f66108b, FormSectionType.CIVILITY));
        listBuilderV.add(j(profileFormDto.f66109c, FormSectionType.FIRSTNAME));
        listBuilderV.add(j(profileFormDto.d, FormSectionType.LASTNAME));
        FormFieldDto formFieldDto = profileFormDto.f66110e;
        if (formFieldDto != null) {
            listBuilderV.add(j(formFieldDto, FormSectionType.FIRSTNAME2));
        }
        FormFieldDto formFieldDto2 = profileFormDto.f66111f;
        if (formFieldDto2 != null) {
            listBuilderV.add(j(formFieldDto2, FormSectionType.LASTNAME2));
        }
        FormFieldDto formFieldDto3 = profileFormDto.g;
        if (formFieldDto3 != null) {
            listBuilderV.add(j(formFieldDto3, FormSectionType.VAT_CODE));
        }
        FormFieldDto formFieldDto4 = profileFormDto.f66112h;
        if (formFieldDto4 != null) {
            listBuilderV.add(j(formFieldDto4, FormSectionType.BRANCH_ID));
        }
        FormFieldPhoneDto formFieldPhoneDto = profileFormDto.f66113i;
        if (formFieldPhoneDto != null) {
            listBuilderV.add(k(formFieldPhoneDto));
        }
        return new Form(CollectionsKt.o0(CollectionsKt.r(listBuilderV), new Comparator() { // from class: com.vuitton.core.infrastructure.data.forms.models.FormMapperKt$toDomain$$inlined$sortedBy$4
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.valueOf(((FormFieldGeneric) obj).getF67601c()).compareTo(Integer.valueOf(((FormFieldGeneric) obj2).getF67601c()));
            }
        }));
    }

    public static final Form i(RegistrationFormDto registrationFormDto) {
        registrationFormDto.getClass();
        ListBuilder listBuilderV = CollectionsKt.v();
        FormFieldDto formFieldDto = registrationFormDto.f66128b;
        RegisterConsentsFormFieldDto registerConsentsFormFieldDto = registrationFormDto.m;
        listBuilderV.add(j(formFieldDto, FormSectionType.EMAIL));
        listBuilderV.add(j(registrationFormDto.f66129c, FormSectionType.NEW_PASSWORD));
        listBuilderV.add(j(registrationFormDto.d, FormSectionType.CONFIRM_PASSWORD));
        listBuilderV.add(j(registrationFormDto.f66130e, FormSectionType.CIVILITY));
        listBuilderV.add(j(registrationFormDto.f66135k, FormSectionType.COUNTRY));
        listBuilderV.add(j(registrationFormDto.f66134j, FormSectionType.BIRTHDATE));
        listBuilderV.add(j(registrationFormDto.f66131f, FormSectionType.FIRSTNAME));
        listBuilderV.add(j(registrationFormDto.g, FormSectionType.LASTNAME));
        FormFieldDto formFieldDto2 = registrationFormDto.f66132h;
        if (formFieldDto2 != null) {
            listBuilderV.add(j(formFieldDto2, FormSectionType.FIRSTNAME2));
        }
        FormFieldDto formFieldDto3 = registrationFormDto.f66133i;
        if (formFieldDto3 != null) {
            listBuilderV.add(j(formFieldDto3, FormSectionType.LASTNAME2));
        }
        listBuilderV.add(k(registrationFormDto.l));
        RegistrationAddressFormFieldDto registrationAddressFormFieldDto = registrationFormDto.n;
        if (registrationAddressFormFieldDto != null) {
            FormFieldDto formFieldDto4 = registrationAddressFormFieldDto.f66121a;
            if (formFieldDto4 != null) {
                listBuilderV.add(j(formFieldDto4, FormSectionType.ADDRESS1));
            }
            FormFieldDto formFieldDto5 = registrationAddressFormFieldDto.f66122b;
            if (formFieldDto5 != null) {
                listBuilderV.add(j(formFieldDto5, FormSectionType.ADDRESS2));
            }
            FormFieldDto formFieldDto6 = registrationAddressFormFieldDto.f66123c;
            if (formFieldDto6 != null) {
                listBuilderV.add(j(formFieldDto6, FormSectionType.ADDRESS3));
            }
            FormFieldDto formFieldDto7 = registrationAddressFormFieldDto.d;
            if (formFieldDto7 != null) {
                listBuilderV.add(j(formFieldDto7, FormSectionType.CITY));
            }
            FormFieldDto formFieldDto8 = registrationAddressFormFieldDto.f66124e;
            if (formFieldDto8 != null) {
                listBuilderV.add(j(formFieldDto8, FormSectionType.POSTAL_CODE));
            }
            FormFieldDto formFieldDto9 = registrationAddressFormFieldDto.f66125f;
            if (formFieldDto9 != null) {
                listBuilderV.add(j(formFieldDto9, FormSectionType.STATE));
            }
        }
        FormFieldDto formFieldDto10 = registerConsentsFormFieldDto.f66115a;
        if (formFieldDto10 != null) {
            listBuilderV.add(j(formFieldDto10, FormSectionType.LEGACY_CONSENTS));
        }
        FormFieldDto formFieldDto11 = registerConsentsFormFieldDto.f66116b;
        if (formFieldDto11 != null) {
            listBuilderV.add(j(formFieldDto11, FormSectionType.ALL_MARKETING_COMMUNICATIONS_CONSENTS));
        }
        FormFieldDto formFieldDto12 = registerConsentsFormFieldDto.f66117c;
        if (formFieldDto12 != null) {
            listBuilderV.add(j(formFieldDto12, FormSectionType.PRIVACY_POLICY_CONSENT));
        }
        FormFieldDto formFieldDto13 = registerConsentsFormFieldDto.d;
        if (formFieldDto13 != null) {
            listBuilderV.add(j(formFieldDto13, FormSectionType.MARKETING_EMAILS_CONSENT));
        }
        FormFieldDto formFieldDto14 = registerConsentsFormFieldDto.f66118e;
        if (formFieldDto14 != null) {
            listBuilderV.add(j(formFieldDto14, FormSectionType.EMAIL_TRACKING_CONSENT));
        }
        FormFieldDto formFieldDto15 = registerConsentsFormFieldDto.f66119f;
        if (formFieldDto15 != null) {
            listBuilderV.add(j(formFieldDto15, FormSectionType.TARGETED_ADVERTISING_CONSENT));
        }
        FormFieldDto formFieldDto16 = registerConsentsFormFieldDto.g;
        if (formFieldDto16 != null) {
            listBuilderV.add(j(formFieldDto16, FormSectionType.MARKETING_TEXTS_CONSENT));
        }
        return new Form(CollectionsKt.o0(CollectionsKt.r(listBuilderV), new Comparator() { // from class: com.vuitton.core.infrastructure.data.forms.models.FormMapperKt$toDomain$$inlined$sortedBy$5
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.valueOf(((FormFieldGeneric) obj).getF67601c()).compareTo(Integer.valueOf(((FormFieldGeneric) obj2).getF67601c()));
            }
        }));
    }

    public static final FormField j(FormFieldDto formFieldDto, FormSectionType formSectionType) {
        FormFieldType formFieldFreeform;
        FormFieldType formFieldBoolean;
        boolean z = formFieldDto.f66064a;
        int i2 = formFieldDto.f66065b;
        FormFieldTypeDto formFieldTypeDto = formFieldDto.f66066c;
        FormFieldTypeFreeformDto formFieldTypeFreeformDto = formFieldTypeDto.f66083a;
        FormFieldTypeEnumDto formFieldTypeEnumDto = formFieldTypeDto.d;
        if (formFieldTypeFreeformDto != null) {
            formFieldFreeform = new FormFieldFreeform(formFieldTypeFreeformDto.f66093a, formFieldTypeFreeformDto.f66094b);
        } else {
            FormFieldTypeReadOnlyEnumDto formFieldTypeReadOnlyEnumDto = formFieldTypeDto.f66084b;
            if (formFieldTypeReadOnlyEnumDto != null) {
                FormEnumValueDto formEnumValueDto = formFieldTypeReadOnlyEnumDto.f66096a;
                formFieldFreeform = new FormFieldReadOnlyEnum(new FormEnumValue(formEnumValueDto.f66061a, formEnumValueDto.f66062b));
            } else {
                FormFieldTypeDependentEnumDto formFieldTypeDependentEnumDto = formFieldTypeDto.f66085c;
                if (formFieldTypeDependentEnumDto != null) {
                    String str = formFieldTypeDependentEnumDto.f66077a;
                    List<FormEnumDependentValueDto> list = formFieldTypeDependentEnumDto.f66078b;
                    ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
                    for (FormEnumDependentValueDto formEnumDependentValueDto : list) {
                        String str2 = formEnumDependentValueDto.f66057a;
                        List<FormEnumValueDto> list2 = formEnumDependentValueDto.f66058b;
                        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                        for (FormEnumValueDto formEnumValueDto2 : list2) {
                            arrayList2.add(new FormEnumValue(formEnumValueDto2.f66061a, formEnumValueDto2.f66062b));
                        }
                        FormEnumValueDto formEnumValueDto3 = formEnumDependentValueDto.f66059c;
                        arrayList.add(new FormEnumDependentValue(str2, arrayList2, formEnumValueDto3 != null ? new FormEnumValue(formEnumValueDto3.f66061a, formEnumValueDto3.f66062b) : null));
                    }
                    formFieldBoolean = new FormFieldDependentEnum(str, arrayList);
                } else if (formFieldTypeEnumDto != null) {
                    List<FormEnumValueDto> list3 = formFieldTypeEnumDto.f66090a;
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
                    for (FormEnumValueDto formEnumValueDto4 : list3) {
                        arrayList3.add(new FormEnumValue(formEnumValueDto4.f66061a, formEnumValueDto4.f66062b));
                    }
                    FormEnumValueDto formEnumValueDto5 = formFieldTypeEnumDto.f66091b;
                    formFieldFreeform = new FormFieldEnum(arrayList3, formEnumValueDto5 != null ? new FormEnumValue(formEnumValueDto5.f66061a, formEnumValueDto5.f66062b) : null);
                } else {
                    FormFieldTypeDependentRemoteEnumDto formFieldTypeDependentRemoteEnumDto = formFieldTypeDto.f66086e;
                    if (formFieldTypeDependentRemoteEnumDto != null) {
                        formFieldFreeform = new FormFieldDependentRemoteEnum(formFieldTypeDependentRemoteEnumDto.f66080a, formFieldTypeDependentRemoteEnumDto.f66081b);
                    } else {
                        FormFieldTypeBooleanDto formFieldTypeBooleanDto = formFieldTypeDto.f66087f;
                        if (formFieldTypeBooleanDto != null) {
                            Boolean bool = formFieldTypeBooleanDto.f66074a;
                            formFieldBoolean = new FormFieldBoolean(bool != null ? bool.booleanValue() : false);
                        } else {
                            formFieldFreeform = new FormFieldFreeform(null, null);
                        }
                    }
                }
                formFieldFreeform = formFieldBoolean;
            }
        }
        return new FormField(z, i2, formSectionType, formFieldFreeform);
    }

    public static final FormFieldPhone k(FormFieldPhoneDto formFieldPhoneDto) {
        return new FormFieldPhone(true, formFieldPhoneDto.f66072f, FormSectionType.PHONE, formFieldPhoneDto.f66069b, formFieldPhoneDto.f66068a, CollectionsKt.o0(CollectionsKt.P(j(formFieldPhoneDto.f66071e, FormSectionType.PHONE_NUMBER), j(formFieldPhoneDto.d, FormSectionType.PHONE_NUMBER_COUNTRY), j(formFieldPhoneDto.f66070c, FormSectionType.PHONE_NUMBER_TYPE)), new Comparator() { // from class: com.vuitton.core.infrastructure.data.forms.models.FormMapperKt$toDomain$$inlined$sortedBy$3
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Integer.valueOf(((FormField) obj).f67588c).compareTo(Integer.valueOf(((FormField) obj2).f67588c));
            }
        }));
    }
}
