package com.vuitton.foundation.model.domain.model.immersivearticle;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetName;", "", "LD_R", "BACKGROUND_3D", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Model3dAssetName {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Model3dAssetName[] $VALUES;
    public static final Model3dAssetName BACKGROUND_3D;
    public static final Model3dAssetName LD_R;

    static {
        Model3dAssetName model3dAssetName = new Model3dAssetName("LD_R", 0);
        LD_R = model3dAssetName;
        Model3dAssetName model3dAssetName2 = new Model3dAssetName("BACKGROUND_3D", 1);
        BACKGROUND_3D = model3dAssetName2;
        Model3dAssetName[] model3dAssetNameArr = {model3dAssetName, model3dAssetName2};
        $VALUES = model3dAssetNameArr;
        $ENTRIES = EnumEntriesKt.a(model3dAssetNameArr);
    }

    public static Model3dAssetName valueOf(String str) {
        return (Model3dAssetName) Enum.valueOf(Model3dAssetName.class, str);
    }

    public static Model3dAssetName[] values() {
        return (Model3dAssetName[]) $VALUES.clone();
    }
}
