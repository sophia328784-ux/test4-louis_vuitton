package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;

/* JADX INFO: loaded from: classes2.dex */
public final class zbn {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static zbn f28845b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Storage f28846a;

    public zbn(Context context) {
        String strE;
        Storage storageA = Storage.a(context);
        this.f28846a = storageA;
        storageA.b();
        String strE2 = storageA.e("defaultGoogleSignInAccount");
        if (TextUtils.isEmpty(strE2) || (strE = storageA.e(Storage.f("googleSignInOptions", strE2))) == null) {
            return;
        }
        try {
            GoogleSignInOptions.W1(strE);
        } catch (JSONException unused) {
        }
    }

    public static synchronized zbn a(Context context) {
        zbn zbnVar;
        Context applicationContext = context.getApplicationContext();
        synchronized (zbn.class) {
            zbnVar = f28845b;
            if (zbnVar == null) {
                zbnVar = new zbn(applicationContext);
                f28845b = zbnVar;
            }
        }
        return zbnVar;
        return zbnVar;
    }

    public final synchronized void b() {
        Storage storage = this.f28846a;
        ReentrantLock reentrantLock = storage.f28838a;
        reentrantLock.lock();
        try {
            storage.f28839b.edit().clear().apply();
            reentrantLock.unlock();
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }
}
