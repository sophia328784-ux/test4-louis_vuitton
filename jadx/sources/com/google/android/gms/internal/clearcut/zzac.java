package com.google.android.gms.internal.clearcut;

import android.database.ContentObserver;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzac extends ContentObserver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzab f29631a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzac(zzab zzabVar) {
        super(null);
        this.f29631a = zzabVar;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        zzab zzabVar = this.f29631a;
        synchronized (zzabVar.d) {
            zzabVar.f29629e = null;
        }
        zzab zzabVar2 = this.f29631a;
        synchronized (zzabVar2.f29630f) {
            try {
                Iterator it = zzabVar2.g.iterator();
                while (it.hasNext()) {
                    ((zzad) it.next()).a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
