package com.google.android.gms.internal.measurement;

import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.AsyncCallable;
import defpackage.d21;
import defpackage.tr;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes2.dex */
final class zzvk extends AbstractFuture {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public zzvm f31005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f31006c;

    public zzvk(zzvm zzvmVar, int i2) {
        this.f31005b = zzvmVar;
        this.f31006c = i2;
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final void afterDone() {
        AtomicLong atomicLong;
        long j2;
        int i2;
        int i3;
        boolean z;
        zzvm zzvmVar = this.f31005b;
        this.f31005b = null;
        if (zzvmVar == null) {
            return;
        }
        AtomicReference atomicReference = zzvmVar.f31010c;
        do {
            atomicLong = zzvmVar.f31009b;
            j2 = atomicLong.get();
            i2 = (int) j2;
            long j3 = j2 >>> 32;
            if (i2 == Integer.MIN_VALUE) {
                StringBuilder sb = new StringBuilder(String.valueOf(j2).length() + 13);
                sb.append("Refcount is: ");
                sb.append(j2);
                throw new AssertionError(sb.toString());
            }
            i3 = (int) j3;
            z = i2 == -2147483647;
            if (z) {
                i3++;
            }
        } while (!atomicLong.compareAndSet(j2, (((long) i3) << 32) | (BodyPartID.bodyIdMax & ((long) (i2 - 1)))));
        if (z) {
            while (true) {
                zzvl zzvlVar = (zzvl) atomicReference.get();
                if (zzvlVar != null) {
                    if (zzvlVar.f31007b <= this.f31006c) {
                        zzvlVar.cancel(true);
                        while (!atomicReference.compareAndSet(zzvlVar, null)) {
                            if (atomicReference.get() != zzvlVar) {
                            }
                        }
                        return;
                    }
                    return;
                }
                return;
            }
        }
    }

    @Override // com.google.common.util.concurrent.AbstractFuture
    public final String pendingToString() {
        AsyncCallable asyncCallableZza;
        zzvm zzvmVar = this.f31005b;
        if (zzvmVar == null || (asyncCallableZza = zzvmVar.f31008a.zza()) == null) {
            return null;
        }
        String string = asyncCallableZza.toString();
        String strP = d21.p(new StringBuilder(string.length() + 11), "callable=[", string, "]");
        zzvl zzvlVar = (zzvl) this.f31005b.f31010c.get();
        if (zzvlVar == null) {
            return strP;
        }
        int length = strP.length();
        String string2 = zzvlVar.toString();
        return tr.l(new StringBuilder(string2.length() + length + 9 + 1), strP, ", trial=[", string2, "]");
    }
}
