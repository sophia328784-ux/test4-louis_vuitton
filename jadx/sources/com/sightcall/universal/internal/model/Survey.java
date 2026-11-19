package com.sightcall.universal.internal.model;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.sightcall.pratik.extensions.ContextExtensionsKt;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.pratik.utils.UtilsKt;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;

/* JADX INFO: loaded from: classes3.dex */
public class Survey implements Parcelable {
    public static final Parcelable.Creator<Survey> CREATOR = new Parcelable.Creator<Survey>() { // from class: com.sightcall.universal.internal.model.Survey.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Survey createFromParcel(Parcel parcel) {
            return new Survey(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Survey[] newArray(int i2) {
            return new Survey[i2];
        }
    };
    private static final String EXTRA_AGENT_LOGIN = "extra.agentlogin";
    private static final String EXTRA_CASE_REPORT_ID = "extra.casereportid";
    private static final String EXTRA_DISPLAY_NAME = "extra.displayname";
    private static final String EXTRA_NETWORK_CARRIER = "extra.networkcarrier";
    private static final String EXTRA_NETWORK_TYPE = "extra.networktype";
    private static final String EXTRA_REFERENCE = "extra.reference";
    private static final String EXTRA_USECASE_NAME = "extra.usecasename";
    public final String button;
    private final Bundle extras;
    public final boolean immediate;
    public final String raw;
    public final String title;

    public Survey(Parcel parcel) {
        this.immediate = parcel.readByte() != 0;
        this.title = parcel.readString();
        this.button = parcel.readString();
        this.raw = parcel.readString();
        this.extras = parcel.readBundle(getClass().getClassLoader());
    }

    private static String notNull(String str) {
        return str != null ? str : "";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getExtra(String str) {
        return this.extras.getString(str);
    }

    public boolean isValid() {
        return !TextUtils.isEmpty(this.raw);
    }

    public void putExtra(String str, String str2) {
        this.extras.putString(str, str2);
    }

    public String toString() {
        return "Survey{immediate=" + this.immediate + ", title='" + this.title + "', button='" + this.button + "', raw='" + this.raw + "', extras=" + this.extras + '}';
    }

    public void update(Context context, String str, String str2, String str3, String str4, String str5) {
        putExtra(EXTRA_REFERENCE, str);
        if (str4 != null) {
            putExtra(EXTRA_DISPLAY_NAME, str4);
        }
        if (str5 != null) {
            putExtra(EXTRA_AGENT_LOGIN, str5);
        }
        putExtra(EXTRA_NETWORK_TYPE, ContextExtensionsKt.networkType(context).name());
        putExtra(EXTRA_NETWORK_CARRIER, ContextExtensionsKt.networkCarrier(context));
        putExtra(EXTRA_USECASE_NAME, str2);
        if (str3 != null) {
            putExtra(EXTRA_CASE_REPORT_ID, str3);
        }
    }

    public Uri uri(Context context) {
        String strReplace = this.raw;
        if (strReplace == null) {
            return null;
        }
        for (Replacements replacements : Replacements.values()) {
            strReplace = strReplace.replace(replacements.target, notNull(Uri.encode(replacements.value(context, this))));
        }
        return Uri.parse(strReplace.replaceAll("\\$\\{.*?\\}", ""));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        parcel.writeByte(this.immediate ? (byte) 1 : (byte) 0);
        parcel.writeString(this.title);
        parcel.writeString(this.button);
        parcel.writeString(this.raw);
        parcel.writeBundle(this.extras);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class Replacements {
        private final String target;
        public static final Replacements OS_TYPE = new AnonymousClass1();
        public static final Replacements OS_VERSION = new AnonymousClass2();
        public static final Replacements COUNTRY_CODE = new AnonymousClass3();
        public static final Replacements LANGUAGE_CODE = new AnonymousClass4();
        public static final Replacements DEVICE_TYPE = new AnonymousClass5();
        public static final Replacements DEVICE_NAME = new AnonymousClass6();
        public static final Replacements APP_VERSION = new AnonymousClass7();
        public static final Replacements DISPLAY_NAME = new AnonymousClass8();
        public static final Replacements REFERENCE = new AnonymousClass9();
        public static final Replacements NETWORK_TYPE = new AnonymousClass10();
        public static final Replacements NETWORK_CARRIER = new AnonymousClass11();
        public static final Replacements AGENT_LOGIN = new AnonymousClass12();
        public static final Replacements CASE_REPORT_ID = new AnonymousClass13();
        public static final Replacements USECASE_NAME = new AnonymousClass14();
        private static final /* synthetic */ Replacements[] $VALUES = $values();

        private static /* synthetic */ Replacements[] $values() {
            return new Replacements[]{OS_TYPE, OS_VERSION, COUNTRY_CODE, LANGUAGE_CODE, DEVICE_TYPE, DEVICE_NAME, APP_VERSION, DISPLAY_NAME, REFERENCE, NETWORK_TYPE, NETWORK_CARRIER, AGENT_LOGIN, CASE_REPORT_ID, USECASE_NAME};
        }

        private Replacements(String str, int i2, String str2) {
            super(str, i2);
            this.target = str2;
        }

        public static Replacements valueOf(String str) {
            return (Replacements) Enum.valueOf(Replacements.class, str);
        }

        public static Replacements[] values() {
            return (Replacements[]) $VALUES.clone();
        }

        public abstract String value(Context context, Survey survey);

        public /* synthetic */ Replacements(String str, int i2, String str2, int i3) {
            this(str, i2, str2);
        }

        /* JADX INFO: renamed from: com.sightcall.universal.internal.model.Survey$Replacements$1, reason: invalid class name */
        public final enum AnonymousClass1 extends Replacements {
            public /* synthetic */ AnonymousClass1() {
                this("OS_TYPE", 0, "${os_type}");
            }

            @Override // com.sightcall.universal.internal.model.Survey.Replacements
            public String value(Context context, Survey survey) {
                return ReferenceApiV3ConstKt.OS_NAME;
            }

            private AnonymousClass1(String str, int i2, String str2) {
                super(str, i2, str2, 0);
            }
        }

        /* JADX INFO: renamed from: com.sightcall.universal.internal.model.Survey$Replacements$2, reason: invalid class name */
        public final enum AnonymousClass2 extends Replacements {
            public /* synthetic */ AnonymousClass2() {
                this("OS_VERSION", 1, "${os_version}");
            }

            @Override // com.sightcall.universal.internal.model.Survey.Replacements
            public String value(Context context, Survey survey) {
                return String.valueOf(SdkUtilsKt.sdkVersion());
            }

            private AnonymousClass2(String str, int i2, String str2) {
                super(str, i2, str2, 0);
            }
        }

        /* JADX INFO: renamed from: com.sightcall.universal.internal.model.Survey$Replacements$3, reason: invalid class name */
        public final enum AnonymousClass3 extends Replacements {
            public /* synthetic */ AnonymousClass3() {
                this("COUNTRY_CODE", 2, "${country_code}");
            }

            @Override // com.sightcall.universal.internal.model.Survey.Replacements
            public String value(Context context, Survey survey) {
                return UtilsKt.getUserLocale(context).getCountry();
            }

            private AnonymousClass3(String str, int i2, String str2) {
                super(str, i2, str2, 0);
            }
        }

        /* JADX INFO: renamed from: com.sightcall.universal.internal.model.Survey$Replacements$4, reason: invalid class name */
        public final enum AnonymousClass4 extends Replacements {
            public /* synthetic */ AnonymousClass4() {
                this("LANGUAGE_CODE", 3, "${language_code}");
            }

            @Override // com.sightcall.universal.internal.model.Survey.Replacements
            public String value(Context context, Survey survey) {
                return UtilsKt.getUserLocale(context).getLanguage();
            }

            private AnonymousClass4(String str, int i2, String str2) {
                super(str, i2, str2, 0);
            }
        }

        /* JADX INFO: renamed from: com.sightcall.universal.internal.model.Survey$Replacements$5, reason: invalid class name */
        public final enum AnonymousClass5 extends Replacements {
            public /* synthetic */ AnonymousClass5() {
                this("DEVICE_TYPE", 4, "${device_type}");
            }

            @Override // com.sightcall.universal.internal.model.Survey.Replacements
            public String value(Context context, Survey survey) {
                return ContextExtensionsKt.deviceType(context);
            }

            private AnonymousClass5(String str, int i2, String str2) {
                super(str, i2, str2, 0);
            }
        }

        /* JADX INFO: renamed from: com.sightcall.universal.internal.model.Survey$Replacements$6, reason: invalid class name */
        public final enum AnonymousClass6 extends Replacements {
            public /* synthetic */ AnonymousClass6() {
                this("DEVICE_NAME", 5, "${device_name}");
            }

            @Override // com.sightcall.universal.internal.model.Survey.Replacements
            public String value(Context context, Survey survey) {
                return ContextExtensionsKt.deviceName(context);
            }

            private AnonymousClass6(String str, int i2, String str2) {
                super(str, i2, str2, 0);
            }
        }

        /* JADX INFO: renamed from: com.sightcall.universal.internal.model.Survey$Replacements$7, reason: invalid class name */
        public final enum AnonymousClass7 extends Replacements {
            public /* synthetic */ AnonymousClass7() {
                this("APP_VERSION", 6, "${app_version}");
            }

            @Override // com.sightcall.universal.internal.model.Survey.Replacements
            public String value(Context context, Survey survey) {
                return ContextExtensionsKt.appVersionName(context);
            }

            private AnonymousClass7(String str, int i2, String str2) {
                super(str, i2, str2, 0);
            }
        }

        /* JADX INFO: renamed from: com.sightcall.universal.internal.model.Survey$Replacements$8, reason: invalid class name */
        public final enum AnonymousClass8 extends Replacements {
            public /* synthetic */ AnonymousClass8() {
                this("DISPLAY_NAME", 7, "${display_name}");
            }

            @Override // com.sightcall.universal.internal.model.Survey.Replacements
            public String value(Context context, Survey survey) {
                return survey.getExtra(Survey.EXTRA_DISPLAY_NAME);
            }

            private AnonymousClass8(String str, int i2, String str2) {
                super(str, i2, str2, 0);
            }
        }

        /* JADX INFO: renamed from: com.sightcall.universal.internal.model.Survey$Replacements$10, reason: invalid class name */
        public final enum AnonymousClass10 extends Replacements {
            public /* synthetic */ AnonymousClass10() {
                this("NETWORK_TYPE", 9, "${network_type}");
            }

            @Override // com.sightcall.universal.internal.model.Survey.Replacements
            public String value(Context context, Survey survey) {
                return survey.getExtra(Survey.EXTRA_NETWORK_TYPE);
            }

            private AnonymousClass10(String str, int i2, String str2) {
                super(str, i2, str2, 0);
            }
        }

        /* JADX INFO: renamed from: com.sightcall.universal.internal.model.Survey$Replacements$11, reason: invalid class name */
        public final enum AnonymousClass11 extends Replacements {
            public /* synthetic */ AnonymousClass11() {
                this("NETWORK_CARRIER", 10, "${network_carrier}");
            }

            @Override // com.sightcall.universal.internal.model.Survey.Replacements
            public String value(Context context, Survey survey) {
                return survey.getExtra(Survey.EXTRA_NETWORK_CARRIER);
            }

            private AnonymousClass11(String str, int i2, String str2) {
                super(str, i2, str2, 0);
            }
        }

        /* JADX INFO: renamed from: com.sightcall.universal.internal.model.Survey$Replacements$12, reason: invalid class name */
        public final enum AnonymousClass12 extends Replacements {
            public /* synthetic */ AnonymousClass12() {
                this("AGENT_LOGIN", 11, "${login}");
            }

            @Override // com.sightcall.universal.internal.model.Survey.Replacements
            public String value(Context context, Survey survey) {
                return survey.getExtra(Survey.EXTRA_AGENT_LOGIN);
            }

            private AnonymousClass12(String str, int i2, String str2) {
                super(str, i2, str2, 0);
            }
        }

        /* JADX INFO: renamed from: com.sightcall.universal.internal.model.Survey$Replacements$13, reason: invalid class name */
        public final enum AnonymousClass13 extends Replacements {
            public /* synthetic */ AnonymousClass13() {
                this("CASE_REPORT_ID", 12, "${case_id}");
            }

            @Override // com.sightcall.universal.internal.model.Survey.Replacements
            public String value(Context context, Survey survey) {
                return survey.getExtra(Survey.EXTRA_CASE_REPORT_ID);
            }

            private AnonymousClass13(String str, int i2, String str2) {
                super(str, i2, str2, 0);
            }
        }

        /* JADX INFO: renamed from: com.sightcall.universal.internal.model.Survey$Replacements$14, reason: invalid class name */
        public final enum AnonymousClass14 extends Replacements {
            public /* synthetic */ AnonymousClass14() {
                this("USECASE_NAME", 13, "${usecase_name}");
            }

            @Override // com.sightcall.universal.internal.model.Survey.Replacements
            public String value(Context context, Survey survey) {
                return survey.getExtra(Survey.EXTRA_USECASE_NAME);
            }

            private AnonymousClass14(String str, int i2, String str2) {
                super(str, i2, str2, 0);
            }
        }

        /* JADX INFO: renamed from: com.sightcall.universal.internal.model.Survey$Replacements$9, reason: invalid class name */
        public final enum AnonymousClass9 extends Replacements {
            public /* synthetic */ AnonymousClass9() {
                this("REFERENCE", 8, "${reference}");
            }

            @Override // com.sightcall.universal.internal.model.Survey.Replacements
            public String value(Context context, Survey survey) {
                return survey.getExtra(Survey.EXTRA_REFERENCE);
            }

            private AnonymousClass9(String str, int i2, String str2) {
                super(str, i2, str2, 0);
            }
        }
    }

    public Survey(String str) {
        this.immediate = true;
        this.title = null;
        this.button = null;
        this.raw = str;
        this.extras = new Bundle();
    }

    public Survey(String str, String str2, String str3) {
        this.immediate = false;
        this.title = str;
        this.button = str2;
        this.raw = str3;
        this.extras = new Bundle();
    }
}
