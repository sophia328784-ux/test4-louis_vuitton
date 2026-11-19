package org.teleal.cling.model.resource;

import defpackage.md;
import defpackage.x1;
import java.net.URI;
import java.net.URISyntaxException;

/* JADX INFO: loaded from: classes5.dex */
public class Resource<M> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final URI f78497a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f78498b;

    public Resource(URI uri, M m) {
        try {
            this.f78497a = new URI(null, null, uri.getPath(), uri.getQuery(), null);
            this.f78498b = m;
            if (m != null) {
                return;
            }
            md.n("Model instance must not be null");
            throw null;
        } catch (URISyntaxException e2) {
            x1.m(e2);
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f78497a.equals(((Resource) obj).f78497a);
    }

    public final int hashCode() {
        return this.f78497a.hashCode();
    }

    public final String toString() {
        return "(" + getClass().getSimpleName() + ") URI: " + this.f78497a;
    }
}
