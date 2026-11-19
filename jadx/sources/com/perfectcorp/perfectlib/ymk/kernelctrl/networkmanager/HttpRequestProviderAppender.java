package com.perfectcorp.perfectlib.ymk.kernelctrl.networkmanager;

import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.network.HttpRequestProvider;
import com.perfectcorp.common.utility.HttpRequest;
import com.perfectcorp.perfectlib.ymk.a;
import com.perfectcorp.uma.s;

/* JADX INFO: loaded from: classes3.dex */
public final class HttpRequestProviderAppender implements HttpRequestProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HttpRequestProvider f41983a;

    public HttpRequestProviderAppender(HttpRequestProvider httpRequestProvider) {
        this.f41983a = httpRequestProvider;
    }

    @Override // com.perfectcorp.common.network.HttpRequestProvider
    public final HttpRequest get() {
        HttpRequest httpRequest = this.f41983a.get();
        if (!httpRequest.d("platform")) {
            httpRequest.a(a.f41935a.d, "platform");
        }
        if (!httpRequest.d("product")) {
            httpRequest.a(a.f41935a.f41939e, "product");
        }
        if (!httpRequest.d("version")) {
            httpRequest.a(a.f41935a.f41940f, "version");
        }
        if (!httpRequest.d("versiontype")) {
            httpRequest.a(a.f41935a.g, "versiontype");
        }
        httpRequest.a(s.a(PfCommons.b(), false), "aid");
        return httpRequest;
    }
}
