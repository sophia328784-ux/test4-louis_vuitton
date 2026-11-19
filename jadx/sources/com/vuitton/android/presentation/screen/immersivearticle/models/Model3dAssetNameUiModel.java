package com.vuitton.android.presentation.screen.immersivearticle.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/Model3dAssetNameUiModel;", "", "LD_R", "BACKGROUND_3D", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Model3dAssetNameUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Model3dAssetNameUiModel[] $VALUES;
    public static final Model3dAssetNameUiModel BACKGROUND_3D;
    public static final Model3dAssetNameUiModel LD_R;

    static {
        Model3dAssetNameUiModel model3dAssetNameUiModel = new Model3dAssetNameUiModel("LD_R", 0);
        LD_R = model3dAssetNameUiModel;
        Model3dAssetNameUiModel model3dAssetNameUiModel2 = new Model3dAssetNameUiModel("BACKGROUND_3D", 1);
        BACKGROUND_3D = model3dAssetNameUiModel2;
        Model3dAssetNameUiModel[] model3dAssetNameUiModelArr = {model3dAssetNameUiModel, model3dAssetNameUiModel2};
        $VALUES = model3dAssetNameUiModelArr;
        $ENTRIES = EnumEntriesKt.a(model3dAssetNameUiModelArr);
    }

    public static Model3dAssetNameUiModel valueOf(String str) {
        return (Model3dAssetNameUiModel) Enum.valueOf(Model3dAssetNameUiModel.class, str);
    }

    public static Model3dAssetNameUiModel[] values() {
        return (Model3dAssetNameUiModel[]) $VALUES.clone();
    }
}
