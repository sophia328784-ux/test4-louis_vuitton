package com.vuitton.foundation.model.domain.model.immersivearticle;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetType;", "", "IMAGE", "ASSET_ANDROID_3D", "ASSET_IOS_3D", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Model3dAssetType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Model3dAssetType[] $VALUES;
    public static final Model3dAssetType ASSET_ANDROID_3D;
    public static final Model3dAssetType ASSET_IOS_3D;
    public static final Model3dAssetType IMAGE;

    static {
        Model3dAssetType model3dAssetType = new Model3dAssetType("IMAGE", 0);
        IMAGE = model3dAssetType;
        Model3dAssetType model3dAssetType2 = new Model3dAssetType("ASSET_ANDROID_3D", 1);
        ASSET_ANDROID_3D = model3dAssetType2;
        Model3dAssetType model3dAssetType3 = new Model3dAssetType("ASSET_IOS_3D", 2);
        ASSET_IOS_3D = model3dAssetType3;
        Model3dAssetType[] model3dAssetTypeArr = {model3dAssetType, model3dAssetType2, model3dAssetType3};
        $VALUES = model3dAssetTypeArr;
        $ENTRIES = EnumEntriesKt.a(model3dAssetTypeArr);
    }

    public static Model3dAssetType valueOf(String str) {
        return (Model3dAssetType) Enum.valueOf(Model3dAssetType.class, str);
    }

    public static Model3dAssetType[] values() {
        return (Model3dAssetType[]) $VALUES.clone();
    }
}
