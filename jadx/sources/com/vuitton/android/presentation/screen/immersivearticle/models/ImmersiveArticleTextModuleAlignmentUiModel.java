package com.vuitton.android.presentation.screen.immersivearticle.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTextModuleAlignmentUiModel;", "", "CENTER", "RIGHT", "LEFT", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ImmersiveArticleTextModuleAlignmentUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ImmersiveArticleTextModuleAlignmentUiModel[] $VALUES;
    public static final ImmersiveArticleTextModuleAlignmentUiModel CENTER;
    public static final ImmersiveArticleTextModuleAlignmentUiModel LEFT;
    public static final ImmersiveArticleTextModuleAlignmentUiModel RIGHT;

    static {
        ImmersiveArticleTextModuleAlignmentUiModel immersiveArticleTextModuleAlignmentUiModel = new ImmersiveArticleTextModuleAlignmentUiModel("CENTER", 0);
        CENTER = immersiveArticleTextModuleAlignmentUiModel;
        ImmersiveArticleTextModuleAlignmentUiModel immersiveArticleTextModuleAlignmentUiModel2 = new ImmersiveArticleTextModuleAlignmentUiModel("RIGHT", 1);
        RIGHT = immersiveArticleTextModuleAlignmentUiModel2;
        ImmersiveArticleTextModuleAlignmentUiModel immersiveArticleTextModuleAlignmentUiModel3 = new ImmersiveArticleTextModuleAlignmentUiModel("LEFT", 2);
        LEFT = immersiveArticleTextModuleAlignmentUiModel3;
        ImmersiveArticleTextModuleAlignmentUiModel[] immersiveArticleTextModuleAlignmentUiModelArr = {immersiveArticleTextModuleAlignmentUiModel, immersiveArticleTextModuleAlignmentUiModel2, immersiveArticleTextModuleAlignmentUiModel3};
        $VALUES = immersiveArticleTextModuleAlignmentUiModelArr;
        $ENTRIES = EnumEntriesKt.a(immersiveArticleTextModuleAlignmentUiModelArr);
    }

    public static ImmersiveArticleTextModuleAlignmentUiModel valueOf(String str) {
        return (ImmersiveArticleTextModuleAlignmentUiModel) Enum.valueOf(ImmersiveArticleTextModuleAlignmentUiModel.class, str);
    }

    public static ImmersiveArticleTextModuleAlignmentUiModel[] values() {
        return (ImmersiveArticleTextModuleAlignmentUiModel[]) $VALUES.clone();
    }
}
