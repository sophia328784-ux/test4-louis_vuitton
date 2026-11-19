package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.gp0;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB%\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bB5\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;", "", "", "name", "", "Lcom/vuitton/android/data/dto/pdp/ProductAGECValueDto;", "value", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProductAGECCategoryListDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Lazy[] f46237c = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new gp0(11))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46238a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f46239b;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductAGECCategoryListDto> serializer() {
            return ProductAGECCategoryListDto$$serializer.f46240a;
        }
    }

    public /* synthetic */ ProductAGECCategoryListDto(int i2, String str, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46238a = null;
        } else {
            this.f46238a = str;
        }
        if ((i2 & 2) == 0) {
            this.f46239b = null;
        } else {
            this.f46239b = list;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductAGECCategoryListDto)) {
            return false;
        }
        ProductAGECCategoryListDto productAGECCategoryListDto = (ProductAGECCategoryListDto) obj;
        return Intrinsics.c(this.f46238a, productAGECCategoryListDto.f46238a) && Intrinsics.c(this.f46239b, productAGECCategoryListDto.f46239b);
    }

    public final int hashCode() {
        String str = this.f46238a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        List list = this.f46239b;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        return cj.k("ProductAGECCategoryListDto(name=", this.f46238a, ", value=", this.f46239b, ")");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ProductAGECCategoryListDto() {
        this((String) null, (List) (0 == true ? 1 : 0), 3, (DefaultConstructorMarker) (0 == true ? 1 : 0));
    }

    public ProductAGECCategoryListDto(String str, List<ProductAGECValueDto> list) {
        this.f46238a = str;
        this.f46239b = list;
    }

    public /* synthetic */ ProductAGECCategoryListDto(String str, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : list);
    }
}
