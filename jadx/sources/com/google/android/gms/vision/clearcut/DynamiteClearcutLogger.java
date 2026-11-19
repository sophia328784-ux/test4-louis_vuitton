package com.google.android.gms.vision.clearcut;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.internal.vision.zze;
import com.google.android.gms.internal.vision.zzfi$zzo;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
public class DynamiteClearcutLogger {
    private static final ExecutorService zza = zze.f31161a.d0();
    private zzb zzb = new zzb(0.03333333333333333d);
    private VisionClearcutLogger zzc;

    public DynamiteClearcutLogger(Context context) {
        this.zzc = new VisionClearcutLogger(context);
    }

    public final void zza(int i2, zzfi$zzo zzfi_zzo) {
        if (i2 == 3) {
            zzb zzbVar = this.zzb;
            synchronized (zzbVar.f32182b) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (zzbVar.f32183c + zzbVar.f32181a > jCurrentTimeMillis) {
                    Log.isLoggable("Vision", 2);
                    return;
                }
                zzbVar.f32183c = jCurrentTimeMillis;
            }
        }
        zza.execute(new zza(this, i2, zzfi_zzo));
    }
}
