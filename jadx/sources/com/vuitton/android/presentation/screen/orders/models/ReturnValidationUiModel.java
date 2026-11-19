package com.vuitton.android.presentation.screen.orders.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ReturnValidationUiModel;", "", "PENDING", "FINALIZED", "CANCELLED", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ReturnValidationUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ReturnValidationUiModel[] $VALUES;
    public static final ReturnValidationUiModel CANCELLED;
    public static final ReturnValidationUiModel FINALIZED;
    public static final ReturnValidationUiModel PENDING;

    static {
        ReturnValidationUiModel returnValidationUiModel = new ReturnValidationUiModel("PENDING", 0);
        PENDING = returnValidationUiModel;
        ReturnValidationUiModel returnValidationUiModel2 = new ReturnValidationUiModel("FINALIZED", 1);
        FINALIZED = returnValidationUiModel2;
        ReturnValidationUiModel returnValidationUiModel3 = new ReturnValidationUiModel("CANCELLED", 2);
        CANCELLED = returnValidationUiModel3;
        ReturnValidationUiModel[] returnValidationUiModelArr = {returnValidationUiModel, returnValidationUiModel2, returnValidationUiModel3};
        $VALUES = returnValidationUiModelArr;
        $ENTRIES = EnumEntriesKt.a(returnValidationUiModelArr);
    }

    public static ReturnValidationUiModel valueOf(String str) {
        return (ReturnValidationUiModel) Enum.valueOf(ReturnValidationUiModel.class, str);
    }

    public static ReturnValidationUiModel[] values() {
        return (ReturnValidationUiModel[]) $VALUES.clone();
    }
}
