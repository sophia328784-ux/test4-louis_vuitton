package com.vuitton.android.data.dto.productshort;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nBI\b\u0010\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\t\u0010\u000f¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductBooleanFilterDto;", "", "", b.a.f24015b, "title", "toggleFiltersId", "", "isSelected", "isEnabled", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProductBooleanFilterDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46590a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46591b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46592c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f46593e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/productshort/ProductBooleanFilterDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/productshort/ProductBooleanFilterDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductBooleanFilterDto> serializer() {
            return ProductBooleanFilterDto$$serializer.f46594a;
        }
    }

    public /* synthetic */ ProductBooleanFilterDto(int i2, String str, String str2, String str3, boolean z, boolean z2, SerializationConstructorMarker serializationConstructorMarker) {
        if (27 != (i2 & 27)) {
            PluginExceptionsKt.b(i2, 27, ProductBooleanFilterDto$$serializer.f46594a.getF19838b());
            throw null;
        }
        this.f46590a = str;
        this.f46591b = str2;
        if ((i2 & 4) == 0) {
            this.f46592c = null;
        } else {
            this.f46592c = str3;
        }
        this.d = z;
        this.f46593e = z2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductBooleanFilterDto)) {
            return false;
        }
        ProductBooleanFilterDto productBooleanFilterDto = (ProductBooleanFilterDto) obj;
        return Intrinsics.c(this.f46590a, productBooleanFilterDto.f46590a) && Intrinsics.c(this.f46591b, productBooleanFilterDto.f46591b) && Intrinsics.c(this.f46592c, productBooleanFilterDto.f46592c) && this.d == productBooleanFilterDto.d && this.f46593e == productBooleanFilterDto.f46593e;
    }

    public final int hashCode() {
        int iB = fc.b(this.f46590a.hashCode() * 31, 31, this.f46591b);
        String str = this.f46592c;
        return Boolean.hashCode(this.f46593e) + o60.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ProductBooleanFilterDto(id=", this.f46590a, ", title=", this.f46591b, ", toggleFiltersId=");
        pq0.A(this.f46592c, ", isSelected=", ", isEnabled=", sbS, this.d);
        return a.p(sbS, this.f46593e, ")");
    }

    public ProductBooleanFilterDto(String str, String str2, String str3, boolean z, boolean z2) {
        str.getClass();
        str2.getClass();
        this.f46590a = str;
        this.f46591b = str2;
        this.f46592c = str3;
        this.d = z;
        this.f46593e = z2;
    }

    public /* synthetic */ ProductBooleanFilterDto(String str, String str2, String str3, boolean z, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, z, z2);
    }
}
