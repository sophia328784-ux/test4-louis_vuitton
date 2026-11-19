package com.vuitton.android.presentation.model.common;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/model/common/ScaleUiModel;", "", "FIT", "FILL", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ScaleUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ScaleUiModel[] $VALUES;
    public static final ScaleUiModel FILL;
    public static final ScaleUiModel FIT;

    static {
        ScaleUiModel scaleUiModel = new ScaleUiModel("FIT", 0);
        FIT = scaleUiModel;
        ScaleUiModel scaleUiModel2 = new ScaleUiModel("FILL", 1);
        FILL = scaleUiModel2;
        ScaleUiModel[] scaleUiModelArr = {scaleUiModel, scaleUiModel2};
        $VALUES = scaleUiModelArr;
        $ENTRIES = EnumEntriesKt.a(scaleUiModelArr);
    }

    public static ScaleUiModel valueOf(String str) {
        return (ScaleUiModel) Enum.valueOf(ScaleUiModel.class, str);
    }

    public static ScaleUiModel[] values() {
        return (ScaleUiModel[]) $VALUES.clone();
    }
}
