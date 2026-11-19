package com.batch.android.c1;

import com.batch.android.BatchEmailSubscriptionState;
import com.batch.android.BatchSMSSubscriptionState;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f23019a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private BatchEmailSubscriptionState f23020b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f23021c;
    private BatchSMSSubscriptionState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private c f23022e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c f23023f;
    private final Map<String, com.batch.android.l1.d> g = new HashMap();

    public void a(String str, List<String> list) {
        com.batch.android.l1.d dVar = this.g.get(str);
        if (dVar != null) {
            Object obj = dVar.f23672a;
            if (obj instanceof List) {
                ((ArrayList) obj).addAll(list);
                return;
            }
        }
        if (dVar != null) {
            Object obj2 = dVar.f23672a;
            if (obj2 instanceof d) {
                ((d) obj2).a(list);
                return;
            }
        }
        if (dVar != null && dVar.f23672a == null) {
            this.g.put(str, new com.batch.android.l1.d(list, com.batch.android.l1.a.STRING_ARRAY));
        } else {
            this.g.put(str, new com.batch.android.l1.d(new d(list), com.batch.android.l1.a.STRING_ARRAY));
        }
    }

    public void b(String str, List<String> list) {
        com.batch.android.l1.d dVar = this.g.get(str);
        if (dVar != null) {
            Object obj = dVar.f23672a;
            if (obj instanceof List) {
                ArrayList arrayList = (ArrayList) obj;
                arrayList.removeAll((ArrayList) list);
                if (arrayList.isEmpty()) {
                    this.g.remove(str);
                    return;
                }
                return;
            }
        }
        if (dVar != null) {
            Object obj2 = dVar.f23672a;
            if (obj2 instanceof d) {
                ((d) obj2).b(list);
                return;
            }
        }
        if (dVar == null || dVar.f23672a != null) {
            this.g.put(str, new com.batch.android.l1.d(new d(null, list), com.batch.android.l1.a.STRING_ARRAY));
        }
    }

    public void c(String str) {
        this.f23022e = new c(str);
    }

    public void d(String str) {
        this.f23021c = new c(str);
    }

    public void e(String str) {
        this.f23023f = new c(str);
    }

    public c f() {
        return this.f23023f;
    }

    public BatchSMSSubscriptionState g() {
        return this.d;
    }

    public BatchEmailSubscriptionState c() {
        return this.f23020b;
    }

    public c d() {
        return this.f23022e;
    }

    public c e() {
        return this.f23021c;
    }

    public void a(BatchSMSSubscriptionState batchSMSSubscriptionState) {
        this.d = batchSMSSubscriptionState;
    }

    public Map<String, com.batch.android.l1.d> a() {
        return this.g;
    }

    public void a(String str, com.batch.android.l1.d dVar) {
        this.g.put(str, dVar);
    }

    public void b(String str) {
        this.f23019a = new c(str);
    }

    public void a(BatchEmailSubscriptionState batchEmailSubscriptionState) {
        this.f23020b = batchEmailSubscriptionState;
    }

    public c b() {
        return this.f23019a;
    }

    public void a(String str) {
        this.g.put(str, new com.batch.android.l1.d(null, com.batch.android.l1.a.DELETED));
    }
}
