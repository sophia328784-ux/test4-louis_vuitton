package com.vuitton.android.data.dto.cart.common;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fj;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;", "", "Companion", "MAX_QUANTITY", "MAX_QUANTITY_BY_SKU", "MAX_QUANTITY_PERSONALIZATION", "OUT_OF_STOCK", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class CartErrorCodeDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CartErrorCodeDto[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName
    public static final CartErrorCodeDto MAX_QUANTITY;

    @SerialName
    public static final CartErrorCodeDto MAX_QUANTITY_BY_SKU;

    @SerialName
    public static final CartErrorCodeDto MAX_QUANTITY_PERSONALIZATION;

    @SerialName
    public static final CartErrorCodeDto OUT_OF_STOCK;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/cart/common/CartErrorCodeDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CartErrorCodeDto> serializer() {
            return (KSerializer) CartErrorCodeDto.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        CartErrorCodeDto cartErrorCodeDto = new CartErrorCodeDto("MAX_QUANTITY", 0);
        MAX_QUANTITY = cartErrorCodeDto;
        CartErrorCodeDto cartErrorCodeDto2 = new CartErrorCodeDto("MAX_QUANTITY_BY_SKU", 1);
        MAX_QUANTITY_BY_SKU = cartErrorCodeDto2;
        CartErrorCodeDto cartErrorCodeDto3 = new CartErrorCodeDto("MAX_QUANTITY_PERSONALIZATION", 2);
        MAX_QUANTITY_PERSONALIZATION = cartErrorCodeDto3;
        CartErrorCodeDto cartErrorCodeDto4 = new CartErrorCodeDto("OUT_OF_STOCK", 3);
        OUT_OF_STOCK = cartErrorCodeDto4;
        CartErrorCodeDto[] cartErrorCodeDtoArr = {cartErrorCodeDto, cartErrorCodeDto2, cartErrorCodeDto3, cartErrorCodeDto4};
        $VALUES = cartErrorCodeDtoArr;
        $ENTRIES = EnumEntriesKt.a(cartErrorCodeDtoArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new fj(4));
    }

    public static CartErrorCodeDto valueOf(String str) {
        return (CartErrorCodeDto) Enum.valueOf(CartErrorCodeDto.class, str);
    }

    public static CartErrorCodeDto[] values() {
        return (CartErrorCodeDto[]) $VALUES.clone();
    }
}
