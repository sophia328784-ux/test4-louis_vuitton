package com.vuitton.android.data.dto.productshort;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.d21;
import defpackage.n00;
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
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B/\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0004¢\u0006\u0004\b\t\u0010\nBE\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductFiltersDto;", "", "", "currentFiltersId", "", "Lcom/vuitton/android/data/dto/productshort/ProductFiltersCategoryDto;", "categoryList", "Lcom/vuitton/android/data/dto/productshort/ProductBooleanFilterDto;", "booleanList", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProductFiltersDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f46616b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f46617c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductFiltersDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductFiltersDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductFiltersDto> serializer() {
            return ProductFiltersDto$$serializer.f46618a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        d = new Lazy[]{null, LazyKt.a(lazyThreadSafetyMode, new yp0(3)), LazyKt.a(lazyThreadSafetyMode, new yp0(4))};
    }

    public /* synthetic */ ProductFiltersDto(int i2, String str, List list, List list2, SerializationConstructorMarker serializationConstructorMarker) {
        if (6 != (i2 & 6)) {
            PluginExceptionsKt.b(i2, 6, ProductFiltersDto$$serializer.f46618a.getF19838b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f46615a = null;
        } else {
            this.f46615a = str;
        }
        this.f46616b = list;
        this.f46617c = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductFiltersDto)) {
            return false;
        }
        ProductFiltersDto productFiltersDto = (ProductFiltersDto) obj;
        return Intrinsics.c(this.f46615a, productFiltersDto.f46615a) && Intrinsics.c(this.f46616b, productFiltersDto.f46616b) && Intrinsics.c(this.f46617c, productFiltersDto.f46617c);
    }

    public final int hashCode() {
        String str = this.f46615a;
        return this.f46617c.hashCode() + n00.a((str == null ? 0 : str.hashCode()) * 31, 31, this.f46616b);
    }

    public final String toString() {
        return a.o(d21.t("ProductFiltersDto(currentFiltersId=", this.f46615a, ", categoryList=", this.f46616b, ", booleanList="), this.f46617c, ")");
    }

    public ProductFiltersDto(String str, List<ProductFiltersCategoryDto> list, List<ProductBooleanFilterDto> list2) {
        list.getClass();
        list2.getClass();
        this.f46615a = str;
        this.f46616b = list;
        this.f46617c = list2;
    }

    public /* synthetic */ ProductFiltersDto(String str, List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, list, list2);
    }
}
