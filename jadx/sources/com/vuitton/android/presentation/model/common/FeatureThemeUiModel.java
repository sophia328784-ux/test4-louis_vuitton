package com.vuitton.android.presentation.model.common;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;", "", "LIGHT", "DARK", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FeatureThemeUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ FeatureThemeUiModel[] $VALUES;
    public static final FeatureThemeUiModel DARK;
    public static final FeatureThemeUiModel LIGHT;

    static {
        FeatureThemeUiModel featureThemeUiModel = new FeatureThemeUiModel("LIGHT", 0);
        LIGHT = featureThemeUiModel;
        FeatureThemeUiModel featureThemeUiModel2 = new FeatureThemeUiModel("DARK", 1);
        DARK = featureThemeUiModel2;
        FeatureThemeUiModel[] featureThemeUiModelArr = {featureThemeUiModel, featureThemeUiModel2};
        $VALUES = featureThemeUiModelArr;
        $ENTRIES = EnumEntriesKt.a(featureThemeUiModelArr);
    }

    public static FeatureThemeUiModel valueOf(String str) {
        return (FeatureThemeUiModel) Enum.valueOf(FeatureThemeUiModel.class, str);
    }

    public static FeatureThemeUiModel[] values() {
        return (FeatureThemeUiModel[]) $VALUES.clone();
    }
}
