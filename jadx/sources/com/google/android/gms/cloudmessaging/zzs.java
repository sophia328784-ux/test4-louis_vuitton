package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.tr;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f28938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TaskCompletionSource f28939b = new TaskCompletionSource();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28940c;
    public final Bundle d;

    public zzs(int i2, int i3, Bundle bundle) {
        this.f28938a = i2;
        this.f28940c = i3;
        this.d = bundle;
    }

    public abstract boolean a();

    public abstract void b(Bundle bundle);

    public final void c(Bundle bundle) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            new StringBuilder(toString().length() + 16 + String.valueOf(bundle).length());
        }
        this.f28939b.b(bundle);
    }

    public final void d(zzt zztVar) {
        if (Log.isLoggable("MessengerIpcClient", 3)) {
            new StringBuilder(toString().length() + 14 + zztVar.toString().length());
        }
        this.f28939b.a(zztVar);
    }

    public final String toString() {
        int i2 = this.f28940c;
        int length = String.valueOf(i2).length();
        int i3 = this.f28938a;
        int length2 = String.valueOf(i3).length();
        boolean zA = a();
        StringBuilder sb = new StringBuilder(length + 19 + length2 + 8 + String.valueOf(zA).length() + 1);
        tr.w(i2, i3, "Request { what=", " id=", sb);
        sb.append(" oneWay=");
        sb.append(zA);
        sb.append("}");
        return sb.toString();
    }
}
