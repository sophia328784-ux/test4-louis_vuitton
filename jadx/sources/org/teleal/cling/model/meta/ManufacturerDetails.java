package org.teleal.cling.model.meta;

import java.net.URI;

/* JADX INFO: loaded from: classes5.dex */
public class ManufacturerDetails {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78469a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final URI f78470b;

    public ManufacturerDetails(String str, String str2) throws IllegalArgumentException {
        this.f78469a = str;
        this.f78470b = URI.create(str2);
    }

    public ManufacturerDetails(URI uri) {
        this.f78470b = uri;
    }

    public ManufacturerDetails(String str, URI uri) {
        this.f78469a = str;
        this.f78470b = uri;
    }

    public ManufacturerDetails(String str) {
        this.f78469a = str;
    }
}
