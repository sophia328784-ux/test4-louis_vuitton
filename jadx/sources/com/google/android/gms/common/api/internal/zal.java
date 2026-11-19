package com.google.android.gms.common.api.internal;

import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.AvailabilityException;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zal {
    public int d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayMap f29116b = new ArrayMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TaskCompletionSource f29117c = new TaskCompletionSource();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f29118e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayMap f29115a = new ArrayMap();

    public zal(Iterable iterable) {
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            this.f29115a.put(((HasApiKey) it.next()).d(), null);
        }
        this.d = this.f29115a.d;
    }

    public final void a(ApiKey apiKey, ConnectionResult connectionResult, String str) {
        ArrayMap arrayMap = this.f29115a;
        arrayMap.put(apiKey, connectionResult);
        ArrayMap arrayMap2 = this.f29116b;
        arrayMap2.put(apiKey, str);
        this.d--;
        if (!connectionResult.W1()) {
            this.f29118e = true;
        }
        if (this.d == 0) {
            boolean z = this.f29118e;
            TaskCompletionSource taskCompletionSource = this.f29117c;
            if (z) {
                taskCompletionSource.a(new AvailabilityException(arrayMap));
            } else {
                taskCompletionSource.b(arrayMap2);
            }
        }
    }
}
