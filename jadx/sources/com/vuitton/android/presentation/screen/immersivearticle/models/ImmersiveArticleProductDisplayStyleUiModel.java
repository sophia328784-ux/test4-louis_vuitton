package com.vuitton.android.presentation.screen.immersivearticle.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleProductDisplayStyleUiModel;", "", "FULL_DETAILS", "IMAGE_ONLY", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ImmersiveArticleProductDisplayStyleUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ImmersiveArticleProductDisplayStyleUiModel[] $VALUES;
    public static final ImmersiveArticleProductDisplayStyleUiModel FULL_DETAILS;
    public static final ImmersiveArticleProductDisplayStyleUiModel IMAGE_ONLY;

    static {
        ImmersiveArticleProductDisplayStyleUiModel immersiveArticleProductDisplayStyleUiModel = new ImmersiveArticleProductDisplayStyleUiModel("FULL_DETAILS", 0);
        FULL_DETAILS = immersiveArticleProductDisplayStyleUiModel;
        ImmersiveArticleProductDisplayStyleUiModel immersiveArticleProductDisplayStyleUiModel2 = new ImmersiveArticleProductDisplayStyleUiModel("IMAGE_ONLY", 1);
        IMAGE_ONLY = immersiveArticleProductDisplayStyleUiModel2;
        ImmersiveArticleProductDisplayStyleUiModel[] immersiveArticleProductDisplayStyleUiModelArr = {immersiveArticleProductDisplayStyleUiModel, immersiveArticleProductDisplayStyleUiModel2};
        $VALUES = immersiveArticleProductDisplayStyleUiModelArr;
        $ENTRIES = EnumEntriesKt.a(immersiveArticleProductDisplayStyleUiModelArr);
    }

    public static ImmersiveArticleProductDisplayStyleUiModel valueOf(String str) {
        return (ImmersiveArticleProductDisplayStyleUiModel) Enum.valueOf(ImmersiveArticleProductDisplayStyleUiModel.class, str);
    }

    public static ImmersiveArticleProductDisplayStyleUiModel[] values() {
        return (ImmersiveArticleProductDisplayStyleUiModel[]) $VALUES.clone();
    }
}
