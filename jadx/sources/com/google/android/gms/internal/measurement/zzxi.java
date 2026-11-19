package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzyi;
import com.networkbench.nbslens.nbsnativecrashlib.n;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzxi<API extends zzyi<API>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzzf f31064a;

    public zzxi(zzzf zzzfVar) {
        this.f31064a = zzzfVar;
    }

    public static void a(String str, zzxz zzxzVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(new SimpleDateFormat(n.g).format(new Date(zzxzVar.f31080b / 1000000)));
        sb.append(": logging error [");
        zzze.a(1, zzxzVar.c(), sb);
        sb.append("]: ");
        sb.append(str);
        System.err.println(sb);
        System.err.flush();
    }
}
