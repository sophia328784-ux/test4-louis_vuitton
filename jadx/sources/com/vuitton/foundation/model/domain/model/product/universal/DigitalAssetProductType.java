package com.vuitton.foundation.model.domain.model.product.universal;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/DigitalAssetProductType;", "", "IMAGE", "VIDEO", "ASSET_ANDROID_3D", "ASSET_IOS_3D", "UNKNOWN", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DigitalAssetProductType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ DigitalAssetProductType[] $VALUES;
    public static final DigitalAssetProductType ASSET_ANDROID_3D;
    public static final DigitalAssetProductType ASSET_IOS_3D;
    public static final DigitalAssetProductType IMAGE;
    public static final DigitalAssetProductType UNKNOWN;
    public static final DigitalAssetProductType VIDEO;

    static {
        DigitalAssetProductType digitalAssetProductType = new DigitalAssetProductType("IMAGE", 0);
        IMAGE = digitalAssetProductType;
        DigitalAssetProductType digitalAssetProductType2 = new DigitalAssetProductType("VIDEO", 1);
        VIDEO = digitalAssetProductType2;
        DigitalAssetProductType digitalAssetProductType3 = new DigitalAssetProductType("ASSET_ANDROID_3D", 2);
        ASSET_ANDROID_3D = digitalAssetProductType3;
        DigitalAssetProductType digitalAssetProductType4 = new DigitalAssetProductType("ASSET_IOS_3D", 3);
        ASSET_IOS_3D = digitalAssetProductType4;
        DigitalAssetProductType digitalAssetProductType5 = new DigitalAssetProductType("UNKNOWN", 4);
        UNKNOWN = digitalAssetProductType5;
        DigitalAssetProductType[] digitalAssetProductTypeArr = {digitalAssetProductType, digitalAssetProductType2, digitalAssetProductType3, digitalAssetProductType4, digitalAssetProductType5};
        $VALUES = digitalAssetProductTypeArr;
        $ENTRIES = EnumEntriesKt.a(digitalAssetProductTypeArr);
    }

    public static DigitalAssetProductType valueOf(String str) {
        return (DigitalAssetProductType) Enum.valueOf(DigitalAssetProductType.class, str);
    }

    public static DigitalAssetProductType[] values() {
        return (DigitalAssetProductType[]) $VALUES.clone();
    }
}
