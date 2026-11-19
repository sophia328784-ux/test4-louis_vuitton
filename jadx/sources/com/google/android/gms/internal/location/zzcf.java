package com.google.android.gms.internal.location;

import android.os.Parcelable;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
final class zzcf implements RemoteCall, zzdq {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ListenerHolder f30220b;
    public final /* synthetic */ zzcg d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f30221c = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzbv f30219a = zzbv.f30217a;

    public zzcf(zzcg zzcgVar, ListenerHolder listenerHolder) {
        this.d = zzcgVar;
        this.f30220b = listenerHolder;
    }

    @Override // com.google.android.gms.internal.location.zzdq
    public final synchronized void a(ListenerHolder listenerHolder) {
        ListenerHolder listenerHolder2 = this.f30220b;
        if (listenerHolder2 != listenerHolder) {
            listenerHolder2.f29038b = null;
            this.f30220b = listenerHolder;
        }
    }

    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        ListenerHolder.ListenerKey listenerKey;
        boolean z;
        zzec zzecVar = (zzec) obj;
        TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
        synchronized (this) {
            listenerKey = this.f30220b.f29038b;
            z = this.f30221c;
            this.f30220b.f29038b = null;
        }
        if (listenerKey == null) {
            taskCompletionSource.b(Boolean.FALSE);
            return;
        }
        this.f30219a.getClass();
        SimpleArrayMap simpleArrayMap = zzecVar.E;
        synchronized (simpleArrayMap) {
            try {
                zzdu zzduVar = (zzdu) simpleArrayMap.remove(listenerKey);
                if (zzduVar == null) {
                    taskCompletionSource.b(Boolean.FALSE);
                    return;
                }
                zzduVar.f30237b.d0().f29038b = null;
                if (!z) {
                    taskCompletionSource.b(Boolean.TRUE);
                } else if (zzecVar.D(com.google.android.gms.location.zzn.f31403b)) {
                    zzu zzuVar = (zzu) zzecVar.v();
                    Parcelable.Creator<zzed> creator = zzed.CREATOR;
                    int iIdentityHashCode = System.identityHashCode(zzduVar);
                    StringBuilder sb = new StringBuilder(String.valueOf(iIdentityHashCode).length() + 18);
                    sb.append("ILocationCallback@");
                    sb.append(iIdentityHashCode);
                    zzuVar.G1(new zzed(2, null, zzduVar, null, sb.toString()), new zzdi(Boolean.TRUE, taskCompletionSource));
                } else {
                    ((zzu) zzecVar.v()).Y1(new zzeh(2, null, null, zzduVar, null, new zzdm(taskCompletionSource), null));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.location.zzdq
    public final synchronized ListenerHolder d0() {
        return this.f30220b;
    }

    @Override // com.google.android.gms.internal.location.zzdq
    public final void f0() {
        ListenerHolder.ListenerKey listenerKey;
        synchronized (this) {
            this.f30221c = false;
            listenerKey = this.f30220b.f29038b;
        }
        if (listenerKey != null) {
            this.d.g(listenerKey, 2441);
        }
    }
}
