package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.GoogleApiManager;
import com.google.android.gms.common.logging.Logger;
import defpackage.x1;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zbm {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Logger f28844a = new Logger("GoogleSignInCommon", new String[0]);

    public static void a(Context context) {
        zbn.a(context).b();
        Set set = GoogleApiClient.f29001a;
        synchronized (set) {
        }
        Iterator it = set.iterator();
        if (!it.hasNext()) {
            GoogleApiManager.a();
        } else {
            ((GoogleApiClient) it.next()).getClass();
            x1.i();
        }
    }
}
