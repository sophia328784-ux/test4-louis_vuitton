package com.vuitton.android.data.dto.producttiny;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.universal.agent.Product;
import defpackage.d21;
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
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \f2\u00020\u0001:\u0002\r\fB\u0015\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006B+\b\u0010\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/dto/producttiny/ProductTinyListDto;", "", "", "Lcom/vuitton/android/data/dto/producttiny/ProductTinyDto;", Product.TYPE, "<init>", "(Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ProductTinyListDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Lazy[] f46670b = {LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new yp0(22))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f46671a;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/producttiny/ProductTinyListDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/producttiny/ProductTinyListDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ProductTinyListDto> serializer() {
            return ProductTinyListDto$$serializer.f46672a;
        }
    }

    public /* synthetic */ ProductTinyListDto(int i2, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 == (i2 & 1)) {
            this.f46671a = list;
        } else {
            PluginExceptionsKt.b(i2, 1, ProductTinyListDto$$serializer.f46672a.getF19838b());
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof ProductTinyListDto) && Intrinsics.c(this.f46671a, ((ProductTinyListDto) obj).f46671a);
    }

    public final int hashCode() {
        return this.f46671a.hashCode();
    }

    public final String toString() {
        return d21.o("ProductTinyListDto(products=", ")", this.f46671a);
    }

    public ProductTinyListDto(List<ProductTinyDto> list) {
        list.getClass();
        this.f46671a = list;
    }
}
