package com.vuitton.android.presentation.screen.immersivearticle.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFontUiModel;", "", "DEFAULT", "HANLEY_PRO", "ANGLAISE_F", "COND", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ImmersiveArticleFontUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ImmersiveArticleFontUiModel[] $VALUES;
    public static final ImmersiveArticleFontUiModel ANGLAISE_F;
    public static final ImmersiveArticleFontUiModel COND;
    public static final ImmersiveArticleFontUiModel DEFAULT;
    public static final ImmersiveArticleFontUiModel HANLEY_PRO;

    static {
        ImmersiveArticleFontUiModel immersiveArticleFontUiModel = new ImmersiveArticleFontUiModel("DEFAULT", 0);
        DEFAULT = immersiveArticleFontUiModel;
        ImmersiveArticleFontUiModel immersiveArticleFontUiModel2 = new ImmersiveArticleFontUiModel("HANLEY_PRO", 1);
        HANLEY_PRO = immersiveArticleFontUiModel2;
        ImmersiveArticleFontUiModel immersiveArticleFontUiModel3 = new ImmersiveArticleFontUiModel("ANGLAISE_F", 2);
        ANGLAISE_F = immersiveArticleFontUiModel3;
        ImmersiveArticleFontUiModel immersiveArticleFontUiModel4 = new ImmersiveArticleFontUiModel("COND", 3);
        COND = immersiveArticleFontUiModel4;
        ImmersiveArticleFontUiModel[] immersiveArticleFontUiModelArr = {immersiveArticleFontUiModel, immersiveArticleFontUiModel2, immersiveArticleFontUiModel3, immersiveArticleFontUiModel4};
        $VALUES = immersiveArticleFontUiModelArr;
        $ENTRIES = EnumEntriesKt.a(immersiveArticleFontUiModelArr);
    }

    public static ImmersiveArticleFontUiModel valueOf(String str) {
        return (ImmersiveArticleFontUiModel) Enum.valueOf(ImmersiveArticleFontUiModel.class, str);
    }

    public static ImmersiveArticleFontUiModel[] values() {
        return (ImmersiveArticleFontUiModel[]) $VALUES.clone();
    }
}
