package com.networkbench.agent.impl.performance.coulometry.c.a;

import android.app.PendingIntent;
import android.os.SystemClock;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.performance.coulometry.c.d;
import com.networkbench.agent.impl.performance.coulometry.c.e;
import com.networkbench.agent.impl.util.r;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class b extends com.networkbench.agent.impl.performance.coulometry.c.a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.networkbench.agent.impl.performance.coulometry.b.a f37885c;

    public class a extends e {
        public a() {
        }

        @Override // com.networkbench.agent.impl.performance.coulometry.c.e
        public boolean a(Object obj, Method method, Object[] objArr) throws Throwable {
            g.y("AlarmManager  method :  remove() ");
            Object obj2 = objArr[0];
            if (obj2 == null || !(obj2 instanceof PendingIntent)) {
                return super.a(obj, method, objArr);
            }
            int iHashCode = obj2.hashCode();
            g.y("AlarmManager  method :  remove()  pendingIntent : " + iHashCode);
            d dVar = (d) ((com.networkbench.agent.impl.performance.coulometry.c.a) b.this).f37884b.get(Integer.valueOf(iHashCode));
            if (dVar != null) {
                b.this.f37885c.a(dVar);
            }
            ((com.networkbench.agent.impl.performance.coulometry.c.a) b.this).f37884b.remove(Integer.valueOf(iHashCode));
            return super.a(obj, method, objArr);
        }
    }

    /* JADX INFO: renamed from: com.networkbench.agent.impl.performance.coulometry.c.a.b$b, reason: collision with other inner class name */
    public class C0103b extends e {
        public C0103b() {
        }

        @Override // com.networkbench.agent.impl.performance.coulometry.c.e
        public boolean a(Object obj, Method method, Object[] objArr) throws Throwable {
            g.y("AlarmManager  method :  set() ");
            d dVar = new d();
            boolean z = false;
            int i2 = 0;
            for (Object obj2 : objArr) {
                if ((obj2 instanceof Integer) && !z) {
                    dVar.d = ((Integer) obj2).intValue();
                    z = true;
                } else if (obj2 instanceof Long) {
                    if (i2 == 0) {
                        long jLongValue = ((Long) obj2).longValue();
                        dVar.f37909b = jLongValue;
                        int i3 = dVar.d;
                        if (i3 != 1 && i3 != 0) {
                            jLongValue = (System.currentTimeMillis() + jLongValue) - SystemClock.elapsedRealtime();
                        }
                        dVar.f37909b = jLongValue;
                    } else if (i2 == 2) {
                        dVar.f37911e = ((Long) obj2).longValue();
                    }
                    i2++;
                } else if (obj2 instanceof PendingIntent) {
                    PendingIntent pendingIntent = (PendingIntent) obj2;
                    ((com.networkbench.agent.impl.performance.coulometry.c.a) b.this).f37884b.put(Integer.valueOf(pendingIntent.hashCode()), dVar);
                    g.y("AlarmManager  method :  set()  pendingIntent : " + pendingIntent.hashCode());
                }
            }
            dVar.f37908a = dVar.f37909b;
            if (r.u().aA().c()) {
                dVar.f37912f = Thread.currentThread().getStackTrace();
            }
            return super.a(obj, method, objArr);
        }
    }

    public b(com.networkbench.agent.impl.performance.coulometry.b.b bVar) {
        this.f37885c = (com.networkbench.agent.impl.performance.coulometry.b.a) bVar;
    }

    @Override // com.networkbench.agent.impl.performance.coulometry.c.a
    public void b() {
        this.f37883a.put("set", new C0103b());
        this.f37883a.put("remove", new a());
    }
}
