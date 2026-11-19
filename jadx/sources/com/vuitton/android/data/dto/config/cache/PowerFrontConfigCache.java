package com.vuitton.android.data.dto.config.cache;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tBM\b\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f¢\u0006\u0004\b\b\u0010\u000e¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;", "", "", "domainUrl", "accountKey", "mobileSiteUrl", "subSiteId", "appNameAndroid", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "", "seen0", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class PowerFrontConfigCache {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f45527a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f45528b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f45529c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45530e;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<PowerFrontConfigCache> serializer() {
            return PowerFrontConfigCache$$serializer.f45531a;
        }
    }

    public /* synthetic */ PowerFrontConfigCache(int i2, String str, String str2, String str3, String str4, String str5, SerializationConstructorMarker serializationConstructorMarker) {
        if (31 != (i2 & 31)) {
            PluginExceptionsKt.b(i2, 31, PowerFrontConfigCache$$serializer.f45531a.getF19838b());
            throw null;
        }
        this.f45527a = str;
        this.f45528b = str2;
        this.f45529c = str3;
        this.d = str4;
        this.f45530e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PowerFrontConfigCache)) {
            return false;
        }
        PowerFrontConfigCache powerFrontConfigCache = (PowerFrontConfigCache) obj;
        return Intrinsics.c(this.f45527a, powerFrontConfigCache.f45527a) && Intrinsics.c(this.f45528b, powerFrontConfigCache.f45528b) && Intrinsics.c(this.f45529c, powerFrontConfigCache.f45529c) && Intrinsics.c(this.d, powerFrontConfigCache.d) && Intrinsics.c(this.f45530e, powerFrontConfigCache.f45530e);
    }

    public final int hashCode() {
        return this.f45530e.hashCode() + fc.b(fc.b(fc.b(this.f45527a.hashCode() * 31, 31, this.f45528b), 31, this.f45529c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PowerFrontConfigCache(domainUrl=", this.f45527a, ", accountKey=", this.f45528b, ", mobileSiteUrl=");
        cj.C(sbS, this.f45529c, ", subSiteId=", this.d, ", appNameAndroid=");
        return n00.r(this.f45530e, ")", sbS);
    }

    public PowerFrontConfigCache(String str, String str2, String str3, String str4, String str5) {
        pq0.z(str, str2, str3, str4, str5);
        this.f45527a = str;
        this.f45528b = str2;
        this.f45529c = str3;
        this.d = str4;
        this.f45530e = str5;
    }
}
