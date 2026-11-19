package com.vuitton.android.presentation.common.editorial.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/common/editorial/models/RatioUiModel;", "", "RATIO_2X3", "RATIO_4X5", "RATIO_16X9", "RATIO_9X16", "RATIO_1X1", "FULLSCREEN", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RatioUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RatioUiModel[] $VALUES;
    public static final RatioUiModel FULLSCREEN;
    public static final RatioUiModel RATIO_16X9;
    public static final RatioUiModel RATIO_1X1;
    public static final RatioUiModel RATIO_2X3;
    public static final RatioUiModel RATIO_4X5;
    public static final RatioUiModel RATIO_9X16;

    static {
        RatioUiModel ratioUiModel = new RatioUiModel("RATIO_2X3", 0);
        RATIO_2X3 = ratioUiModel;
        RatioUiModel ratioUiModel2 = new RatioUiModel("RATIO_4X5", 1);
        RATIO_4X5 = ratioUiModel2;
        RatioUiModel ratioUiModel3 = new RatioUiModel("RATIO_16X9", 2);
        RATIO_16X9 = ratioUiModel3;
        RatioUiModel ratioUiModel4 = new RatioUiModel("RATIO_9X16", 3);
        RATIO_9X16 = ratioUiModel4;
        RatioUiModel ratioUiModel5 = new RatioUiModel("RATIO_1X1", 4);
        RATIO_1X1 = ratioUiModel5;
        RatioUiModel ratioUiModel6 = new RatioUiModel("FULLSCREEN", 5);
        FULLSCREEN = ratioUiModel6;
        RatioUiModel[] ratioUiModelArr = {ratioUiModel, ratioUiModel2, ratioUiModel3, ratioUiModel4, ratioUiModel5, ratioUiModel6};
        $VALUES = ratioUiModelArr;
        $ENTRIES = EnumEntriesKt.a(ratioUiModelArr);
    }

    public static RatioUiModel valueOf(String str) {
        return (RatioUiModel) Enum.valueOf(RatioUiModel.class, str);
    }

    public static RatioUiModel[] values() {
        return (RatioUiModel[]) $VALUES.clone();
    }
}
