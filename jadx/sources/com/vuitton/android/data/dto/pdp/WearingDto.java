package com.vuitton.android.data.dto.pdp;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.common.AssetImageDto;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000e2\u00020\u0001:\u0002\u000f\u000eB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\bB9\b\u0010\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\u0007\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/WearingDto;", "", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "image", "", "humanModelHeight", "tag", "<init>", "(Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class WearingDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetImageDto f46300a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f46301b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f46302c;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/pdp/WearingDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/pdp/WearingDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<WearingDto> serializer() {
            return WearingDto$$serializer.f46303a;
        }
    }

    public /* synthetic */ WearingDto(int i2, AssetImageDto assetImageDto, String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
        if (3 != (i2 & 3)) {
            PluginExceptionsKt.b(i2, 3, WearingDto$$serializer.f46303a.getF19838b());
            throw null;
        }
        this.f46300a = assetImageDto;
        this.f46301b = str;
        if ((i2 & 4) == 0) {
            this.f46302c = null;
        } else {
            this.f46302c = str2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WearingDto)) {
            return false;
        }
        WearingDto wearingDto = (WearingDto) obj;
        return Intrinsics.c(this.f46300a, wearingDto.f46300a) && Intrinsics.c(this.f46301b, wearingDto.f46301b) && Intrinsics.c(this.f46302c, wearingDto.f46302c);
    }

    public final int hashCode() {
        int iB = fc.b(this.f46300a.hashCode() * 31, 31, this.f46301b);
        String str = this.f46302c;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("WearingDto(image=");
        sb.append(this.f46300a);
        sb.append(", humanModelHeight=");
        sb.append(this.f46301b);
        sb.append(", tag=");
        return n00.r(this.f46302c, ")", sb);
    }

    public WearingDto(AssetImageDto assetImageDto, String str, String str2) {
        assetImageDto.getClass();
        str.getClass();
        this.f46300a = assetImageDto;
        this.f46301b = str;
        this.f46302c = str2;
    }

    public /* synthetic */ WearingDto(AssetImageDto assetImageDto, String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(assetImageDto, str, (i2 & 4) != 0 ? null : str2);
    }
}
