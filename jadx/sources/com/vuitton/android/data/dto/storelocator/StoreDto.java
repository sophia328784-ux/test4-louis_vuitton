package com.vuitton.android.data.dto.storelocator;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import defpackage.cj;
import defpackage.fc;
import defpackage.nw0;
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
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001b\u001aBu\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\u0013\u0010\u0014B\u0085\u0001\b\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0013\u0010\u0019¨\u0006\u001c"}, d2 = {"Lcom/vuitton/android/data/dto/storelocator/StoreDto;", "", "", b.a.f24015b, "name", "storeType", "phone", "Lcom/vuitton/android/data/dto/storelocator/StoreAddressDto;", "address", "imageUrl", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "", "stockAvailability", "", "Lcom/vuitton/android/data/dto/storelocator/StoreOpeningHoursDto;", "openingHours", "Lcom/vuitton/android/data/dto/storelocator/MegatrioDto;", "megatrio", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/storelocator/StoreAddressDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/Boolean;Ljava/util/List;Lcom/vuitton/android/data/dto/storelocator/MegatrioDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/storelocator/StoreAddressDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/Boolean;Ljava/util/List;Lcom/vuitton/android/data/dto/storelocator/MegatrioDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class StoreDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Lazy[] f46835k = {null, null, null, null, null, null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new nw0(26)), null};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46836a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46837b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46838c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final StoreAddressDto f46839e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f46840f;
    public final AssetImageDto g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Boolean f46841h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f46842i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final MegatrioDto f46843j;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/storelocator/StoreDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/storelocator/StoreDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<StoreDto> serializer() {
            return StoreDto$$serializer.f46844a;
        }
    }

    public /* synthetic */ StoreDto(int i2, String str, String str2, String str3, String str4, StoreAddressDto storeAddressDto, String str5, AssetImageDto assetImageDto, Boolean bool, List list, MegatrioDto megatrioDto, SerializationConstructorMarker serializationConstructorMarker) {
        if (23 != (i2 & 23)) {
            PluginExceptionsKt.b(i2, 23, StoreDto$$serializer.f46844a.getF19850b());
            throw null;
        }
        this.f46836a = str;
        this.f46837b = str2;
        this.f46838c = str3;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        this.f46839e = storeAddressDto;
        if ((i2 & 32) == 0) {
            this.f46840f = null;
        } else {
            this.f46840f = str5;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = assetImageDto;
        }
        if ((i2 & 128) == 0) {
            this.f46841h = null;
        } else {
            this.f46841h = bool;
        }
        if ((i2 & 256) == 0) {
            this.f46842i = null;
        } else {
            this.f46842i = list;
        }
        if ((i2 & 512) == 0) {
            this.f46843j = null;
        } else {
            this.f46843j = megatrioDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreDto)) {
            return false;
        }
        StoreDto storeDto = (StoreDto) obj;
        return Intrinsics.c(this.f46836a, storeDto.f46836a) && Intrinsics.c(this.f46837b, storeDto.f46837b) && Intrinsics.c(this.f46838c, storeDto.f46838c) && Intrinsics.c(this.d, storeDto.d) && Intrinsics.c(this.f46839e, storeDto.f46839e) && Intrinsics.c(this.f46840f, storeDto.f46840f) && Intrinsics.c(this.g, storeDto.g) && Intrinsics.c(this.f46841h, storeDto.f46841h) && Intrinsics.c(this.f46842i, storeDto.f46842i) && Intrinsics.c(this.f46843j, storeDto.f46843j);
    }

    public final int hashCode() {
        int iB = fc.b(fc.b(this.f46836a.hashCode() * 31, 31, this.f46837b), 31, this.f46838c);
        String str = this.d;
        int iHashCode = (this.f46839e.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        String str2 = this.f46840f;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        AssetImageDto assetImageDto = this.g;
        int iHashCode3 = (iHashCode2 + (assetImageDto == null ? 0 : assetImageDto.hashCode())) * 31;
        Boolean bool = this.f46841h;
        int iHashCode4 = (iHashCode3 + (bool == null ? 0 : bool.hashCode())) * 31;
        List list = this.f46842i;
        int iHashCode5 = (iHashCode4 + (list == null ? 0 : list.hashCode())) * 31;
        MegatrioDto megatrioDto = this.f46843j;
        return iHashCode5 + (megatrioDto != null ? megatrioDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("StoreDto(id=", this.f46836a, ", name=", this.f46837b, ", storeType=");
        cj.C(sbS, this.f46838c, ", phone=", this.d, ", address=");
        sbS.append(this.f46839e);
        sbS.append(", imageUrl=");
        sbS.append(this.f46840f);
        sbS.append(", image=");
        sbS.append(this.g);
        sbS.append(", stockAvailability=");
        sbS.append(this.f46841h);
        sbS.append(", openingHours=");
        sbS.append(this.f46842i);
        sbS.append(", megatrio=");
        sbS.append(this.f46843j);
        sbS.append(")");
        return sbS.toString();
    }

    public StoreDto(String str, String str2, String str3, String str4, StoreAddressDto storeAddressDto, String str5, AssetImageDto assetImageDto, Boolean bool, List<StoreOpeningHoursDto> list, MegatrioDto megatrioDto) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        storeAddressDto.getClass();
        this.f46836a = str;
        this.f46837b = str2;
        this.f46838c = str3;
        this.d = str4;
        this.f46839e = storeAddressDto;
        this.f46840f = str5;
        this.g = assetImageDto;
        this.f46841h = bool;
        this.f46842i = list;
        this.f46843j = megatrioDto;
    }

    public /* synthetic */ StoreDto(String str, String str2, String str3, String str4, StoreAddressDto storeAddressDto, String str5, AssetImageDto assetImageDto, Boolean bool, List list, MegatrioDto megatrioDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i2 & 8) != 0 ? null : str4, storeAddressDto, (i2 & 32) != 0 ? null : str5, (i2 & 64) != 0 ? null : assetImageDto, (i2 & 128) != 0 ? null : bool, (i2 & 256) != 0 ? null : list, (i2 & 512) != 0 ? null : megatrioDto);
    }
}
