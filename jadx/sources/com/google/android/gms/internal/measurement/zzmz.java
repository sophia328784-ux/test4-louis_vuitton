package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.hash.Hasher;
import com.google.common.hash.Hashing;
import com.google.common.io.BaseEncoding;
import defpackage.tr;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public final class zzmz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final BaseEncoding f30758a = BaseEncoding.f33746a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Supplier f30759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Supplier f30760c;

    public zzmz(final zzacr zzacrVar, final String str, String str2) {
        this.f30759b = Suppliers.a(new Supplier() { // from class: com.google.android.gms.internal.measurement.zzmy
            @Override // com.google.common.base.Supplier
            public final /* synthetic */ Object get() {
                return this.f30756b.f30758a.a(zzacrVar.q());
            }
        });
        this.f30760c = Suppliers.a(new Supplier() { // from class: com.google.android.gms.internal.measurement.zzmx
            @Override // com.google.common.base.Supplier
            public final /* synthetic */ Object get() {
                Hasher hasherA = Hashing.a().a().a(str.getBytes());
                hasherA.c();
                return this.f30754b.f30758a.a(hasherA.a("".getBytes()).b().a());
            }
        });
    }

    public final File a() {
        String str = (String) this.f30759b.get();
        String str2 = (String) this.f30760c.get();
        return new File(tr.l(new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length() + 3), str, "/", str2, ".pb"));
    }
}
