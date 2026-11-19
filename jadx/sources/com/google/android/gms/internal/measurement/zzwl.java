package com.google.android.gms.internal.measurement;

import androidx.collection.SimpleArrayMap;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzwl {
    public static final zzwj d = new zzwj();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzwl f31039a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SimpleArrayMap f31040b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f31041c = false;

    public /* synthetic */ zzwl(zzwl zzwlVar, SimpleArrayMap simpleArrayMap) {
        if (zzwlVar != null) {
            Preconditions.g(zzwlVar.f31041c);
        }
        this.f31039a = zzwlVar;
        this.f31040b = simpleArrayMap;
    }

    public static zzwl a(zzwl zzwlVar, zzwl zzwlVar2) {
        zzwlVar.getClass();
        zzwl zzwlVar3 = zzwk.f31037e;
        if (zzwlVar == zzwlVar3) {
            return zzwlVar2;
        }
        zzwlVar2.getClass();
        if (zzwlVar2 == zzwlVar3) {
            return zzwlVar;
        }
        ImmutableSet<zzwl> immutableSetR = ImmutableSet.r(2, zzwlVar, zzwlVar2);
        if (immutableSetR.isEmpty()) {
            return zzwlVar3;
        }
        if (immutableSetR.size() == 1) {
            return (zzwl) immutableSetR.iterator().next();
        }
        int i2 = 0;
        for (zzwl zzwlVar4 : immutableSetR) {
            do {
                i2 += zzwlVar4.f31040b.d;
                zzwlVar4 = zzwlVar4.f31039a;
            } while (zzwlVar4 != null);
        }
        if (i2 == 0) {
            return zzwk.f31037e;
        }
        SimpleArrayMap simpleArrayMap = new SimpleArrayMap(i2);
        for (zzwl zzwlVar5 : immutableSetR) {
            do {
                int i3 = 0;
                while (true) {
                    SimpleArrayMap simpleArrayMap2 = zzwlVar5.f31040b;
                    if (i3 >= simpleArrayMap2.d) {
                        break;
                    }
                    Preconditions.e(simpleArrayMap2.g(i3), "Duplicate bindings: %s", simpleArrayMap.put((zzwj) simpleArrayMap2.g(i3), simpleArrayMap2.k(i3)) == null);
                    i3++;
                }
                zzwlVar5 = zzwlVar5.f31039a;
            } while (zzwlVar5 != null);
        }
        return new zzwk(null, simpleArrayMap).b();
    }

    public final zzwl b() {
        if (this.f31041c) {
            md.k("Already frozen");
            return null;
        }
        this.f31041c = true;
        zzwl zzwlVar = this.f31039a;
        return (zzwlVar == null || !this.f31040b.isEmpty()) ? this : zzwlVar;
    }

    public final boolean c() {
        if (this.f31040b.containsKey(d)) {
            return true;
        }
        zzwl zzwlVar = this.f31039a;
        return zzwlVar != null && zzwlVar.c();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("SpanExtras<");
        for (zzwl zzwlVar = this; zzwlVar != null; zzwlVar = zzwlVar.f31039a) {
            for (int i2 = 0; i2 < zzwlVar.f31040b.d; i2++) {
                sb.append("[");
                sb.append(this.f31040b.k(i2));
                sb.append("], ");
            }
        }
        sb.append(">");
        return sb.toString();
    }
}
