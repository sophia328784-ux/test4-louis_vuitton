package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.ProductId;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
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
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00192\u00020\u0001:\u0002\u001a\u0019B\u0087\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\u0012\u0010\u0013B\u0093\u0001\b\u0010\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0012\u0010\u0018¨\u0006\u001b"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skuId", "", "name", "webPath", "mediaUrl", "Lcom/vuitton/foundation/model/domain/model/product/ProductId;", "productId", "material", "size", "carat", "price", "language", "finish", "Lcom/vuitton/android/data/dto/pdp/ColorInfoDto;", "colorInfo", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/ColorInfoDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/ColorInfoDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProductSkuModelDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46286a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46287b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46288c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f46289e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f46290f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f46291h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f46292i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f46293j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f46294k;
    public final ColorInfoDto l;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/ProductSkuModelDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductSkuModelDto> serializer() {
            return ProductSkuModelDto$$serializer.f46295a;
        }
    }

    public /* synthetic */ ProductSkuModelDto(int i2, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, ColorInfoDto colorInfoDto, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, ProductSkuModelDto$$serializer.f46295a.getF19838b());
            throw null;
        }
        this.f46286a = str;
        this.f46287b = str2;
        this.f46288c = str3;
        this.d = str4;
        if ((i2 & 16) == 0) {
            this.f46289e = null;
        } else {
            this.f46289e = str5;
        }
        if ((i2 & 32) == 0) {
            this.f46290f = null;
        } else {
            this.f46290f = str6;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str7;
        }
        if ((i2 & 128) == 0) {
            this.f46291h = null;
        } else {
            this.f46291h = str8;
        }
        if ((i2 & 256) == 0) {
            this.f46292i = null;
        } else {
            this.f46292i = str9;
        }
        if ((i2 & 512) == 0) {
            this.f46293j = null;
        } else {
            this.f46293j = str10;
        }
        if ((i2 & 1024) == 0) {
            this.f46294k = null;
        } else {
            this.f46294k = str11;
        }
        if ((i2 & 2048) == 0) {
            this.l = null;
        } else {
            this.l = colorInfoDto;
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0044  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductSkuModelDto)) {
            return false;
        }
        ProductSkuModelDto productSkuModelDto = (ProductSkuModelDto) obj;
        String str = productSkuModelDto.f46286a;
        SkuId.Companion companion = SkuId.INSTANCE;
        if (!Intrinsics.c(this.f46286a, str) || !Intrinsics.c(this.f46287b, productSkuModelDto.f46287b) || !Intrinsics.c(this.f46288c, productSkuModelDto.f46288c) || !Intrinsics.c(this.d, productSkuModelDto.d)) {
            return false;
        }
        String str2 = productSkuModelDto.f46289e;
        String str3 = this.f46289e;
        if (str3 == null) {
            if (str2 == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str2 == null) {
            zC = false;
        } else {
            ProductId.Companion companion2 = ProductId.INSTANCE;
            zC = Intrinsics.c(str3, str2);
        }
        return zC && Intrinsics.c(this.f46290f, productSkuModelDto.f46290f) && Intrinsics.c(this.g, productSkuModelDto.g) && Intrinsics.c(this.f46291h, productSkuModelDto.f46291h) && Intrinsics.c(this.f46292i, productSkuModelDto.f46292i) && Intrinsics.c(this.f46293j, productSkuModelDto.f46293j) && Intrinsics.c(this.f46294k, productSkuModelDto.f46294k) && Intrinsics.c(this.l, productSkuModelDto.l);
    }

    public final int hashCode() {
        int iHashCode;
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB = fc.b(fc.b(fc.b(this.f46286a.hashCode() * 31, 31, this.f46287b), 31, this.f46288c), 31, this.d);
        String str = this.f46289e;
        if (str == null) {
            iHashCode = 0;
        } else {
            ProductId.Companion companion2 = ProductId.INSTANCE;
            iHashCode = str.hashCode();
        }
        int i2 = (iB + iHashCode) * 31;
        String str2 = this.f46290f;
        int iHashCode2 = (i2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f46291h;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f46292i;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.f46293j;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.f46294k;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        ColorInfoDto colorInfoDto = this.l;
        return iHashCode7 + (colorInfoDto != null ? colorInfoDto.hashCode() : 0);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        String str = this.f46289e;
        if (str == null) {
            str = "null";
        } else {
            ProductId.Companion companion2 = ProductId.INSTANCE;
        }
        StringBuilder sbS = fc.s("ProductSkuModelDto(skuId=", this.f46286a, ", name=", this.f46287b, ", webPath=");
        cj.C(sbS, this.f46288c, ", mediaUrl=", this.d, ", productId=");
        cj.C(sbS, str, ", material=", this.f46290f, ", size=");
        cj.C(sbS, this.g, ", carat=", this.f46291h, ", price=");
        cj.C(sbS, this.f46292i, ", language=", this.f46293j, ", finish=");
        sbS.append(this.f46294k);
        sbS.append(", colorInfo=");
        sbS.append(this.l);
        sbS.append(")");
        return sbS.toString();
    }

    public ProductSkuModelDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, ColorInfoDto colorInfoDto, DefaultConstructorMarker defaultConstructorMarker) {
        d21.y(str, str2, str3, str4);
        this.f46286a = str;
        this.f46287b = str2;
        this.f46288c = str3;
        this.d = str4;
        this.f46289e = str5;
        this.f46290f = str6;
        this.g = str7;
        this.f46291h = str8;
        this.f46292i = str9;
        this.f46293j = str10;
        this.f46294k = str11;
        this.l = colorInfoDto;
    }

    public /* synthetic */ ProductSkuModelDto(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, ColorInfoDto colorInfoDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : str6, (i2 & 64) != 0 ? null : str7, (i2 & 128) != 0 ? null : str8, (i2 & 256) != 0 ? null : str9, (i2 & 512) != 0 ? null : str10, (i2 & 1024) != 0 ? null : str11, (i2 & 2048) != 0 ? null : colorInfoDto, null);
    }
}
