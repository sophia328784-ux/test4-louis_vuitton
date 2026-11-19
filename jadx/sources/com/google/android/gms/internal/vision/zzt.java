package com.google.android.gms.internal.vision;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.vision.L;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzt<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f31300a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f31302c;
    public final String d;
    public Object g;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f31301b = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f31303e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f31304f = false;

    public zzt(Context context, String str, String str2) {
        this.f31300a = context;
        String strValueOf = String.valueOf(str2);
        this.f31302c = strValueOf.length() != 0 ? "com.google.android.gms.vision.dynamite.".concat(strValueOf) : new String("com.google.android.gms.vision.dynamite.");
        this.d = str2;
    }

    public abstract zzl a(DynamiteModule dynamiteModule, Context context);

    public final Object b() {
        DynamiteModule dynamiteModuleC;
        synchronized (this.f31301b) {
            Object obj = this.g;
            if (obj != null) {
                return obj;
            }
            try {
                dynamiteModuleC = DynamiteModule.c(this.f31300a, DynamiteModule.f29390f, this.f31302c);
            } catch (DynamiteModule.LoadingException unused) {
                String str = "com.google.android.gms.vision." + this.d;
                Log.isLoggable("Vision", 3);
                try {
                    dynamiteModuleC = DynamiteModule.c(this.f31300a, DynamiteModule.f29387b, str);
                } catch (DynamiteModule.LoadingException e2) {
                    L.a(e2, "Error loading optional module %s", str);
                    if (!this.f31303e) {
                        Log.isLoggable("Vision", 3);
                        String str2 = this.d;
                        Intent intent = new Intent();
                        intent.setClassName("com.google.android.gms", "com.google.android.gms.vision.DependencyBroadcastReceiverProxy");
                        intent.putExtra("com.google.android.gms.vision.DEPENDENCIES", str2);
                        intent.setAction("com.google.android.gms.vision.DEPENDENCY");
                        this.f31300a.sendBroadcast(intent);
                        this.f31303e = true;
                    }
                    dynamiteModuleC = null;
                }
            }
            if (dynamiteModuleC != null) {
                try {
                    this.g = a(dynamiteModuleC, this.f31300a);
                } catch (RemoteException | DynamiteModule.LoadingException unused2) {
                }
            }
            if (!this.f31304f && this.g == null) {
                this.f31304f = true;
            }
            return this.g;
        }
    }
}
