package com.vuitton.android.data.dto.config.version;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013B[\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\r\u0010\u000eBg\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\r\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;", "", "", "lvSyncRevision", "connectedObjectsRevision", "", "connectedObjectsSyncUrl", "", "lastAuthorizedVersionCode", "lastAuthorizedVersionCodeSubtitle", "androidMinOsAuthorizedVersion", "androidMinOsAuthorizedVersionTitle", "androidMinOsAuthorizedVersionSubTitle", "<init>", "(JJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IJJLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ConfigsVersionDto {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f45552a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f45553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45554c;
    public final Integer d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45555e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f45556f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f45557h;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ConfigsVersionDto> serializer() {
            return ConfigsVersionDto$$serializer.f45558a;
        }
    }

    public /* synthetic */ ConfigsVersionDto(int i2, long j2, long j3, String str, Integer num, String str2, String str3, String str4, String str5, SerializationConstructorMarker serializationConstructorMarker) {
        if (7 != (i2 & 7)) {
            PluginExceptionsKt.b(i2, 7, ConfigsVersionDto$$serializer.f45558a.getF19838b());
            throw null;
        }
        this.f45552a = j2;
        this.f45553b = j3;
        this.f45554c = str;
        if ((i2 & 8) == 0) {
            this.d = null;
        } else {
            this.d = num;
        }
        if ((i2 & 16) == 0) {
            this.f45555e = null;
        } else {
            this.f45555e = str2;
        }
        if ((i2 & 32) == 0) {
            this.f45556f = null;
        } else {
            this.f45556f = str3;
        }
        if ((i2 & 64) == 0) {
            this.g = null;
        } else {
            this.g = str4;
        }
        if ((i2 & 128) == 0) {
            this.f45557h = null;
        } else {
            this.f45557h = str5;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigsVersionDto)) {
            return false;
        }
        ConfigsVersionDto configsVersionDto = (ConfigsVersionDto) obj;
        return this.f45552a == configsVersionDto.f45552a && this.f45553b == configsVersionDto.f45553b && Intrinsics.c(this.f45554c, configsVersionDto.f45554c) && Intrinsics.c(this.d, configsVersionDto.d) && Intrinsics.c(this.f45555e, configsVersionDto.f45555e) && Intrinsics.c(this.f45556f, configsVersionDto.f45556f) && Intrinsics.c(this.g, configsVersionDto.g) && Intrinsics.c(this.f45557h, configsVersionDto.f45557h);
    }

    public final int hashCode() {
        int iB = fc.b(fc.a(Long.hashCode(this.f45552a) * 31, 31, this.f45553b), 31, this.f45554c);
        Integer num = this.d;
        int iHashCode = (iB + (num == null ? 0 : num.hashCode())) * 31;
        String str = this.f45555e;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f45556f;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f45557h;
        return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbQ = pq0.q(this.f45552a, "ConfigsVersionDto(lvSyncRevision=", ", connectedObjectsRevision=");
        sbQ.append(this.f45553b);
        sbQ.append(", connectedObjectsSyncUrl=");
        sbQ.append(this.f45554c);
        sbQ.append(", lastAuthorizedVersionCode=");
        sbQ.append(this.d);
        sbQ.append(", lastAuthorizedVersionCodeSubtitle=");
        sbQ.append(this.f45555e);
        cj.C(sbQ, ", androidMinOsAuthorizedVersion=", this.f45556f, ", androidMinOsAuthorizedVersionTitle=", this.g);
        return d21.p(sbQ, ", androidMinOsAuthorizedVersionSubTitle=", this.f45557h, ")");
    }

    public ConfigsVersionDto(long j2, long j3, String str, Integer num, String str2, String str3, String str4, String str5) {
        str.getClass();
        this.f45552a = j2;
        this.f45553b = j3;
        this.f45554c = str;
        this.d = num;
        this.f45555e = str2;
        this.f45556f = str3;
        this.g = str4;
        this.f45557h = str5;
    }

    public /* synthetic */ ConfigsVersionDto(long j2, long j3, String str, Integer num, String str2, String str3, String str4, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j2, j3, str, (i2 & 8) != 0 ? null : num, (i2 & 16) != 0 ? null : str2, (i2 & 32) != 0 ? null : str3, (i2 & 64) != 0 ? null : str4, (i2 & 128) != 0 ? null : str5);
    }
}
