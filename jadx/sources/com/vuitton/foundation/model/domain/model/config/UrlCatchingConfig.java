package com.vuitton.foundation.model.domain.model.config;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;", "", "", "patternUrl", "redirection", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class UrlCatchingConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67281b;

    public UrlCatchingConfig(String str, String str2) {
        this.f67280a = str;
        this.f67281b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof UrlCatchingConfig)) {
            return false;
        }
        UrlCatchingConfig urlCatchingConfig = (UrlCatchingConfig) obj;
        return Intrinsics.c(this.f67280a, urlCatchingConfig.f67280a) && Intrinsics.c(this.f67281b, urlCatchingConfig.f67281b);
    }

    public final int hashCode() {
        String str = this.f67280a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67281b;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        return d21.l("UrlCatchingConfig(patternUrl=", this.f67280a, ", redirection=", this.f67281b, ")");
    }
}
