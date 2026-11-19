package com.google.crypto.tink.monitoring;

import com.google.errorprone.annotations.Immutable;
import defpackage.md;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class MonitoringAnnotations {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final MonitoringAnnotations f34088b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f34089a;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public HashMap f34090a = new HashMap();
    }

    static {
        Builder builder = new Builder();
        HashMap map = builder.f34090a;
        if (map == null) {
            md.k("cannot call build() twice");
            return;
        }
        MonitoringAnnotations monitoringAnnotations = new MonitoringAnnotations(Collections.unmodifiableMap(map));
        builder.f34090a = null;
        f34088b = monitoringAnnotations;
    }

    public MonitoringAnnotations(Map map) {
        this.f34089a = map;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof MonitoringAnnotations) {
            return this.f34089a.equals(((MonitoringAnnotations) obj).f34089a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f34089a.hashCode();
    }

    public final String toString() {
        return this.f34089a.toString();
    }
}
