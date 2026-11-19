package com.perfectcorp.perfectlib.ymk.clflurry;

import android.content.Context;
import com.perfectcorp.common.PfCommons;
import com.perfectcorp.common.concurrent.NamedThreadFactory;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.uma.m;
import defpackage.a8;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile boolean f41967c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile String f41968e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f41965a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final FutureTask f41966b = new FutureTask(new a8(17));
    public static final ExecutorService d = Executors.newSingleThreadExecutor(NamedThreadFactory.b("CLFlurryAgentHelper"));

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX INFO: renamed from: com.perfectcorp.perfectlib.ymk.clflurry.a$a, reason: collision with other inner class name */
    public static abstract class EnumC0197a implements m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final EnumC0197a f41969a = new d();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final EnumC0197a f41970b = new e();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0023 A[PHI: r1
      0x0023: PHI (r1v14 com.perfectcorp.perfectlib.ymk.clflurry.a$a) = (r1v7 com.perfectcorp.perfectlib.ymk.clflurry.a$a), (r1v18 com.perfectcorp.perfectlib.ymk.clflurry.a$a) binds: [B:20:0x0043, B:10:0x0021] A[DONT_GENERATE, DONT_INLINE]] */
    public static void a(Context context) {
        EnumC0197a enumC0197a;
        m mVar = m.v0;
        if (f41965a.compareAndSet(false, true)) {
            if (PfCommons.d || com.perfectcorp.perfectlib.internal.a.f40371a.countly) {
                Log.g(3, "CLFlurryAgentHelper", "[init] isDebug=true");
                if (com.perfectcorp.perfectlib.internal.a.f40371a.countly) {
                    Log.g(3, "CLFlurryAgentHelper", "[init] debug flag on, enable UMA debug");
                }
                com.perfectcorp.uma.b.d = true;
                if (com.perfectcorp.uma.b.d.f43200a == mVar) {
                    com.perfectcorp.uma.b.d.f43200a = m.u0;
                }
                enumC0197a = EnumC0197a.f41969a;
                if (enumC0197a != null) {
                    mVar = enumC0197a;
                }
            } else {
                Log.g(3, "CLFlurryAgentHelper", "[init] isDebug=false");
                enumC0197a = EnumC0197a.f41970b;
                if (enumC0197a != null) {
                    mVar = enumC0197a;
                }
            }
            com.perfectcorp.uma.b.d.f43200a = mVar;
            com.perfectcorp.uma.countly.d.f43215h.f43224a.add(new b());
            com.perfectcorp.uma.b.b(context, com.perfectcorp.perfectlib.ymk.a.f41935a.f41937b, com.perfectcorp.perfectlib.ymk.a.f41935a.f41936a);
            f41966b.run();
        }
    }

    public static boolean b() {
        return (PfCommons.d || !f41967c) && !com.perfectcorp.perfectlib.internal.a.f40371a.countly;
    }
}
