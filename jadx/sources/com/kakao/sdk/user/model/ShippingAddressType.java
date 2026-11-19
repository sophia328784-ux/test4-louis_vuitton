package com.kakao.sdk.user.model;

import com.kakao.sdk.common.json.UnknownValue;
import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/kakao/sdk/user/model/ShippingAddressType;", "", "OLD", "NEW", "UNKNOWN", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class ShippingAddressType {
    private static final /* synthetic */ ShippingAddressType[] $VALUES;
    public static final ShippingAddressType NEW;
    public static final ShippingAddressType OLD;

    @UnknownValue
    public static final ShippingAddressType UNKNOWN;

    static {
        ShippingAddressType shippingAddressType = new ShippingAddressType("OLD", 0);
        OLD = shippingAddressType;
        ShippingAddressType shippingAddressType2 = new ShippingAddressType("NEW", 1);
        NEW = shippingAddressType2;
        ShippingAddressType shippingAddressType3 = new ShippingAddressType("UNKNOWN", 2);
        UNKNOWN = shippingAddressType3;
        $VALUES = new ShippingAddressType[]{shippingAddressType, shippingAddressType2, shippingAddressType3};
    }

    public static ShippingAddressType valueOf(String str) {
        return (ShippingAddressType) Enum.valueOf(ShippingAddressType.class, str);
    }

    public static ShippingAddressType[] values() {
        return (ShippingAddressType[]) $VALUES.clone();
    }
}
