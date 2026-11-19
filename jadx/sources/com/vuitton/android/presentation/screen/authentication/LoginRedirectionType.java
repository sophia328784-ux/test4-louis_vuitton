package com.vuitton.android.presentation.screen.authentication;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/LoginRedirectionType;", "", "ACCOUNT", "SERVICES", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LoginRedirectionType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LoginRedirectionType[] $VALUES;
    public static final LoginRedirectionType ACCOUNT;
    public static final LoginRedirectionType SERVICES;

    static {
        LoginRedirectionType loginRedirectionType = new LoginRedirectionType("ACCOUNT", 0);
        ACCOUNT = loginRedirectionType;
        LoginRedirectionType loginRedirectionType2 = new LoginRedirectionType("SERVICES", 1);
        SERVICES = loginRedirectionType2;
        LoginRedirectionType[] loginRedirectionTypeArr = {loginRedirectionType, loginRedirectionType2};
        $VALUES = loginRedirectionTypeArr;
        $ENTRIES = EnumEntriesKt.a(loginRedirectionTypeArr);
    }

    public static LoginRedirectionType valueOf(String str) {
        return (LoginRedirectionType) Enum.valueOf(LoginRedirectionType.class, str);
    }

    public static LoginRedirectionType[] values() {
        return (LoginRedirectionType[]) $VALUES.clone();
    }
}
