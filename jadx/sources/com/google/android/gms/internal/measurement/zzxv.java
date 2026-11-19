package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zzxv extends zzyl {
    @Override // com.google.android.gms.internal.measurement.zzyl
    public final void a(Iterator it, zzzc zzzcVar) {
        if (it.hasNext()) {
            Object next = it.next();
            boolean zHasNext = it.hasNext();
            String str = this.f31089a;
            if (!zHasNext) {
                zzzcVar.a(next, str);
                return;
            }
            StringBuilder sb = new StringBuilder("[");
            sb.append(next);
            do {
                sb.append(',');
                sb.append(it.next());
            } while (it.hasNext());
            sb.append(']');
            zzzcVar.a(sb.toString(), str);
        }
    }
}
