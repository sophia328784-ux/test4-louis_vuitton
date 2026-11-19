package com.networkbench.agent.impl.plugin.traceroute;

import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.util.y;
import defpackage.z81;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class TraceRoute {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static e f38136a = f.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private StringBuilder f38137b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f38138c;

    static {
        try {
            System.loadLibrary("nbstraceroute");
        } catch (UnsatisfiedLinkError e2) {
            f38136a.a("load traceroute so UnsatisfiedLinkError", e2);
        } catch (Throwable th) {
            f38136a.a("load traceroute so Exception", th);
        }
    }

    public b a(ArrayList<String> arrayList) {
        StringBuilder sb;
        b bVar = new b();
        f38136a.a("begin execute by so file");
        try {
            bVar.f38142b = execute(arrayList.toArray());
        } catch (Throwable th) {
            f38136a.a("error invoke execute", th);
        }
        int i2 = bVar.f38142b;
        if (i2 != 0 || (sb = this.f38137b) == null) {
            bVar.f38143c = "execute traceroute failed.";
            this.f38138c.a(i2, "execute traceroute failed.");
        } else {
            bVar.f38143c = sb.toString();
            this.f38138c.a(bVar);
        }
        return bVar;
    }

    public void appendResult(String str) {
        if (this.f38137b == null) {
            this.f38137b = new StringBuilder();
        }
        this.f38137b.append(str);
        a aVar = this.f38138c;
        if (aVar != null) {
            aVar.a(str);
        }
    }

    public void clearResult() {
        this.f38137b = null;
    }

    public native int execute(Object[] objArr);

    public b a(String str, Boolean bool) {
        final ArrayList<String> arrayList = new ArrayList<>();
        arrayList.add("traceroute");
        arrayList.add(str);
        if (bool.booleanValue()) {
            com.networkbench.agent.impl.util.c.a.a().a(new y() { // from class: com.networkbench.agent.impl.plugin.traceroute.TraceRoute.1
                @Override // com.networkbench.agent.impl.util.y
                public void tryCatchRun() {
                    try {
                        TraceRoute.this.a(arrayList);
                    } catch (Throwable th) {
                        z81.k(new StringBuilder("TraceRouteResult   has an error : "), th);
                    }
                }
            });
            return null;
        }
        return a(arrayList);
    }

    public void a(a aVar) {
        this.f38138c = aVar;
    }
}
