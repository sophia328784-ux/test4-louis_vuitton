package com.google.android.gms.vision.clearcut;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.clearcut.ClearcutLogger;
import com.google.android.gms.clearcut.ClearcutLogger.LogEventBuilder;
import com.google.android.gms.internal.vision.zzfe;
import com.google.android.gms.internal.vision.zzfi$zzo;
import com.google.android.gms.internal.vision.zzio;
import com.google.android.gms.vision.L;

/* JADX INFO: loaded from: classes2.dex */
public class VisionClearcutLogger {
    private final ClearcutLogger zza;
    private boolean zzb = true;

    public VisionClearcutLogger(Context context) {
        this.zza = new ClearcutLogger(context, "VISION", null);
    }

    public final void zza(int i2, zzfi$zzo zzfi_zzo) {
        byte[] bArrG = zzfi_zzo.g();
        if (i2 < 0 || i2 > 3) {
            Object[] objArr = {Integer.valueOf(i2)};
            if (Log.isLoggable("Vision", 4)) {
                String.format("Illegal event code: %d", objArr);
                return;
            }
            return;
        }
        try {
            if (this.zzb) {
                ClearcutLogger clearcutLogger = this.zza;
                clearcutLogger.getClass();
                ClearcutLogger.LogEventBuilder logEventBuilder = clearcutLogger.new LogEventBuilder(bArrG);
                logEventBuilder.f28888e.f29768f = i2;
                logEventBuilder.a();
                return;
            }
            zzfi$zzo.zza zzaVarO = zzfi$zzo.o();
            try {
                zzaVarO.f(bArrG, bArrG.length, zzio.c());
                Log.isLoggable("Vision", 6);
            } catch (Exception e2) {
                L.a(e2, "Parsing error", new Object[0]);
            }
        } catch (Exception e3) {
            zzfe.a(e3);
            L.a(e3, "Failed to log", new Object[0]);
        }
    }
}
