package com.google.android.gms.internal.measurement;

import android.os.Trace;
import java.util.concurrent.atomic.AtomicReference;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes2.dex */
abstract class zzwr {
    public static void a(zzws zzwsVar) {
        if (zzwsVar.d0() == Thread.currentThread() && zzwsVar.e0() != null) {
            a(zzwsVar.e0());
            c(zzwsVar);
        } else {
            Trace.beginSection(zzwsVar.g0());
            c(zzwsVar);
        }
    }

    public static void b(zzws zzwsVar) {
        if (zzwsVar.d0() == Thread.currentThread() && zzwsVar.e0() != null) {
            Trace.endSection();
            b(zzwsVar.e0());
        } else {
            Trace.endSection();
            Trace.endSection();
        }
    }

    public static void c(zzws zzwsVar) {
        String strH0 = zzwsVar.h0();
        AtomicReference atomicReference = zzvy.f31026a;
        if (strH0.length() > 127) {
            strH0 = strH0.substring(0, CertificateBody.profileType);
        }
        Trace.beginSection(strH0);
    }
}
