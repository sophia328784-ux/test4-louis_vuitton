package com.vuitton.foundation.model.domain.model.account.orders;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/Validation;", "", "VALIDATED", "PENDING", "CANCELLED", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Validation {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Validation[] $VALUES;
    public static final Validation CANCELLED;
    public static final Validation PENDING;
    public static final Validation VALIDATED;

    static {
        Validation validation = new Validation("VALIDATED", 0);
        VALIDATED = validation;
        Validation validation2 = new Validation("PENDING", 1);
        PENDING = validation2;
        Validation validation3 = new Validation("CANCELLED", 2);
        CANCELLED = validation3;
        Validation[] validationArr = {validation, validation2, validation3};
        $VALUES = validationArr;
        $ENTRIES = EnumEntriesKt.a(validationArr);
    }

    public static Validation valueOf(String str) {
        return (Validation) Enum.valueOf(Validation.class, str);
    }

    public static Validation[] values() {
        return (Validation[]) $VALUES.clone();
    }
}
