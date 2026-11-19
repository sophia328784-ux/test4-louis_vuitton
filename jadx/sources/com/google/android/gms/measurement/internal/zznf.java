package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;

/* JADX INFO: loaded from: classes2.dex */
public final class zznf implements ServiceConnection, BaseGmsClient.BaseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile boolean f31912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile zzgo f31913c;
    public final /* synthetic */ zznl d;

    public zznf(zznl zznlVar) {
        this.d = zznlVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void a() {
        zzhz zzhzVar = this.d.f31850a.g;
        zzic.m(zzhzVar);
        zzhzVar.l();
        synchronized (this) {
            try {
                Preconditions.h(this.f31913c);
                zzgb zzgbVar = (zzgb) this.f31913c.v();
                zzhz zzhzVar2 = this.d.f31850a.g;
                zzic.m(zzhzVar2);
                zzhzVar2.p(new zzna(this, zzgbVar));
            } catch (DeadObjectException | IllegalStateException unused) {
                this.f31913c = null;
                this.f31912b = false;
            }
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        zznl zznlVar = this.d;
        zzhz zzhzVar = zznlVar.f31850a.g;
        zzic.m(zzhzVar);
        zzhzVar.l();
        zzgu zzguVar = zznlVar.f31850a.f31842f;
        if (zzguVar == null || !zzguVar.f31851b) {
            zzguVar = null;
        }
        if (zzguVar != null) {
            zzguVar.n.b(connectionResult, "Service connection failed");
        }
        synchronized (this) {
            this.f31912b = false;
            this.f31913c = null;
        }
        zzhz zzhzVar2 = this.d.f31850a.g;
        zzic.m(zzhzVar2);
        zzhzVar2.p(new zzne(this, connectionResult));
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i2) {
        zzic zzicVar = this.d.f31850a;
        zzhz zzhzVar = zzicVar.g;
        zzic.m(zzhzVar);
        zzhzVar.l();
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzguVar);
        zzguVar.m.a("Service connection suspended");
        zzhz zzhzVar2 = zzicVar.g;
        zzic.m(zzhzVar2);
        zzhzVar2.p(new zznb(this));
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzhz zzhzVar = this.d.f31850a.g;
        zzic.m(zzhzVar);
        zzhzVar.l();
        synchronized (this) {
            if (iBinder == null) {
                this.f31912b = false;
                zzgu zzguVar = this.d.f31850a.f31842f;
                zzic.m(zzguVar);
                zzguVar.f31769f.a("Service connected with null binder");
                return;
            }
            zzgb zzfzVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
                    zzfzVar = iInterfaceQueryLocalInterface instanceof zzgb ? (zzgb) iInterfaceQueryLocalInterface : new zzfz(iBinder);
                    zzgu zzguVar2 = this.d.f31850a.f31842f;
                    zzic.m(zzguVar2);
                    zzguVar2.n.a("Bound to IMeasurementService interface");
                } else {
                    zzgu zzguVar3 = this.d.f31850a.f31842f;
                    zzic.m(zzguVar3);
                    zzguVar3.f31769f.b(interfaceDescriptor, "Got binder with a wrong descriptor");
                }
            } catch (RemoteException unused) {
                zzgu zzguVar4 = this.d.f31850a.f31842f;
                zzic.m(zzguVar4);
                zzguVar4.f31769f.a("Service connect failed to get IMeasurementService");
            }
            if (zzfzVar == null) {
                this.f31912b = false;
                try {
                    ConnectionTracker connectionTrackerB = ConnectionTracker.b();
                    zznl zznlVar = this.d;
                    connectionTrackerB.c(zznlVar.f31850a.f31838a, zznlVar.f31914c);
                } catch (IllegalArgumentException unused2) {
                }
            } else {
                zzhz zzhzVar2 = this.d.f31850a.g;
                zzic.m(zzhzVar2);
                zzhzVar2.p(new zzmy(this, zzfzVar));
            }
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        zzic zzicVar = this.d.f31850a;
        zzhz zzhzVar = zzicVar.g;
        zzic.m(zzhzVar);
        zzhzVar.l();
        zzgu zzguVar = zzicVar.f31842f;
        zzic.m(zzguVar);
        zzguVar.m.a("Service disconnected");
        zzhz zzhzVar2 = zzicVar.g;
        zzic.m(zzhzVar2);
        zzhzVar2.p(new zzmz(this, componentName));
    }
}
