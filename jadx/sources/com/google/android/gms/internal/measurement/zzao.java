package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public interface zzao {
    public static final zzat k0 = new zzat();
    public static final zzam l0 = new zzam();
    public static final zzag m0 = new zzag("continue");
    public static final zzag n0 = new zzag("break");
    public static final zzag o0 = new zzag("return");
    public static final zzaf p0 = new zzaf(Boolean.TRUE);
    public static final zzaf q0 = new zzaf(Boolean.FALSE);
    public static final zzas r0 = new zzas("");

    Iterator I();

    zzao Q();

    String f0();

    Double g0();

    zzao h(String str, zzg zzgVar, ArrayList arrayList);

    Boolean h0();
}
