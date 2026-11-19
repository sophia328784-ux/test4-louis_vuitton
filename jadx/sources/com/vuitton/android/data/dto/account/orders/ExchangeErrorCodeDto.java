package com.vuitton.android.data.dto.account.orders;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.ew;
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
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0087\u0081\u0002\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorCodeDto;", "", "Companion", "EXCHANGE_ERROR_NOT_SELLABLE", "EXCHANGE_ERROR_SKIP", "EXCHANGE_ERROR_OUT_OF_STOCK", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final class ExchangeErrorCodeDto {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ExchangeErrorCodeDto[] $VALUES;
    private static final Lazy<KSerializer<Object>> $cachedSerializer$delegate;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;

    @SerialName
    public static final ExchangeErrorCodeDto EXCHANGE_ERROR_NOT_SELLABLE;

    @SerialName
    public static final ExchangeErrorCodeDto EXCHANGE_ERROR_OUT_OF_STOCK;

    @SerialName
    public static final ExchangeErrorCodeDto EXCHANGE_ERROR_SKIP;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorCodeDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/account/orders/ExchangeErrorCodeDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ExchangeErrorCodeDto> serializer() {
            return (KSerializer) ExchangeErrorCodeDto.$cachedSerializer$delegate.getF71699b();
        }
    }

    static {
        ExchangeErrorCodeDto exchangeErrorCodeDto = new ExchangeErrorCodeDto("EXCHANGE_ERROR_NOT_SELLABLE", 0);
        EXCHANGE_ERROR_NOT_SELLABLE = exchangeErrorCodeDto;
        ExchangeErrorCodeDto exchangeErrorCodeDto2 = new ExchangeErrorCodeDto("EXCHANGE_ERROR_SKIP", 1);
        EXCHANGE_ERROR_SKIP = exchangeErrorCodeDto2;
        ExchangeErrorCodeDto exchangeErrorCodeDto3 = new ExchangeErrorCodeDto("EXCHANGE_ERROR_OUT_OF_STOCK", 2);
        EXCHANGE_ERROR_OUT_OF_STOCK = exchangeErrorCodeDto3;
        ExchangeErrorCodeDto[] exchangeErrorCodeDtoArr = {exchangeErrorCodeDto, exchangeErrorCodeDto2, exchangeErrorCodeDto3};
        $VALUES = exchangeErrorCodeDtoArr;
        $ENTRIES = EnumEntriesKt.a(exchangeErrorCodeDtoArr);
        INSTANCE = new Companion(null);
        $cachedSerializer$delegate = LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new ew(12));
    }

    public static ExchangeErrorCodeDto valueOf(String str) {
        return (ExchangeErrorCodeDto) Enum.valueOf(ExchangeErrorCodeDto.class, str);
    }

    public static ExchangeErrorCodeDto[] values() {
        return (ExchangeErrorCodeDto[]) $VALUES.clone();
    }
}
