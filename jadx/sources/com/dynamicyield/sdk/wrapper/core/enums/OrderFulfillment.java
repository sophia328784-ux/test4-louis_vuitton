package com.dynamicyield.sdk.wrapper.core.enums;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/enums/OrderFulfillment;", "", "DELIVERY", "PICKUP", "DINEIN", "CURBSIDE", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class OrderFulfillment {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ OrderFulfillment[] $VALUES;
    public static final OrderFulfillment CURBSIDE;
    public static final OrderFulfillment DELIVERY;
    public static final OrderFulfillment DINEIN;
    public static final OrderFulfillment PICKUP;

    static {
        OrderFulfillment orderFulfillment = new OrderFulfillment("DELIVERY", 0);
        DELIVERY = orderFulfillment;
        OrderFulfillment orderFulfillment2 = new OrderFulfillment("PICKUP", 1);
        PICKUP = orderFulfillment2;
        OrderFulfillment orderFulfillment3 = new OrderFulfillment("DINEIN", 2);
        DINEIN = orderFulfillment3;
        OrderFulfillment orderFulfillment4 = new OrderFulfillment("CURBSIDE", 3);
        CURBSIDE = orderFulfillment4;
        OrderFulfillment[] orderFulfillmentArr = {orderFulfillment, orderFulfillment2, orderFulfillment3, orderFulfillment4};
        $VALUES = orderFulfillmentArr;
        $ENTRIES = EnumEntriesKt.a(orderFulfillmentArr);
    }

    public static OrderFulfillment valueOf(String str) {
        return (OrderFulfillment) Enum.valueOf(OrderFulfillment.class, str);
    }

    public static OrderFulfillment[] values() {
        return (OrderFulfillment[]) $VALUES.clone();
    }
}
