package com.google.android.gms.internal.gtm;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import java.io.ByteArrayOutputStream;
import java.io.PrintStream;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes2.dex */
final class zzax extends Thread implements zzav {
    private static zzax zza;
    private final LinkedBlockingQueue zzb;
    private volatile boolean zzc;
    private volatile boolean zzd;
    private volatile zzay zze;
    private final Context zzf;
    private final Clock zzg;

    private zzax(Context context) {
        super("GAThread");
        this.zzb = new LinkedBlockingQueue();
        this.zzc = false;
        this.zzd = false;
        this.zzg = DefaultClock.f29336a;
        if (context != null) {
            this.zzf = context.getApplicationContext();
        } else {
            this.zzf = null;
        }
        start();
    }

    public static zzax zzd(Context context) {
        if (zza == null) {
            zza = new zzax(context);
        }
        return zza;
    }

    /* JADX INFO: Infinite loop detected, blocks: 16, insns: 0 */
    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (true) {
            try {
                try {
                    Runnable runnable = (Runnable) this.zzb.take();
                    if (!this.zzc) {
                        runnable.run();
                    }
                } catch (InterruptedException e2) {
                    e2.toString();
                    zzao.a(4);
                }
            } catch (Exception e3) {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                PrintStream printStream = new PrintStream(byteArrayOutputStream);
                e3.printStackTrace(printStream);
                printStream.flush();
                "Error on Google TagManager Thread: ".concat(new String(byteArrayOutputStream.toByteArray()));
                zzbg.a();
                zzbg.a();
                this.zzc = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzav
    public final void zza(Runnable runnable) {
        this.zzb.add(runnable);
    }

    @Override // com.google.android.gms.internal.gtm.zzav
    public final void zzb(String str, String str2, String str3, Map map, String str4) {
        this.zzb.add(new zzaw(this, this, this.zzg.a(), str, str2, str3, map, str4));
    }
}
