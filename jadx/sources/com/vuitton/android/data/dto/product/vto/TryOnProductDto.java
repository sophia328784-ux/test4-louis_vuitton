package com.vuitton.android.data.dto.product.vto;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.l31;
import defpackage.o60;
import defpackage.pq0;
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
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001b\u001aBe\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\t\u0012\u0006\u0010\u0012\u001a\u00020\t¢\u0006\u0004\b\u0013\u0010\u0014B\u007f\b\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\t\u0012\u0006\u0010\u0012\u001a\u00020\t\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0013\u0010\u0019¨\u0006\u001c"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "", "vtoId", "Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;", "type", "stackingType", "", "isDualEnabled", "name", "Lcom/vuitton/android/data/dto/product/vto/ColorDto;", "color", "", "Lcom/vuitton/android/data/dto/product/vto/LookDto;", "looks", "hasTutorial", "isLimitedEdition", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;ZLjava/lang/String;Lcom/vuitton/android/data/dto/product/vto/ColorDto;Ljava/util/List;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;ZLjava/lang/String;Lcom/vuitton/android/data/dto/product/vto/ColorDto;Ljava/util/List;ZZLkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class TryOnProductDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Lazy[] f46556k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46557a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46558b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final BeautyProductTypeDto f46559c;
    public final BeautyProductTypeDto d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f46560e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f46561f;
    public final ColorDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f46562h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f46563i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f46564j;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<TryOnProductDto> serializer() {
            return TryOnProductDto$$serializer.f46565a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f46556k = new Lazy[]{null, null, LazyKt.a(lazyThreadSafetyMode, new l31(23)), LazyKt.a(lazyThreadSafetyMode, new l31(24)), null, null, null, LazyKt.a(lazyThreadSafetyMode, new l31(25)), null, null};
    }

    public /* synthetic */ TryOnProductDto(int i2, String str, String str2, BeautyProductTypeDto beautyProductTypeDto, BeautyProductTypeDto beautyProductTypeDto2, boolean z, String str3, ColorDto colorDto, List list, boolean z2, boolean z3, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if (887 != (i2 & 887)) {
            PluginExceptionsKt.b(i2, 887, TryOnProductDto$$serializer.f46565a.getF19838b());
            throw null;
        }
        this.f46557a = str;
        this.f46558b = str2;
        this.f46559c = beautyProductTypeDto;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = beautyProductTypeDto2;
        }
        this.f46560e = z;
        this.f46561f = str3;
        this.g = colorDto;
        if ((i2 & 128) == 0) {
            this.f46562h = null;
        } else {
            this.f46562h = list;
        }
        this.f46563i = z2;
        this.f46564j = z3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TryOnProductDto)) {
            return false;
        }
        TryOnProductDto tryOnProductDto = (TryOnProductDto) obj;
        String str = tryOnProductDto.f46557a;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f46557a, str) && Intrinsics.c(this.f46558b, tryOnProductDto.f46558b) && this.f46559c == tryOnProductDto.f46559c && this.d == tryOnProductDto.d && this.f46560e == tryOnProductDto.f46560e && Intrinsics.c(this.f46561f, tryOnProductDto.f46561f) && Intrinsics.c(this.g, tryOnProductDto.g) && Intrinsics.c(this.f46562h, tryOnProductDto.f46562h) && this.f46563i == tryOnProductDto.f46563i && this.f46564j == tryOnProductDto.f46564j;
    }

    public final int hashCode() {
        SkuId.Companion companion = SkuId.INSTANCE;
        int iHashCode = (this.f46559c.hashCode() + fc.b(this.f46557a.hashCode() * 31, 31, this.f46558b)) * 31;
        BeautyProductTypeDto beautyProductTypeDto = this.d;
        int iHashCode2 = (this.g.hashCode() + fc.b(o60.b((iHashCode + (beautyProductTypeDto == null ? 0 : beautyProductTypeDto.hashCode())) * 31, 31, this.f46560e), 31, this.f46561f)) * 31;
        List list = this.f46562h;
        return Boolean.hashCode(this.f46564j) + o60.b((iHashCode2 + (list != null ? list.hashCode() : 0)) * 31, 31, this.f46563i);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("TryOnProductDto(sku=", this.f46557a, ", vtoId=", this.f46558b, ", type=");
        sbS.append(this.f46559c);
        sbS.append(", stackingType=");
        sbS.append(this.d);
        sbS.append(", isDualEnabled=");
        cj.A(", name=", this.f46561f, ", color=", sbS, this.f46560e);
        sbS.append(this.g);
        sbS.append(", looks=");
        sbS.append(this.f46562h);
        sbS.append(", hasTutorial=");
        return pq0.p(sbS, this.f46563i, ", isLimitedEdition=", this.f46564j, ")");
    }

    public TryOnProductDto(String str, String str2, BeautyProductTypeDto beautyProductTypeDto, BeautyProductTypeDto beautyProductTypeDto2, boolean z, String str3, ColorDto colorDto, List list, boolean z2, boolean z3, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        beautyProductTypeDto.getClass();
        str3.getClass();
        colorDto.getClass();
        this.f46557a = str;
        this.f46558b = str2;
        this.f46559c = beautyProductTypeDto;
        this.d = beautyProductTypeDto2;
        this.f46560e = z;
        this.f46561f = str3;
        this.g = colorDto;
        this.f46562h = list;
        this.f46563i = z2;
        this.f46564j = z3;
    }

    public /* synthetic */ TryOnProductDto(String str, String str2, BeautyProductTypeDto beautyProductTypeDto, BeautyProductTypeDto beautyProductTypeDto2, boolean z, String str3, ColorDto colorDto, List list, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, beautyProductTypeDto, (i2 & 8) != 0 ? null : beautyProductTypeDto2, z, str3, colorDto, (i2 & 128) != 0 ? null : list, z2, z3, null);
    }
}
