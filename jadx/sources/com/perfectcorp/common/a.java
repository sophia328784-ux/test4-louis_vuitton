package com.perfectcorp.common;

import android.util.Log;
import com.perfectcorp.thirdparty.com.getkeepsafe.relinker.c;
import defpackage.pq0;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f39157a;

    /* JADX INFO: renamed from: com.perfectcorp.common.a$a, reason: collision with other inner class name */
    public static class C0117a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f39158a = new a();
    }

    public a() {
        c cVar = new c();
        Iterator it = PfCommonsJni.f39156a.iterator();
        while (it.hasNext()) {
            b(cVar, (String) it.next(), 5);
        }
        this.f39157a = b(cVar, "perfect", 6);
    }

    public static void a() {
        if (!C0117a.f39158a.f39157a) {
            throw new UnsatisfiedLinkError("Could not load the native engine libraries.");
        }
    }

    public static boolean b(c cVar, String str, int i2) {
        try {
            cVar.a(PfCommons.b(), str);
            return true;
        } catch (Throwable th) {
            StringBuilder sbR = pq0.r("Could not load lib", str, "\n");
            sbR.append(Log.getStackTraceString(th));
            com.perfectcorp.common.utility.Log.g(i2, "JNILoader", sbR.toString());
            return false;
        }
    }
}
