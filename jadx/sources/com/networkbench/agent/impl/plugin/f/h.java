package com.networkbench.agent.impl.plugin.f;

import android.text.TextUtils;
import com.networkbench.agent.impl.plugin.k;
import com.networkbench.agent.impl.util.r;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f38055a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static boolean f38056b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f38057c = false;
    public static boolean d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static boolean f38058e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static boolean f38059f = false;
    public static boolean g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Map<String, Boolean> f38060h = new ConcurrentHashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Map<String, e> f38061i = new ConcurrentHashMap();

    /* JADX WARN: Code duplicated, block: B:50:0x00f8  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static synchronized void a(i iVar) {
        com.networkbench.agent.impl.plugin.h kVar;
        try {
            for (com.networkbench.agent.impl.data.c.d dVar : com.networkbench.agent.impl.data.c.a.a().c()) {
                if (dVar.f36847b.equals(iVar.f38064e.name())) {
                    com.networkbench.agent.impl.c.g.e("registerObserver : " + dVar.toString());
                    String str = dVar.f36848c;
                    switch (str.hashCode()) {
                        case -1546464044:
                            if (str.equals("tailLog")) {
                                kVar = new k(iVar, dVar);
                            } else {
                                kVar = null;
                            }
                            break;
                        case -1483547405:
                            if (str.equals("tcpPing")) {
                                kVar = new com.networkbench.agent.impl.plugin.g.a(iVar, dVar);
                            } else {
                                kVar = null;
                            }
                            break;
                        case -744059407:
                            if (str.equals("allCellInfo")) {
                                kVar = new com.networkbench.agent.impl.plugin.a.b(iVar, dVar);
                                r.u().n(true);
                            } else {
                                kVar = null;
                            }
                            break;
                        case -9845937:
                            if (str.equals("ICMPPing")) {
                                kVar = new com.networkbench.agent.impl.plugin.e.c(iVar, dVar);
                            } else {
                                kVar = null;
                            }
                            break;
                        case 76580:
                            if (str.equals("Log")) {
                                kVar = new com.networkbench.agent.impl.plugin.c.d(iVar, dVar);
                            } else {
                                kVar = null;
                            }
                            break;
                        case 76683:
                            if (str.equals("MTR")) {
                                kVar = new com.networkbench.agent.impl.plugin.d.b(iVar, dVar);
                            } else {
                                kVar = null;
                            }
                            break;
                        case 99625:
                            if (str.equals("dns")) {
                                kVar = new com.networkbench.agent.impl.plugin.b(iVar, dVar);
                            } else {
                                kVar = null;
                            }
                            break;
                        case 107332:
                            if (str.equals("log")) {
                                kVar = new com.networkbench.agent.impl.plugin.c.d(iVar, dVar);
                            } else {
                                kVar = null;
                            }
                            break;
                        case 108459:
                            if (str.equals("mtr")) {
                                kVar = new com.networkbench.agent.impl.plugin.d.b(iVar, dVar);
                            } else {
                                kVar = null;
                            }
                            break;
                        case 1149719823:
                            if (str.equals("requestHead")) {
                                kVar = new com.networkbench.agent.impl.plugin.i(iVar, dVar);
                            } else {
                                kVar = null;
                            }
                            break;
                        case 1427818632:
                            if (str.equals("download")) {
                                kVar = new com.networkbench.agent.impl.plugin.b.a(iVar, dVar);
                            } else {
                                kVar = null;
                            }
                            break;
                        case 1438862785:
                            if (str.equals("responseHead")) {
                                kVar = new com.networkbench.agent.impl.plugin.j(iVar, dVar);
                            } else {
                                kVar = null;
                            }
                            break;
                        default:
                            kVar = null;
                            break;
                    }
                    if (kVar != null) {
                        com.networkbench.agent.impl.c.g.e(" isClientConditionAvalid :" + kVar.f() + " ----, getIsUsed() : " + dVar.b());
                        if (!kVar.f()) {
                            continue;
                        } else {
                            if (!kVar.a(iVar)) {
                                com.networkbench.agent.impl.c.g.e(" isErrCodeMapping :  code不匹配 不采集...");
                                return;
                            }
                            if (!dVar.a()) {
                                if (r.p == 0) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append("taskId 包含....");
                                    Map<String, e> map = f38061i;
                                    sb.append(map.size());
                                    com.networkbench.agent.impl.c.g.e(sb.toString());
                                    if (map.containsKey(dVar.f36846a)) {
                                        com.networkbench.agent.impl.c.g.e("taskId 包含...." + map.size());
                                        e eVar = map.get(dVar.f36846a);
                                        com.networkbench.agent.impl.c.g.e("taskId 包含....");
                                        if (eVar.f38054b) {
                                            com.networkbench.agent.impl.c.g.e("taskId 对应的任务还在运行, 此次任务退出....");
                                        } else if (eVar.a(kVar)) {
                                            com.networkbench.agent.impl.c.g.e("taskId 对应的任务的间隔小于1分钟...");
                                        } else {
                                            eVar.f38053a = System.currentTimeMillis();
                                        }
                                    }
                                }
                            }
                            if (a(dVar, kVar)) {
                                if (!TextUtils.isEmpty(kVar.f38123h)) {
                                    f38060h.put(dVar.f36848c + dVar.f36847b + kVar.f38123h, Boolean.TRUE);
                                }
                                com.networkbench.agent.impl.c.g.e("sceneSubject begin registerObserver, observer:" + kVar.getClass().getName());
                                iVar.a(kVar, Boolean.valueOf(dVar.a()));
                            }
                            dVar.a(true);
                        }
                    } else {
                        continue;
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static void b() {
        com.networkbench.agent.impl.data.c.a.a().d();
        f38060h.clear();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static synchronized void a(com.networkbench.agent.impl.data.c.d dVar) {
        try {
            String str = dVar.f36847b;
            switch (str.hashCode()) {
                case -1432646770:
                    if (str.equals("on_background")) {
                        f38057c = true;
                    }
                    break;
                case -1325812763:
                    if (str.equals("on_task")) {
                        g = true;
                    }
                    break;
                case 554628996:
                    if (str.equals("after_crash")) {
                        f38059f = true;
                    }
                    break;
                case 556492261:
                    if (str.equals("after_error")) {
                        f38056b = true;
                    }
                    break;
                case 1019568386:
                    if (str.equals("after_anr")) {
                        f38058e = true;
                    }
                    break;
                case 1019580602:
                    if (str.equals("after_net")) {
                        f38055a = true;
                    }
                    break;
                case 1884004259:
                    if (str.equals("on_foreground")) {
                        d = true;
                    }
                    break;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private static boolean a(com.networkbench.agent.impl.data.c.d dVar, com.networkbench.agent.impl.plugin.h hVar) {
        if ((!(hVar instanceof com.networkbench.agent.impl.plugin.b) && !(hVar instanceof com.networkbench.agent.impl.plugin.g.a) && !(hVar instanceof com.networkbench.agent.impl.plugin.b.a)) || !dVar.a()) {
            return true;
        }
        if (!f38060h.containsKey(dVar.f36848c + dVar.f36847b + hVar.f38123h)) {
            return true;
        }
        com.networkbench.agent.impl.c.g.e("isEnterObserver .........true  ... ");
        return false;
    }

    public static void a() {
        ArrayList arrayList = new ArrayList();
        for (String str : f38061i.keySet()) {
            if (!f38061i.get(str).f38054b) {
                arrayList.add(str);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            f38061i.remove((String) it.next());
        }
    }

    public static void a(com.networkbench.agent.impl.data.c.a aVar) {
        if (r.u().ae()) {
            for (com.networkbench.agent.impl.data.c.d dVar : aVar.c()) {
                a(dVar);
                com.networkbench.agent.impl.c.g.e("setExtensionConfig  添加 taskId : " + dVar.f36846a);
                Map<String, e> map = f38061i;
                if (!map.containsKey(dVar.f36846a)) {
                    map.put(dVar.f36846a, new e(0L, false));
                    com.networkbench.agent.impl.c.g.e("setExtensionConfig  添加 新的taskId : " + dVar.f36846a);
                }
            }
            return;
        }
        com.networkbench.agent.impl.c.g.e("SceneRegisterObserver   plugin switch  is " + r.u().ae());
    }
}
