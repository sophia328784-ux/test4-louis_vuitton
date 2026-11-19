package com.google.android.gms.internal.vision;

import java.io.PrintStream;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzfe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final zzfd f31162a;

    public static final class zza extends zzfd {
        @Override // com.google.android.gms.internal.vision.zzfd
        public final void a(Exception exc) {
            exc.printStackTrace();
        }
    }

    static {
        zzfd zzaVar;
        Integer num = null;
        try {
            try {
                num = (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Exception e2) {
                System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
                e2.printStackTrace(System.err);
            }
            if (num == null || num.intValue() < 19) {
                zzaVar = !Boolean.getBoolean("com.google.devtools.build.android.desugar.runtime.twr_disable_mimic") ? new zzfh() : new zza();
            } else {
                zzaVar = new zzfj();
            }
        } catch (Throwable th) {
            PrintStream printStream = System.err;
            String name = zza.class.getName();
            StringBuilder sb = new StringBuilder(name.length() + 133);
            sb.append("An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy ");
            sb.append(name);
            sb.append("will be used. The error is: ");
            printStream.println(sb.toString());
            th.printStackTrace(System.err);
            zzaVar = new zza();
        }
        f31162a = zzaVar;
    }

    public static void a(Exception exc) {
        f31162a.a(exc);
    }
}
