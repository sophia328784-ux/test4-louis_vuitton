package com.vuitton.android.data.dto.productshort;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B+\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\t\u0010\nBA\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;", "", "", "isVariable", "", "formattedValue", "", "rawValue", "currency", "<init>", "(ZLjava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IZLjava/lang/String;Ljava/lang/Double;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProductShortPriceDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f46647a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46648b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Double f46649c;
    public final String d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductShortPriceDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductShortPriceDto> serializer() {
            return ProductShortPriceDto$$serializer.f46650a;
        }
    }

    public /* synthetic */ ProductShortPriceDto(int i2, boolean z, String str, Double d, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, ProductShortPriceDto$$serializer.f46650a.a());
            throw null;
        }
        this.f46647a = z;
        this.f46648b = str;
        this.f46649c = d;
        this.d = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductShortPriceDto)) {
            return false;
        }
        ProductShortPriceDto productShortPriceDto = (ProductShortPriceDto) obj;
        return this.f46647a == productShortPriceDto.f46647a && Intrinsics.c(this.f46648b, productShortPriceDto.f46648b) && Intrinsics.c(this.f46649c, productShortPriceDto.f46649c) && Intrinsics.c(this.d, productShortPriceDto.d);
    }

    public final int hashCode() {
        int iB = fc.b(Boolean.hashCode(this.f46647a) * 31, 31, this.f46648b);
        Double d = this.f46649c;
        int iHashCode = (iB + (d == null ? 0 : d.hashCode())) * 31;
        String str = this.d;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "ProductShortPriceDto(isVariable=" + this.f46647a + ", formattedValue=" + this.f46648b + ", rawValue=" + this.f46649c + ", currency=" + this.d + ")";
    }

    public ProductShortPriceDto(boolean z, String str, Double d, String str2) {
        str.getClass();
        this.f46647a = z;
        this.f46648b = str;
        this.f46649c = d;
        this.d = str2;
    }
}
