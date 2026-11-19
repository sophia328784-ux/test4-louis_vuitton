package com.vuitton.android.presentation.screen.immersivearticle.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/LookSkuTypeUiModel;", "", "PRODUCT", "LOOK", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LookSkuTypeUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LookSkuTypeUiModel[] $VALUES;
    public static final LookSkuTypeUiModel LOOK;
    public static final LookSkuTypeUiModel PRODUCT;

    static {
        LookSkuTypeUiModel lookSkuTypeUiModel = new LookSkuTypeUiModel("PRODUCT", 0);
        PRODUCT = lookSkuTypeUiModel;
        LookSkuTypeUiModel lookSkuTypeUiModel2 = new LookSkuTypeUiModel("LOOK", 1);
        LOOK = lookSkuTypeUiModel2;
        LookSkuTypeUiModel[] lookSkuTypeUiModelArr = {lookSkuTypeUiModel, lookSkuTypeUiModel2};
        $VALUES = lookSkuTypeUiModelArr;
        $ENTRIES = EnumEntriesKt.a(lookSkuTypeUiModelArr);
    }

    public static LookSkuTypeUiModel valueOf(String str) {
        return (LookSkuTypeUiModel) Enum.valueOf(LookSkuTypeUiModel.class, str);
    }

    public static LookSkuTypeUiModel[] values() {
        return (LookSkuTypeUiModel[]) $VALUES.clone();
    }
}
