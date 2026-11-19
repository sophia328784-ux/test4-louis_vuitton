package com.vuitton.android.presentation.screen.immersivearticle.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetTypeUiModel;", "", "IMAGE", "ASSET_ANDROID_3D", "ASSET_IOS_3D", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Model3dAssetTypeUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Model3dAssetTypeUiModel[] $VALUES;
    public static final Model3dAssetTypeUiModel ASSET_ANDROID_3D;
    public static final Model3dAssetTypeUiModel ASSET_IOS_3D;
    public static final Model3dAssetTypeUiModel IMAGE;

    static {
        Model3dAssetTypeUiModel model3dAssetTypeUiModel = new Model3dAssetTypeUiModel("IMAGE", 0);
        IMAGE = model3dAssetTypeUiModel;
        Model3dAssetTypeUiModel model3dAssetTypeUiModel2 = new Model3dAssetTypeUiModel("ASSET_ANDROID_3D", 1);
        ASSET_ANDROID_3D = model3dAssetTypeUiModel2;
        Model3dAssetTypeUiModel model3dAssetTypeUiModel3 = new Model3dAssetTypeUiModel("ASSET_IOS_3D", 2);
        ASSET_IOS_3D = model3dAssetTypeUiModel3;
        Model3dAssetTypeUiModel[] model3dAssetTypeUiModelArr = {model3dAssetTypeUiModel, model3dAssetTypeUiModel2, model3dAssetTypeUiModel3};
        $VALUES = model3dAssetTypeUiModelArr;
        $ENTRIES = EnumEntriesKt.a(model3dAssetTypeUiModelArr);
    }

    public static Model3dAssetTypeUiModel valueOf(String str) {
        return (Model3dAssetTypeUiModel) Enum.valueOf(Model3dAssetTypeUiModel.class, str);
    }

    public static Model3dAssetTypeUiModel[] values() {
        return (Model3dAssetTypeUiModel[]) $VALUES.clone();
    }
}
