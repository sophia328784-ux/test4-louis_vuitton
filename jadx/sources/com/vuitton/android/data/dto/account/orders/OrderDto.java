package com.vuitton.android.data.dto.account.orders;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.ii0;
import defpackage.mg0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014BU\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\r\u0010\u000eB]\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\r\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/OrderDto;", "", "", "identifier", "Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;", "orderPriceDto", "purchaseUtcDate", "Lcom/vuitton/android/data/dto/account/orders/ChannelDto;", "channel", "", "Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto;", "shippingGroups", "locationId", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/ChannelDto;Ljava/util/List;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/ChannelDto;Ljava/util/List;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class OrderDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44390a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OrderPriceDto f44391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44392c;
    public final ChannelDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f44393e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44394f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/OrderDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/account/orders/OrderDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<OrderDto> serializer() {
            return OrderDto$$serializer.f44395a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        g = new Lazy[]{null, null, null, LazyKt.a(lazyThreadSafetyMode, new mg0(29)), LazyKt.a(lazyThreadSafetyMode, new ii0(0)), null};
    }

    public /* synthetic */ OrderDto(int i2, String str, OrderPriceDto orderPriceDto, String str2, ChannelDto channelDto, List list, String str3, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f44390a = null;
        } else {
            this.f44390a = str;
        }
        if ((i2 & 2) == 0) {
            this.f44391b = null;
        } else {
            this.f44391b = orderPriceDto;
        }
        if ((i2 & 4) == 0) {
            this.f44392c = null;
        } else {
            this.f44392c = str2;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = channelDto;
        }
        if ((i2 & 16) == 0) {
            this.f44393e = null;
        } else {
            this.f44393e = list;
        }
        if ((i2 & 32) == 0) {
            this.f44394f = null;
        } else {
            this.f44394f = str3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OrderDto)) {
            return false;
        }
        OrderDto orderDto = (OrderDto) obj;
        return Intrinsics.c(this.f44390a, orderDto.f44390a) && Intrinsics.c(this.f44391b, orderDto.f44391b) && Intrinsics.c(this.f44392c, orderDto.f44392c) && this.d == orderDto.d && Intrinsics.c(this.f44393e, orderDto.f44393e) && Intrinsics.c(this.f44394f, orderDto.f44394f);
    }

    public final int hashCode() {
        String str = this.f44390a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        OrderPriceDto orderPriceDto = this.f44391b;
        int iHashCode2 = (iHashCode + (orderPriceDto == null ? 0 : orderPriceDto.hashCode())) * 31;
        String str2 = this.f44392c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        ChannelDto channelDto = this.d;
        int iHashCode4 = (iHashCode3 + (channelDto == null ? 0 : channelDto.hashCode())) * 31;
        List list = this.f44393e;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        String str3 = this.f44394f;
        return iHashCode5 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        return "OrderDto(identifier=" + this.f44390a + ", orderPriceDto=" + this.f44391b + ", purchaseUtcDate=" + this.f44392c + ", channel=" + this.d + ", shippingGroups=" + this.f44393e + ", locationId=" + this.f44394f + ")";
    }

    public OrderDto() {
        this((String) null, (OrderPriceDto) null, (String) null, (ChannelDto) null, (List) null, (String) null, 63, (DefaultConstructorMarker) null);
    }

    public OrderDto(String str, OrderPriceDto orderPriceDto, String str2, ChannelDto channelDto, List<ShippingGroupDto> list, String str3) {
        this.f44390a = str;
        this.f44391b = orderPriceDto;
        this.f44392c = str2;
        this.d = channelDto;
        this.f44393e = list;
        this.f44394f = str3;
    }

    public /* synthetic */ OrderDto(String str, OrderPriceDto orderPriceDto, String str2, ChannelDto channelDto, List list, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : orderPriceDto, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : channelDto, (i2 & 16) != 0 ? null : list, (i2 & 32) != 0 ? null : str3);
    }
}
