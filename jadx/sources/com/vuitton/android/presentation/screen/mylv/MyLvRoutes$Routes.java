package com.vuitton.android.presentation.screen.mylv;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, d2 = {"com/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes", "", "Lcom/vuitton/android/presentation/screen/mylv/MyLvRoutes$Routes;", "MY_ACCOUNT", "MY_PROFILE_SETTINGS_FROM_DEEPLINK", "REDIRECTION_MY_PROFILE", "REDIRECTION_MY_ORDERS", "REDIRECTION_WISH_LIST", "REDIRECTION_CERTIFICATES_LIST", "REDIRECTION_CERTIFICATES_DETAIL", "REDIRECTION_CERTIFICATE_DIAMONDS_ACTIVATION", "REDIRECTION_EXCLUSIVE_SECTION", "REDIRECTION_EXCLUSIVE_CATEGORY", "REDIRECTION_EXCLUSIVE_DETAIL", "REDIRECTION_LVPASS_QRCODE", "REDIRECTION_PRIVACY_SETTINGS", "REDIRECTION_ORDER_DETAIL", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MyLvRoutes$Routes {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ MyLvRoutes$Routes[] $VALUES;
    public static final MyLvRoutes$Routes MY_ACCOUNT;
    public static final MyLvRoutes$Routes MY_PROFILE_SETTINGS_FROM_DEEPLINK;
    public static final MyLvRoutes$Routes REDIRECTION_CERTIFICATES_DETAIL;
    public static final MyLvRoutes$Routes REDIRECTION_CERTIFICATES_LIST;
    public static final MyLvRoutes$Routes REDIRECTION_CERTIFICATE_DIAMONDS_ACTIVATION;
    public static final MyLvRoutes$Routes REDIRECTION_EXCLUSIVE_CATEGORY;
    public static final MyLvRoutes$Routes REDIRECTION_EXCLUSIVE_DETAIL;
    public static final MyLvRoutes$Routes REDIRECTION_EXCLUSIVE_SECTION;
    public static final MyLvRoutes$Routes REDIRECTION_LVPASS_QRCODE;
    public static final MyLvRoutes$Routes REDIRECTION_MY_ORDERS;
    public static final MyLvRoutes$Routes REDIRECTION_MY_PROFILE;
    public static final MyLvRoutes$Routes REDIRECTION_ORDER_DETAIL;
    public static final MyLvRoutes$Routes REDIRECTION_PRIVACY_SETTINGS;
    public static final MyLvRoutes$Routes REDIRECTION_WISH_LIST;

    static {
        MyLvRoutes$Routes myLvRoutes$Routes = new MyLvRoutes$Routes("MY_ACCOUNT", 0);
        MY_ACCOUNT = myLvRoutes$Routes;
        MyLvRoutes$Routes myLvRoutes$Routes2 = new MyLvRoutes$Routes("MY_PROFILE_SETTINGS_FROM_DEEPLINK", 1);
        MY_PROFILE_SETTINGS_FROM_DEEPLINK = myLvRoutes$Routes2;
        MyLvRoutes$Routes myLvRoutes$Routes3 = new MyLvRoutes$Routes("REDIRECTION_MY_PROFILE", 2);
        REDIRECTION_MY_PROFILE = myLvRoutes$Routes3;
        MyLvRoutes$Routes myLvRoutes$Routes4 = new MyLvRoutes$Routes("REDIRECTION_MY_ORDERS", 3);
        REDIRECTION_MY_ORDERS = myLvRoutes$Routes4;
        MyLvRoutes$Routes myLvRoutes$Routes5 = new MyLvRoutes$Routes("REDIRECTION_WISH_LIST", 4);
        REDIRECTION_WISH_LIST = myLvRoutes$Routes5;
        MyLvRoutes$Routes myLvRoutes$Routes6 = new MyLvRoutes$Routes("REDIRECTION_CERTIFICATES_LIST", 5);
        REDIRECTION_CERTIFICATES_LIST = myLvRoutes$Routes6;
        MyLvRoutes$Routes myLvRoutes$Routes7 = new MyLvRoutes$Routes("REDIRECTION_CERTIFICATES_DETAIL", 6);
        REDIRECTION_CERTIFICATES_DETAIL = myLvRoutes$Routes7;
        MyLvRoutes$Routes myLvRoutes$Routes8 = new MyLvRoutes$Routes("REDIRECTION_CERTIFICATE_DIAMONDS_ACTIVATION", 7);
        REDIRECTION_CERTIFICATE_DIAMONDS_ACTIVATION = myLvRoutes$Routes8;
        MyLvRoutes$Routes myLvRoutes$Routes9 = new MyLvRoutes$Routes("REDIRECTION_EXCLUSIVE_SECTION", 8);
        REDIRECTION_EXCLUSIVE_SECTION = myLvRoutes$Routes9;
        MyLvRoutes$Routes myLvRoutes$Routes10 = new MyLvRoutes$Routes("REDIRECTION_EXCLUSIVE_CATEGORY", 9);
        REDIRECTION_EXCLUSIVE_CATEGORY = myLvRoutes$Routes10;
        MyLvRoutes$Routes myLvRoutes$Routes11 = new MyLvRoutes$Routes("REDIRECTION_EXCLUSIVE_DETAIL", 10);
        REDIRECTION_EXCLUSIVE_DETAIL = myLvRoutes$Routes11;
        MyLvRoutes$Routes myLvRoutes$Routes12 = new MyLvRoutes$Routes("REDIRECTION_LVPASS_QRCODE", 11);
        REDIRECTION_LVPASS_QRCODE = myLvRoutes$Routes12;
        MyLvRoutes$Routes myLvRoutes$Routes13 = new MyLvRoutes$Routes("REDIRECTION_PRIVACY_SETTINGS", 12);
        REDIRECTION_PRIVACY_SETTINGS = myLvRoutes$Routes13;
        MyLvRoutes$Routes myLvRoutes$Routes14 = new MyLvRoutes$Routes("REDIRECTION_ORDER_DETAIL", 13);
        REDIRECTION_ORDER_DETAIL = myLvRoutes$Routes14;
        MyLvRoutes$Routes[] myLvRoutes$RoutesArr = {myLvRoutes$Routes, myLvRoutes$Routes2, myLvRoutes$Routes3, myLvRoutes$Routes4, myLvRoutes$Routes5, myLvRoutes$Routes6, myLvRoutes$Routes7, myLvRoutes$Routes8, myLvRoutes$Routes9, myLvRoutes$Routes10, myLvRoutes$Routes11, myLvRoutes$Routes12, myLvRoutes$Routes13, myLvRoutes$Routes14};
        $VALUES = myLvRoutes$RoutesArr;
        $ENTRIES = EnumEntriesKt.a(myLvRoutes$RoutesArr);
    }

    public static MyLvRoutes$Routes valueOf(String str) {
        return (MyLvRoutes$Routes) Enum.valueOf(MyLvRoutes$Routes.class, str);
    }

    public static MyLvRoutes$Routes[] values() {
        return (MyLvRoutes$Routes[]) $VALUES.clone();
    }
}
