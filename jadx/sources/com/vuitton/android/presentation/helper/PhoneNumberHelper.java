package com.vuitton.android.presentation.helper;

import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonemetadata$PhoneMetadata;
import com.google.i18n.phonenumbers.Phonenumber$PhoneNumber;
import com.vuitton.foundation.logger.LegacyLogger;
import defpackage.fc;
import java.util.Set;
import java.util.logging.Level;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/helper/PhoneNumberHelper;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class PhoneNumberHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set f51519a = ArraysKt.Z(new PhoneNumberUtil.PhoneNumberType[]{PhoneNumberUtil.PhoneNumberType.MOBILE, PhoneNumberUtil.PhoneNumberType.FIXED_LINE_OR_MOBILE});

    public static boolean a(String str, String str2) {
        int i2;
        str.getClass();
        str2.getClass();
        if (b(str, str2)) {
            PhoneNumberUtil phoneNumberUtilD = PhoneNumberUtil.d();
            try {
                Phonenumber$PhoneNumber phonenumber$PhoneNumberP = phoneNumberUtilD.p(str2, str);
                int i3 = phonenumber$PhoneNumberP.f35645c;
                if (phoneNumberUtilD.f35624f.contains(str)) {
                    Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadataE = phoneNumberUtilD.e(str);
                    if (phonemetadata$PhoneMetadataE == null) {
                        throw new IllegalArgumentException("Invalid region code: ".concat(str));
                    }
                    i2 = phonemetadata$PhoneMetadataE.K;
                } else {
                    PhoneNumberUtil.f35616h.log(Level.WARNING, "Invalid or missing region code (" + str + ") provided.");
                    i2 = 0;
                }
                if (i3 == i2) {
                    Set set = f51519a;
                    Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadataF = phoneNumberUtilD.f(phonenumber$PhoneNumberP.f35645c, phoneNumberUtilD.j(phonenumber$PhoneNumberP));
                    if (set.contains(phonemetadata$PhoneMetadataF == null ? PhoneNumberUtil.PhoneNumberType.UNKNOWN : phoneNumberUtilD.i(PhoneNumberUtil.g(phonenumber$PhoneNumberP), phonemetadata$PhoneMetadataF))) {
                        return true;
                    }
                }
            } catch (NumberParseException unused) {
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0042 A[Catch: NumberParseException -> 0x0051, TRY_LEAVE, TryCatch #0 {NumberParseException -> 0x0051, blocks: (B:3:0x000b, B:5:0x001b, B:7:0x0023, B:9:0x0029, B:12:0x002e, B:13:0x0041, B:14:0x0042), top: B:22:0x000b }] */
    /* JADX WARN: Code duplicated, block: B:16:0x004e A[RETURN] */
    public static boolean b(String str, String str2) {
        str.getClass();
        str2.getClass();
        PhoneNumberUtil phoneNumberUtilD = PhoneNumberUtil.d();
        try {
            Phonenumber$PhoneNumber phonenumber$PhoneNumberP = phoneNumberUtilD.p(str2, str);
            String strJ = phoneNumberUtilD.j(phonenumber$PhoneNumberP);
            int i2 = phonenumber$PhoneNumberP.f35645c;
            Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadataF = phoneNumberUtilD.f(i2, strJ);
            if (phonemetadata$PhoneMetadataF != null) {
                if (!"001".equals(strJ)) {
                    Phonemetadata$PhoneMetadata phonemetadata$PhoneMetadataE = phoneNumberUtilD.e(strJ);
                    if (phonemetadata$PhoneMetadataE == null) {
                        throw new IllegalArgumentException("Invalid region code: " + strJ);
                    }
                    if (i2 == phonemetadata$PhoneMetadataE.K) {
                        if (phoneNumberUtilD.i(PhoneNumberUtil.g(phonenumber$PhoneNumberP), phonemetadata$PhoneMetadataF) != PhoneNumberUtil.PhoneNumberType.UNKNOWN) {
                            return true;
                        }
                    }
                } else if (phoneNumberUtilD.i(PhoneNumberUtil.g(phonenumber$PhoneNumberP), phonemetadata$PhoneMetadataF) != PhoneNumberUtil.PhoneNumberType.UNKNOWN) {
                    return true;
                }
            }
            return false;
        } catch (NumberParseException e2) {
            StringBuilder sbS = fc.s("Can't parse ", str2, " with code ", str, ". Reason: ");
            sbS.append(e2);
            LegacyLogger.f66205a.c("PhoneNumberHelper", sbS.toString(), null);
            return false;
        }
    }

    public static Pair c(String str) {
        str.getClass();
        try {
            Phonenumber$PhoneNumber phonenumber$PhoneNumberP = PhoneNumberUtil.d().p(str, "");
            return new Pair("+" + phonenumber$PhoneNumberP.f35645c, String.valueOf(phonenumber$PhoneNumberP.d));
        } catch (NumberParseException e2) {
            LegacyLogger.f66205a.c("InvalidPhoneNumber", "Can't separate " + str + " into phone number and prefix. Reason: " + e2, null);
            return new Pair("", "");
        }
    }
}
