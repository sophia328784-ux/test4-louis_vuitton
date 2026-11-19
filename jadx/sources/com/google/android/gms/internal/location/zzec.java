package com.google.android.gms.internal.location;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ConnectionCallbacks;
import com.google.android.gms.common.api.internal.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;

/* JADX INFO: loaded from: classes2.dex */
public final class zzec extends GmsClient {
    public final SimpleArrayMap D;
    public final SimpleArrayMap E;
    public final SimpleArrayMap F;

    public zzec(Context context, Looper looper, ClientSettings clientSettings, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 23, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.D = new SimpleArrayMap();
        this.E = new SimpleArrayMap();
        this.F = new SimpleArrayMap();
        new SimpleArrayMap();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final boolean A() {
        return true;
    }

    public final boolean D(Feature feature) {
        Feature feature2;
        Feature[] featureArrM = m();
        if (featureArrM != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= featureArrM.length) {
                    feature2 = null;
                    break;
                }
                feature2 = featureArrM[i2];
                if (feature.f28958b.equals(feature2.f28958b)) {
                    break;
                }
                i2++;
            }
            if (feature2 != null && feature2.W1() >= feature.W1()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int l() {
        return 11717000;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final IInterface p(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        return iInterfaceQueryLocalInterface instanceof zzu ? (zzu) iInterfaceQueryLocalInterface : new zzt(iBinder, "com.google.android.gms.location.internal.IGoogleLocationManagerService");
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Feature[] r() {
        return com.google.android.gms.location.zzn.f31404c;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String w() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String x() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final void z() {
        System.currentTimeMillis();
        SimpleArrayMap simpleArrayMap = this.D;
        synchronized (simpleArrayMap) {
            simpleArrayMap.clear();
        }
        SimpleArrayMap simpleArrayMap2 = this.E;
        synchronized (simpleArrayMap2) {
            simpleArrayMap2.clear();
        }
        SimpleArrayMap simpleArrayMap3 = this.F;
        synchronized (simpleArrayMap3) {
            simpleArrayMap3.clear();
        }
    }
}
