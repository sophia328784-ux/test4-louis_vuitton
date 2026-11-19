package com.google.android.gms.internal.measurement;

import androidx.collection.SimpleArrayMap;
import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes2.dex */
final class zzwk extends zzwl {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final zzwl f31037e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final zzwl f31038f;

    static {
        zzwl zzwlVarB = new zzwk(null, new SimpleArrayMap(0)).b();
        f31037e = zzwlVarB;
        zzwk zzwkVar = new zzwk(zzwlVarB, new SimpleArrayMap());
        boolean z = !zzwkVar.f31041c;
        Boolean bool = Boolean.TRUE;
        Preconditions.p("Can't mutate after handing to trace", z);
        Preconditions.p("Key already present", !zzwkVar.c());
        zzwkVar.f31040b.put(zzwl.d, bool);
        f31038f = zzwkVar.b();
    }
}
