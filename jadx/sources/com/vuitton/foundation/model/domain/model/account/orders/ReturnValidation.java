package com.vuitton.foundation.model.domain.model.account.orders;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/ReturnValidation;", "", "PENDING", "FINALIZED", "CANCELLED", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ReturnValidation {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ReturnValidation[] $VALUES;
    public static final ReturnValidation CANCELLED;
    public static final ReturnValidation FINALIZED;
    public static final ReturnValidation PENDING;

    static {
        ReturnValidation returnValidation = new ReturnValidation("PENDING", 0);
        PENDING = returnValidation;
        ReturnValidation returnValidation2 = new ReturnValidation("FINALIZED", 1);
        FINALIZED = returnValidation2;
        ReturnValidation returnValidation3 = new ReturnValidation("CANCELLED", 2);
        CANCELLED = returnValidation3;
        ReturnValidation[] returnValidationArr = {returnValidation, returnValidation2, returnValidation3};
        $VALUES = returnValidationArr;
        $ENTRIES = EnumEntriesKt.a(returnValidationArr);
    }

    public static ReturnValidation valueOf(String str) {
        return (ReturnValidation) Enum.valueOf(ReturnValidation.class, str);
    }

    public static ReturnValidation[] values() {
        return (ReturnValidation[]) $VALUES.clone();
    }
}
