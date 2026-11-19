package com.vuitton.android.presentation.screen.authentication.login;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/login/NativeLoginRouteName;", "", "LOGIN", "FORGET_PASSWORD", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class NativeLoginRouteName {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ NativeLoginRouteName[] $VALUES;
    public static final NativeLoginRouteName FORGET_PASSWORD;
    public static final NativeLoginRouteName LOGIN;

    static {
        NativeLoginRouteName nativeLoginRouteName = new NativeLoginRouteName("LOGIN", 0);
        LOGIN = nativeLoginRouteName;
        NativeLoginRouteName nativeLoginRouteName2 = new NativeLoginRouteName("FORGET_PASSWORD", 1);
        FORGET_PASSWORD = nativeLoginRouteName2;
        NativeLoginRouteName[] nativeLoginRouteNameArr = {nativeLoginRouteName, nativeLoginRouteName2};
        $VALUES = nativeLoginRouteNameArr;
        $ENTRIES = EnumEntriesKt.a(nativeLoginRouteNameArr);
    }

    public static EnumEntries a() {
        return $ENTRIES;
    }

    public static NativeLoginRouteName valueOf(String str) {
        return (NativeLoginRouteName) Enum.valueOf(NativeLoginRouteName.class, str);
    }

    public static NativeLoginRouteName[] values() {
        return (NativeLoginRouteName[]) $VALUES.clone();
    }
}
