package com.vuitton.android.presentation.screen.immersivearticle.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleSizeCardUiModel;", "", "FULLSCREEN", "RATIO_16_9", "RATIO_9_16", "RATIO_2_3", "RATIO_4_5", "RATIO_1_1", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ImmersiveArticleSizeCardUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ImmersiveArticleSizeCardUiModel[] $VALUES;
    public static final ImmersiveArticleSizeCardUiModel FULLSCREEN;
    public static final ImmersiveArticleSizeCardUiModel RATIO_16_9;
    public static final ImmersiveArticleSizeCardUiModel RATIO_1_1;
    public static final ImmersiveArticleSizeCardUiModel RATIO_2_3;
    public static final ImmersiveArticleSizeCardUiModel RATIO_4_5;
    public static final ImmersiveArticleSizeCardUiModel RATIO_9_16;

    static {
        ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel = new ImmersiveArticleSizeCardUiModel("FULLSCREEN", 0);
        FULLSCREEN = immersiveArticleSizeCardUiModel;
        ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel2 = new ImmersiveArticleSizeCardUiModel("RATIO_16_9", 1);
        RATIO_16_9 = immersiveArticleSizeCardUiModel2;
        ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel3 = new ImmersiveArticleSizeCardUiModel("RATIO_9_16", 2);
        RATIO_9_16 = immersiveArticleSizeCardUiModel3;
        ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel4 = new ImmersiveArticleSizeCardUiModel("RATIO_2_3", 3);
        RATIO_2_3 = immersiveArticleSizeCardUiModel4;
        ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel5 = new ImmersiveArticleSizeCardUiModel("RATIO_4_5", 4);
        RATIO_4_5 = immersiveArticleSizeCardUiModel5;
        ImmersiveArticleSizeCardUiModel immersiveArticleSizeCardUiModel6 = new ImmersiveArticleSizeCardUiModel("RATIO_1_1", 5);
        RATIO_1_1 = immersiveArticleSizeCardUiModel6;
        ImmersiveArticleSizeCardUiModel[] immersiveArticleSizeCardUiModelArr = {immersiveArticleSizeCardUiModel, immersiveArticleSizeCardUiModel2, immersiveArticleSizeCardUiModel3, immersiveArticleSizeCardUiModel4, immersiveArticleSizeCardUiModel5, immersiveArticleSizeCardUiModel6};
        $VALUES = immersiveArticleSizeCardUiModelArr;
        $ENTRIES = EnumEntriesKt.a(immersiveArticleSizeCardUiModelArr);
    }

    public static ImmersiveArticleSizeCardUiModel valueOf(String str) {
        return (ImmersiveArticleSizeCardUiModel) Enum.valueOf(ImmersiveArticleSizeCardUiModel.class, str);
    }

    public static ImmersiveArticleSizeCardUiModel[] values() {
        return (ImmersiveArticleSizeCardUiModel[]) $VALUES.clone();
    }
}
