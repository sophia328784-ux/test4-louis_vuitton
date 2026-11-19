package com.google.android.gms.internal.measurement;

import defpackage.md;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zzaft implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f30460b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f30461c;
    public Iterator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzafv f30462e;

    public /* synthetic */ zzaft(zzafv zzafvVar) {
        Objects.requireNonNull(zzafvVar);
        this.f30462e = zzafvVar;
        this.f30460b = -1;
    }

    public final Iterator a() {
        if (this.d == null) {
            this.d = this.f30462e.d.entrySet().iterator();
        }
        return this.d;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i2 = this.f30460b + 1;
        zzafv zzafvVar = this.f30462e;
        if (i2 >= zzafvVar.f30465c) {
            return !zzafvVar.d.isEmpty() && a().hasNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        this.f30461c = true;
        int i2 = this.f30460b + 1;
        this.f30460b = i2;
        zzafv zzafvVar = this.f30462e;
        return i2 < zzafvVar.f30465c ? (zzafs) zzafvVar.f30464b[i2] : (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f30461c) {
            md.k("remove() was called before next()");
            return;
        }
        this.f30461c = false;
        zzafv zzafvVar = this.f30462e;
        zzafvVar.g();
        int i2 = this.f30460b;
        if (i2 >= zzafvVar.f30465c) {
            a().remove();
        } else {
            this.f30460b = i2 - 1;
            zzafvVar.e(i2);
        }
    }
}
