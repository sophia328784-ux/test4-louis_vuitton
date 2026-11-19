package com.vuitton.android.data.dto.account.orders;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.gp0;
import defpackage.o60;
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
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000eB[\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\r\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;", "", "", b.a.f24015b, "title", "Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;", "type", "", "isAvailable", "sizeGuideIdentifier", "", "Lcom/vuitton/android/data/dto/account/orders/CategoryOptionDto;", "options", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;ZLjava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;ZLjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProductExchangeCategoryDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f44420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f44421b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CategoryTypeDto f44422c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f44423e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f44424f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductExchangeCategoryDto> serializer() {
            return ProductExchangeCategoryDto$$serializer.f44425a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        g = new Lazy[]{null, null, LazyKt.a(lazyThreadSafetyMode, new gp0(29)), null, null, LazyKt.a(lazyThreadSafetyMode, new yp0(0))};
    }

    public /* synthetic */ ProductExchangeCategoryDto(int i2, String str, String str2, CategoryTypeDto categoryTypeDto, boolean z, String str3, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (47 != (i2 & 47)) {
            PluginExceptionsKt.b(i2, 47, ProductExchangeCategoryDto$$serializer.f44425a.a());
            throw null;
        }
        this.f44420a = str;
        this.f44421b = str2;
        this.f44422c = categoryTypeDto;
        this.d = z;
        if ((i2 & 16) == 0) {
            this.f44423e = null;
        } else {
            this.f44423e = str3;
        }
        this.f44424f = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ProductExchangeCategoryDto)) {
            return false;
        }
        ProductExchangeCategoryDto productExchangeCategoryDto = (ProductExchangeCategoryDto) obj;
        return Intrinsics.c(this.f44420a, productExchangeCategoryDto.f44420a) && Intrinsics.c(this.f44421b, productExchangeCategoryDto.f44421b) && this.f44422c == productExchangeCategoryDto.f44422c && this.d == productExchangeCategoryDto.d && Intrinsics.c(this.f44423e, productExchangeCategoryDto.f44423e) && Intrinsics.c(this.f44424f, productExchangeCategoryDto.f44424f);
    }

    public final int hashCode() {
        int iB = o60.b((this.f44422c.hashCode() + fc.b(this.f44420a.hashCode() * 31, 31, this.f44421b)) * 31, 31, this.d);
        String str = this.f44423e;
        return this.f44424f.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ProductExchangeCategoryDto(id=", this.f44420a, ", title=", this.f44421b, ", type=");
        sbS.append(this.f44422c);
        sbS.append(", isAvailable=");
        sbS.append(this.d);
        sbS.append(", sizeGuideIdentifier=");
        return o60.o(this.f44423e, ", options=", ")", sbS, this.f44424f);
    }

    public ProductExchangeCategoryDto(String str, String str2, CategoryTypeDto categoryTypeDto, boolean z, String str3, List<CategoryOptionDto> list) {
        str.getClass();
        str2.getClass();
        categoryTypeDto.getClass();
        list.getClass();
        this.f44420a = str;
        this.f44421b = str2;
        this.f44422c = categoryTypeDto;
        this.d = z;
        this.f44423e = str3;
        this.f44424f = list;
    }

    public /* synthetic */ ProductExchangeCategoryDto(String str, String str2, CategoryTypeDto categoryTypeDto, boolean z, String str3, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, categoryTypeDto, z, (i2 & 16) != 0 ? null : str3, list);
    }
}
