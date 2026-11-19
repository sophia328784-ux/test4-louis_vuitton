package com.google.android.gms.internal.fido;

import defpackage.pq0;
import java.io.IOException;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes2.dex */
final class zzht {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayDeque f29921a = new ArrayDeque(16);

    public final void a() throws IOException {
        ArrayDeque arrayDeque = this.f29921a;
        if (arrayDeque.isEmpty()) {
            return;
        }
        throw new IOException("data item not completed, stackSize: " + arrayDeque.size() + " scope: " + c());
    }

    public final void b(long j2) throws IOException {
        long jC = c();
        if (jC != j2) {
            if (jC != -1) {
                if (jC != -2) {
                    return;
                } else {
                    jC = -2;
                }
            }
            StringBuilder sbQ = pq0.q(j2, "expected non-string scope or scope ", " but found ");
            sbQ.append(jC);
            throw new IOException(sbQ.toString());
        }
    }

    public final long c() {
        ArrayDeque arrayDeque = this.f29921a;
        if (arrayDeque.isEmpty()) {
            return 0L;
        }
        return ((Long) arrayDeque.peek()).longValue();
    }
}
