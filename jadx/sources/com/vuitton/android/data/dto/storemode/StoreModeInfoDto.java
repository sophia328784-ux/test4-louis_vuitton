package com.vuitton.android.data.dto.storemode;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetDto;
import defpackage.o11;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011BA\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0006¢\u0006\u0004\b\n\u0010\u000bBO\b\u0010\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0006\u0012\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0006\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\n\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;", "", "", "storeName", "Lcom/vuitton/android/data/dto/common/AssetDto;", "storeAsset", "", "storeCarousel", "Lcom/vuitton/android/data/dto/storemode/StoreModeSectionDto;", "sections", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/util/List;Ljava/util/List;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/util/List;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class StoreModeInfoDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f46860e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f46861a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetDto f46862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f46863c;
    public final List d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/storemode/StoreModeInfoDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<StoreModeInfoDto> serializer() {
            return StoreModeInfoDto$$serializer.f46864a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f46860e = new Lazy[]{null, null, LazyKt.a(lazyThreadSafetyMode, new o11(0)), LazyKt.a(lazyThreadSafetyMode, new o11(1))};
    }

    public StoreModeInfoDto(int i2, String str, AssetDto assetDto, List list, List list2, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f46861a = null;
        } else {
            this.f46861a = str;
        }
        if ((i2 & 2) == 0) {
            this.f46862b = null;
        } else {
            this.f46862b = assetDto;
        }
        if ((i2 & 4) == 0) {
            this.f46863c = null;
        } else {
            this.f46863c = list;
        }
        if ((i2 & 8) == 0) {
            this.d = EmptyList.f71768b;
        } else {
            this.d = list2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof StoreModeInfoDto)) {
            return false;
        }
        StoreModeInfoDto storeModeInfoDto = (StoreModeInfoDto) obj;
        return Intrinsics.c(this.f46861a, storeModeInfoDto.f46861a) && Intrinsics.c(this.f46862b, storeModeInfoDto.f46862b) && Intrinsics.c(this.f46863c, storeModeInfoDto.f46863c) && Intrinsics.c(this.d, storeModeInfoDto.d);
    }

    public final int hashCode() {
        String str = this.f46861a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        AssetDto assetDto = this.f46862b;
        int iHashCode2 = (iHashCode + (assetDto == null ? 0 : assetDto.hashCode())) * 31;
        List list = this.f46863c;
        return this.d.hashCode() + ((iHashCode2 + (list != null ? list.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "StoreModeInfoDto(storeName=" + this.f46861a + ", storeAsset=" + this.f46862b + ", storeCarousel=" + this.f46863c + ", sections=" + this.d + ")";
    }

    public StoreModeInfoDto() {
        this((String) null, (AssetDto) null, (List) null, (List) null, 15, (DefaultConstructorMarker) null);
    }

    public StoreModeInfoDto(String str, AssetDto assetDto, List<AssetDto> list, List<StoreModeSectionDto> list2) {
        list2.getClass();
        this.f46861a = str;
        this.f46862b = assetDto;
        this.f46863c = list;
        this.d = list2;
    }

    public StoreModeInfoDto(String str, AssetDto assetDto, List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : assetDto, (i2 & 4) != 0 ? null : list, (i2 & 8) != 0 ? EmptyList.f71768b : list2);
    }
}
