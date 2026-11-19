package com.android.wiimu.upnp;

import java.util.Iterator;
import java.util.LinkedHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static c f22507b = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    LinkedHashMap<String, b> f22508a = new LinkedHashMap<>();

    private c() {
    }

    public static c c() {
        return f22507b;
    }

    public synchronized void a() {
        try {
            Iterator<b> it = this.f22508a.values().iterator();
            while (it.hasNext()) {
                it.next().l();
            }
            this.f22508a.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void b(String str) {
        b bVarRemove;
        if (this.f22508a.containsKey(str) && (bVarRemove = this.f22508a.remove(str)) != null) {
            bVarRemove.l();
        }
    }

    public synchronized void b() {
    }

    public synchronized b a(String str) {
        return this.f22508a.get(str);
    }

    public synchronized void a(String str, b bVar) {
        if (!this.f22508a.containsKey(str)) {
            this.f22508a.put(str, bVar);
        }
    }
}
