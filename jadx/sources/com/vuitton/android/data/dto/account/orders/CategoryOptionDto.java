package com.vuitton.android.data.dto.account.orders;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
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
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bBK\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/CategoryOptionDto;", "", "", "name", "sku", "imageUrl", "", "isAvailable", "Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;", "category", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class CategoryOptionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44328a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44329b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f44330c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ProductExchangeCategoryDto f44331e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/CategoryOptionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/account/orders/CategoryOptionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<CategoryOptionDto> serializer() {
            return CategoryOptionDto$$serializer.f44332a;
        }
    }

    public /* synthetic */ CategoryOptionDto(int i2, String str, String str2, String str3, boolean z, ProductExchangeCategoryDto productExchangeCategoryDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (11 != (i2 & 11)) {
            PluginExceptionsKt.b(i2, 11, CategoryOptionDto$$serializer.f44332a.getF19838b());
            throw null;
        }
        this.f44328a = str;
        this.f44329b = str2;
        if ((i2 & 4) == 0) {
            this.f44330c = null;
        } else {
            this.f44330c = str3;
        }
        this.d = z;
        if ((i2 & 16) == 0) {
            this.f44331e = null;
        } else {
            this.f44331e = productExchangeCategoryDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CategoryOptionDto)) {
            return false;
        }
        CategoryOptionDto categoryOptionDto = (CategoryOptionDto) obj;
        return Intrinsics.c(this.f44328a, categoryOptionDto.f44328a) && Intrinsics.c(this.f44329b, categoryOptionDto.f44329b) && Intrinsics.c(this.f44330c, categoryOptionDto.f44330c) && this.d == categoryOptionDto.d && Intrinsics.c(this.f44331e, categoryOptionDto.f44331e);
    }

    public final int hashCode() {
        int iB = fc.b(this.f44328a.hashCode() * 31, 31, this.f44329b);
        String str = this.f44330c;
        int iB2 = o60.b((iB + (str == null ? 0 : str.hashCode())) * 31, 31, this.d);
        ProductExchangeCategoryDto productExchangeCategoryDto = this.f44331e;
        return iB2 + (productExchangeCategoryDto != null ? productExchangeCategoryDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CategoryOptionDto(name=", this.f44328a, ", sku=", this.f44329b, ", imageUrl=");
        pq0.A(this.f44330c, ", isAvailable=", ", category=", sbS, this.d);
        sbS.append(this.f44331e);
        sbS.append(")");
        return sbS.toString();
    }

    public CategoryOptionDto(String str, String str2, String str3, boolean z, ProductExchangeCategoryDto productExchangeCategoryDto) {
        str.getClass();
        str2.getClass();
        this.f44328a = str;
        this.f44329b = str2;
        this.f44330c = str3;
        this.d = z;
        this.f44331e = productExchangeCategoryDto;
    }

    public /* synthetic */ CategoryOptionDto(String str, String str2, String str3, boolean z, ProductExchangeCategoryDto productExchangeCategoryDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, z, (i2 & 16) != 0 ? null : productExchangeCategoryDto);
    }
}
