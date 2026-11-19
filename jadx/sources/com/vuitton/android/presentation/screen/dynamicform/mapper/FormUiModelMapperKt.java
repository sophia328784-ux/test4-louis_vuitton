package com.vuitton.android.presentation.screen.dynamicform.mapper;

import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.text.input.KeyboardType;
import com.vuitton.android.R;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldGenericUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldPhoneUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldBooleanUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldDependentEnumUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldDependentRemoteEnumUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldEnumUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldFreeformUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldReadOnlyEnumUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.FormFieldTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumDependentValueUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModel;
import com.vuitton.foundation.model.domain.model.account.PhoneNumberType;
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
import defpackage.md;
import defpackage.tr;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class FormUiModelMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57483a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f57484b;

        static {
            int[] iArr = new int[FormSectionType.values().length];
            try {
                iArr[FormSectionType.ADDRESS1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormSectionType.ADDRESS2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FormSectionType.ADDRESS3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FormSectionType.BIRTHDATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FormSectionType.BRANCH_ID.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[FormSectionType.CITY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[FormSectionType.CIVILITY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[FormSectionType.COUNTRY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[FormSectionType.COUNTY.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[FormSectionType.DESCRIPTION.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[FormSectionType.EMAIL.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[FormSectionType.FIRSTNAME.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[FormSectionType.FIRSTNAME2.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[FormSectionType.LASTNAME.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[FormSectionType.LASTNAME2.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[FormSectionType.PHONE.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[FormSectionType.PHONE_NUMBER.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[FormSectionType.PHONE_NUMBER_COUNTRY.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[FormSectionType.PHONE_NUMBER_TYPE.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[FormSectionType.POSTAL_CODE.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[FormSectionType.STATE.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[FormSectionType.STREET.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[FormSectionType.STREET_NUMBER.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[FormSectionType.VAT_CODE.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[FormSectionType.CONFIRM_PASSWORD.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[FormSectionType.NEW_PASSWORD.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[FormSectionType.PASSWORD.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[FormSectionType.LEGACY_CONSENTS.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[FormSectionType.ALL_MARKETING_COMMUNICATIONS_CONSENTS.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[FormSectionType.PRIVACY_POLICY_CONSENT.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[FormSectionType.MARKETING_EMAILS_CONSENT.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[FormSectionType.EMAIL_TRACKING_CONSENT.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[FormSectionType.BOOKING_MARKETING_EMAILS_CONSENT.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[FormSectionType.BOOKING_PERSONAL_DATA_COLLECTION_CONSENT.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[FormSectionType.TARGETED_ADVERTISING_CONSENT.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[FormSectionType.MARKETING_TEXTS_CONSENT.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            f57483a = iArr;
            int[] iArr2 = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr2[FormSectionTypeUiModel.ADDRESS1.ordinal()] = 1;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr2[FormSectionTypeUiModel.ADDRESS2.ordinal()] = 2;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr2[FormSectionTypeUiModel.ADDRESS3.ordinal()] = 3;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr2[FormSectionTypeUiModel.BIRTHDATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr2[FormSectionTypeUiModel.CITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr2[FormSectionTypeUiModel.CIVILITY.ordinal()] = 6;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr2[FormSectionTypeUiModel.COUNTRY.ordinal()] = 7;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr2[FormSectionTypeUiModel.COUNTY.ordinal()] = 8;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr2[FormSectionTypeUiModel.DESCRIPTION.ordinal()] = 9;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr2[FormSectionTypeUiModel.FIRSTNAME1.ordinal()] = 10;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr2[FormSectionTypeUiModel.FIRSTNAME2.ordinal()] = 11;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr2[FormSectionTypeUiModel.LASTNAME1.ordinal()] = 12;
            } catch (NoSuchFieldError unused48) {
            }
            try {
                iArr2[FormSectionTypeUiModel.LASTNAME2.ordinal()] = 13;
            } catch (NoSuchFieldError unused49) {
            }
            try {
                iArr2[FormSectionTypeUiModel.PHONE_BLOC.ordinal()] = 14;
            } catch (NoSuchFieldError unused50) {
            }
            try {
                iArr2[FormSectionTypeUiModel.PHONE_NUMBER_TYPE1.ordinal()] = 15;
            } catch (NoSuchFieldError unused51) {
            }
            try {
                iArr2[FormSectionTypeUiModel.PHONE_NUMBER_TYPE2.ordinal()] = 16;
            } catch (NoSuchFieldError unused52) {
            }
            try {
                iArr2[FormSectionTypeUiModel.PHONE_NUMBER_TYPE3.ordinal()] = 17;
            } catch (NoSuchFieldError unused53) {
            }
            try {
                iArr2[FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1.ordinal()] = 18;
            } catch (NoSuchFieldError unused54) {
            }
            try {
                iArr2[FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY2.ordinal()] = 19;
            } catch (NoSuchFieldError unused55) {
            }
            try {
                iArr2[FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY3.ordinal()] = 20;
            } catch (NoSuchFieldError unused56) {
            }
            try {
                iArr2[FormSectionTypeUiModel.POSTAL_CODE.ordinal()] = 21;
            } catch (NoSuchFieldError unused57) {
            }
            try {
                iArr2[FormSectionTypeUiModel.STATE.ordinal()] = 22;
            } catch (NoSuchFieldError unused58) {
            }
            try {
                iArr2[FormSectionTypeUiModel.STREET.ordinal()] = 23;
            } catch (NoSuchFieldError unused59) {
            }
            try {
                iArr2[FormSectionTypeUiModel.PHONE_NUMBER1.ordinal()] = 24;
            } catch (NoSuchFieldError unused60) {
            }
            try {
                iArr2[FormSectionTypeUiModel.PHONE_NUMBER2.ordinal()] = 25;
            } catch (NoSuchFieldError unused61) {
            }
            try {
                iArr2[FormSectionTypeUiModel.PHONE_NUMBER3.ordinal()] = 26;
            } catch (NoSuchFieldError unused62) {
            }
            try {
                iArr2[FormSectionTypeUiModel.BRANCH_ID.ordinal()] = 27;
            } catch (NoSuchFieldError unused63) {
            }
            try {
                iArr2[FormSectionTypeUiModel.STREET_NUMBER.ordinal()] = 28;
            } catch (NoSuchFieldError unused64) {
            }
            try {
                iArr2[FormSectionTypeUiModel.VAT_CODE.ordinal()] = 29;
            } catch (NoSuchFieldError unused65) {
            }
            try {
                iArr2[FormSectionTypeUiModel.EMAIL.ordinal()] = 30;
            } catch (NoSuchFieldError unused66) {
            }
            try {
                iArr2[FormSectionTypeUiModel.CONFIRM_PASSWORD.ordinal()] = 31;
            } catch (NoSuchFieldError unused67) {
            }
            try {
                iArr2[FormSectionTypeUiModel.NEW_PASSWORD.ordinal()] = 32;
            } catch (NoSuchFieldError unused68) {
            }
            try {
                iArr2[FormSectionTypeUiModel.PASSWORD.ordinal()] = 33;
            } catch (NoSuchFieldError unused69) {
            }
            try {
                iArr2[FormSectionTypeUiModel.LEGACY_CONSENTS.ordinal()] = 34;
            } catch (NoSuchFieldError unused70) {
            }
            try {
                iArr2[FormSectionTypeUiModel.ALL_MARKETING_COMMUNICATIONS_CONSENTS.ordinal()] = 35;
            } catch (NoSuchFieldError unused71) {
            }
            try {
                iArr2[FormSectionTypeUiModel.PRIVACY_POLICY_CONSENT.ordinal()] = 36;
            } catch (NoSuchFieldError unused72) {
            }
            try {
                iArr2[FormSectionTypeUiModel.MARKETING_EMAILS_CONSENT.ordinal()] = 37;
            } catch (NoSuchFieldError unused73) {
            }
            try {
                iArr2[FormSectionTypeUiModel.EMAIL_TRACKING_CONSENT.ordinal()] = 38;
            } catch (NoSuchFieldError unused74) {
            }
            try {
                iArr2[FormSectionTypeUiModel.TARGETED_ADVERTISING_CONSENT.ordinal()] = 39;
            } catch (NoSuchFieldError unused75) {
            }
            try {
                iArr2[FormSectionTypeUiModel.MARKETING_TEXTS_CONSENT.ordinal()] = 40;
            } catch (NoSuchFieldError unused76) {
            }
            try {
                iArr2[FormSectionTypeUiModel.BOOKING_MARKETING_EMAILS_CONSENT.ordinal()] = 41;
            } catch (NoSuchFieldError unused77) {
            }
            try {
                iArr2[FormSectionTypeUiModel.BOOKING_PERSONAL_DATA_COLLECTION_CONSENT.ordinal()] = 42;
            } catch (NoSuchFieldError unused78) {
            }
            f57484b = iArr2;
        }
    }

    public static final FormSectionTypeUiModel a(String str) {
        Object next;
        FormSectionTypeUiModel formSectionTypeUiModelD;
        Iterator<E> it = FormSectionType.a().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((FormSectionType) next).getValue(), str));
        FormSectionType formSectionType = (FormSectionType) next;
        if (formSectionType != null && (formSectionTypeUiModelD = d(formSectionType)) != null) {
            return formSectionTypeUiModelD;
        }
        md.n(tr.g("Unknown section type: ", str));
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00a1  */
    public static final FormFieldGenericUiModel b(FormFieldGeneric formFieldGeneric) {
        Object next;
        boolean z;
        ArrayList arrayList;
        FormEnumValueUiModel d;
        List f57508c;
        FormEnumValueUiModel formEnumValueUiModel;
        if (formFieldGeneric instanceof FormField) {
            return c((FormField) formFieldGeneric);
        }
        if (!(formFieldGeneric instanceof FormFieldPhone)) {
            v40.g();
            return null;
        }
        FormFieldPhone formFieldPhone = (FormFieldPhone) formFieldGeneric;
        List list = formFieldPhone.g;
        ArrayList<FormFieldUiModel> arrayList2 = new ArrayList(CollectionsKt.t(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(c((FormField) it.next()));
        }
        String value = PhoneNumberType.MOBILE.getValue();
        Iterator it2 = arrayList2.iterator();
        do {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (((FormFieldUiModel) next).d != FormSectionTypeUiModel.PHONE_NUMBER_TYPE1);
        FormFieldUiModel formFieldUiModel = (FormFieldUiModel) next;
        FormFieldTypeUiModel formFieldTypeUiModel = formFieldUiModel != null ? formFieldUiModel.f57496e : null;
        FormFieldTypeUiModel.EnumBasedFormField enumBasedFormField = formFieldTypeUiModel instanceof FormFieldTypeUiModel.EnumBasedFormField ? (FormFieldTypeUiModel.EnumBasedFormField) formFieldTypeUiModel : null;
        if (formFieldPhone.f67603f == 1 && formFieldPhone.f67602e == 1) {
            if (StringsKt.s((enumBasedFormField == null || (f57508c = enumBasedFormField.getF57508c()) == null || (formEnumValueUiModel = (FormEnumValueUiModel) CollectionsKt.j0(f57508c)) == null) ? null : formEnumValueUiModel.f57525b, value, true)) {
                z = StringsKt.s((enumBasedFormField == null || (d = enumBasedFormField.getD()) == null) ? null : d.f57525b, value, true);
            }
        }
        boolean z2 = z;
        boolean z3 = formFieldPhone.f67600b;
        FormSectionTypeUiModel formSectionTypeUiModelD = d(formFieldPhone.d);
        int i2 = formFieldPhone.f67602e;
        int i3 = formFieldPhone.f67603f;
        if (z2) {
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList2, 10));
            for (FormFieldUiModel formFieldUiModelC : arrayList2) {
                if (formFieldUiModelC.d == FormSectionTypeUiModel.PHONE_NUMBER1) {
                    formFieldUiModelC = FormFieldUiModel.c(formFieldUiModelC, false, null, null, new StringResourceUiModel.WithoutTrailingAsterisk(new StringResourceUiModel.ResId(R.string.booking_form_phone_number_label, null, 2, null)), new StringResourceUiModel.ResId(R.string.form_invalid_mobile_phone_error, null, 2, null), null, null, false, false, 999);
                }
                arrayList3.add(formFieldUiModelC);
            }
            arrayList = arrayList3;
        } else {
            arrayList = arrayList2;
        }
        return new FormFieldPhoneUiModel(z3, formSectionTypeUiModelD, i2, i3, arrayList, z2);
    }

    public static final FormFieldUiModel c(FormField formField) {
        FormFieldTypeUiModel formFieldReadOnlyEnumUiModel;
        int i2;
        ContentType contentType;
        ContentType contentType2;
        StringResourceUiModel resId;
        StringResourceUiModel resId2;
        FormSectionType formSectionType = formField.d;
        FormSectionTypeUiModel formSectionTypeUiModelD = d(formSectionType);
        FormFieldUiModel.Companion companion = FormFieldUiModel.o;
        boolean z = formField.f67587b;
        FormFieldType formFieldType = formField.f67589e;
        if (formFieldType instanceof FormFieldBoolean) {
            formFieldReadOnlyEnumUiModel = new FormFieldBooleanUiModel(((FormFieldBoolean) formFieldType).f67590a);
        } else if (formFieldType instanceof FormFieldDependentEnum) {
            FormFieldDependentEnum formFieldDependentEnum = (FormFieldDependentEnum) formFieldType;
            FormSectionTypeUiModel formSectionTypeUiModelA = a(formFieldDependentEnum.f67591a);
            EmptyList emptyList = EmptyList.f71768b;
            List<FormEnumDependentValue> list = formFieldDependentEnum.f67592b;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            for (FormEnumDependentValue formEnumDependentValue : list) {
                String str = formEnumDependentValue.f67582a;
                FormEnumValue formEnumValue = formEnumDependentValue.f67584c;
                FormEnumValueUiModel formEnumValueUiModelE = formEnumValue != null ? e(formEnumValue) : null;
                List list2 = formEnumDependentValue.f67583b;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    arrayList2.add(e((FormEnumValue) it.next()));
                }
                arrayList.add(new FormEnumDependentValueUiModel(str, arrayList2, formEnumValueUiModelE));
            }
            formFieldReadOnlyEnumUiModel = new FormFieldDependentEnumUiModel(formSectionTypeUiModelA, arrayList, emptyList, null);
        } else if (formFieldType instanceof FormFieldDependentRemoteEnum) {
            FormFieldDependentRemoteEnum formFieldDependentRemoteEnum = (FormFieldDependentRemoteEnum) formFieldType;
            FormSectionTypeUiModel formSectionTypeUiModelA2 = a(formFieldDependentRemoteEnum.f67593a);
            EmptyList emptyList2 = EmptyList.f71768b;
            String str2 = formFieldDependentRemoteEnum.f67594b;
            formFieldReadOnlyEnumUiModel = new FormFieldDependentRemoteEnumUiModel(formSectionTypeUiModelA2, emptyList2, new FormEnumValueUiModel(str2, str2));
        } else if (formFieldType instanceof FormFieldEnum) {
            FormFieldEnum formFieldEnum = (FormFieldEnum) formFieldType;
            List list3 = formFieldEnum.f67595a;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
            Iterator it2 = list3.iterator();
            while (it2.hasNext()) {
                arrayList3.add(e((FormEnumValue) it2.next()));
            }
            FormEnumValue formEnumValue2 = formFieldEnum.f67596b;
            formFieldReadOnlyEnumUiModel = new FormFieldEnumUiModel(formEnumValue2 != null ? e(formEnumValue2) : null, arrayList3);
        } else if (formFieldType instanceof FormFieldFreeform) {
            FormFieldFreeform formFieldFreeform = (FormFieldFreeform) formFieldType;
            String str3 = formFieldFreeform.f67597a;
            String str4 = formFieldFreeform.f67598b;
            if (str4 == null) {
                str4 = "";
            }
            String str5 = str4;
            int[] iArr = WhenMappings.f57484b;
            switch (iArr[formSectionTypeUiModelD.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                    KeyboardType.f10809b.getClass();
                    i2 = KeyboardType.f10810c;
                    break;
                case 24:
                case 25:
                case 26:
                    KeyboardType.f10809b.getClass();
                    i2 = KeyboardType.f10812f;
                    break;
                case 27:
                case 28:
                case 29:
                    KeyboardType.f10809b.getClass();
                    i2 = KeyboardType.f10811e;
                    break;
                case 30:
                    KeyboardType.f10809b.getClass();
                    i2 = KeyboardType.f10813h;
                    break;
                case 31:
                    KeyboardType.f10809b.getClass();
                    i2 = KeyboardType.f10814i;
                    break;
                case 32:
                    KeyboardType.f10809b.getClass();
                    i2 = KeyboardType.f10814i;
                    break;
                case 33:
                    KeyboardType.f10809b.getClass();
                    i2 = KeyboardType.f10814i;
                    break;
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                    KeyboardType.f10809b.getClass();
                    i2 = KeyboardType.f10810c;
                    break;
                case EACTags.CURRENCY_CODE /* 42 */:
                    KeyboardType.f10809b.getClass();
                    i2 = KeyboardType.f10810c;
                    break;
                default:
                    v40.g();
                    return null;
            }
            int i3 = i2;
            switch (iArr[formSectionTypeUiModelD.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 8:
                case 9:
                case 14:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                case 20:
                case 27:
                case 29:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case EACTags.CURRENCY_CODE /* 42 */:
                    contentType = null;
                    formFieldReadOnlyEnumUiModel = new FormFieldFreeformUiModel(str3, str5, i3, contentType, null);
                    break;
                case 5:
                    ContentType.f8649a.getClass();
                    contentType2 = ContentType.Companion.q;
                    contentType = contentType2;
                    formFieldReadOnlyEnumUiModel = new FormFieldFreeformUiModel(str3, str5, i3, contentType, null);
                    break;
                case 6:
                    ContentType.f8649a.getClass();
                    contentType2 = ContentType.Companion.F;
                    contentType = contentType2;
                    formFieldReadOnlyEnumUiModel = new FormFieldFreeformUiModel(str3, str5, i3, contentType, null);
                    break;
                case 7:
                    ContentType.f8649a.getClass();
                    contentType2 = ContentType.Companion.o;
                    contentType = contentType2;
                    formFieldReadOnlyEnumUiModel = new FormFieldFreeformUiModel(str3, str5, i3, contentType, null);
                    break;
                case 10:
                case 11:
                    ContentType.f8649a.getClass();
                    contentType2 = ContentType.Companion.v;
                    contentType = contentType2;
                    formFieldReadOnlyEnumUiModel = new FormFieldFreeformUiModel(str3, str5, i3, contentType, null);
                    break;
                case 12:
                case 13:
                    ContentType.f8649a.getClass();
                    contentType2 = ContentType.Companion.w;
                    contentType = contentType2;
                    formFieldReadOnlyEnumUiModel = new FormFieldFreeformUiModel(str3, str5, i3, contentType, null);
                    break;
                case 21:
                    ContentType.f8649a.getClass();
                    contentType2 = ContentType.Companion.f8655h;
                    contentType = contentType2;
                    formFieldReadOnlyEnumUiModel = new FormFieldFreeformUiModel(str3, str5, i3, contentType, null);
                    break;
                case 22:
                    ContentType.f8649a.getClass();
                    contentType2 = ContentType.Companion.p;
                    contentType = contentType2;
                    formFieldReadOnlyEnumUiModel = new FormFieldFreeformUiModel(str3, str5, i3, contentType, null);
                    break;
                case 23:
                    ContentType.f8649a.getClass();
                    contentType2 = ContentType.Companion.r;
                    contentType = contentType2;
                    formFieldReadOnlyEnumUiModel = new FormFieldFreeformUiModel(str3, str5, i3, contentType, null);
                    break;
                case 24:
                case 25:
                case 26:
                    ContentType.f8649a.getClass();
                    contentType2 = ContentType.Companion.B;
                    contentType = contentType2;
                    formFieldReadOnlyEnumUiModel = new FormFieldFreeformUiModel(str3, str5, i3, contentType, null);
                    break;
                case 28:
                    ContentType.f8649a.getClass();
                    contentType2 = ContentType.Companion.r;
                    contentType = contentType2;
                    formFieldReadOnlyEnumUiModel = new FormFieldFreeformUiModel(str3, str5, i3, contentType, null);
                    break;
                case 30:
                    ContentType.f8649a.getClass();
                    contentType2 = ContentType.Companion.d;
                    contentType = contentType2;
                    formFieldReadOnlyEnumUiModel = new FormFieldFreeformUiModel(str3, str5, i3, contentType, null);
                    break;
                case 31:
                case 32:
                case 33:
                    ContentType.f8649a.getClass();
                    contentType2 = ContentType.Companion.f8654f;
                    contentType = contentType2;
                    formFieldReadOnlyEnumUiModel = new FormFieldFreeformUiModel(str3, str5, i3, contentType, null);
                    break;
                default:
                    v40.g();
                    return null;
            }
        } else {
            if (!(formFieldType instanceof FormFieldReadOnlyEnum)) {
                v40.g();
                return null;
            }
            formFieldReadOnlyEnumUiModel = new FormFieldReadOnlyEnumUiModel(e(((FormFieldReadOnlyEnum) formFieldType).f67604a));
        }
        int[] iArr2 = WhenMappings.f57483a;
        switch (iArr2[formSectionType.ordinal()]) {
            case 1:
                resId = new StringResourceUiModel.ResId(R.string.mylv_myprofile_myinfos_address_address1, null, 2, null);
                break;
            case 2:
                resId = new StringResourceUiModel.ResId(R.string.mylv_myprofile_myinfos_address_address2, null, 2, null);
                break;
            case 3:
                resId = new StringResourceUiModel.ResId(R.string.mylv_myprofile_myinfos_address_complement, null, 2, null);
                break;
            case 4:
                resId = new StringResourceUiModel.ResId(R.string.mylv_date_of_birth_placeholder, null, 2, null);
                break;
            case 5:
                resId = new StringResourceUiModel.ResId(R.string.mylv_myprofile_myinfos_logininformation_editmyinfos_branchid, null, 2, null);
                break;
            case 6:
                resId = new StringResourceUiModel.ResId(R.string.mylv_myprofile_myinfos_address_city, null, 2, null);
                break;
            case 7:
                resId = new StringResourceUiModel.ResId(R.string.mylv_native_register_title_placeholder, null, 2, null);
                break;
            case 8:
                resId = new StringResourceUiModel.ResId(R.string.country, null, 2, null);
                break;
            case 9:
                resId = new StringResourceUiModel.ResId(R.string.mylv_address_countie, null, 2, null);
                break;
            case 10:
                resId = new StringResourceUiModel.ResId(R.string.mylv_myprofile_addressbookbrick_addressdescription, null, 2, null);
                break;
            case 11:
                resId = new StringResourceUiModel.ResId(R.string.profile_login_emailaddress, null, 2, null);
                break;
            case 12:
                resId = new StringResourceUiModel.ResId(R.string.profile_first_name_hint, null, 2, null);
                break;
            case 13:
                resId = new StringResourceUiModel.ResId(R.string.profile_first_name_2_hint, null, 2, null);
                break;
            case 14:
                resId = new StringResourceUiModel.ResId(R.string.profile_last_name_hint, null, 2, null);
                break;
            case 15:
                resId = new StringResourceUiModel.ResId(R.string.profile_last_name_2_hint, null, 2, null);
                break;
            case 16:
                resId = StringResourceUiModel.Empty.f51825b;
                break;
            case 17:
                resId = new StringResourceUiModel.ResId(R.string.profile_phone_number, null, 2, null);
                break;
            case 18:
                resId = new StringResourceUiModel.ResId(R.string.profile_call_sign, null, 2, null);
                break;
            case 19:
                resId = new StringResourceUiModel.ResId(R.string.profile_phone_type, null, 2, null);
                break;
            case 20:
                resId = new StringResourceUiModel.ResId(R.string.mylv_myprofile_myinfos_address_postcode, null, 2, null);
                break;
            case 21:
                resId = new StringResourceUiModel.ResId(R.string.mylv_myprofile_myinfos_address_state, null, 2, null);
                break;
            case 22:
                resId = new StringResourceUiModel.ResId(R.string.mylv_myprofile_myinfos_address_streetname, null, 2, null);
                break;
            case 23:
                resId = new StringResourceUiModel.ResId(R.string.mylv_myprofile_myinfos_address_streetnumber, null, 2, null);
                break;
            case 24:
                resId = new StringResourceUiModel.ResId(R.string.mylv_myprofile_myinfos_logininformation_editmyinfos_taxid, null, 2, null);
                break;
            case 25:
                resId = new StringResourceUiModel.ResId(R.string.mylv_native_register_confirm_password, null, 2, null);
                break;
            case 26:
                resId = new StringResourceUiModel.ResId(R.string.mylv_authent_native_password_placeholder, null, 2, null);
                break;
            case 27:
                resId = new StringResourceUiModel.ResId(R.string.mylv_authent_native_password_placeholder, null, 2, null);
                break;
            case 28:
                resId = new StringResourceUiModel.ResId(R.string.mylv_native_register_consents, null, 2, null);
                break;
            case 29:
                resId = new StringResourceUiModel.ResId(R.string.mylv_native_register_all_marketing_communications_consent, null, 2, null);
                break;
            case 30:
                resId = new StringResourceUiModel.ResId(R.string.mylv_native_register_consent_privacy_policy, null, 2, null);
                break;
            case 31:
                resId = new StringResourceUiModel.ResId(R.string.mylv_email, null, 2, null);
                break;
            case 32:
                resId = new StringResourceUiModel.ResId(R.string.mylv_cnil_email_tracking_consent_title, null, 2, null);
                break;
            case 33:
                resId = new StringResourceUiModel.ResId(R.string.booking_form_marketing_consent_label, null, 2, null);
                break;
            case 34:
                resId = new StringResourceUiModel.ResId(R.string.booking_form_korea_terms_checkbox_label, null, 2, null);
                break;
            case 35:
                resId = new StringResourceUiModel.ResId(R.string.mylv_native_register_online_platforms, null, 2, null);
                break;
            case 36:
                resId = new StringResourceUiModel.ResId(R.string.mylv_sms, null, 2, null);
                break;
            default:
                v40.g();
                return null;
        }
        switch (iArr2[formSectionType.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 16:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35:
            case 36:
                resId2 = StringResourceUiModel.Empty.f51825b;
                break;
            case 5:
                resId2 = new StringResourceUiModel.ResId(R.string.error_invalid_branch_id, null, 2, null);
                break;
            case 11:
                resId2 = new StringResourceUiModel.ResId(R.string.mylv_accountcreation_pleaseenteravalidemailaddress, null, 2, null);
                break;
            case 12:
                resId2 = new StringResourceUiModel.ResId(R.string.form_invalid_firstname_error, null, 2, null);
                break;
            case 13:
                resId2 = new StringResourceUiModel.ResId(R.string.form_invalid_firstname2_error, null, 2, null);
                break;
            case 14:
                resId2 = new StringResourceUiModel.ResId(R.string.form_invalid_lastname_error, null, 2, null);
                break;
            case 15:
                resId2 = new StringResourceUiModel.ResId(R.string.form_invalid_lastname2_error, null, 2, null);
                break;
            case 17:
                resId2 = new StringResourceUiModel.ResId(R.string.form_invalid_phone_number_error, null, 2, null);
                break;
            case 24:
                resId2 = new StringResourceUiModel.ResId(R.string.error_invalid_tax_id, null, 2, null);
                break;
            default:
                v40.g();
                return null;
        }
        companion.getClass();
        formSectionTypeUiModelD.getClass();
        resId.getClass();
        resId2.getClass();
        return new FormFieldUiModel(z, formSectionTypeUiModelD, formFieldReadOnlyEnumUiModel, resId, resId2, null, null, false, false, false, 3888).h(true);
    }

    public static final FormSectionTypeUiModel d(FormSectionType formSectionType) {
        switch (WhenMappings.f57483a[formSectionType.ordinal()]) {
            case 1:
                return FormSectionTypeUiModel.ADDRESS1;
            case 2:
                return FormSectionTypeUiModel.ADDRESS2;
            case 3:
                return FormSectionTypeUiModel.ADDRESS3;
            case 4:
                return FormSectionTypeUiModel.BIRTHDATE;
            case 5:
                return FormSectionTypeUiModel.BRANCH_ID;
            case 6:
                return FormSectionTypeUiModel.CITY;
            case 7:
                return FormSectionTypeUiModel.CIVILITY;
            case 8:
                return FormSectionTypeUiModel.COUNTRY;
            case 9:
                return FormSectionTypeUiModel.COUNTY;
            case 10:
                return FormSectionTypeUiModel.DESCRIPTION;
            case 11:
                return FormSectionTypeUiModel.EMAIL;
            case 12:
                return FormSectionTypeUiModel.FIRSTNAME1;
            case 13:
                return FormSectionTypeUiModel.FIRSTNAME2;
            case 14:
                return FormSectionTypeUiModel.LASTNAME1;
            case 15:
                return FormSectionTypeUiModel.LASTNAME2;
            case 16:
                return FormSectionTypeUiModel.PHONE_BLOC;
            case 17:
                return FormSectionTypeUiModel.PHONE_NUMBER1;
            case 18:
                return FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1;
            case 19:
                return FormSectionTypeUiModel.PHONE_NUMBER_TYPE1;
            case 20:
                return FormSectionTypeUiModel.POSTAL_CODE;
            case 21:
                return FormSectionTypeUiModel.STATE;
            case 22:
                return FormSectionTypeUiModel.STREET;
            case 23:
                return FormSectionTypeUiModel.STREET_NUMBER;
            case 24:
                return FormSectionTypeUiModel.VAT_CODE;
            case 25:
                return FormSectionTypeUiModel.CONFIRM_PASSWORD;
            case 26:
                return FormSectionTypeUiModel.NEW_PASSWORD;
            case 27:
                return FormSectionTypeUiModel.PASSWORD;
            case 28:
                return FormSectionTypeUiModel.LEGACY_CONSENTS;
            case 29:
                return FormSectionTypeUiModel.ALL_MARKETING_COMMUNICATIONS_CONSENTS;
            case 30:
                return FormSectionTypeUiModel.PRIVACY_POLICY_CONSENT;
            case 31:
                return FormSectionTypeUiModel.MARKETING_EMAILS_CONSENT;
            case 32:
                return FormSectionTypeUiModel.EMAIL_TRACKING_CONSENT;
            case 33:
                return FormSectionTypeUiModel.BOOKING_MARKETING_EMAILS_CONSENT;
            case 34:
                return FormSectionTypeUiModel.BOOKING_PERSONAL_DATA_COLLECTION_CONSENT;
            case 35:
                return FormSectionTypeUiModel.TARGETED_ADVERTISING_CONSENT;
            case 36:
                return FormSectionTypeUiModel.MARKETING_TEXTS_CONSENT;
            default:
                v40.g();
                return null;
        }
    }

    public static final FormEnumValueUiModel e(FormEnumValue formEnumValue) {
        formEnumValue.getClass();
        return new FormEnumValueUiModel(formEnumValue.f67585a, formEnumValue.f67586b);
    }

    public static final Object f(Form form) {
        form.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            List list = form.f67580a;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(b((FormFieldGeneric) it.next()));
            }
            return new FormUiModel(arrayList);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return new Result.Failure(th);
        }
    }
}
