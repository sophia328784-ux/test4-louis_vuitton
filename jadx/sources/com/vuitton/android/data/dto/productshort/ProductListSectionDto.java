package com.vuitton.android.data.dto.productshort;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.yp0;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB!\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductListSectionDto;", "", "Lcom/vuitton/android/data/dto/productshort/SectionEditorialDto;", "editorial", "", "Lcom/vuitton/android/data/dto/productshort/ProductShortDto;", "productList", "<init>", "(Lcom/vuitton/android/data/dto/productshort/SectionEditorialDto;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/productshort/SectionEditorialDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProductListSectionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f46630c = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new yp0(18))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SectionEditorialDto f46631a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f46632b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductListSectionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductListSectionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductListSectionDto> serializer() {
            return ProductListSectionDto$$serializer.f46633a;
        }
    }

    public /* synthetic */ ProductListSectionDto(int i2, SectionEditorialDto sectionEditorialDto, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (2 != (i2 & 2)) {
            PluginExceptionsKt.b(i2, 2, ProductListSectionDto$$serializer.f46633a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f46631a = null;
        } else {
            this.f46631a = sectionEditorialDto;
        }
        this.f46632b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductListSectionDto)) {
            return false;
        }
        ProductListSectionDto productListSectionDto = (ProductListSectionDto) obj;
        return Intrinsics.c(this.f46631a, productListSectionDto.f46631a) && Intrinsics.c(this.f46632b, productListSectionDto.f46632b);
    }

    public final int hashCode() {
        SectionEditorialDto sectionEditorialDto = this.f46631a;
        return this.f46632b.hashCode() + ((sectionEditorialDto == null ? 0 : sectionEditorialDto.hashCode()) * 31);
    }

    public final String toString() {
        return "ProductListSectionDto(editorial=" + this.f46631a + ", productList=" + this.f46632b + ")";
    }

    public ProductListSectionDto(SectionEditorialDto sectionEditorialDto, List<ProductShortDto> list) {
        list.getClass();
        this.f46631a = sectionEditorialDto;
        this.f46632b = list;
    }

    public /* synthetic */ ProductListSectionDto(SectionEditorialDto sectionEditorialDto, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : sectionEditorialDto, list);
    }
}
