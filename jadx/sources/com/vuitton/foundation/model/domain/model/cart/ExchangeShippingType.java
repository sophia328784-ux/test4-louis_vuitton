package com.vuitton.foundation.model.domain.model.cart;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/cart/ExchangeShippingType;", "", "STANDARD", "CLICK_AND_COLLECT", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ExchangeShippingType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ExchangeShippingType[] $VALUES;
    public static final ExchangeShippingType CLICK_AND_COLLECT;
    public static final ExchangeShippingType STANDARD;

    static {
        ExchangeShippingType exchangeShippingType = new ExchangeShippingType("STANDARD", 0);
        STANDARD = exchangeShippingType;
        ExchangeShippingType exchangeShippingType2 = new ExchangeShippingType("CLICK_AND_COLLECT", 1);
        CLICK_AND_COLLECT = exchangeShippingType2;
        ExchangeShippingType[] exchangeShippingTypeArr = {exchangeShippingType, exchangeShippingType2};
        $VALUES = exchangeShippingTypeArr;
        $ENTRIES = EnumEntriesKt.a(exchangeShippingTypeArr);
    }

    public static ExchangeShippingType valueOf(String str) {
        return (ExchangeShippingType) Enum.valueOf(ExchangeShippingType.class, str);
    }

    public static ExchangeShippingType[] values() {
        return (ExchangeShippingType[]) $VALUES.clone();
    }
}
