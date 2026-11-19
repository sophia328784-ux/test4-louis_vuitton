package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.os.Binder;
import com.google.android.gms.common.util.UidVerifier;
import defpackage.n00;

/* JADX INFO: loaded from: classes2.dex */
public final class zbt extends zbo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f28847a;

    public zbt(Context context) {
        this.f28847a = context;
    }

    public final void F2() {
        if (!UidVerifier.a(Binder.getCallingUid(), this.f28847a)) {
            throw new SecurityException(n00.m(Binder.getCallingUid(), "Calling UID ", " is not Google Play services."));
        }
    }
}
