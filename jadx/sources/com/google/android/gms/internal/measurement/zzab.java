package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public zzaa f30327a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public zzaa f30328b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f30329c;

    public zzab() {
        this.f30327a = new zzaa("", 0L, null);
        this.f30328b = new zzaa("", 0L, null);
        this.f30329c = new ArrayList();
    }

    public final /* bridge */ /* synthetic */ Object clone() {
        zzab zzabVar = new zzab(this.f30327a.clone());
        Iterator it = this.f30329c.iterator();
        while (it.hasNext()) {
            zzabVar.f30329c.add(((zzaa) it.next()).clone());
        }
        return zzabVar;
    }

    public zzab(zzaa zzaaVar) {
        this.f30327a = zzaaVar;
        this.f30328b = zzaaVar.clone();
        this.f30329c = new ArrayList();
    }
}
