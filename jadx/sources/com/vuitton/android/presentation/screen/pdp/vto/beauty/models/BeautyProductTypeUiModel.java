package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyProductTypeUiModel;", "", "LIPSTICK", "EYESHADOW", "LIPLINER", "NONE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BeautyProductTypeUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BeautyProductTypeUiModel[] $VALUES;
    public static final BeautyProductTypeUiModel EYESHADOW;
    public static final BeautyProductTypeUiModel LIPLINER;
    public static final BeautyProductTypeUiModel LIPSTICK;
    public static final BeautyProductTypeUiModel NONE;

    static {
        BeautyProductTypeUiModel beautyProductTypeUiModel = new BeautyProductTypeUiModel("LIPSTICK", 0);
        LIPSTICK = beautyProductTypeUiModel;
        BeautyProductTypeUiModel beautyProductTypeUiModel2 = new BeautyProductTypeUiModel("EYESHADOW", 1);
        EYESHADOW = beautyProductTypeUiModel2;
        BeautyProductTypeUiModel beautyProductTypeUiModel3 = new BeautyProductTypeUiModel("LIPLINER", 2);
        LIPLINER = beautyProductTypeUiModel3;
        BeautyProductTypeUiModel beautyProductTypeUiModel4 = new BeautyProductTypeUiModel("NONE", 3);
        NONE = beautyProductTypeUiModel4;
        BeautyProductTypeUiModel[] beautyProductTypeUiModelArr = {beautyProductTypeUiModel, beautyProductTypeUiModel2, beautyProductTypeUiModel3, beautyProductTypeUiModel4};
        $VALUES = beautyProductTypeUiModelArr;
        $ENTRIES = EnumEntriesKt.a(beautyProductTypeUiModelArr);
    }

    public static BeautyProductTypeUiModel valueOf(String str) {
        return (BeautyProductTypeUiModel) Enum.valueOf(BeautyProductTypeUiModel.class, str);
    }

    public static BeautyProductTypeUiModel[] values() {
        return (BeautyProductTypeUiModel[]) $VALUES.clone();
    }
}
