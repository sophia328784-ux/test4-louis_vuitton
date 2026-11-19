package com.batch.android.s;

import android.content.Context;
import com.batch.android.LoggerLevel;
import com.batch.android.a.m;
import com.batch.android.e.a0;
import com.batch.android.e.i0;
import com.batch.android.e.o0;
import com.batch.android.e.t;
import com.batch.android.json.JSONException;
import com.batch.android.json.JSONObject;
import com.batch.android.n.d0;
import com.batch.android.n.f0;
import com.batch.android.n.z;
import defpackage.b5;
import defpackage.w21;
import defpackage.x5;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class a {
    private static final String l = "CampaignManager";
    private static final String m = "com.batch.localcampaigns.persist.json";
    private static final int n = 60000;
    private static final long o = 1296000000;
    private static final int p = 10;
    private static final int q = 15000;
    private static final int r = 30000;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final d f23998b;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.batch.android.g1.c.b f24000e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.batch.android.g1.c.EnumC0054c f24001f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f24002h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.batch.android.e.e f23997a = new i0();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.batch.android.v.b f23999c = new com.batch.android.v.a();
    private final List<com.batch.android.t.b> d = new ArrayList();
    private final Object g = new Object();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final AtomicBoolean f24003i = new AtomicBoolean(false);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Set<String> f24004j = new HashSet();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Map<String, com.batch.android.t.b.C0074b> f24005k = new HashMap();

    public interface b {
        void a(com.batch.android.t.b bVar);
    }

    public a(d dVar) {
        this.f23998b = dVar;
    }

    public static a l() {
        return new a(new d());
    }

    private void n() {
        HashSet hashSet = new HashSet();
        synchronized (this.g) {
            try {
                Iterator<com.batch.android.t.b> it = this.d.iterator();
                while (it.hasNext()) {
                    for (com.batch.android.t.b.c cVar : it.next().f24047k) {
                        if (cVar instanceof com.batch.android.y.a) {
                            hashSet.add(((com.batch.android.y.a) cVar).f24210a.toUpperCase(Locale.US));
                        }
                    }
                }
                this.f24004j = hashSet;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void a(List<com.batch.android.t.b> list, boolean z) {
        synchronized (this.g) {
            try {
                this.d.clear();
                this.d.addAll(a(list));
                if (z) {
                    ArrayList arrayList = new ArrayList();
                    Iterator<com.batch.android.t.b> it = this.d.iterator();
                    while (it.hasNext()) {
                        arrayList.add(it.next().f24039a);
                    }
                    a(this.d, arrayList, false);
                }
                this.f24003i.set(true);
                n();
                if (t.a(LoggerLevel.INTERNAL)) {
                    t.c(l, "Loaded " + this.d.size() + " campaign(s)");
                    for (com.batch.android.t.b bVar : this.d) {
                        String str = bVar.m;
                        if (str != null) {
                            t.c(l, str);
                        } else {
                            t.c(l, "Unknown ( " + bVar.f24039a + " )");
                        }
                    }
                    if (this.f24004j.isEmpty()) {
                        t.c(l, "No events to watch");
                    } else {
                        t.c(l, "Watching events: ");
                        Iterator<String> it2 = this.f24004j.iterator();
                        while (it2.hasNext()) {
                            t.c(l, it2.next());
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean b(com.batch.android.t.b bVar) {
        com.batch.android.i.a aVarA = this.f23997a.a();
        com.batch.android.i.a aVar = bVar.f24042e;
        if (aVar != null && aVar.compareTo(aVarA) > 0) {
            t.c(l, "Ignoring campaign " + bVar.f24039a + " since it has not begun yet");
            return false;
        }
        com.batch.android.i.a aVar2 = bVar.f24043f;
        if (aVar2 != null && aVar2.compareTo(aVarA) < 0) {
            t.c(l, "Ignoring campaign " + bVar.f24039a + " since it is past its end_date");
            return false;
        }
        try {
            if (a(bVar, false)) {
                t.c(l, "Campaign " + bVar.f24039a + " is over capping/minimum display interval.");
                return false;
            }
            Integer num = bVar.f24041c;
            if (num != null && num.intValue() > 0 && a0.f23069k > bVar.f24041c.intValue()) {
                t.c(l, "Campaign " + bVar.f24039a + " is over max API level");
                return false;
            }
            Integer num2 = bVar.f24040b;
            if (num2 != null && a0.f23069k < num2.intValue()) {
                t.c(l, "Campaign " + bVar.f24039a + " has a minimum API level too high");
                return false;
            }
            if (bVar.n == null || !c(bVar)) {
                return true;
            }
            t.c(l, "Campaign " + bVar.f24039a + " is within quiet hours");
            return false;
        } catch (f unused) {
            t.c(l, "View tracker is unavailable. Campaign " + bVar.f24039a + " will be prevented from displaying.");
            return false;
        }
    }

    public boolean c(com.batch.android.t.b bVar) {
        if (bVar.n == null) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(this.f23997a.a().a()));
        com.batch.android.t.a aVarA = com.batch.android.t.a.a(calendar);
        if (bVar.n.f() != null && bVar.n.f().contains(aVarA)) {
            return true;
        }
        int i2 = (calendar.get(11) * 60) + calendar.get(12);
        int iJ = bVar.n.j() + (bVar.n.i() * 60);
        int iH = bVar.n.h() + (bVar.n.g() * 60);
        if (iJ > iH) {
            return i2 >= iJ || i2 < iH;
        }
        return i2 >= iJ && i2 < iH;
    }

    public List<com.batch.android.t.b> d() {
        return new ArrayList(this.d);
    }

    public void e(Context context) {
        try {
            JSONObject jSONObjectC = this.f23999c.c(context, m);
            if (jSONObjectC == null) {
                return;
            }
            Long lReallyOptLong = jSONObjectC.reallyOptLong("cache_date", null);
            if (lReallyOptLong != null && lReallyOptLong.longValue() + o <= this.f23997a.a().a()) {
                t.c(l, "Local campaign cache is too old, deleting it.");
                b(context);
                return;
            }
            com.batch.android.h1.c cVar = new com.batch.android.h1.c(jSONObjectC);
            synchronized (this.g) {
                try {
                    this.f24001f = cVar.e();
                    this.f24000e = cVar.d();
                    a(cVar.a(this.f24001f == com.batch.android.g1.c.EnumC0054c.CEP), false);
                } catch (Exception e2) {
                    t.c(l, "Can't convert json to LocalCampaignsResponse : " + e2);
                }
            }
        } catch (com.batch.android.v.c | IOException e3) {
            t.c(l, "Can't load saved local campaigns", e3);
        }
    }

    public com.batch.android.g1.c.b f() {
        com.batch.android.g1.c.b bVar;
        synchronized (this.g) {
            bVar = this.f24000e;
        }
        return bVar;
    }

    public Map<String, com.batch.android.t.b.C0074b> g() {
        Map<String, com.batch.android.t.b.C0074b> map;
        synchronized (this.f24005k) {
            map = this.f24005k;
        }
        return map;
    }

    public e h() {
        return this.f23998b;
    }

    public synchronized boolean i() {
        return this.f23997a.a().a() >= this.f24002h;
    }

    public boolean j() {
        com.batch.android.g1.c.b bVar = this.f24000e;
        if (bVar == null) {
            return false;
        }
        if (bVar.a() != null && this.f23998b.f() >= this.f24000e.a().intValue()) {
            t.c(l, "Session capping has been reached");
            return true;
        }
        List<com.batch.android.g1.c.b.a> listB = this.f24000e.b();
        if (listB != null) {
            for (com.batch.android.g1.c.b.a aVar : listB) {
                if (aVar.a() != null && aVar.b() != null) {
                    try {
                        if (this.f23998b.a(this.f23997a.a().a() - ((long) (aVar.a().intValue() * 1000))) >= aVar.b().intValue()) {
                            t.c(l, "Time-based cappings have been reached");
                            return true;
                        }
                    } catch (f unused) {
                        t.c(l, "View tracker is unavailable. Campaigns will be prevented from displaying.");
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public void k() {
        Context contextC;
        if (this.f23998b == null || (contextC = z.a().c()) == null || this.f23998b.e()) {
            return;
        }
        this.f23998b.a(contextC);
    }

    public void m() {
        a(q);
    }

    /* JADX INFO: renamed from: com.batch.android.s.a$a, reason: collision with other inner class name */
    public class C0071a implements com.batch.android.n1.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ b f24006a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f24007b;

        public C0071a(b bVar, List list) {
            this.f24006a = bVar;
            this.f24007b = list;
        }

        @Override // com.batch.android.n1.d
        public void a(List<String> list) {
            a.this.m();
            if (list.isEmpty()) {
                this.f24006a.a(null);
                return;
            }
            a.this.a(this.f24007b, list, true);
            boolean zIsEmpty = this.f24007b.isEmpty();
            b bVar = this.f24006a;
            if (zIsEmpty) {
                bVar.a(null);
            } else {
                bVar.a((com.batch.android.t.b) this.f24007b.get(0));
            }
        }

        @Override // com.batch.android.n1.d
        public void a(o0.d dVar) {
            if (dVar != null) {
                a.this.a(dVar.c());
            }
            this.f24006a.a(null);
        }
    }

    public List<com.batch.android.t.b> c(List<com.batch.android.t.b> list) {
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        for (com.batch.android.t.b bVar : list) {
            if (i2 >= 10 || !bVar.q) {
                break;
            }
            arrayList.add(bVar);
            i2++;
        }
        return arrayList;
    }

    public void c(Context context, com.batch.android.g1.c cVar) {
        d0.a(context).execute(new b5(this, context, cVar, 26));
    }

    public boolean c(Context context) {
        try {
            return this.f23999c.a(context, m);
        } catch (com.batch.android.v.c e2) {
            t.c(l, "Can't determine if there is saved local campaigns", e2);
            return false;
        }
    }

    public void c() {
        try {
            d dVar = this.f23998b;
            if (dVar == null || !dVar.e()) {
                return;
            }
            this.f23998b.a();
        } catch (Exception e2) {
            t.c(l, "Error while closing DB", e2);
        }
    }

    public com.batch.android.g1.c.EnumC0054c e() {
        com.batch.android.g1.c.EnumC0054c enumC0054c;
        synchronized (this.g) {
            enumC0054c = this.f24001f;
        }
        return enumC0054c;
    }

    public void a(com.batch.android.g1.c cVar) {
        synchronized (this.g) {
            this.f24001f = cVar.g();
            this.f24000e = cVar.e();
            a(cVar.c(), true);
        }
    }

    public void a(Context context, boolean z) throws com.batch.android.v.c {
        synchronized (this.g) {
            try {
                this.d.clear();
                this.f24004j.clear();
                this.f24003i.set(false);
                if (z) {
                    this.f23999c.b(context, m);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public List<com.batch.android.t.b> a(com.batch.android.x.d dVar) {
        ArrayList arrayList;
        synchronized (this.g) {
            try {
                arrayList = new ArrayList();
                for (com.batch.android.t.b bVar : this.d) {
                    for (com.batch.android.t.b.c cVar : bVar.f24047k) {
                        if (cVar != null && dVar.a(cVar)) {
                            if (!b(bVar)) {
                                break;
                            }
                            arrayList.add(bVar);
                            break;
                        }
                    }
                }
                Collections.sort(arrayList, Collections.reverseOrder(new x5(17)));
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(com.batch.android.t.b bVar, com.batch.android.t.b bVar2) {
        int i2 = bVar.d;
        int i3 = bVar2.d;
        if (i2 < i3) {
            return -1;
        }
        return i2 == i3 ? 0 : 1;
    }

    public void a(List<com.batch.android.t.b> list, b bVar) {
        if (list.isEmpty()) {
            bVar.a(null);
        } else if (!i()) {
            bVar.a(null);
        } else {
            m.a(z.a(), list, this.f24001f, new C0071a(bVar, list));
        }
    }

    public com.batch.android.t.b b(List<com.batch.android.t.b> list) {
        for (com.batch.android.t.b bVar : list) {
            if (!bVar.q) {
                return bVar;
            }
        }
        return null;
    }

    public void a(List<com.batch.android.t.b> list, List<String> list2, boolean z) {
        synchronized (this.f24005k) {
            try {
                Iterator<com.batch.android.t.b> it = list.iterator();
                long jA = this.f23997a.a().a();
                while (it.hasNext()) {
                    com.batch.android.t.b next = it.next();
                    if (next.q) {
                        boolean zContains = list2.contains(next.f24039a);
                        if (!zContains && z) {
                            it.remove();
                        }
                        this.f24005k.put(next.f24039a, new com.batch.android.t.b.C0074b(jA, zContains));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b() {
        synchronized (this.f24005k) {
            this.f24005k.clear();
        }
    }

    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void a(Context context, com.batch.android.g1.c cVar) {
        try {
            com.batch.android.i1.a aVar = new com.batch.android.i1.a();
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("campaigns_version", cVar.g());
            jSONObject.put("campaigns", aVar.a(cVar.d()));
            jSONObject.putOpt("cappings", aVar.a(cVar.e()));
            jSONObject.putOpt("cache_date", Long.valueOf(this.f23997a.a().a()));
            this.f23999c.a(context, jSONObject, m);
        } catch (JSONException e2) {
            t.c(l, "Can't serialize local campaigns response before the save operation", e2);
        } catch (com.batch.android.v.c e3) {
            t.c(l, "Can't persist local campaigns response", e3);
        }
    }

    public com.batch.android.t.b.C0074b.a a(com.batch.android.t.b bVar) {
        synchronized (this.f24005k) {
            try {
                if (!bVar.q) {
                    return com.batch.android.t.b.C0074b.a.ELIGIBLE;
                }
                if (!this.f24005k.containsKey(bVar.f24039a)) {
                    return com.batch.android.t.b.C0074b.a.REQUIRES_SYNC;
                }
                com.batch.android.t.b.C0074b c0074b = this.f24005k.get(bVar.f24039a);
                if (c0074b == null) {
                    return com.batch.android.t.b.C0074b.a.REQUIRES_SYNC;
                }
                if (this.f23997a.a().a() >= c0074b.f24049a + 30000) {
                    return com.batch.android.t.b.C0074b.a.REQUIRES_SYNC;
                }
                return c0074b.f24050b ? com.batch.android.t.b.C0074b.a.ELIGIBLE : com.batch.android.t.b.C0074b.a.NOT_ELIGIBLE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void b(Context context) {
        d0.a(context).execute(new w21(this, context, 22));
    }

    public boolean a(String str) {
        return this.f24004j.contains(str.toUpperCase(Locale.US));
    }

    public List<com.batch.android.t.b> a(List<com.batch.android.t.b> list) {
        com.batch.android.i.a aVarA = this.f23997a.a();
        ArrayList arrayList = new ArrayList();
        for (com.batch.android.t.b bVar : list) {
            com.batch.android.i.a aVar = bVar.f24043f;
            if (aVar != null && aVar.compareTo(aVarA) < 0) {
                t.c(l, "Ignoring campaign " + bVar.f24039a + " since it is past its end_date");
            } else {
                try {
                    if (a(bVar, true)) {
                        t.c(l, "Campaign " + bVar.f24039a + " is over capping.");
                    } else {
                        Integer num = bVar.f24041c;
                        if (num != null && num.intValue() > 0 && a0.f23069k > bVar.f24041c.intValue()) {
                            t.c(l, "Campaign " + bVar.f24039a + " is over max API level");
                        } else {
                            arrayList.add(bVar);
                        }
                    }
                } catch (f unused) {
                    t.c(l, "View tracker is unavailable, campaign " + bVar.f24039a + " capping can't be evaluated.");
                }
            }
        }
        return arrayList;
    }

    public boolean a(com.batch.android.t.b bVar, boolean z) throws f {
        e.a aVarB;
        if (this.f24001f == com.batch.android.g1.c.EnumC0054c.CEP) {
            Context contextC = z.a().c();
            if (contextC == null) {
                return false;
            }
            aVarB = this.f23998b.a(bVar.f24039a, f0.a().b(contextC));
        } else {
            aVarB = this.f23998b.b(bVar.f24039a);
        }
        Integer num = bVar.f24044h;
        if (num != null && num.intValue() > 0 && aVarB.f24030c >= bVar.f24044h.intValue()) {
            return true;
        }
        if (!z && bVar.g > 0) {
            if (this.f23997a.a().a() <= TimeUnit.SECONDS.toMillis(bVar.g) + aVarB.d) {
                t.c(l, "Campaign's minimum display interval has not been reached");
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void d(Context context) {
        try {
            this.f23999c.b(context, m);
        } catch (com.batch.android.v.c e2) {
            t.c(l, "Can't delete local campaigns", e2);
        }
    }

    public boolean a() {
        return this.f24003i.get();
    }

    public void a(int i2) {
        this.f24002h = this.f23997a.a().a() + (i2 <= 0 ? 60000L : i2);
    }
}
