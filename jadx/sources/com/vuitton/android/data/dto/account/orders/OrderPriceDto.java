package com.vuitton.android.data.dto.account.orders;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bB7\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;", "", "", "priceRaw", "", "price", "currency", "<init>", "(DLjava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IDLjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class OrderPriceDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final double f44396a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44397b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44398c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/account/orders/OrderPriceDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<OrderPriceDto> serializer() {
            return OrderPriceDto$$serializer.f44399a;
        }
    }

    public /* synthetic */ OrderPriceDto(int i2, double d, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, OrderPriceDto$$serializer.f44399a.getF19850b());
            throw null;
        }
        this.f44396a = d;
        this.f44397b = str;
        this.f44398c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OrderPriceDto)) {
            return false;
        }
        OrderPriceDto orderPriceDto = (OrderPriceDto) obj;
        return Double.compare(this.f44396a, orderPriceDto.f44396a) == 0 && Intrinsics.c(this.f44397b, orderPriceDto.f44397b) && Intrinsics.c(this.f44398c, orderPriceDto.f44398c);
    }

    public final int hashCode() {
        return this.f44398c.hashCode() + fc.b(Double.hashCode(this.f44396a) * 31, 31, this.f44397b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OrderPriceDto(priceRaw=");
        sb.append(this.f44396a);
        sb.append(", price=");
        sb.append(this.f44397b);
        return d21.p(sb, ", currency=", this.f44398c, ")");
    }

    public OrderPriceDto(double d, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f44396a = d;
        this.f44397b = str;
        this.f44398c = str2;
    }
}
