package com.vuitton.android.data.dto.account.orders;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.k40;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import defpackage.tr;
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
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u001f2\u00020\u0001:\u0002 \u001fB¡\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u000e\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0014\u001a\u00020\b\u0012\u0006\u0010\u0015\u001a\u00020\b\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\r¢\u0006\u0004\b\u0019\u0010\u001aB·\u0001\b\u0010\u0012\u0006\u0010\u001b\u001a\u00020\u0010\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\u0010\u0010\u000e\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0018\u00010\r\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0014\u001a\u00020\b\u0012\u0006\u0010\u0015\u001a\u00020\b\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\r\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c¢\u0006\u0004\b\u0019\u0010\u001e¨\u0006!"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/ItemDto;", "", "", "identifier", "Lcom/vuitton/android/data/dto/account/orders/TimelineDto;", "timeline", "Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;", "priceWithoutVAT", "", "eligibleForExchange", "name", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "images", "orderPriceDto", "", "quantity", "color", "size", "isReturned", "eligibleForReturn", "disclaimer", "Lcom/vuitton/android/data/dto/account/orders/OrderCustomizationDto;", "customizations", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/TimelineDto;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/account/orders/TimelineDto;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;ILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ItemDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44373a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TimelineDto f44374b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final OrderPriceDto f44375c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44376e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f44377f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final OrderPriceDto f44378h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f44379i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f44380j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f44381k;
    public final boolean l;
    public final boolean m;
    public final String n;
    public final List o;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/ItemDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/account/orders/ItemDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ItemDto> serializer() {
            return ItemDto$$serializer.f44382a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        p = new Lazy[]{null, null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new k40(2)), null, null, null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new k40(3))};
    }

    public /* synthetic */ ItemDto(int i2, String str, TimelineDto timelineDto, OrderPriceDto orderPriceDto, boolean z, String str2, String str3, List list, OrderPriceDto orderPriceDto2, int i3, String str4, String str5, boolean z2, boolean z3, String str6, List list2, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (6653 != (i2 & 6653)) {
            PluginExceptionsKt.b(i2, 6653, ItemDto$$serializer.f44382a.getF19838b());
            throw null;
        }
        this.f44373a = str;
        if ((i2 & 2) == 0) {
            this.f44374b = null;
        } else {
            this.f44374b = timelineDto;
        }
        this.f44375c = orderPriceDto;
        this.d = z;
        this.f44376e = str2;
        this.f44377f = str3;
        this.g = list;
        this.f44378h = orderPriceDto2;
        this.f44379i = i3;
        if ((i2 & 512) == 0) {
            this.f44380j = null;
        } else {
            this.f44380j = str4;
        }
        if ((i2 & 1024) == 0) {
            this.f44381k = null;
        } else {
            this.f44381k = str5;
        }
        this.l = z2;
        this.m = z3;
        if ((i2 & 8192) == 0) {
            this.n = null;
        } else {
            this.n = str6;
        }
        if ((i2 & 16384) == 0) {
            this.o = null;
        } else {
            this.o = list2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ItemDto)) {
            return false;
        }
        ItemDto itemDto = (ItemDto) obj;
        if (!Intrinsics.c(this.f44373a, itemDto.f44373a) || !Intrinsics.c(this.f44374b, itemDto.f44374b) || !Intrinsics.c(this.f44375c, itemDto.f44375c) || this.d != itemDto.d || !Intrinsics.c(this.f44376e, itemDto.f44376e)) {
            return false;
        }
        String str = itemDto.f44377f;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f44377f, str) && Intrinsics.c(this.g, itemDto.g) && Intrinsics.c(this.f44378h, itemDto.f44378h) && this.f44379i == itemDto.f44379i && Intrinsics.c(this.f44380j, itemDto.f44380j) && Intrinsics.c(this.f44381k, itemDto.f44381k) && this.l == itemDto.l && this.m == itemDto.m && Intrinsics.c(this.n, itemDto.n) && Intrinsics.c(this.o, itemDto.o);
    }

    public final int hashCode() {
        int iHashCode = this.f44373a.hashCode() * 31;
        TimelineDto timelineDto = this.f44374b;
        int iB = fc.b(o60.b((this.f44375c.hashCode() + ((iHashCode + (timelineDto == null ? 0 : timelineDto.hashCode())) * 31)) * 31, 31, this.d), 31, this.f44376e);
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB2 = tr.b(this.f44379i, (this.f44378h.hashCode() + n00.a(fc.b(iB, 31, this.f44377f), 31, this.g)) * 31, 31);
        String str = this.f44380j;
        int iHashCode2 = (iB2 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f44381k;
        int iB3 = o60.b(o60.b((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.l), 31, this.m);
        String str3 = this.n;
        int iHashCode3 = (iB3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List list = this.o;
        return iHashCode3 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sb = new StringBuilder("ItemDto(identifier=");
        sb.append(this.f44373a);
        sb.append(", timeline=");
        sb.append(this.f44374b);
        sb.append(", priceWithoutVAT=");
        sb.append(this.f44375c);
        sb.append(", eligibleForExchange=");
        sb.append(this.d);
        sb.append(", name=");
        cj.C(sb, this.f44376e, ", sku=", this.f44377f, ", images=");
        sb.append(this.g);
        sb.append(", orderPriceDto=");
        sb.append(this.f44378h);
        sb.append(", quantity=");
        sb.append(this.f44379i);
        sb.append(", color=");
        sb.append(this.f44380j);
        sb.append(", size=");
        pq0.A(this.f44381k, ", isReturned=", ", eligibleForReturn=", sb, this.l);
        cj.A(", disclaimer=", this.n, ", customizations=", sb, this.m);
        return a.o(sb, this.o, ")");
    }

    public ItemDto(String str, TimelineDto timelineDto, OrderPriceDto orderPriceDto, boolean z, String str2, String str3, List list, OrderPriceDto orderPriceDto2, int i2, String str4, String str5, boolean z2, boolean z3, String str6, List list2, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        orderPriceDto.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        orderPriceDto2.getClass();
        this.f44373a = str;
        this.f44374b = timelineDto;
        this.f44375c = orderPriceDto;
        this.d = z;
        this.f44376e = str2;
        this.f44377f = str3;
        this.g = list;
        this.f44378h = orderPriceDto2;
        this.f44379i = i2;
        this.f44380j = str4;
        this.f44381k = str5;
        this.l = z2;
        this.m = z3;
        this.n = str6;
        this.o = list2;
    }

    public /* synthetic */ ItemDto(String str, TimelineDto timelineDto, OrderPriceDto orderPriceDto, boolean z, String str2, String str3, List list, OrderPriceDto orderPriceDto2, int i2, String str4, String str5, boolean z2, boolean z3, String str6, List list2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i3 & 2) != 0 ? null : timelineDto, orderPriceDto, z, str2, str3, list, orderPriceDto2, i2, (i3 & 512) != 0 ? null : str4, (i3 & 1024) != 0 ? null : str5, z2, z3, (i3 & 8192) != 0 ? null : str6, (i3 & 16384) != 0 ? null : list2, null);
    }
}
