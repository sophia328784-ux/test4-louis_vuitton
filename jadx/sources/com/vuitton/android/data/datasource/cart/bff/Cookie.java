package com.vuitton.android.data.datasource.cart.bff;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/datasource/cart/bff/Cookie;", "", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "cookieString", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Cookie {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f43938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f43939b;

    public Cookie(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f43938a = str;
        this.f43939b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cookie)) {
            return false;
        }
        Cookie cookie = (Cookie) obj;
        return Intrinsics.c(this.f43938a, cookie.f43938a) && Intrinsics.c(this.f43939b, cookie.f43939b);
    }

    public final int hashCode() {
        return this.f43939b.hashCode() + (this.f43938a.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("Cookie(url=", this.f43938a, ", cookieString=", this.f43939b, ")");
    }
}
