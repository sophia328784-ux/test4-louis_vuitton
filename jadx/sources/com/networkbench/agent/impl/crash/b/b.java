package com.networkbench.agent.impl.crash.b;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.harvest.type.HarvestableArray;
import com.networkbench.agent.impl.util.r;
import com.networkbench.com.google.gson.JsonArray;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.LinkedBlockingDeque;

/* JADX INFO: loaded from: classes2.dex */
public class b extends HarvestableArray {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final e f36631a = f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LinkedBlockingDeque<a> f36632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f36633c;
    private int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f36634e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f36635f;

    public b() {
        int iAa = r.u().aa();
        this.f36634e = iAa;
        if (iAa < 0) {
            return;
        }
        this.f36635f = r.u().F;
        if (this.f36634e == 0) {
            this.f36634e = 999;
        }
        this.f36632b = new LinkedBlockingDeque<>(this.f36634e + this.f36635f);
    }

    private boolean c(String str) {
        return str != null && str.contains(r.y);
    }

    public synchronized boolean a(String str) {
        try {
            boolean z = false;
            if (this.f36632b == null) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            int size = this.f36632b.size();
            if (c(str)) {
                for (int i2 = 0; i2 < size; i2++) {
                    a aVarPollFirst = this.f36632b.pollFirst();
                    String strB = aVarPollFirst.b();
                    if (c(strB)) {
                        f36631a.a("Remove Earliest BreadCrumb Element :" + strB);
                        z = true;
                        break;
                    }
                    arrayList.add(aVarPollFirst);
                }
            } else {
                for (int i3 = 0; i3 < size; i3++) {
                    a aVarPollFirst2 = this.f36632b.pollFirst();
                    String strB2 = aVarPollFirst2.b();
                    if (!c(aVarPollFirst2.b())) {
                        f36631a.a("Remove Earliest Trails Element :" + strB2);
                        z = true;
                        break;
                    }
                    arrayList.add(aVarPollFirst2);
                }
            }
            if (arrayList.size() > 0) {
                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                    this.f36632b.offerFirst((a) arrayList.get(size2));
                }
            }
            return z;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.networkbench.agent.impl.harvest.type.HarvestableArray, com.networkbench.agent.impl.harvest.type.BaseHarvestable, com.networkbench.agent.impl.harvest.type.Harvestable
    public synchronized JsonArray asJsonArray() {
        JsonArray jsonArray = new JsonArray();
        LinkedBlockingDeque<a> linkedBlockingDeque = this.f36632b;
        if (linkedBlockingDeque == null) {
            return jsonArray;
        }
        Iterator<a> it = linkedBlockingDeque.iterator();
        while (it.hasNext()) {
            jsonArray.add(it.next().asJson());
        }
        return jsonArray;
    }

    public synchronized boolean b(String str) {
        try {
            boolean z = false;
            if (this.f36632b == null) {
                return false;
            }
            ArrayList arrayList = new ArrayList();
            int size = this.f36632b.size();
            if (c(str)) {
                for (int i2 = 0; i2 < size; i2++) {
                    a aVarPollLast = this.f36632b.pollLast();
                    if (c(aVarPollLast.b())) {
                        z = true;
                        break;
                    }
                    arrayList.add(aVarPollLast);
                }
            } else {
                for (int i3 = 0; i3 < size; i3++) {
                    a aVarPollLast2 = this.f36632b.pollLast();
                    if (!c(aVarPollLast2.b())) {
                        z = true;
                        break;
                    }
                    arrayList.add(aVarPollLast2);
                }
            }
            if (arrayList.size() > 0) {
                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                    this.f36632b.offerLast((a) arrayList.get(size2));
                }
            }
            return z;
        } catch (Throwable th) {
            throw th;
        }
    }

    public void b() {
        LinkedBlockingDeque<a> linkedBlockingDeque = this.f36632b;
        if (linkedBlockingDeque != null) {
            linkedBlockingDeque.clear();
        }
    }

    public synchronized void a(a aVar) {
        if (aVar != null) {
            try {
                if (this.f36632b != null) {
                    String strB = aVar.b();
                    if (c(strB)) {
                        if (this.f36633c < this.f36635f) {
                            this.f36632b.offer(aVar);
                            this.f36633c++;
                        } else {
                            f36631a.a("The length of BreadCrumbs is greater than " + this.f36633c + ",remove the earliest one!");
                            a(strB);
                            this.f36632b.offer(aVar);
                        }
                    } else if (this.d < this.f36634e) {
                        this.f36632b.offer(aVar);
                        this.d++;
                    } else {
                        f36631a.a("The length of Trails is greater than " + this.d + ",remove the earliest one!");
                        a(strB);
                        this.f36632b.offer(aVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized a a() {
        LinkedBlockingDeque<a> linkedBlockingDeque = this.f36632b;
        if (linkedBlockingDeque == null) {
            return null;
        }
        return linkedBlockingDeque.peekLast();
    }
}
