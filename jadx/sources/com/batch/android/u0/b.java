package com.batch.android.u0;

import com.batch.android.n.u;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b<Child> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final String f24071a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected String f24072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected List<Float> f24073c;
    protected List<String> d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected List<String> f24074e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected ConcurrentMap<List<String>, Child> f24075f = new ConcurrentHashMap();

    public interface a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final String f24076a = "counter";

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final String f24077b = "observation";
    }

    public b(String str) {
        this.f24071a = str;
    }

    public abstract Child a(List<String> list);

    public void a(com.batch.android.x0.b bVar) throws Exception {
        HashMap map = new HashMap();
        map.put("name", this.f24071a);
        map.put("type", this.f24072b);
        map.put("values", this.f24073c);
        List<String> list = this.d;
        if (list != null && this.f24074e != null && list.size() == this.f24074e.size()) {
            HashMap map2 = new HashMap();
            for (int i2 = 0; i2 < this.d.size(); i2++) {
                map2.put(this.d.get(i2), this.f24074e.get(i2));
            }
            map.put("labels", map2);
        }
        com.batch.android.w0.a.a(bVar, (Object) map);
    }

    public Child b(String... strArr) {
        Child child = this.f24075f.get(Arrays.asList(strArr));
        if (child != null) {
            return child;
        }
        List<String> listAsList = Arrays.asList(strArr);
        Child childA = a(listAsList);
        this.f24075f.put(listAsList, childA);
        return childA;
    }

    public List<String> c() {
        return this.f24074e;
    }

    public String d() {
        return this.f24071a;
    }

    public String e() {
        return this.f24072b;
    }

    public List<Float> f() {
        return this.f24073c;
    }

    public boolean g() {
        return this.f24073c.size() > 0;
    }

    public boolean h() {
        return this.f24075f.size() > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Child i() {
        u.a().a((b<?>) this);
        return this;
    }

    public abstract void j();

    public void k() {
        u.a().d();
    }

    public List<String> b() {
        return this.d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Child a(String... strArr) {
        this.d = Arrays.asList(strArr);
        return this;
    }

    public ConcurrentMap<List<String>, Child> a() {
        return this.f24075f;
    }
}
