package com.google.android.gms.internal.gtm;

import defpackage.b21;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzkp implements Iterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f30175b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzkr f30176c;

    public zzkp(zzkr zzkrVar) {
        this.f30176c = zzkrVar;
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzkm next() {
        int i2 = this.f30175b;
        ArrayList arrayList = this.f30176c.f30180b;
        if (i2 >= arrayList.size()) {
            b21.x();
            return null;
        }
        for (int i3 = this.f30175b; i3 < arrayList.size(); i3++) {
            if (arrayList.get(i3) != null) {
                this.f30175b = i3;
                int i4 = this.f30175b;
                this.f30175b = i4 + 1;
                return new zzkm(Double.valueOf(i4));
            }
        }
        b21.x();
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i2 = this.f30175b;
        while (true) {
            ArrayList arrayList = this.f30176c.f30180b;
            if (i2 >= arrayList.size()) {
                return false;
            }
            if (arrayList.get(i2) != null) {
                return true;
            }
            i2++;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
