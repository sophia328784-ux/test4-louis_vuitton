package com.networkbench.agent.impl.performance.coulometry.c.d;

import android.os.IBinder;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.performance.coulometry.b.l;
import com.networkbench.agent.impl.performance.coulometry.c.d;
import com.networkbench.agent.impl.performance.coulometry.c.e;
import com.networkbench.agent.impl.util.r;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class b extends com.networkbench.agent.impl.performance.coulometry.c.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    l f37914c;

    public class a extends e {
        public a() {
        }

        @Override // com.networkbench.agent.impl.performance.coulometry.c.e
        public boolean a(Object obj, Method method, Object[] objArr) throws Throwable {
            Object obj2;
            d dVar;
            g.y(" acquireWakeLock ");
            if (objArr.length >= 4 && (obj2 = objArr[0]) != null && (obj2 instanceof IBinder)) {
                int iHashCode = obj2.hashCode();
                if (((com.networkbench.agent.impl.performance.coulometry.c.a) b.this).f37884b.containsKey(Integer.valueOf(iHashCode))) {
                    dVar = (d) ((com.networkbench.agent.impl.performance.coulometry.c.a) b.this).f37884b.get(Integer.valueOf(iHashCode));
                    if (dVar == null) {
                        return super.a(obj, method, objArr);
                    }
                } else {
                    dVar = new d();
                    Object obj3 = objArr[1];
                    if (obj3 == null || !(obj3 instanceof Integer)) {
                        return super.a(obj, method, objArr);
                    }
                    Object obj4 = objArr[2];
                    if (obj4 != null && (obj4 instanceof String)) {
                        dVar.f37910c = -1L;
                    }
                }
                if (r.u().aA().c()) {
                    dVar.f37912f = Thread.currentThread().getStackTrace();
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                dVar.f37909b = jCurrentTimeMillis;
                dVar.f37908a = jCurrentTimeMillis;
                ((com.networkbench.agent.impl.performance.coulometry.c.a) b.this).f37884b.put(Integer.valueOf(iHashCode), dVar);
                b.this.f37914c.a(dVar);
                b.this.f37914c.c();
            }
            return super.a(obj, method, objArr);
        }
    }

    /* JADX INFO: renamed from: com.networkbench.agent.impl.performance.coulometry.c.d.b$b, reason: collision with other inner class name */
    public class C0105b extends e {
        public C0105b() {
        }

        @Override // com.networkbench.agent.impl.performance.coulometry.c.e
        public boolean a(Object obj, Method method, Object[] objArr) throws Throwable {
            Object obj2;
            g.y("  releaseWakeLock  ");
            if (objArr.length == 2 && (obj2 = objArr[0]) != null && (obj2 instanceof IBinder)) {
                int iHashCode = obj2.hashCode();
                d dVar = (d) ((com.networkbench.agent.impl.performance.coulometry.c.a) b.this).f37884b.get(Integer.valueOf(iHashCode));
                if (dVar == null) {
                    return super.a(obj, method, objArr);
                }
                dVar.f37910c = System.currentTimeMillis();
                g.y("  releaseWakeLock  " + dVar.toString());
                b.this.f37914c.a(dVar.f37910c, dVar.f37909b, dVar);
                ((com.networkbench.agent.impl.performance.coulometry.c.a) b.this).f37884b.remove(Integer.valueOf(iHashCode));
            }
            return super.a(obj, method, objArr);
        }
    }

    public b(com.networkbench.agent.impl.performance.coulometry.b.b bVar) {
        this.f37914c = (l) bVar;
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.c.a
    public void b() {
        this.f37883a.put("acquireWakeLock", new a());
        this.f37883a.put("releaseWakeLock", new C0105b());
    }
}
