package com.vuitton.android.data.dto.plp;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \t2\u00020\u0001:\u0001\tB\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDto;", "", "", b.a.f24015b, "type", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;)V", "Companion"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable(with = ProductListSectionDtoSerializer.class)
public final /* data */ class ProductListSectionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProductListSectionDataDto f46385c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/plp/ProductListSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/plp/ProductListSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductListSectionDto> serializer() {
            return ProductListSectionDtoSerializer.f46386a;
        }
    }

    public ProductListSectionDto(String str, String str2, ProductListSectionDataDto productListSectionDataDto) {
        str.getClass();
        str2.getClass();
        productListSectionDataDto.getClass();
        this.f46383a = str;
        this.f46384b = str2;
        this.f46385c = productListSectionDataDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductListSectionDto)) {
            return false;
        }
        ProductListSectionDto productListSectionDto = (ProductListSectionDto) obj;
        return Intrinsics.c(this.f46383a, productListSectionDto.f46383a) && Intrinsics.c(this.f46384b, productListSectionDto.f46384b) && Intrinsics.c(this.f46385c, productListSectionDto.f46385c);
    }

    public final int hashCode() {
        return this.f46385c.hashCode() + fc.b(this.f46383a.hashCode() * 31, 31, this.f46384b);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ProductListSectionDto(id=", this.f46383a, ", type=", this.f46384b, ", data=");
        sbS.append(this.f46385c);
        sbS.append(")");
        return sbS.toString();
    }
}
