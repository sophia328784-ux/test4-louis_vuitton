package com.vuitton.android.presentation.screen.authentication;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'MY_LV' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:160)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001b\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\fR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!¨\u0006\""}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection;", "", "", "value", "Ljava/lang/String;", NBSSpanMetricUnit.Bit, "()Ljava/lang/String;", "Lcom/vuitton/android/presentation/screen/authentication/LoginRedirectionType;", "type", "Lcom/vuitton/android/presentation/screen/authentication/LoginRedirectionType;", "a", "()Lcom/vuitton/android/presentation/screen/authentication/LoginRedirectionType;", "Companion", "MY_LV", "SERVICES", "PROFILE", "ORDERS", "REPAIR_SECTION", "OSA", "OSA_MY_APPOINTMENT", "MY_EXCLUSIVE", "REPAIR_CREATE", "REPAIR_DETAIL", "WISHLIST", "EXCLUSIVE_SECTION", "EXCLUSIVE_CATEGORY", "EXCLUSIVE_DETAIL", "CERTIFICATE_LIST", "CERTIFICATE_DETAIL", "MY_CERTIFICATES", "CERTIFICATE_DIAMONDS_ACTIVATION", "LVPASS_QRCODE", "PRIVACY_SETTINGS", "ORDER_DETAIL", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LoginRedirection {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LoginRedirection[] $VALUES;
    public static final LoginRedirection CERTIFICATE_DETAIL;
    public static final LoginRedirection CERTIFICATE_DIAMONDS_ACTIVATION;
    public static final LoginRedirection CERTIFICATE_LIST;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final LoginRedirection EXCLUSIVE_CATEGORY;
    public static final LoginRedirection EXCLUSIVE_DETAIL;
    public static final LoginRedirection EXCLUSIVE_SECTION;
    public static final LoginRedirection LVPASS_QRCODE;
    public static final LoginRedirection MY_CERTIFICATES;
    public static final LoginRedirection MY_EXCLUSIVE;
    public static final LoginRedirection MY_LV;
    public static final LoginRedirection ORDERS;
    public static final LoginRedirection ORDER_DETAIL;
    public static final LoginRedirection OSA;
    public static final LoginRedirection OSA_MY_APPOINTMENT;
    public static final LoginRedirection PRIVACY_SETTINGS;
    public static final LoginRedirection PROFILE;
    public static final LoginRedirection REPAIR_CREATE;
    public static final LoginRedirection REPAIR_DETAIL;
    public static final LoginRedirection REPAIR_SECTION;
    public static final LoginRedirection SERVICES;
    public static final LoginRedirection WISHLIST;
    private final LoginRedirectionType type;
    private final String value;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/LoginRedirection$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static LoginRedirection a(String str) {
            str.getClass();
            LoginRedirection loginRedirection = LoginRedirection.PROFILE;
            if (str.equals(loginRedirection.getValue())) {
                return loginRedirection;
            }
            LoginRedirection loginRedirection2 = LoginRedirection.ORDERS;
            if (str.equals(loginRedirection2.getValue())) {
                return loginRedirection2;
            }
            LoginRedirection loginRedirection3 = LoginRedirection.REPAIR_SECTION;
            if (str.equals(loginRedirection3.getValue())) {
                return loginRedirection3;
            }
            LoginRedirection loginRedirection4 = LoginRedirection.WISHLIST;
            if (str.equals(loginRedirection4.getValue())) {
                return loginRedirection4;
            }
            if (str.equals(LoginRedirection.MY_EXCLUSIVE.getValue())) {
                return LoginRedirection.EXCLUSIVE_SECTION;
            }
            LoginRedirection loginRedirection5 = LoginRedirection.CERTIFICATE_LIST;
            if (str.equals(loginRedirection5.getValue())) {
                return loginRedirection5;
            }
            LoginRedirection loginRedirection6 = LoginRedirection.CERTIFICATE_DETAIL;
            if (str.equals(loginRedirection6.getValue())) {
                return loginRedirection6;
            }
            LoginRedirection loginRedirection7 = LoginRedirection.MY_CERTIFICATES;
            if (str.equals(loginRedirection7.getValue())) {
                return loginRedirection7;
            }
            LoginRedirection loginRedirection8 = LoginRedirection.CERTIFICATE_DIAMONDS_ACTIVATION;
            if (str.equals(loginRedirection8.getValue())) {
                return loginRedirection8;
            }
            LoginRedirection loginRedirection9 = LoginRedirection.PRIVACY_SETTINGS;
            return str.equals(loginRedirection9.getValue()) ? loginRedirection9 : LoginRedirection.MY_LV;
        }
    }

    static {
        LoginRedirectionType loginRedirectionType = LoginRedirectionType.ACCOUNT;
        LoginRedirection loginRedirection = new LoginRedirection("MY_LV", 0, "mylv", loginRedirectionType);
        MY_LV = loginRedirection;
        LoginRedirectionType loginRedirectionType2 = LoginRedirectionType.SERVICES;
        LoginRedirection loginRedirection2 = new LoginRedirection("SERVICES", 1, "services", loginRedirectionType2);
        SERVICES = loginRedirection2;
        LoginRedirection loginRedirection3 = new LoginRedirection("PROFILE", 2, "myprofile", loginRedirectionType);
        PROFILE = loginRedirection3;
        LoginRedirection loginRedirection4 = new LoginRedirection("ORDERS", 3, "myorders", loginRedirectionType);
        ORDERS = loginRedirection4;
        LoginRedirection loginRedirection5 = new LoginRedirection("REPAIR_SECTION", 4, "mycareservice", loginRedirectionType2);
        REPAIR_SECTION = loginRedirection5;
        LoginRedirection loginRedirection6 = new LoginRedirection("OSA", 5, "online_store_appointment", loginRedirectionType2);
        OSA = loginRedirection6;
        LoginRedirection loginRedirection7 = new LoginRedirection("OSA_MY_APPOINTMENT", 6, "online_store_appointment_list", loginRedirectionType2);
        OSA_MY_APPOINTMENT = loginRedirection7;
        LoginRedirection loginRedirection8 = new LoginRedirection("MY_EXCLUSIVE", 7, "myexclusive", loginRedirectionType2);
        MY_EXCLUSIVE = loginRedirection8;
        LoginRedirection loginRedirection9 = new LoginRedirection("REPAIR_CREATE", 8, "repair_create", loginRedirectionType2);
        REPAIR_CREATE = loginRedirection9;
        LoginRedirection loginRedirection10 = new LoginRedirection("REPAIR_DETAIL", 9, "repair_detail", loginRedirectionType2);
        REPAIR_DETAIL = loginRedirection10;
        LoginRedirection loginRedirection11 = new LoginRedirection("WISHLIST", 10, "wishlist", loginRedirectionType);
        WISHLIST = loginRedirection11;
        LoginRedirection loginRedirection12 = new LoginRedirection("EXCLUSIVE_SECTION", 11, "exclusive_section", loginRedirectionType);
        EXCLUSIVE_SECTION = loginRedirection12;
        LoginRedirection loginRedirection13 = new LoginRedirection("EXCLUSIVE_CATEGORY", 12, "exclusive_category", loginRedirectionType);
        EXCLUSIVE_CATEGORY = loginRedirection13;
        LoginRedirection loginRedirection14 = new LoginRedirection("EXCLUSIVE_DETAIL", 13, "exclusive_detail", loginRedirectionType);
        EXCLUSIVE_DETAIL = loginRedirection14;
        LoginRedirection loginRedirection15 = new LoginRedirection("CERTIFICATE_LIST", 14, "certificate_list", loginRedirectionType);
        CERTIFICATE_LIST = loginRedirection15;
        LoginRedirection loginRedirection16 = new LoginRedirection("CERTIFICATE_DETAIL", 15, "certificate_detail", loginRedirectionType);
        CERTIFICATE_DETAIL = loginRedirection16;
        LoginRedirection loginRedirection17 = new LoginRedirection("MY_CERTIFICATES", 16, "mycertificates", loginRedirectionType);
        MY_CERTIFICATES = loginRedirection17;
        LoginRedirection loginRedirection18 = new LoginRedirection("CERTIFICATE_DIAMONDS_ACTIVATION", 17, "certificate_diamonds_activation", loginRedirectionType);
        CERTIFICATE_DIAMONDS_ACTIVATION = loginRedirection18;
        LoginRedirection loginRedirection19 = new LoginRedirection("LVPASS_QRCODE", 18, "lvpass_qrcode", loginRedirectionType);
        LVPASS_QRCODE = loginRedirection19;
        LoginRedirection loginRedirection20 = new LoginRedirection("PRIVACY_SETTINGS", 19, "privacy_settings", loginRedirectionType);
        PRIVACY_SETTINGS = loginRedirection20;
        LoginRedirection loginRedirection21 = new LoginRedirection("ORDER_DETAIL", 20, "order_detail", loginRedirectionType);
        ORDER_DETAIL = loginRedirection21;
        LoginRedirection[] loginRedirectionArr = {loginRedirection, loginRedirection2, loginRedirection3, loginRedirection4, loginRedirection5, loginRedirection6, loginRedirection7, loginRedirection8, loginRedirection9, loginRedirection10, loginRedirection11, loginRedirection12, loginRedirection13, loginRedirection14, loginRedirection15, loginRedirection16, loginRedirection17, loginRedirection18, loginRedirection19, loginRedirection20, loginRedirection21};
        $VALUES = loginRedirectionArr;
        $ENTRIES = EnumEntriesKt.a(loginRedirectionArr);
        INSTANCE = new Companion(null);
    }

    public LoginRedirection(String str, int i2, String str2, LoginRedirectionType loginRedirectionType) {
        super(str, i2);
        this.value = str2;
        this.type = loginRedirectionType;
    }

    public static LoginRedirection valueOf(String str) {
        return (LoginRedirection) Enum.valueOf(LoginRedirection.class, str);
    }

    public static LoginRedirection[] values() {
        return (LoginRedirection[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final LoginRedirectionType getType() {
        return this.type;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getValue() {
        return this.value;
    }
}
