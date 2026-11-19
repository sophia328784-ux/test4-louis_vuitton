package com.networkbench.agent.impl.performance.coulometry.c.b;

import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.performance.coulometry.b.e;
import com.networkbench.agent.impl.performance.coulometry.c.d;
import com.networkbench.agent.impl.util.r;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class b extends com.networkbench.agent.impl.performance.coulometry.c.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    e f37891c;

    public class a extends com.networkbench.agent.impl.performance.coulometry.c.e {
        public a() {
        }

        @Override // com.networkbench.agent.impl.performance.coulometry.c.e
        public boolean a(Object obj, Method method, Object[] objArr) throws Throwable {
            g.y("LocationManager method : removeUpdates");
            Object obj2 = objArr[0];
            if (obj2 == null) {
                return super.a(obj, method, objArr);
            }
            int iHashCode = obj2.hashCode();
            d dVar = (d) ((com.networkbench.agent.impl.performance.coulometry.c.a) b.this).f37884b.get(Integer.valueOf(iHashCode));
            if (dVar == null) {
                return super.a(obj, method, objArr);
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            dVar.f37910c = jCurrentTimeMillis;
            b.this.f37891c.a(jCurrentTimeMillis, dVar.f37909b, dVar);
            ((com.networkbench.agent.impl.performance.coulometry.c.a) b.this).f37884b.remove(Integer.valueOf(iHashCode));
            return super.a(obj, method, objArr);
        }
    }

    /* JADX INFO: renamed from: com.networkbench.agent.impl.performance.coulometry.c.b.b$b, reason: collision with other inner class name */
    public class C0104b extends com.networkbench.agent.impl.performance.coulometry.c.e {
        public C0104b() {
        }

        @Override // com.networkbench.agent.impl.performance.coulometry.c.e
        public boolean a(Object obj, Method method, Object[] objArr) throws Throwable {
            Object obj2;
            g.y("LocationManager method : requestLocationUpdates");
            if (objArr[0] == null || (obj2 = objArr[1]) == null) {
                return super.a(obj, method, objArr);
            }
            int iHashCode = obj2.hashCode();
            d dVar = (d) ((com.networkbench.agent.impl.performance.coulometry.c.a) b.this).f37884b.get(Integer.valueOf(iHashCode));
            if (dVar == null) {
                dVar = new d();
                ((com.networkbench.agent.impl.performance.coulometry.c.a) b.this).f37884b.put(Integer.valueOf(iHashCode), dVar);
                dVar.f37910c = -1L;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            dVar.f37909b = jCurrentTimeMillis;
            dVar.f37908a = jCurrentTimeMillis;
            dVar.f37910c = -1L;
            if (r.u().aA().c()) {
                dVar.f37912f = Thread.currentThread().getStackTrace();
            }
            b.this.f37891c.a(dVar);
            b.this.f37891c.c();
            return super.a(obj, method, objArr);
        }
    }

    public b(com.networkbench.agent.impl.performance.coulometry.b.b bVar) {
        this.f37891c = (e) bVar;
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.c.a
    public void b() {
        this.f37883a.put("requestLocationUpdates", new C0104b());
        this.f37883a.put("removeUpdates", new a());
    }
}
