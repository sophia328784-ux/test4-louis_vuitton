package com.vuitton.foundation.model.domain.model.privacy;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;", "", "GDPR", "CCPA", "PIPL", "NONE", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PrivacyType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PrivacyType[] $VALUES;
    public static final PrivacyType CCPA;
    public static final PrivacyType GDPR;
    public static final PrivacyType NONE;
    public static final PrivacyType PIPL;

    static {
        PrivacyType privacyType = new PrivacyType("GDPR", 0);
        GDPR = privacyType;
        PrivacyType privacyType2 = new PrivacyType("CCPA", 1);
        CCPA = privacyType2;
        PrivacyType privacyType3 = new PrivacyType("PIPL", 2);
        PIPL = privacyType3;
        PrivacyType privacyType4 = new PrivacyType("NONE", 3);
        NONE = privacyType4;
        PrivacyType[] privacyTypeArr = {privacyType, privacyType2, privacyType3, privacyType4};
        $VALUES = privacyTypeArr;
        $ENTRIES = EnumEntriesKt.a(privacyTypeArr);
    }

    public static PrivacyType valueOf(String str) {
        return (PrivacyType) Enum.valueOf(PrivacyType.class, str);
    }

    public static PrivacyType[] values() {
        return (PrivacyType[]) $VALUES.clone();
    }
}
