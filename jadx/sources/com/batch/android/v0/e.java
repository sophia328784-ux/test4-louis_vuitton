package com.batch.android.v0;

import android.content.Context;
import com.batch.android.Batch;
import com.batch.android.BatchEventDispatcher;
import com.batch.android.e.t;
import com.batch.android.eventdispatcher.DispatcherDiscoveryService;
import com.batch.android.eventdispatcher.DispatcherRegistrar;
import com.batch.android.json.JSONObject;
import com.batch.android.n.v;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public class e extends b {
    private static final String d = "EventDispatcher";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f24090e = "com.batch.android.eventdispatcher.DispatcherRegistrar";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f24091f = "com.batch.android.eventdispatcher:";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private h f24093b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<BatchEventDispatcher> f24092a = new LinkedHashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f24094c = false;

    private e(h hVar) {
        this.f24093b = hVar;
    }

    public static e j() {
        return new e(v.a());
    }

    public void a(Batch.EventDispatcher.Type type, Batch.EventDispatcher.Payload payload) {
        if (Boolean.TRUE.equals(this.f24093b.i())) {
            t.c(d, "Batch is opted out, refusing to dispatch event.");
            return;
        }
        synchronized (this.f24092a) {
            try {
                Iterator<BatchEventDispatcher> it = this.f24092a.iterator();
                while (it.hasNext()) {
                    it.next().dispatchEvent(type, payload);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b(Context context) {
        if (Boolean.TRUE.equals(Boolean.valueOf(this.f24093b.c(context)))) {
            t.c(d, "Batch is opted out, refusing to add event dispatchers.");
            return;
        }
        synchronized (this.f24092a) {
            try {
                if (this.f24094c) {
                    return;
                }
                this.f24094c = true;
                for (String str : com.batch.android.e.g.a(context, DispatcherDiscoveryService.class, f24090e, f24091f)) {
                    try {
                        Class<?> cls = Class.forName(str);
                        if (DispatcherRegistrar.class.isAssignableFrom(cls)) {
                            BatchEventDispatcher dispatcher = ((DispatcherRegistrar) cls.getDeclaredConstructor(null).newInstance(null)).getDispatcher(context);
                            if (dispatcher != null) {
                                a(dispatcher);
                                String name = dispatcher.getClass().getName();
                                try {
                                    if (dispatcher.getName() != null) {
                                        name = dispatcher.getName();
                                    } else {
                                        a(name);
                                    }
                                    b(name);
                                } catch (AbstractMethodError unused) {
                                    a(name);
                                }
                            }
                        } else {
                            t.a(d, "Class " + str + " is not an instance of " + f24090e);
                        }
                    } catch (Throwable th) {
                        t.a("Could not instantiate " + str, th);
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.batch.android.v0.b
    public String g() {
        return "eventdispatcher";
    }

    @Override // com.batch.android.v0.b
    public int h() {
        return 1;
    }

    public JSONObject i() {
        JSONObject jSONObjectA;
        synchronized (this.f24092a) {
            jSONObjectA = com.batch.android.p.a.a(this.f24092a);
            if (jSONObjectA.length() <= 0) {
                jSONObjectA = null;
            }
        }
        return jSONObjectA;
    }

    public void a(BatchEventDispatcher batchEventDispatcher) {
        synchronized (this.f24092a) {
            this.f24092a.add(batchEventDispatcher);
        }
    }

    private void a(String str) {
        t.e(d, "The version of your event dispatcher: " + str + " is outdated, please update it.");
    }

    public boolean b(BatchEventDispatcher batchEventDispatcher) {
        boolean zRemove;
        synchronized (this.f24092a) {
            zRemove = this.f24092a.remove(batchEventDispatcher);
        }
        return zRemove;
    }

    private void b(String str) {
        t.c(d, "Adding event dispatcher: " + str);
    }
}
