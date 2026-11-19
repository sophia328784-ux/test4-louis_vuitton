package com.vuitton.android.presentation.screen.authentication.welcome.model;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;", "", "MY_LV", "DEFAULT", "WISHLIST", "SERVICE", "CONTENT_CURATION", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LoginContext {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LoginContext[] $VALUES;
    public static final LoginContext CONTENT_CURATION;
    public static final LoginContext DEFAULT;
    public static final LoginContext MY_LV;
    public static final LoginContext SERVICE;
    public static final LoginContext WISHLIST;

    static {
        LoginContext loginContext = new LoginContext("MY_LV", 0);
        MY_LV = loginContext;
        LoginContext loginContext2 = new LoginContext("DEFAULT", 1);
        DEFAULT = loginContext2;
        LoginContext loginContext3 = new LoginContext("WISHLIST", 2);
        WISHLIST = loginContext3;
        LoginContext loginContext4 = new LoginContext("SERVICE", 3);
        SERVICE = loginContext4;
        LoginContext loginContext5 = new LoginContext("CONTENT_CURATION", 4);
        CONTENT_CURATION = loginContext5;
        LoginContext[] loginContextArr = {loginContext, loginContext2, loginContext3, loginContext4, loginContext5};
        $VALUES = loginContextArr;
        $ENTRIES = EnumEntriesKt.a(loginContextArr);
    }

    public static LoginContext valueOf(String str) {
        return (LoginContext) Enum.valueOf(LoginContext.class, str);
    }

    public static LoginContext[] values() {
        return (LoginContext[]) $VALUES.clone();
    }
}
