package com.vuitton.android.data.dto.immersivearticle;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.m10;
import defpackage.o60;
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
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BU\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0010\b\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t¢\u0006\u0004\b\f\u0010\rB]\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\f\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleLookCardDto;", "", "", ConfigurationName.KEY, "title", "subtitle", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "sku", "skuType", "", "Lcom/vuitton/android/data/dto/common/AssetDto;", "assets", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ImmersiveArticleLookCardDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] g = {null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new m10(26))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45864a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45865b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45866c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45867e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List f45868f;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleLookCardDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleLookCardDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ImmersiveArticleLookCardDto> serializer() {
            return ImmersiveArticleLookCardDto$$serializer.f45869a;
        }
    }

    public /* synthetic */ ImmersiveArticleLookCardDto(int i2, String str, String str2, String str3, String str4, String str5, List list, SerializationConstructorMarker serializationConstructorMarker, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45864a = null;
        } else {
            this.f45864a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45865b = null;
        } else {
            this.f45865b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f45866c = null;
        } else {
            this.f45866c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f45867e = null;
        } else {
            this.f45867e = str5;
        }
        if ((i2 & 32) == 0) {
            this.f45868f = null;
        } else {
            this.f45868f = list;
        }
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0037  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ImmersiveArticleLookCardDto)) {
            return false;
        }
        ImmersiveArticleLookCardDto immersiveArticleLookCardDto = (ImmersiveArticleLookCardDto) obj;
        if (!Intrinsics.c(this.f45864a, immersiveArticleLookCardDto.f45864a) || !Intrinsics.c(this.f45865b, immersiveArticleLookCardDto.f45865b) || !Intrinsics.c(this.f45866c, immersiveArticleLookCardDto.f45866c)) {
            return false;
        }
        String str = immersiveArticleLookCardDto.d;
        String str2 = this.d;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            zC = Intrinsics.c(str2, str);
        }
        return zC && Intrinsics.c(this.f45867e, immersiveArticleLookCardDto.f45867e) && Intrinsics.c(this.f45868f, immersiveArticleLookCardDto.f45868f);
    }

    public final int hashCode() {
        int iHashCode;
        String str = this.f45864a;
        int iHashCode2 = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45865b;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f45866c;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        if (str4 == null) {
            iHashCode = 0;
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
            iHashCode = str4.hashCode();
        }
        int i2 = (iHashCode4 + iHashCode) * 31;
        String str5 = this.f45867e;
        int iHashCode5 = (i2 + (str5 == null ? 0 : str5.hashCode())) * 31;
        List list = this.f45868f;
        return iHashCode5 + (list != null ? list.hashCode() : 0);
    }

    public final String toString() {
        String str = this.d;
        if (str == null) {
            str = "null";
        } else {
            SkuId.Companion companion = SkuId.INSTANCE;
        }
        StringBuilder sbS = fc.s("ImmersiveArticleLookCardDto(key=", this.f45864a, ", title=", this.f45865b, ", subtitle=");
        cj.C(sbS, this.f45866c, ", sku=", str, ", skuType=");
        return o60.o(this.f45867e, ", assets=", ")", sbS, this.f45868f);
    }

    public ImmersiveArticleLookCardDto(String str, String str2, String str3, String str4, String str5, List list, DefaultConstructorMarker defaultConstructorMarker) {
        this.f45864a = str;
        this.f45865b = str2;
        this.f45866c = str3;
        this.d = str4;
        this.f45867e = str5;
        this.f45868f = list;
    }

    public /* synthetic */ ImmersiveArticleLookCardDto(String str, String str2, String str3, String str4, String str5, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? null : list, null);
    }
}
