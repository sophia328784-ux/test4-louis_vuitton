package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
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
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BI\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\f\u0010\rBS\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/ProductAGECDto;", "", "Lcom/vuitton/android/data/dto/pdp/ProductAGECInfoTriDto;", "infoTri", "", "Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto;", DbParams.KEY_DATA, "", "manageByAgec", "", "modelMaterial", "validateSKU", "<init>", "(Lcom/vuitton/android/data/dto/pdp/ProductAGECInfoTriDto;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/pdp/ProductAGECInfoTriDto;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProductAGECDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Lazy[] f46243f = {null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new gp0(12)), null, null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductAGECInfoTriDto f46244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f46245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f46246c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Boolean f46247e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/ProductAGECDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/ProductAGECDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductAGECDto> serializer() {
            return ProductAGECDto$$serializer.f46248a;
        }
    }

    public /* synthetic */ ProductAGECDto(int i2, ProductAGECInfoTriDto productAGECInfoTriDto, List list, Boolean bool, String str, Boolean bool2, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46244a = null;
        } else {
            this.f46244a = productAGECInfoTriDto;
        }
        if ((i2 & 2) == 0) {
            this.f46245b = null;
        } else {
            this.f46245b = list;
        }
        if ((i2 & 4) == 0) {
            this.f46246c = null;
        } else {
            this.f46246c = bool;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str;
        }
        if ((i2 & 16) == 0) {
            this.f46247e = null;
        } else {
            this.f46247e = bool2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductAGECDto)) {
            return false;
        }
        ProductAGECDto productAGECDto = (ProductAGECDto) obj;
        return Intrinsics.c(this.f46244a, productAGECDto.f46244a) && Intrinsics.c(this.f46245b, productAGECDto.f46245b) && Intrinsics.c(this.f46246c, productAGECDto.f46246c) && Intrinsics.c(this.d, productAGECDto.d) && Intrinsics.c(this.f46247e, productAGECDto.f46247e);
    }

    public final int hashCode() {
        ProductAGECInfoTriDto productAGECInfoTriDto = this.f46244a;
        int iHashCode = (productAGECInfoTriDto == null ? 0 : productAGECInfoTriDto.hashCode()) * 31;
        List list = this.f46245b;
        int iHashCode2 = (iHashCode + (list == null ? 0 : list.hashCode())) * 31;
        Boolean bool = this.f46246c;
        int iHashCode3 = (iHashCode2 + (bool == null ? 0 : bool.hashCode())) * 31;
        String str = this.d;
        int iHashCode4 = (iHashCode3 + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool2 = this.f46247e;
        return iHashCode4 + (bool2 != null ? bool2.hashCode() : 0);
    }

    public final String toString() {
        return "ProductAGECDto(infoTri=" + this.f46244a + ", data=" + this.f46245b + ", manageByAgec=" + this.f46246c + ", modelMaterial=" + this.d + ", validateSKU=" + this.f46247e + ")";
    }

    public ProductAGECDto() {
        this((ProductAGECInfoTriDto) null, (List) null, (Boolean) null, (String) null, (Boolean) null, 31, (DefaultConstructorMarker) null);
    }

    public ProductAGECDto(ProductAGECInfoTriDto productAGECInfoTriDto, List<ProductAGECDataDto> list, Boolean bool, String str, Boolean bool2) {
        this.f46244a = productAGECInfoTriDto;
        this.f46245b = list;
        this.f46246c = bool;
        this.d = str;
        this.f46247e = bool2;
    }

    public /* synthetic */ ProductAGECDto(ProductAGECInfoTriDto productAGECInfoTriDto, List list, Boolean bool, String str, Boolean bool2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : productAGECInfoTriDto, (i2 & 2) != 0 ? null : list, (i2 & 4) != 0 ? null : bool, (i2 & 8) != 0 ? null : str, (i2 & 16) != 0 ? null : bool2);
    }
}
