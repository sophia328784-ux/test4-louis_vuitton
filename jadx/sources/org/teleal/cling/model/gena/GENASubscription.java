package org.teleal.cling.model.gena;

import java.util.LinkedHashMap;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public abstract class GENASubscription<S extends Service> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Service f78400a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f78401b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f78402c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public UnsignedIntegerFourBytes f78403e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final LinkedHashMap f78404f;

    public GENASubscription(Service service) {
        this.f78402c = 1800;
        this.f78404f = new LinkedHashMap();
        this.f78400a = service;
    }

    public abstract void a();

    public abstract void b();

    public final synchronized UnsignedIntegerFourBytes c() {
        return this.f78403e;
    }

    public final synchronized Service d() {
        return this.f78400a;
    }

    public final synchronized String e() {
        return this.f78401b;
    }

    public String toString() {
        return "(GENASubscription, SID: " + e() + ", SEQUENCE: " + c() + ")";
    }

    public GENASubscription(S s, int i2) {
        this(s);
        this.f78402c = i2;
    }
}
