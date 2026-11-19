package com.google.android.gms.common.api.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.Looper;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.internal.common.zzg;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
final class zzc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f29133a = Collections.synchronizedMap(new ArrayMap());

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f29134b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Bundle f29135c;

    public final void a(zaab zaabVar) {
        Map map = this.f29133a;
        if (map.containsKey("ConnectionlessLifecycleHelper")) {
            StringBuilder sb = new StringBuilder("ConnectionlessLifecycleHelper".length() + 59);
            sb.append("LifecycleCallback with tag ConnectionlessLifecycleHelper already added to this fragment.");
            throw new IllegalArgumentException(sb.toString());
        }
        map.put("ConnectionlessLifecycleHelper", zaabVar);
        if (this.f29134b > 0) {
            new zzg(Looper.getMainLooper()).post(new zzb(this, zaabVar, "ConnectionlessLifecycleHelper"));
        }
    }

    public final void b(Bundle bundle) {
        this.f29134b = 1;
        this.f29135c = bundle;
        for (Map.Entry entry : this.f29133a.entrySet()) {
            ((LifecycleCallback) entry.getValue()).b(bundle != null ? bundle.getBundle((String) entry.getKey()) : null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x008c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x000a A[SYNTHETIC] */
    public final void c(int i2, int i3, Intent intent) {
        Iterator it = this.f29133a.values().iterator();
        while (it.hasNext()) {
            zap zapVar = (zap) ((LifecycleCallback) it.next());
            AtomicReference atomicReference = zapVar.d;
            AtomicReference atomicReference2 = zapVar.d;
            zam zamVar = (zam) atomicReference.get();
            if (i2 != 1) {
                if (i2 == 2) {
                    int iB = zapVar.f29125f.b(zapVar.a(), GoogleApiAvailabilityLight.f28963a);
                    if (iB == 0) {
                        atomicReference2.set(null);
                        com.google.android.gms.internal.base.zao zaoVar = ((zaab) zapVar).f29069h.o;
                        zaoVar.sendMessage(zaoVar.obtainMessage(3));
                    } else if (zamVar == null || (zamVar.f29120b.f28953c == 18 && iB == 18)) {
                    }
                }
                if (zamVar != null) {
                    zapVar.d(zamVar.f29120b, zamVar.f29119a);
                }
            } else if (i3 == -1) {
                atomicReference2.set(null);
                com.google.android.gms.internal.base.zao zaoVar2 = ((zaab) zapVar).f29069h.o;
                zaoVar2.sendMessage(zaoVar2.obtainMessage(3));
            } else if (i3 == 0) {
                if (zamVar != null) {
                    zapVar.d(new ConnectionResult(intent != null ? intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13) : 13, null, zamVar.f29120b.toString()), zamVar.f29119a);
                }
            } else if (zamVar != null) {
                zapVar.d(zamVar.f29120b, zamVar.f29119a);
            }
        }
    }

    public final void d(Bundle bundle) {
        if (bundle == null) {
            return;
        }
        for (Map.Entry entry : this.f29133a.entrySet()) {
            Bundle bundle2 = new Bundle();
            zam zamVar = (zam) ((zap) ((LifecycleCallback) entry.getValue())).d.get();
            if (zamVar != null) {
                ConnectionResult connectionResult = zamVar.f29120b;
                bundle2.putBoolean("resolving_error", true);
                bundle2.putInt("failed_client_id", zamVar.f29119a);
                bundle2.putInt("failed_status", connectionResult.f28953c);
                bundle2.putParcelable("failed_resolution", connectionResult.d);
            }
            bundle.putBundle((String) entry.getKey(), bundle2);
        }
    }
}
