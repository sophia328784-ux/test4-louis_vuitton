package com.vuitton.foundation.model.domain.model.immersivearticle;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/LookSkuType;", "", "PRODUCT", "LOOK", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LookSkuType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LookSkuType[] $VALUES;
    public static final LookSkuType LOOK;
    public static final LookSkuType PRODUCT;

    static {
        LookSkuType lookSkuType = new LookSkuType("PRODUCT", 0);
        PRODUCT = lookSkuType;
        LookSkuType lookSkuType2 = new LookSkuType("LOOK", 1);
        LOOK = lookSkuType2;
        LookSkuType[] lookSkuTypeArr = {lookSkuType, lookSkuType2};
        $VALUES = lookSkuTypeArr;
        $ENTRIES = EnumEntriesKt.a(lookSkuTypeArr);
    }

    public static LookSkuType valueOf(String str) {
        return (LookSkuType) Enum.valueOf(LookSkuType.class, str);
    }

    public static LookSkuType[] values() {
        return (LookSkuType[]) $VALUES.clone();
    }
}
