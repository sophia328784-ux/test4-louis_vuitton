package com.perfectcorp.perfectlib.makeupcam.video;

import android.os.HandlerThread;
import com.perfectcorp.perfectlib.makeupcam.video.a.RunnableC0132a;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Uninterruptibles;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.perfectcorp.perfectlib.makeupcam.video.a f41049a = new com.perfectcorp.perfectlib.makeupcam.video.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f41050b = a.f41055e;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public com.perfectcorp.perfectlib.makeupcam.video.a.d f41051c;

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a f41052a = new a("START", 0);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f41053b = new a("PAUSE", 1);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final a f41054c = new a("RESUME", 2);
        public static final a d = new a("STOP", 3);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final a f41055e = new a("UNKNOWN", 4);
    }

    public d(File file) {
    }

    public final void a() {
        a aVar;
        a aVar2 = this.f41050b;
        if (aVar2 != a.d) {
            if (aVar2 != a.f41052a && aVar2 != (aVar = a.f41054c)) {
                if (aVar2 == a.f41053b) {
                    this.f41050b = aVar;
                    this.f41049a.j();
                    return;
                }
                return;
            }
            this.f41050b = a.f41053b;
            com.perfectcorp.perfectlib.makeupcam.video.a aVar3 = this.f41049a;
            synchronized (aVar3.A) {
                aVar3.A.set(1);
                aVar3.x.set(System.nanoTime() / 1000);
            }
            return;
        }
        this.f41050b = a.f41052a;
        com.perfectcorp.perfectlib.makeupcam.video.a aVar4 = this.f41049a;
        com.perfectcorp.perfectlib.makeupcam.video.a.d dVar = this.f41051c;
        synchronized (aVar4.A) {
            try {
                if (aVar4.A.get() == 2) {
                    aVar4.C = dVar;
                    aVar4.q = aVar4.new RunnableC0132a(dVar, aVar4.E);
                    Thread thread = new Thread(aVar4.q, "AudioEncoding");
                    aVar4.r = thread;
                    thread.start();
                    HandlerThread handlerThread = new HandlerThread("Recording");
                    aVar4.s = handlerThread;
                    handlerThread.start();
                    aVar4.p = new com.perfectcorp.perfectlib.makeupcam.video.a.i(aVar4, aVar4.s.getLooper(), null, aVar4.D, aVar4.E);
                    int i2 = dVar.d;
                    int i3 = dVar.f41011e;
                    aVar4.A.set(0);
                    aVar4.e(new b(aVar4, i2, i3));
                } else if (aVar4.A.get() == 1) {
                    aVar4.j();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b() {
        this.f41050b = a.d;
        com.perfectcorp.perfectlib.makeupcam.video.a aVar = this.f41049a;
        synchronized (aVar.A) {
            try {
                if (aVar.A.get() != 2) {
                    aVar.A.set(2);
                    if (aVar.r != null) {
                        aVar.F = true;
                        Uninterruptibles.b(aVar.r);
                    }
                    aVar.F = false;
                    com.perfectcorp.perfectlib.makeupcam.video.a.i iVar = aVar.p;
                    if (iVar != null) {
                        com.perfectcorp.perfectlib.makeupcam.video.a.j jVar = iVar.f41017a;
                        jVar.sendMessage(jVar.obtainMessage(3, null));
                        com.perfectcorp.perfectlib.makeupcam.video.a.j jVar2 = aVar.p.f41017a;
                        jVar2.sendMessage(jVar2.obtainMessage(2));
                    }
                    HandlerThread handlerThread = aVar.s;
                    if (handlerThread != null) {
                        Uninterruptibles.b(handlerThread);
                        aVar.s = null;
                    }
                    com.perfectcorp.perfectlib.makeupcam.video.a.l[] lVarArr = aVar.B;
                    if (lVarArr != null) {
                        for (com.perfectcorp.perfectlib.makeupcam.video.a.l lVar : lVarArr) {
                            if (lVar != null) {
                                lVar.a();
                            }
                        }
                    }
                    aVar.v.set(-1L);
                    aVar.w.set(0L);
                    aVar.z.set(0L);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
