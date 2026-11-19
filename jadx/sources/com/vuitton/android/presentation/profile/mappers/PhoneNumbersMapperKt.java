package com.vuitton.android.presentation.profile.mappers;

import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.vuitton.android.presentation.profile.models.PhoneNumberTypeUiModel;
import com.vuitton.android.presentation.profile.models.PhoneNumberUiModel;
import com.vuitton.foundation.model.domain.model.account.PhoneNumber;
import com.vuitton.foundation.model.domain.model.account.PhoneNumberType;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PhoneNumbersMapperKt {

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f51846a;

        static {
            int[] iArr = new int[PhoneNumberType.values().length];
            try {
                iArr[PhoneNumberType.MOBILE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PhoneNumberType.HOME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PhoneNumberType.WORK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f51846a = iArr;
            int[] iArr2 = new int[PhoneNumberTypeUiModel.values().length];
            try {
                iArr2[PhoneNumberTypeUiModel.MOBILE.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[PhoneNumberTypeUiModel.HOME.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[PhoneNumberTypeUiModel.WORK.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static final PhoneNumberUiModel a(PhoneNumber phoneNumber) {
        PhoneNumberTypeUiModel phoneNumberTypeUiModel;
        String strC;
        phoneNumber.getClass();
        String str = phoneNumber.f66232a;
        String str2 = phoneNumber.f66234c;
        int i2 = WhenMappings.f51846a[phoneNumber.f66233b.ordinal()];
        if (i2 == 1) {
            phoneNumberTypeUiModel = PhoneNumberTypeUiModel.MOBILE;
        } else if (i2 != 2) {
            phoneNumberTypeUiModel = i2 != 3 ? PhoneNumberTypeUiModel.UNKNOWN : PhoneNumberTypeUiModel.WORK;
        } else {
            phoneNumberTypeUiModel = PhoneNumberTypeUiModel.HOME;
        }
        PhoneNumberUtil phoneNumberUtilD = PhoneNumberUtil.d();
        try {
            strC = phoneNumberUtilD.c(phoneNumberUtilD.p(str, str2), PhoneNumberUtil.PhoneNumberFormat.INTERNATIONAL);
        } catch (NumberParseException unused) {
            strC = str;
        }
        strC.getClass();
        return new PhoneNumberUiModel(str, phoneNumberTypeUiModel, str2, strC);
    }
}
