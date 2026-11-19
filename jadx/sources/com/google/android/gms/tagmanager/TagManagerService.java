package com.google.android.gms.tagmanager;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.measurement.AppMeasurement;
import defpackage.x1;

/* JADX INFO: loaded from: classes2.dex */
public class TagManagerService extends Service {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f32076b = 0;

    public static void initialize(Context context) {
        zzt zztVarC = zze.c(context);
        synchronized (zze.class) {
            try {
                try {
                    zztVarC.initialize(new ObjectWrapper(context), new zzc(AppMeasurement.getInstance(context)), new zzd());
                } catch (RemoteException e2) {
                    throw new IllegalStateException(e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        try {
            try {
                return zzv.asInterface(zze.b(this).b("com.google.android.gms.tagmanager.TagManagerServiceProviderImpl")).getService(new ObjectWrapper(this), new zzc(AppMeasurement.getInstance(this)), new zzd()).asBinder();
            } catch (RemoteException e2) {
                throw new IllegalStateException(e2);
            }
        } catch (DynamiteModule.LoadingException e3) {
            x1.m(e3);
            return null;
        }
    }
}
