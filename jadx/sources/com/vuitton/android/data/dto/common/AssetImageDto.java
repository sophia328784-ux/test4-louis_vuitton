package com.vuitton.android.data.dto.common;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.fc;
import defpackage.g5;
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
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB7\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tBC\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/common/AssetImageDto;", "", "", b.a.f24015b, ConfigurationName.DOWNLOAD_PLUGIN_URL, "alt", "Lcom/vuitton/android/data/dto/common/ScaleDto;", "scale", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/ScaleDto;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/ScaleDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AssetImageDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Lazy[] f45239e = {null, null, null, LazyKt.a(LazyThreadSafetyMode.PUBLICATION, new g5(27))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45240a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45241b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45242c;
    public final ScaleDto d;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/AssetImageDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/AssetImageDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AssetImageDto> serializer() {
            return AssetImageDto$$serializer.f45243a;
        }
    }

    public /* synthetic */ AssetImageDto(int i2, String str, String str2, String str3, ScaleDto scaleDto, SerializationConstructorMarker serializationConstructorMarker) {
        if ((i2 & 1) == 0) {
            this.f45240a = null;
        } else {
            this.f45240a = str;
        }
        if ((i2 & 2) == 0) {
            this.f45241b = null;
        } else {
            this.f45241b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f45242c = null;
        } else {
            this.f45242c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = scaleDto;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssetImageDto)) {
            return false;
        }
        AssetImageDto assetImageDto = (AssetImageDto) obj;
        return Intrinsics.c(this.f45240a, assetImageDto.f45240a) && Intrinsics.c(this.f45241b, assetImageDto.f45241b) && Intrinsics.c(this.f45242c, assetImageDto.f45242c) && this.d == assetImageDto.d;
    }

    public final int hashCode() {
        String str = this.f45240a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f45241b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f45242c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        ScaleDto scaleDto = this.d;
        return iHashCode3 + (scaleDto != null ? scaleDto.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("AssetImageDto(id=", this.f45240a, ", url=", this.f45241b, ", alt=");
        sbS.append(this.f45242c);
        sbS.append(", scale=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public AssetImageDto() {
        this((String) null, (String) null, (String) null, (ScaleDto) null, 15, (DefaultConstructorMarker) null);
    }

    public AssetImageDto(String str, String str2, String str3, ScaleDto scaleDto) {
        this.f45240a = str;
        this.f45241b = str2;
        this.f45242c = str3;
        this.d = scaleDto;
    }

    public /* synthetic */ AssetImageDto(String str, String str2, String str3, ScaleDto scaleDto, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : scaleDto);
    }
}
