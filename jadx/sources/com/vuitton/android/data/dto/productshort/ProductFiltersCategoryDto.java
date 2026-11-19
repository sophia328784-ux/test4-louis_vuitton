package com.vuitton.android.data.dto.productshort;

import com.batch.android.s.b;
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
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tBC\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductFiltersCategoryDto;", "", "", b.a.f24015b, "title", "type", "Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;", DbParams.KEY_DATA, "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/productshort/ProductFilterDataTypeDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProductFiltersCategoryDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46611a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46612b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46613c;
    public final ProductFilterDataTypeDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductFiltersCategoryDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductFiltersCategoryDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductFiltersCategoryDto> serializer() {
            return ProductFiltersCategoryDto$$serializer.f46614a;
        }
    }

    public /* synthetic */ ProductFiltersCategoryDto(int i2, String str, String str2, String str3, ProductFilterDataTypeDto productFilterDataTypeDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i2 & 15)) {
            PluginExceptionsKt.b(i2, 15, ProductFiltersCategoryDto$$serializer.f46614a.getF19850b());
            throw null;
        }
        this.f46611a = str;
        this.f46612b = str2;
        this.f46613c = str3;
        this.d = productFilterDataTypeDto;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductFiltersCategoryDto)) {
            return false;
        }
        ProductFiltersCategoryDto productFiltersCategoryDto = (ProductFiltersCategoryDto) obj;
        return Intrinsics.c(this.f46611a, productFiltersCategoryDto.f46611a) && Intrinsics.c(this.f46612b, productFiltersCategoryDto.f46612b) && Intrinsics.c(this.f46613c, productFiltersCategoryDto.f46613c) && Intrinsics.c(this.d, productFiltersCategoryDto.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + fc.b(fc.b(this.f46611a.hashCode() * 31, 31, this.f46612b), 31, this.f46613c);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ProductFiltersCategoryDto(id=", this.f46611a, ", title=", this.f46612b, ", type=");
        sbS.append(this.f46613c);
        sbS.append(", data=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public ProductFiltersCategoryDto(String str, String str2, String str3, ProductFilterDataTypeDto productFilterDataTypeDto) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        productFilterDataTypeDto.getClass();
        this.f46611a = str;
        this.f46612b = str2;
        this.f46613c = str3;
        this.d = productFilterDataTypeDto;
    }
}
