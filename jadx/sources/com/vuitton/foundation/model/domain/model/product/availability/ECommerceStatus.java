package com.vuitton.foundation.model.domain.model.product.availability;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/availability/ECommerceStatus;", "", "Disabled", "Enabled", "WebOnly", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ECommerceStatus {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ECommerceStatus[] $VALUES;
    public static final ECommerceStatus Disabled;
    public static final ECommerceStatus Enabled;
    public static final ECommerceStatus WebOnly;

    static {
        ECommerceStatus eCommerceStatus = new ECommerceStatus("Disabled", 0);
        Disabled = eCommerceStatus;
        ECommerceStatus eCommerceStatus2 = new ECommerceStatus("Enabled", 1);
        Enabled = eCommerceStatus2;
        ECommerceStatus eCommerceStatus3 = new ECommerceStatus("WebOnly", 2);
        WebOnly = eCommerceStatus3;
        ECommerceStatus[] eCommerceStatusArr = {eCommerceStatus, eCommerceStatus2, eCommerceStatus3};
        $VALUES = eCommerceStatusArr;
        $ENTRIES = EnumEntriesKt.a(eCommerceStatusArr);
    }

    public static ECommerceStatus valueOf(String str) {
        return (ECommerceStatus) Enum.valueOf(ECommerceStatus.class, str);
    }

    public static ECommerceStatus[] values() {
        return (ECommerceStatus[]) $VALUES.clone();
    }
}
