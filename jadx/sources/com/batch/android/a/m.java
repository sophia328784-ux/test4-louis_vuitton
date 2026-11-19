package com.batch.android.a;

import android.content.Context;
import com.batch.android.BatchPushRegistration;
import com.batch.android.e.l0;
import com.batch.android.e.t;
import com.batch.android.n.d0;
import com.batch.android.n.q;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f22870a = "WebserviceLauncher";

    public static boolean a(com.batch.android.j1.e eVar, List<com.batch.android.t.b> list, com.batch.android.g1.c.EnumC0054c enumC0054c, com.batch.android.n1.d dVar) {
        if (eVar == null || eVar.c() == null) {
            t.c(f22870a, "Error while initializing Local Campaigns JIT WS: context is null.");
            return false;
        }
        try {
            d0.a(eVar.c()).a(new g(eVar.c(), dVar, new com.batch.android.b1.c(list, enumC0054c), enumC0054c, new String[0]));
            return true;
        } catch (Exception e2) {
            t.c(f22870a, "Error while initializing Local Campaigns JIT WS", e2);
            return false;
        }
    }

    public static l0 a(com.batch.android.j1.e eVar, List<com.batch.android.o.b> list, com.batch.android.n1.i iVar) {
        try {
            return new l(eVar.c(), iVar, list, false);
        } catch (Exception e2) {
            t.c(f22870a, "Error while initializing TW", e2);
            return null;
        }
    }

    public static l0 a(Context context, List<com.batch.android.o.b> list, com.batch.android.n1.i iVar) {
        try {
            return new l(context, iVar, list, true);
        } catch (Exception e2) {
            t.c(f22870a, "Error while initializing TW", e2);
            return null;
        }
    }

    public static l0 a(Context context, com.batch.android.b1.e eVar, com.batch.android.n1.f fVar) {
        try {
            return new i(context, fVar, eVar, new String[0]);
        } catch (Exception e2) {
            t.c(f22870a, "Error while initializing metrics webservice", e2);
            return null;
        }
    }

    public static boolean a(com.batch.android.j1.e eVar, BatchPushRegistration batchPushRegistration) {
        try {
            d0.a(eVar.c()).a(new j(eVar.c(), batchPushRegistration, new com.batch.android.o1.d()));
            return true;
        } catch (Exception e2) {
            t.c(f22870a, "Error while initializing PW", e2);
            return false;
        }
    }

    public static boolean a(com.batch.android.j1.e eVar, long j2, Map<String, Object> map, Map<String, Set<String>> map2) {
        try {
            d0.a(eVar.c()).a(new b(eVar.c(), j2, map, map2, new com.batch.android.o1.b()));
            return true;
        } catch (Exception e2) {
            t.c(f22870a, "Error while initializing ATS WS", e2);
            return false;
        }
    }

    public static boolean a(com.batch.android.j1.e eVar, long j2, String str) {
        try {
            d0.a(eVar.c()).a(new a(eVar.c(), j2, str, new com.batch.android.o1.a()));
            return true;
        } catch (Exception e2) {
            t.c(f22870a, "Error while initializing ATC WS", e2);
            return false;
        }
    }

    public static boolean a(com.batch.android.j1.e eVar) {
        try {
            d0.a(eVar.c()).a(new h(eVar.c(), q.a()));
            return true;
        } catch (Exception e2) {
            t.c(f22870a, "Error while initializing LC WS", e2);
            return false;
        }
    }

    public static boolean a(com.batch.android.j1.e eVar, boolean z, String str, boolean z2) {
        try {
            d0.a(eVar.c()).a(new k(eVar.c(), z, str, z2, new com.batch.android.o1.e()));
            return true;
        } catch (Exception e2) {
            t.c(f22870a, "Error while initializing SW", e2);
            return false;
        }
    }
}
