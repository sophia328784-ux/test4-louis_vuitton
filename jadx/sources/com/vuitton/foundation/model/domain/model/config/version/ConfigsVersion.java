package com.vuitton.foundation.model.domain.model.config.version;

import defpackage.d21;
import defpackage.fc;
import defpackage.pq0;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\r\u0010\u000eBc\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010¢\u0006\u0004\b\r\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;", "", "", "appConfigRevision", "connectedObjectsConfigRevision", "", "connectedObjectsConfigUrl", "", "lastAuthorizedVersionCode", "lastAuthorizedVersionCodeSubtitle", "androidMinOsAuthorizedVersion", "androidMinOsAuthorizedVersionTitle", "androidMinOsAuthorizedVersionSubTitle", "<init>", "(JJLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IJJLjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class ConfigsVersion {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f67287a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f67288b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67289c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67290e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f67291f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f67292h;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/foundation/model/domain/model/config/version/ConfigsVersion;", "serializer", "()Lkotlinx/serialization/KSerializer;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<ConfigsVersion> serializer() {
            return ConfigsVersion$$serializer.f67293a;
        }
    }

    public /* synthetic */ ConfigsVersion(int i2, long j2, long j3, String str, int i3, String str2, int i4, String str3, String str4, SerializationConstructorMarker serializationConstructorMarker) {
        if (255 != (i2 & 255)) {
            PluginExceptionsKt.b(i2, 255, ConfigsVersion$$serializer.f67293a.getF19850b());
            throw null;
        }
        this.f67287a = j2;
        this.f67288b = j3;
        this.f67289c = str;
        this.d = i3;
        this.f67290e = str2;
        this.f67291f = i4;
        this.g = str3;
        this.f67292h = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ConfigsVersion)) {
            return false;
        }
        ConfigsVersion configsVersion = (ConfigsVersion) obj;
        return this.f67287a == configsVersion.f67287a && this.f67288b == configsVersion.f67288b && Intrinsics.c(this.f67289c, configsVersion.f67289c) && this.d == configsVersion.d && Intrinsics.c(this.f67290e, configsVersion.f67290e) && this.f67291f == configsVersion.f67291f && Intrinsics.c(this.g, configsVersion.g) && Intrinsics.c(this.f67292h, configsVersion.f67292h);
    }

    public final int hashCode() {
        int iB = tr.b(this.d, fc.b(fc.a(Long.hashCode(this.f67287a) * 31, 31, this.f67288b), 31, this.f67289c), 31);
        String str = this.f67290e;
        int iB2 = tr.b(this.f67291f, (iB + (str == null ? 0 : str.hashCode())) * 31, 31);
        String str2 = this.g;
        int iHashCode = (iB2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f67292h;
        return iHashCode + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbQ = pq0.q(this.f67287a, "ConfigsVersion(appConfigRevision=", ", connectedObjectsConfigRevision=");
        sbQ.append(this.f67288b);
        sbQ.append(", connectedObjectsConfigUrl=");
        sbQ.append(this.f67289c);
        sbQ.append(", lastAuthorizedVersionCode=");
        sbQ.append(this.d);
        sbQ.append(", lastAuthorizedVersionCodeSubtitle=");
        sbQ.append(this.f67290e);
        sbQ.append(", androidMinOsAuthorizedVersion=");
        sbQ.append(this.f67291f);
        sbQ.append(", androidMinOsAuthorizedVersionTitle=");
        sbQ.append(this.g);
        return d21.p(sbQ, ", androidMinOsAuthorizedVersionSubTitle=", this.f67292h, ")");
    }

    public ConfigsVersion(long j2, long j3, String str, int i2, String str2, int i3, String str3, String str4) {
        str.getClass();
        this.f67287a = j2;
        this.f67288b = j3;
        this.f67289c = str;
        this.d = i2;
        this.f67290e = str2;
        this.f67291f = i3;
        this.g = str3;
        this.f67292h = str4;
    }
}
