package com.networkbench.agent.impl.asyncaction.a;

import com.networkbench.agent.impl.data.d.h;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.y;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f36406a = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f36407c = "TraceDataStore";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected List<a> f36408b = new CopyOnWriteArrayList();

    public void a(final a aVar) {
        if (this.f36408b.contains(aVar)) {
            Logger.warning(f36407c, "datas contains object ,skip");
        } else {
            if (!aVar.c()) {
                com.networkbench.agent.impl.util.c.a.b().a(new y() { // from class: com.networkbench.agent.impl.asyncaction.a.b.1
                    @Override // com.networkbench.agent.impl.util.y
                    public void tryCatchRun() {
                        if (b.this.f36408b.size() >= ConfigurationName.MAX_ERROR_COUNT) {
                            Logger.warning(b.f36407c, "datas size is over flow max size, skip");
                        } else {
                            b.this.f36408b.add(aVar);
                        }
                    }
                });
                return;
            }
            Logger.warning(f36407c, "tracedata is over flow max duration, hasCode is:" + aVar.hashCode());
        }
    }

    public void b() {
        ArrayList<a> arrayList = new ArrayList();
        for (a aVar : this.f36408b) {
            if (aVar.a()) {
                arrayList.add(aVar);
            }
        }
        for (a aVar2 : arrayList) {
            if ((aVar2 instanceof h) && ((h) aVar2).p()) {
                Logger.warning(f36407c, "page data has custom end tag, but timeout, drop data hashcode is:" + aVar2.hashCode());
            } else {
                aVar2.b();
            }
        }
        this.f36408b.removeAll(arrayList);
    }

    public List<a> a() {
        return this.f36408b;
    }

    public void a(long j2, String str, boolean z) {
        Iterator<a> it = this.f36408b.iterator();
        while (it.hasNext()) {
            it.next().a(j2, str, z);
        }
    }
}
