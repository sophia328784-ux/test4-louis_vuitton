package com.vuitton.android.data.dto.productshort;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.yp0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B1\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002¢\u0006\u0004\b\t\u0010\nBE\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;", "", "", "Lcom/vuitton/android/data/dto/productshort/ProductSortDto;", "sortList", "Lcom/vuitton/android/data/dto/productshort/ProductFiltersDto;", "filters", "Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;", "highlightedFilters", "<init>", "(Ljava/util/List;Lcom/vuitton/android/data/dto/productshort/ProductFiltersDto;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Lcom/vuitton/android/data/dto/productshort/ProductFiltersDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProductListOptionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f46626a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ProductFiltersDto f46627b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f46628c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductListOptionDto> serializer() {
            return ProductListOptionDto$$serializer.f46629a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        d = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new yp0(8)), null, LazyKt.a(lazyThreadSafetyMode, new yp0(9))};
    }

    public ProductListOptionDto(int i2, List list, ProductFiltersDto productFiltersDto, List list2, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, ProductListOptionDto$$serializer.f46629a.getF19838b());
            throw null;
        }
        this.f46626a = list;
        if ((i2 & 2) == 0) {
            this.f46627b = null;
        } else {
            this.f46627b = productFiltersDto;
        }
        if ((i2 & 4) == 0) {
            this.f46628c = EmptyList.f71768b;
        } else {
            this.f46628c = list2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductListOptionDto)) {
            return false;
        }
        ProductListOptionDto productListOptionDto = (ProductListOptionDto) obj;
        return Intrinsics.c(this.f46626a, productListOptionDto.f46626a) && Intrinsics.c(this.f46627b, productListOptionDto.f46627b) && Intrinsics.c(this.f46628c, productListOptionDto.f46628c);
    }

    public final int hashCode() {
        int iHashCode = this.f46626a.hashCode() * 31;
        ProductFiltersDto productFiltersDto = this.f46627b;
        return this.f46628c.hashCode() + ((iHashCode + (productFiltersDto == null ? 0 : productFiltersDto.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ProductListOptionDto(sortList=");
        sb.append(this.f46626a);
        sb.append(", filters=");
        sb.append(this.f46627b);
        sb.append(", highlightedFilters=");
        return a.o(sb, this.f46628c, ")");
    }

    public ProductListOptionDto(List<ProductSortDto> list, ProductFiltersDto productFiltersDto, List<ProductFilterValueDto> list2) {
        list.getClass();
        list2.getClass();
        this.f46626a = list;
        this.f46627b = productFiltersDto;
        this.f46628c = list2;
    }

    public ProductListOptionDto(List list, ProductFiltersDto productFiltersDto, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i2 & 2) != 0 ? null : productFiltersDto, (i2 & 4) != 0 ? EmptyList.f71768b : list2);
    }
}
