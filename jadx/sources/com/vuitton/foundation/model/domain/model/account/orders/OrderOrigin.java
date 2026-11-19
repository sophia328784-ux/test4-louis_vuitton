package com.vuitton.foundation.model.domain.model.account.orders;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/account/orders/OrderOrigin;", "", "CLASSIC", "X_STORE", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OrderOrigin {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OrderOrigin[] $VALUES;
    public static final OrderOrigin CLASSIC;
    public static final OrderOrigin X_STORE;

    static {
        OrderOrigin orderOrigin = new OrderOrigin("CLASSIC", 0);
        CLASSIC = orderOrigin;
        OrderOrigin orderOrigin2 = new OrderOrigin("X_STORE", 1);
        X_STORE = orderOrigin2;
        OrderOrigin[] orderOriginArr = {orderOrigin, orderOrigin2};
        $VALUES = orderOriginArr;
        $ENTRIES = EnumEntriesKt.a(orderOriginArr);
    }

    public static OrderOrigin valueOf(String str) {
        return (OrderOrigin) Enum.valueOf(OrderOrigin.class, str);
    }

    public static OrderOrigin[] values() {
        return (OrderOrigin[]) $VALUES.clone();
    }
}
