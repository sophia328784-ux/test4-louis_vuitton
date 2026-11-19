package com.google.android.gms.tasks;

import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes2.dex */
final class zzr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f32111a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayDeque f32112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f32113c;

    public final void a(zzq zzqVar) {
        synchronized (this.f32111a) {
            try {
                if (this.f32112b == null) {
                    this.f32112b = new ArrayDeque();
                }
                this.f32112b.add(zzqVar);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(Task task) {
        zzq zzqVar;
        synchronized (this.f32111a) {
            if (this.f32112b != null && !this.f32113c) {
                this.f32113c = true;
                while (true) {
                    synchronized (this.f32111a) {
                        try {
                            zzqVar = (zzq) this.f32112b.poll();
                            if (zzqVar == null) {
                                this.f32113c = false;
                                return;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    zzqVar.a(task);
                }
            }
        }
    }
}
