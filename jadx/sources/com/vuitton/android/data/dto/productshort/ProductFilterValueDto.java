package com.vuitton.android.data.dto.productshort;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BK\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\f\u0010\rB]\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;", "", "", b.a.f24015b, "title", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "toggleFiltersId", "", "isSelected", "isEnabled", "subCategoryTitle", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;ZZLjava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;ZZLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProductFilterValueDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46605a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46606b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImageDto f46607c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f46608e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f46609f;
    public final String g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductFilterValueDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductFilterValueDto> serializer() {
            return ProductFilterValueDto$$serializer.f46610a;
        }
    }

    public /* synthetic */ ProductFilterValueDto(int i2, String str, String str2, AssetImageDto assetImageDto, String str3, boolean z, boolean z2, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if (51 != (i2 & 51)) {
            PluginExceptionsKt.b(i2, 51, ProductFilterValueDto$$serializer.f46610a.getF19838b());
            throw null;
        }
        this.f46605a = str;
        this.f46606b = str2;
        if ((i2 & 4) == 0) {
            this.f46607c = null;
        } else {
            this.f46607c = assetImageDto;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str3;
        }
        this.f46608e = z;
        this.f46609f = z2;
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str4;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductFilterValueDto)) {
            return false;
        }
        ProductFilterValueDto productFilterValueDto = (ProductFilterValueDto) obj;
        return Intrinsics.c(this.f46605a, productFilterValueDto.f46605a) && Intrinsics.c(this.f46606b, productFilterValueDto.f46606b) && Intrinsics.c(this.f46607c, productFilterValueDto.f46607c) && Intrinsics.c(this.d, productFilterValueDto.d) && this.f46608e == productFilterValueDto.f46608e && this.f46609f == productFilterValueDto.f46609f && Intrinsics.c(this.g, productFilterValueDto.g);
    }

    public final int hashCode() {
        int iB = fc.b(this.f46605a.hashCode() * 31, 31, this.f46606b);
        AssetImageDto assetImageDto = this.f46607c;
        int iHashCode = (iB + (assetImageDto == null ? 0 : assetImageDto.hashCode())) * 31;
        String str = this.d;
        int iB2 = o60.b(o60.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f46608e), 31, this.f46609f);
        String str2 = this.g;
        return iB2 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ProductFilterValueDto(id=", this.f46605a, ", title=", this.f46606b, ", image=");
        sbS.append(this.f46607c);
        sbS.append(", toggleFiltersId=");
        sbS.append(this.d);
        sbS.append(", isSelected=");
        fc.y(sbS, this.f46608e, ", isEnabled=", this.f46609f, ", subCategoryTitle=");
        return n00.r(this.g, ")", sbS);
    }

    public ProductFilterValueDto(String str, String str2, AssetImageDto assetImageDto, String str3, boolean z, boolean z2, String str4) {
        str.getClass();
        str2.getClass();
        this.f46605a = str;
        this.f46606b = str2;
        this.f46607c = assetImageDto;
        this.d = str3;
        this.f46608e = z;
        this.f46609f = z2;
        this.g = str4;
    }

    public /* synthetic */ ProductFilterValueDto(String str, String str2, AssetImageDto assetImageDto, String str3, boolean z, boolean z2, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : assetImageDto, (i2 & 8) != 0 ? null : str3, z, z2, (i2 & 64) != 0 ? null : str4);
    }
}
