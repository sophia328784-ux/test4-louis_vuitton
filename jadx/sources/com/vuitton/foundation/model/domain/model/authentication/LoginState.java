package com.vuitton.foundation.model.domain.model.authentication;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;", "", "LOGGED_IN", "LOGGED_OUT", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LoginState {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LoginState[] $VALUES;
    public static final LoginState LOGGED_IN;
    public static final LoginState LOGGED_OUT;

    static {
        LoginState loginState = new LoginState("LOGGED_IN", 0);
        LOGGED_IN = loginState;
        LoginState loginState2 = new LoginState("LOGGED_OUT", 1);
        LOGGED_OUT = loginState2;
        LoginState[] loginStateArr = {loginState, loginState2};
        $VALUES = loginStateArr;
        $ENTRIES = EnumEntriesKt.a(loginStateArr);
    }

    public static LoginState valueOf(String str) {
        return (LoginState) Enum.valueOf(LoginState.class, str);
    }

    public static LoginState[] values() {
        return (LoginState[]) $VALUES.clone();
    }

    public final boolean a() {
        return this == LOGGED_IN;
    }
}
