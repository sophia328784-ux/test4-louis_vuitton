package com.vuitton.android.presentation.screen.immersivearticle.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductImageStyleUiModel;", "", "REGULAR", "MARIE_LOUISE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ImmersiveArticleProductImageStyleUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ImmersiveArticleProductImageStyleUiModel[] $VALUES;
    public static final ImmersiveArticleProductImageStyleUiModel MARIE_LOUISE;
    public static final ImmersiveArticleProductImageStyleUiModel REGULAR;

    static {
        ImmersiveArticleProductImageStyleUiModel immersiveArticleProductImageStyleUiModel = new ImmersiveArticleProductImageStyleUiModel("REGULAR", 0);
        REGULAR = immersiveArticleProductImageStyleUiModel;
        ImmersiveArticleProductImageStyleUiModel immersiveArticleProductImageStyleUiModel2 = new ImmersiveArticleProductImageStyleUiModel("MARIE_LOUISE", 1);
        MARIE_LOUISE = immersiveArticleProductImageStyleUiModel2;
        ImmersiveArticleProductImageStyleUiModel[] immersiveArticleProductImageStyleUiModelArr = {immersiveArticleProductImageStyleUiModel, immersiveArticleProductImageStyleUiModel2};
        $VALUES = immersiveArticleProductImageStyleUiModelArr;
        $ENTRIES = EnumEntriesKt.a(immersiveArticleProductImageStyleUiModelArr);
    }

    public static ImmersiveArticleProductImageStyleUiModel valueOf(String str) {
        return (ImmersiveArticleProductImageStyleUiModel) Enum.valueOf(ImmersiveArticleProductImageStyleUiModel.class, str);
    }

    public static ImmersiveArticleProductImageStyleUiModel[] values() {
        return (ImmersiveArticleProductImageStyleUiModel[]) $VALUES.clone();
    }
}
