package com.appsflyer.internal;

import defpackage.d21;
import defpackage.tr;
import java.io.IOException;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.text.CharCategory;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\u0007J\u001f\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\n"}, d2 = {"Lcom/appsflyer/internal/AFj1jSDK;", "", "<init>", "()V", "", "p0", "AFKeystoreWrapper", "(Ljava/lang/String;)Ljava/lang/String;", "p1", "unregisterClient", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "AFLogger"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AFj1jSDK {
    public static final AFj1jSDK INSTANCE = new AFj1jSDK();

    /* JADX INFO: loaded from: classes4.dex */
    public /* synthetic */ class AFa1vSDK {
        public static final /* synthetic */ int[] d;

        static {
            int[] iArr = new int[CharCategory.values().length];
            try {
                iArr[CharCategory.CONTROL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CharCategory.FORMAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CharCategory.DASH_PUNCTUATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CharCategory.START_PUNCTUATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CharCategory.END_PUNCTUATION.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[CharCategory.CONNECTOR_PUNCTUATION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[CharCategory.OTHER_PUNCTUATION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[CharCategory.INITIAL_QUOTE_PUNCTUATION.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[CharCategory.FINAL_QUOTE_PUNCTUATION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            d = iArr;
        }
    }

    private AFj1jSDK() {
    }

    public static String AFKeystoreWrapper(String p0) {
        p0.getClass();
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < p0.length(); i2++) {
            char cCharAt = p0.charAt(i2);
            if (!CharsKt.c(cCharAt)) {
                int i3 = AFa1vSDK.d[CharsKt.b(cCharAt).ordinal()];
                if (i3 != 1 && i3 != 2) {
                    sb.append(cCharAt);
                }
            }
        }
        String string = sb.toString();
        Locale locale = Locale.ROOT;
        locale.getClass();
        String lowerCase = string.toLowerCase(locale);
        lowerCase.getClass();
        return lowerCase;
    }

    public static String AFLogger(String p0) {
        p0.getClass();
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < p0.length(); i2++) {
            char cCharAt = p0.charAt(i2);
            switch (AFa1vSDK.d[CharsKt.b(cCharAt).ordinal()]) {
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    break;
                default:
                    sb.append(cCharAt);
                    break;
            }
        }
        String string = sb.toString();
        Locale locale = Locale.ROOT;
        locale.getClass();
        String lowerCase = string.toLowerCase(locale);
        lowerCase.getClass();
        return lowerCase;
    }

    public static String unregisterClient(String p0, String p1) {
        p0.getClass();
        p1.getClass();
        return tr.g("+", StringsKt.e0(AFKeystoreWrapper(p0, p1), '0'));
    }

    public static String AFKeystoreWrapper(String p0, String p1) throws IOException {
        String strJ = d21.j(p0, p1);
        StringBuilder sb = new StringBuilder();
        int length = strJ.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = strJ.charAt(i2);
            if (Character.isDigit(cCharAt)) {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }
}
