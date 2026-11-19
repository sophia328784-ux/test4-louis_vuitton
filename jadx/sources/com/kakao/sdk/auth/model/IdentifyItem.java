package com.kakao.sdk.auth.model;

import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/kakao/sdk/auth/model/IdentifyItem;", "", "PHONE_NUMBER", "NAME", "CI", "BIRTHDAY", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class IdentifyItem {
    private static final /* synthetic */ IdentifyItem[] $VALUES;
    public static final IdentifyItem BIRTHDAY;
    public static final IdentifyItem CI;
    public static final IdentifyItem NAME;
    public static final IdentifyItem PHONE_NUMBER;

    static {
        IdentifyItem identifyItem = new IdentifyItem("PHONE_NUMBER", 0);
        PHONE_NUMBER = identifyItem;
        IdentifyItem identifyItem2 = new IdentifyItem("NAME", 1);
        NAME = identifyItem2;
        IdentifyItem identifyItem3 = new IdentifyItem("CI", 2);
        CI = identifyItem3;
        IdentifyItem identifyItem4 = new IdentifyItem("BIRTHDAY", 3);
        BIRTHDAY = identifyItem4;
        $VALUES = new IdentifyItem[]{identifyItem, identifyItem2, identifyItem3, identifyItem4};
    }

    public static IdentifyItem valueOf(String str) {
        return (IdentifyItem) Enum.valueOf(IdentifyItem.class, str);
    }

    public static IdentifyItem[] values() {
        return (IdentifyItem[]) $VALUES.clone();
    }
}
