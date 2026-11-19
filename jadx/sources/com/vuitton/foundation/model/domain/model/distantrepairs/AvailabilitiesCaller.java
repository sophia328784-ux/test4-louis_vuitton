package com.vuitton.foundation.model.domain.model.distantrepairs;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/distantrepairs/AvailabilitiesCaller;", "", "APPOINTMENT", "DISTANT_REPAIRS", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AvailabilitiesCaller {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AvailabilitiesCaller[] $VALUES;
    public static final AvailabilitiesCaller APPOINTMENT;
    public static final AvailabilitiesCaller DISTANT_REPAIRS;

    static {
        AvailabilitiesCaller availabilitiesCaller = new AvailabilitiesCaller("APPOINTMENT", 0);
        APPOINTMENT = availabilitiesCaller;
        AvailabilitiesCaller availabilitiesCaller2 = new AvailabilitiesCaller("DISTANT_REPAIRS", 1);
        DISTANT_REPAIRS = availabilitiesCaller2;
        AvailabilitiesCaller[] availabilitiesCallerArr = {availabilitiesCaller, availabilitiesCaller2};
        $VALUES = availabilitiesCallerArr;
        $ENTRIES = EnumEntriesKt.a(availabilitiesCallerArr);
    }

    public static AvailabilitiesCaller valueOf(String str) {
        return (AvailabilitiesCaller) Enum.valueOf(AvailabilitiesCaller.class, str);
    }

    public static AvailabilitiesCaller[] values() {
        return (AvailabilitiesCaller[]) $VALUES.clone();
    }
}
