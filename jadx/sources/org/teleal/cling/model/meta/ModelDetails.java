package org.teleal.cling.model.meta;

import java.net.URI;

/* JADX INFO: loaded from: classes5.dex */
public class ModelDetails {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78471a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78472b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f78473c;
    public final URI d;

    public ModelDetails(String str, String str2, String str3, String str4) throws IllegalArgumentException {
        this.f78471a = str;
        this.f78472b = str2;
        this.f78473c = str3;
        this.d = URI.create(str4);
    }

    public ModelDetails(String str, String str2) {
        this.f78471a = str;
        this.f78472b = str2;
    }

    public ModelDetails(String str, String str2, String str3) {
        this.f78471a = str;
        this.f78472b = str2;
        this.f78473c = str3;
    }

    public ModelDetails(String str, String str2, String str3, URI uri) {
        this.f78471a = str;
        this.f78472b = str2;
        this.f78473c = str3;
        this.d = uri;
    }

    public ModelDetails(String str) {
        this.f78471a = str;
    }
}
