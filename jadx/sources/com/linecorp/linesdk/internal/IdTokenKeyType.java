package com.linecorp.linesdk.internal;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
public final class IdTokenKeyType {
    private static final /* synthetic */ IdTokenKeyType[] $VALUES;
    public static final IdTokenKeyType JWK;

    static {
        IdTokenKeyType idTokenKeyType = new IdTokenKeyType("JWK", 0);
        JWK = idTokenKeyType;
        $VALUES = new IdTokenKeyType[]{idTokenKeyType};
    }

    public static IdTokenKeyType valueOf(String str) {
        return (IdTokenKeyType) Enum.valueOf(IdTokenKeyType.class, str);
    }

    public static IdTokenKeyType[] values() {
        return (IdTokenKeyType[]) $VALUES.clone();
    }
}
