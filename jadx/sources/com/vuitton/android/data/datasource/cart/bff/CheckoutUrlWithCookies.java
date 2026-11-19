package com.vuitton.android.data.datasource.cart.bff;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.cj;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/datasource/cart/bff/CheckoutUrlWithCookies;", "", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "", "Lcom/vuitton/android/data/datasource/cart/bff/Cookie;", "cookies", "<init>", "(Ljava/lang/String;Ljava/util/List;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CheckoutUrlWithCookies {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f43936a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f43937b;

    public CheckoutUrlWithCookies(String str, List<Cookie> list) {
        str.getClass();
        list.getClass();
        this.f43936a = str;
        this.f43937b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CheckoutUrlWithCookies)) {
            return false;
        }
        CheckoutUrlWithCookies checkoutUrlWithCookies = (CheckoutUrlWithCookies) obj;
        return Intrinsics.c(this.f43936a, checkoutUrlWithCookies.f43936a) && Intrinsics.c(this.f43937b, checkoutUrlWithCookies.f43937b);
    }

    public final int hashCode() {
        return this.f43937b.hashCode() + (this.f43936a.hashCode() * 31);
    }

    public final String toString() {
        return cj.k("CheckoutUrlWithCookies(url=", this.f43936a, ", cookies=", this.f43937b, ")");
    }
}
