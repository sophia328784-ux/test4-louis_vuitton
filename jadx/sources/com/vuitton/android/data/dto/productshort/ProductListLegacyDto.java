package com.vuitton.android.data.dto.productshort;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.tr;
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
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014BU\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000e\u0010\u000fBe\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u000e\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;", "", "", b.a.f24015b, "name", "trackingPageName", "", "Lcom/vuitton/android/data/dto/productshort/ProductListSectionDto;", "sectionList", "", "totalProducts", "Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;", "optionList", "nextPage", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/vuitton/android/data/dto/productshort/ProductListOptionDto;Ljava/lang/Integer;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/vuitton/android/data/dto/productshort/ProductListOptionDto;Ljava/lang/Integer;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProductListLegacyDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Lazy[] f46619h = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new yp0(7)), null, null, null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46620a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46621b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46622c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f46623e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ProductListOptionDto f46624f;
    public final Integer g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductListLegacyDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductListLegacyDto> serializer() {
            return ProductListLegacyDto$$serializer.f46625a;
        }
    }

    public /* synthetic */ ProductListLegacyDto(int i2, String str, String str2, String str3, List list, int i3, ProductListOptionDto productListOptionDto, Integer num, SerializationConstructorMarker serializationConstructorMarker) {
        if (56 != (i2 & 56)) {
            PluginExceptionsKt.b(i2, 56, ProductListLegacyDto$$serializer.f46625a.getF19850b());
            throw null;
        }
        if ((i2 & 1) == 0) {
            this.f46620a = null;
        } else {
            this.f46620a = str;
        }
        if ((i2 & 2) == 0) {
            this.f46621b = null;
        } else {
            this.f46621b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f46622c = null;
        } else {
            this.f46622c = str3;
        }
        this.d = list;
        this.f46623e = i3;
        this.f46624f = productListOptionDto;
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = num;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductListLegacyDto)) {
            return false;
        }
        ProductListLegacyDto productListLegacyDto = (ProductListLegacyDto) obj;
        return Intrinsics.c(this.f46620a, productListLegacyDto.f46620a) && Intrinsics.c(this.f46621b, productListLegacyDto.f46621b) && Intrinsics.c(this.f46622c, productListLegacyDto.f46622c) && Intrinsics.c(this.d, productListLegacyDto.d) && this.f46623e == productListLegacyDto.f46623e && Intrinsics.c(this.f46624f, productListLegacyDto.f46624f) && Intrinsics.c(this.g, productListLegacyDto.g);
    }

    public final int hashCode() {
        String str = this.f46620a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f46621b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f46622c;
        int iHashCode3 = (this.f46624f.hashCode() + tr.b(this.f46623e, n00.a((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31, 31, this.d), 31)) * 31;
        Integer num = this.g;
        return iHashCode3 + (num != null ? num.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ProductListLegacyDto(id=", this.f46620a, ", name=", this.f46621b, ", trackingPageName=");
        d21.z(this.f46622c, ", sectionList=", ", totalProducts=", sbS, this.d);
        sbS.append(this.f46623e);
        sbS.append(", optionList=");
        sbS.append(this.f46624f);
        sbS.append(", nextPage=");
        sbS.append(this.g);
        sbS.append(")");
        return sbS.toString();
    }

    public ProductListLegacyDto(String str, String str2, String str3, List<ProductListSectionDto> list, int i2, ProductListOptionDto productListOptionDto, Integer num) {
        list.getClass();
        productListOptionDto.getClass();
        this.f46620a = str;
        this.f46621b = str2;
        this.f46622c = str3;
        this.d = list;
        this.f46623e = i2;
        this.f46624f = productListOptionDto;
        this.g = num;
    }

    public /* synthetic */ ProductListLegacyDto(String str, String str2, String str3, List list, int i2, ProductListOptionDto productListOptionDto, Integer num, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? null : str, (i3 & 2) != 0 ? null : str2, (i3 & 4) != 0 ? null : str3, list, i2, productListOptionDto, (i3 & 64) != 0 ? null : num);
    }
}
