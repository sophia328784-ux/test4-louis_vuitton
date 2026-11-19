package com.vuitton.android.presentation.screen.account.addresseditor.mappers;

import com.vuitton.android.presentation.screen.dynamicform.model.ext.FormFieldTypeUiModelExtKt;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumValueUiModel;
import com.vuitton.foundation.model.domain.extensions.StringKtExtKt;
import com.vuitton.foundation.model.domain.model.forms.Civility;
import com.vuitton.foundation.model.domain.model.profile.Address;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AddressFormMapperKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f52263a;

        static {
            int[] iArr = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr[FormSectionTypeUiModel.ADDRESS1.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormSectionTypeUiModel.ADDRESS2.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FormSectionTypeUiModel.ADDRESS3.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FormSectionTypeUiModel.CITY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FormSectionTypeUiModel.CIVILITY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[FormSectionTypeUiModel.COUNTRY.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[FormSectionTypeUiModel.COUNTY.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[FormSectionTypeUiModel.DESCRIPTION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[FormSectionTypeUiModel.FIRSTNAME1.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[FormSectionTypeUiModel.FIRSTNAME2.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[FormSectionTypeUiModel.LASTNAME1.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[FormSectionTypeUiModel.LASTNAME2.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER_TYPE1.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER_TYPE2.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER_TYPE3.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY1.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY2.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER_COUNTRY3.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER1.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER2.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[FormSectionTypeUiModel.PHONE_NUMBER3.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[FormSectionTypeUiModel.POSTAL_CODE.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[FormSectionTypeUiModel.STATE.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[FormSectionTypeUiModel.STREET.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[FormSectionTypeUiModel.STREET_NUMBER.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            f52263a = iArr;
        }
    }

    public static final String a(String str, List list) {
        Object next;
        str.getClass();
        list.getClass();
        Iterator it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((Civility) next).f67579b, str));
        Civility civility = (Civility) next;
        return StringKtExtKt.h(civility != null ? civility.f67578a : null);
    }

    public static final Object b(FormSectionTypeUiModel formSectionTypeUiModel, Address address, List list) {
        formSectionTypeUiModel.getClass();
        list.getClass();
        Object objA = null;
        switch (WhenMappings.f52263a[formSectionTypeUiModel.ordinal()]) {
            case 1:
                objA = address.f68157i;
                break;
            case 2:
                objA = address.f68158j;
                break;
            case 3:
                objA = address.f68159k;
                break;
            case 4:
                objA = address.o;
                break;
            case 5:
                objA = a(address.d, list);
                break;
            case 6:
                String str = address.t;
                String str2 = address.s;
                String strH = StringKtExtKt.h(str);
                if (strH == null) {
                    strH = str2;
                }
                objA = new FormEnumValueUiModel(strH, str2);
                break;
            case 7:
                objA = address.n;
                break;
            case 8:
                objA = address.f68153c;
                break;
            case 9:
                objA = address.f68154e;
                break;
            case 10:
                objA = address.g;
                break;
            case 11:
                objA = address.f68155f;
                break;
            case 12:
                objA = address.f68156h;
                break;
            case 13:
                objA = address.y;
                break;
            case 14:
                objA = address.D;
                break;
            case 15:
                objA = address.I;
                break;
            case 16:
                objA = address.x;
                break;
            case 17:
                objA = address.C;
                break;
            case 18:
                objA = address.H;
                break;
            case 19:
                objA = address.w;
                break;
            case 20:
                objA = address.B;
                break;
            case 21:
                objA = address.G;
                break;
            case 22:
                objA = address.p;
                break;
            case 23:
                String str3 = address.q;
                if (str3 != null) {
                    String strH2 = StringKtExtKt.h(address.r);
                    if (strH2 == null) {
                        strH2 = str3;
                    }
                    objA = new FormEnumValueUiModel(strH2, str3);
                }
                break;
            case 24:
                objA = address.m;
                break;
            case 25:
                objA = address.l;
                break;
        }
        return FormFieldTypeUiModelExtKt.b(objA);
    }
}
