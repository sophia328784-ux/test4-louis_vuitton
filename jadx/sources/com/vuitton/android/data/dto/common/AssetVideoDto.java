package com.vuitton.android.data.dto.common;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014Bc\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\r\u0010\u000eBk\b\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011¢\u0006\u0004\b\r\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/data/dto/common/AssetVideoDto;", "", "", b.a.f24015b, ConfigurationName.DOWNLOAD_PLUGIN_URL, "placeholder", "subtitle", "", "isLive", "", "eventStartTimestampInSecondsInUTC", "isLiveDone", "streamUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AssetVideoDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45244a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45245b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45246c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Boolean f45247e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Long f45248f;
    public final Boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f45249h;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/common/AssetVideoDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/common/AssetVideoDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AssetVideoDto> serializer() {
            return AssetVideoDto$$serializer.f45250a;
        }
    }

    public /* synthetic */ AssetVideoDto(int i2, String str, String str2, String str3, String str4, Boolean bool, Long l, Boolean bool2, String str5, SerializationConstructorMarker serializationConstructorMarker) {
        if (1 != (i2 & 1)) {
            PluginExceptionsKt.b(i2, 1, AssetVideoDto$$serializer.f45250a.a());
            throw null;
        }
        this.f45244a = str;
        if ((i2 & 2) == 0) {
            this.f45245b = null;
        } else {
            this.f45245b = str2;
        }
        if ((i2 & 4) == 0) {
            this.f45246c = null;
        } else {
            this.f45246c = str3;
        }
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = str4;
        }
        if ((i2 & 16) == 0) {
            this.f45247e = null;
        } else {
            this.f45247e = bool;
        }
        if ((i2 & 32) == 0) {
            this.f45248f = null;
        } else {
            this.f45248f = l;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = bool2;
        }
        if ((i2 & 128) == 0) {
            this.f45249h = null;
        } else {
            this.f45249h = str5;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssetVideoDto)) {
            return false;
        }
        AssetVideoDto assetVideoDto = (AssetVideoDto) obj;
        return Intrinsics.c(this.f45244a, assetVideoDto.f45244a) && Intrinsics.c(this.f45245b, assetVideoDto.f45245b) && Intrinsics.c(this.f45246c, assetVideoDto.f45246c) && Intrinsics.c(this.d, assetVideoDto.d) && Intrinsics.c(this.f45247e, assetVideoDto.f45247e) && Intrinsics.c(this.f45248f, assetVideoDto.f45248f) && Intrinsics.c(this.g, assetVideoDto.g) && Intrinsics.c(this.f45249h, assetVideoDto.f45249h);
    }

    public final int hashCode() {
        int iHashCode = this.f45244a.hashCode() * 31;
        String str = this.f45245b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f45246c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Boolean bool = this.f45247e;
        int iHashCode5 = (iHashCode4 + (bool == null ? 0 : bool.hashCode())) * 31;
        Long l = this.f45248f;
        int iHashCode6 = (iHashCode5 + (l == null ? 0 : l.hashCode())) * 31;
        Boolean bool2 = this.g;
        int iHashCode7 = (iHashCode6 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        String str4 = this.f45249h;
        return iHashCode7 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("AssetVideoDto(id=", this.f45244a, ", url=", this.f45245b, ", placeholder=");
        cj.C(sbS, this.f45246c, ", subtitle=", this.d, ", isLive=");
        sbS.append(this.f45247e);
        sbS.append(", eventStartTimestampInSecondsInUTC=");
        sbS.append(this.f45248f);
        sbS.append(", isLiveDone=");
        sbS.append(this.g);
        sbS.append(", streamUrl=");
        sbS.append(this.f45249h);
        sbS.append(")");
        return sbS.toString();
    }

    public AssetVideoDto(String str, String str2, String str3, String str4, Boolean bool, Long l, Boolean bool2, String str5) {
        str.getClass();
        this.f45244a = str;
        this.f45245b = str2;
        this.f45246c = str3;
        this.d = str4;
        this.f45247e = bool;
        this.f45248f = l;
        this.g = bool2;
        this.f45249h = str5;
    }

    public /* synthetic */ AssetVideoDto(String str, String str2, String str3, String str4, Boolean bool, Long l, Boolean bool2, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : bool, (i2 & 32) != 0 ? null : l, (i2 & 64) != 0 ? null : bool2, (i2 & 128) != 0 ? null : str5);
    }
}
