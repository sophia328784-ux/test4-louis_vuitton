package com.vuitton.foundation.model.domain.model.config;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;", "", "", "domainUrl", "accountKey", "mobileSiteUrl", "subSiteId", "appNameAndroid", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PowerFrontConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67273a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67275c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67276e;

    public PowerFrontConfig(String str, String str2, String str3, String str4, String str5) {
        pq0.z(str, str2, str3, str4, str5);
        this.f67273a = str;
        this.f67274b = str2;
        this.f67275c = str3;
        this.d = str4;
        this.f67276e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PowerFrontConfig)) {
            return false;
        }
        PowerFrontConfig powerFrontConfig = (PowerFrontConfig) obj;
        return Intrinsics.c(this.f67273a, powerFrontConfig.f67273a) && Intrinsics.c(this.f67274b, powerFrontConfig.f67274b) && Intrinsics.c(this.f67275c, powerFrontConfig.f67275c) && Intrinsics.c(this.d, powerFrontConfig.d) && Intrinsics.c(this.f67276e, powerFrontConfig.f67276e);
    }

    public final int hashCode() {
        return this.f67276e.hashCode() + fc.b(fc.b(fc.b(this.f67273a.hashCode() * 31, 31, this.f67274b), 31, this.f67275c), 31, this.d);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PowerFrontConfig(domainUrl=", this.f67273a, ", accountKey=", this.f67274b, ", mobileSiteUrl=");
        cj.C(sbS, this.f67275c, ", subSiteId=", this.d, ", appNameAndroid=");
        return n00.r(this.f67276e, ")", sbS);
    }
}
