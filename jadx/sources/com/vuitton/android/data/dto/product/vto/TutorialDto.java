package com.vuitton.android.data.dto.product.vto;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.l31;
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
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000eBg\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\r\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/TutorialDto;", "", "", "sku", "productId", "title", "surtitle", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "introduction", "", "Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDto;", "sectionList", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class TutorialDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Lazy[] f46569h = {null, null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new l31(28))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46571b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46572c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetImageDto f46573e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f46574f;
    public final List g;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/product/vto/TutorialDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/product/vto/TutorialDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<TutorialDto> serializer() {
            return TutorialDto$$serializer.f46575a;
        }
    }

    public /* synthetic */ TutorialDto(int i2, String str, String str2, String str3, String str4, AssetImageDto assetImageDto, String str5, List list, SerializationConstructorMarker serializationConstructorMarker) {
        if (77 != (i2 & 77)) {
            PluginExceptionsKt.b(i2, 77, TutorialDto$$serializer.f46575a.getF19838b());
            throw null;
        }
        this.f46570a = str;
        if ((i2 & 2) == 0) {
            this.f46571b = null;
        } else {
            this.f46571b = str2;
        }
        this.f46572c = str3;
        this.d = str4;
        if ((i2 & 16) == 0) {
            this.f46573e = null;
        } else {
            this.f46573e = assetImageDto;
        }
        if ((i2 & 32) == 0) {
            this.f46574f = null;
        } else {
            this.f46574f = str5;
        }
        this.g = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TutorialDto)) {
            return false;
        }
        TutorialDto tutorialDto = (TutorialDto) obj;
        return Intrinsics.c(this.f46570a, tutorialDto.f46570a) && Intrinsics.c(this.f46571b, tutorialDto.f46571b) && Intrinsics.c(this.f46572c, tutorialDto.f46572c) && Intrinsics.c(this.d, tutorialDto.d) && Intrinsics.c(this.f46573e, tutorialDto.f46573e) && Intrinsics.c(this.f46574f, tutorialDto.f46574f) && Intrinsics.c(this.g, tutorialDto.g);
    }

    public final int hashCode() {
        int iHashCode = this.f46570a.hashCode() * 31;
        String str = this.f46571b;
        int iB = fc.b(fc.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f46572c), 31, this.d);
        AssetImageDto assetImageDto = this.f46573e;
        int iHashCode2 = (iB + (assetImageDto == null ? 0 : assetImageDto.hashCode())) * 31;
        String str2 = this.f46574f;
        return this.g.hashCode() + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("TutorialDto(sku=", this.f46570a, ", productId=", this.f46571b, ", title=");
        cj.C(sbS, this.f46572c, ", surtitle=", this.d, ", image=");
        sbS.append(this.f46573e);
        sbS.append(", introduction=");
        sbS.append(this.f46574f);
        sbS.append(", sectionList=");
        return a.o(sbS, this.g, ")");
    }

    public TutorialDto(String str, String str2, String str3, String str4, AssetImageDto assetImageDto, String str5, List<TutorialSectionDto> list) {
        str.getClass();
        str3.getClass();
        str4.getClass();
        list.getClass();
        this.f46570a = str;
        this.f46571b = str2;
        this.f46572c = str3;
        this.d = str4;
        this.f46573e = assetImageDto;
        this.f46574f = str5;
        this.g = list;
    }

    public /* synthetic */ TutorialDto(String str, String str2, String str3, String str4, AssetImageDto assetImageDto, String str5, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, str3, str4, (i2 & 16) != 0 ? null : assetImageDto, (i2 & 32) != 0 ? null : str5, list);
    }
}
