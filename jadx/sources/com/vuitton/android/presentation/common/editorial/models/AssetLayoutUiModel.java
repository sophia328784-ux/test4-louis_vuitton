package com.vuitton.android.presentation.common.editorial.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/AssetLayoutUiModel;", "", "FULL_WIDTH", "MARIELOUISE_CENTERED", "MARIELOUISE_LEFT", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AssetLayoutUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AssetLayoutUiModel[] $VALUES;
    public static final AssetLayoutUiModel FULL_WIDTH;
    public static final AssetLayoutUiModel MARIELOUISE_CENTERED;
    public static final AssetLayoutUiModel MARIELOUISE_LEFT;

    static {
        AssetLayoutUiModel assetLayoutUiModel = new AssetLayoutUiModel("FULL_WIDTH", 0);
        FULL_WIDTH = assetLayoutUiModel;
        AssetLayoutUiModel assetLayoutUiModel2 = new AssetLayoutUiModel("MARIELOUISE_CENTERED", 1);
        MARIELOUISE_CENTERED = assetLayoutUiModel2;
        AssetLayoutUiModel assetLayoutUiModel3 = new AssetLayoutUiModel("MARIELOUISE_LEFT", 2);
        MARIELOUISE_LEFT = assetLayoutUiModel3;
        AssetLayoutUiModel[] assetLayoutUiModelArr = {assetLayoutUiModel, assetLayoutUiModel2, assetLayoutUiModel3};
        $VALUES = assetLayoutUiModelArr;
        $ENTRIES = EnumEntriesKt.a(assetLayoutUiModelArr);
    }

    public static AssetLayoutUiModel valueOf(String str) {
        return (AssetLayoutUiModel) Enum.valueOf(AssetLayoutUiModel.class, str);
    }

    public static AssetLayoutUiModel[] values() {
        return (AssetLayoutUiModel[]) $VALUES.clone();
    }
}
