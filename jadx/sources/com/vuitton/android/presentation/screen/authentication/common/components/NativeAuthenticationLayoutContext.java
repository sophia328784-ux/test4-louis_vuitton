package com.vuitton.android.presentation.screen.authentication.common.components;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/common/components/NativeAuthenticationLayoutContext;", "", "REGISTER", "FORGET_PASSWORD", "ACCOUNT_ACTIVATION", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NativeAuthenticationLayoutContext {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NativeAuthenticationLayoutContext[] $VALUES;
    public static final NativeAuthenticationLayoutContext ACCOUNT_ACTIVATION;
    public static final NativeAuthenticationLayoutContext FORGET_PASSWORD;
    public static final NativeAuthenticationLayoutContext REGISTER;

    static {
        NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext = new NativeAuthenticationLayoutContext("REGISTER", 0);
        REGISTER = nativeAuthenticationLayoutContext;
        NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext2 = new NativeAuthenticationLayoutContext("FORGET_PASSWORD", 1);
        FORGET_PASSWORD = nativeAuthenticationLayoutContext2;
        NativeAuthenticationLayoutContext nativeAuthenticationLayoutContext3 = new NativeAuthenticationLayoutContext("ACCOUNT_ACTIVATION", 2);
        ACCOUNT_ACTIVATION = nativeAuthenticationLayoutContext3;
        NativeAuthenticationLayoutContext[] nativeAuthenticationLayoutContextArr = {nativeAuthenticationLayoutContext, nativeAuthenticationLayoutContext2, nativeAuthenticationLayoutContext3};
        $VALUES = nativeAuthenticationLayoutContextArr;
        $ENTRIES = EnumEntriesKt.a(nativeAuthenticationLayoutContextArr);
    }

    public static NativeAuthenticationLayoutContext valueOf(String str) {
        return (NativeAuthenticationLayoutContext) Enum.valueOf(NativeAuthenticationLayoutContext.class, str);
    }

    public static NativeAuthenticationLayoutContext[] values() {
        return (NativeAuthenticationLayoutContext[]) $VALUES.clone();
    }
}
