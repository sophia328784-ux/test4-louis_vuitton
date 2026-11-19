package com.vuitton.android.data.dto.account.orders;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.n00;
import defpackage.zu0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00172\u00020\u0001:\u0002\u0018\u0017B]\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0010\u0010\u0011Bq\b\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0010\u0010\u0016¨\u0006\u0019"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto;", "", "", "identifier", "shippingGroupId", "Lcom/vuitton/android/data/dto/account/orders/ShippingTypeDto;", "shippingType", "invoiceLink", "", "Lcom/vuitton/android/data/dto/account/orders/ItemDto;", "items", "Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;", "orderPriceDto", "Lcom/vuitton/android/data/dto/account/orders/DeliveryDto;", "delivery", "returnDisclaimer", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/ShippingTypeDto;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;Lcom/vuitton/android/data/dto/account/orders/DeliveryDto;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/ShippingTypeDto;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;Lcom/vuitton/android/data/dto/account/orders/DeliveryDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ShippingGroupDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Lazy[] f44426i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44428b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShippingTypeDto f44429c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f44430e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final OrderPriceDto f44431f;
    public final DeliveryDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f44432h;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/account/orders/ShippingGroupDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ShippingGroupDto> serializer() {
            return ShippingGroupDto$$serializer.f44433a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f44426i = new Lazy[]{null, null, LazyKt.a(lazyThreadSafetyMode, new zu0(20)), null, LazyKt.a(lazyThreadSafetyMode, new zu0(21)), null, null, null};
    }

    public /* synthetic */ ShippingGroupDto(int i2, String str, String str2, ShippingTypeDto shippingTypeDto, String str3, List list, OrderPriceDto orderPriceDto, DeliveryDto deliveryDto, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if (51 != (i2 & 51)) {
            PluginExceptionsKt.b(i2, 51, ShippingGroupDto$$serializer.f44433a.getF19838b());
            throw null;
        }
        this.f44427a = str;
        this.f44428b = str2;
        if ((i2 & 4) == 0) {
            this.f44429c = null;
        } else {
            this.f44429c = shippingTypeDto;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        this.f44430e = list;
        this.f44431f = orderPriceDto;
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = deliveryDto;
        }
        if ((i2 & 128) == 0) {
            this.f44432h = null;
        } else {
            this.f44432h = str4;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ShippingGroupDto)) {
            return false;
        }
        ShippingGroupDto shippingGroupDto = (ShippingGroupDto) obj;
        return Intrinsics.c(this.f44427a, shippingGroupDto.f44427a) && Intrinsics.c(this.f44428b, shippingGroupDto.f44428b) && this.f44429c == shippingGroupDto.f44429c && Intrinsics.c(this.d, shippingGroupDto.d) && Intrinsics.c(this.f44430e, shippingGroupDto.f44430e) && Intrinsics.c(this.f44431f, shippingGroupDto.f44431f) && Intrinsics.c(this.g, shippingGroupDto.g) && Intrinsics.c(this.f44432h, shippingGroupDto.f44432h);
    }

    public final int hashCode() {
        int iB = fc.b(this.f44427a.hashCode() * 31, 31, this.f44428b);
        ShippingTypeDto shippingTypeDto = this.f44429c;
        int iHashCode = (iB + (shippingTypeDto == null ? 0 : shippingTypeDto.hashCode())) * 31;
        String str = this.d;
        int iHashCode2 = (this.f44431f.hashCode() + n00.a((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f44430e)) * 31;
        DeliveryDto deliveryDto = this.g;
        int iHashCode3 = (iHashCode2 + (deliveryDto == null ? 0 : deliveryDto.hashCode())) * 31;
        String str2 = this.f44432h;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ShippingGroupDto(identifier=", this.f44427a, ", shippingGroupId=", this.f44428b, ", shippingType=");
        sbS.append(this.f44429c);
        sbS.append(", invoiceLink=");
        sbS.append(this.d);
        sbS.append(", items=");
        sbS.append(this.f44430e);
        sbS.append(", orderPriceDto=");
        sbS.append(this.f44431f);
        sbS.append(", delivery=");
        sbS.append(this.g);
        sbS.append(", returnDisclaimer=");
        sbS.append(this.f44432h);
        sbS.append(")");
        return sbS.toString();
    }

    public ShippingGroupDto(String str, String str2, ShippingTypeDto shippingTypeDto, String str3, List<ItemDto> list, OrderPriceDto orderPriceDto, DeliveryDto deliveryDto, String str4) {
        str.getClass();
        str2.getClass();
        list.getClass();
        orderPriceDto.getClass();
        this.f44427a = str;
        this.f44428b = str2;
        this.f44429c = shippingTypeDto;
        this.d = str3;
        this.f44430e = list;
        this.f44431f = orderPriceDto;
        this.g = deliveryDto;
        this.f44432h = str4;
    }

    public /* synthetic */ ShippingGroupDto(String str, String str2, ShippingTypeDto shippingTypeDto, String str3, List list, OrderPriceDto orderPriceDto, DeliveryDto deliveryDto, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : shippingTypeDto, (i2 & 8) != 0 ? null : str3, list, orderPriceDto, (i2 & 64) != 0 ? null : deliveryDto, (i2 & 128) != 0 ? null : str4);
    }
}
