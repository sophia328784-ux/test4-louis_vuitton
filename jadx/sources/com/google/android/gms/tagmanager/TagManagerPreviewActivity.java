package com.google.android.gms.tagmanager;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.measurement.AppMeasurement;

/* JADX INFO: loaded from: classes2.dex */
public class TagManagerPreviewActivity extends Activity {
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent().getData() == null) {
            return;
        }
        Intent intent = getIntent();
        zzt zztVarC = zze.c(this);
        synchronized (zze.class) {
            try {
                try {
                    zztVarC.previewIntent(intent, new ObjectWrapper(this), new ObjectWrapper(zze.f32081a.f29395a), new zzc(AppMeasurement.getInstance(this)), new zzd());
                } catch (RemoteException e2) {
                    throw new IllegalStateException(e2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
