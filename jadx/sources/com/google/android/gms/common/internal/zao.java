package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.api.Api;

/* JADX INFO: loaded from: classes2.dex */
public final class zao {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseIntArray f29232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GoogleApiAvailabilityLight f29233b;

    public zao(GoogleApiAvailabilityLight googleApiAvailabilityLight) {
        this.f29232a = new SparseIntArray();
        Preconditions.h(googleApiAvailabilityLight);
        this.f29233b = googleApiAvailabilityLight;
    }

    public final int a(Context context, Api.Client client) {
        int i2;
        Preconditions.h(context);
        Preconditions.h(client);
        int iB = 0;
        if (!client.e()) {
            return 0;
        }
        int iL = client.l();
        SparseIntArray sparseIntArray = this.f29232a;
        synchronized (sparseIntArray) {
            i2 = sparseIntArray.get(iL, -1);
        }
        if (i2 != -1) {
            return i2;
        }
        SparseIntArray sparseIntArray2 = this.f29232a;
        synchronized (sparseIntArray2) {
            int i3 = 0;
            while (true) {
                try {
                    if (i3 >= sparseIntArray2.size()) {
                        iB = -1;
                        break;
                    }
                    int iKeyAt = sparseIntArray2.keyAt(i3);
                    if (iKeyAt > iL && sparseIntArray2.get(iKeyAt) == 0) {
                        break;
                    }
                    i3++;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (iB == -1) {
                iB = this.f29233b.b(context, iL);
            }
            sparseIntArray2.put(iL, iB);
        }
        return iB;
    }

    public zao() {
        this(GoogleApiAvailability.f28961e);
    }
}
