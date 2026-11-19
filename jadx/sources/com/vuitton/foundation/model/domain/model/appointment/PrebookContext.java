package com.vuitton.foundation.model.domain.model.appointment;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/appointment/PrebookContext;", "", "ONLINE_STORE_APPOINTMENT", "CARE_SERVICE", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PrebookContext {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PrebookContext[] $VALUES;
    public static final PrebookContext CARE_SERVICE;
    public static final PrebookContext ONLINE_STORE_APPOINTMENT;

    static {
        PrebookContext prebookContext = new PrebookContext("ONLINE_STORE_APPOINTMENT", 0);
        ONLINE_STORE_APPOINTMENT = prebookContext;
        PrebookContext prebookContext2 = new PrebookContext("CARE_SERVICE", 1);
        CARE_SERVICE = prebookContext2;
        PrebookContext[] prebookContextArr = {prebookContext, prebookContext2};
        $VALUES = prebookContextArr;
        $ENTRIES = EnumEntriesKt.a(prebookContextArr);
    }

    public static PrebookContext valueOf(String str) {
        return (PrebookContext) Enum.valueOf(PrebookContext.class, str);
    }

    public static PrebookContext[] values() {
        return (PrebookContext[]) $VALUES.clone();
    }
}
