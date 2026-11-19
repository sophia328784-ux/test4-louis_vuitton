package com.google.android.gms.internal.measurement;

import com.google.common.collect.Iterables;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzst implements zzrt {
    public static final InputStream b(zzrs zzrsVar) throws IOException {
        InputStream inputStreamA = zzrsVar.f30880a.a(zzrsVar.d);
        ArrayList arrayList = new ArrayList();
        arrayList.add(inputStreamA);
        ArrayList arrayList2 = zzrsVar.f30882c;
        if (!arrayList2.isEmpty()) {
            int i2 = zzrp.f30872c;
            ArrayList arrayList3 = new ArrayList();
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                zzsz zzszVarD0 = ((zztb) it.next()).d0();
                if (zzszVarD0 != null) {
                    arrayList3.add(zzszVarD0);
                }
            }
            zzrp zzrpVar = !arrayList3.isEmpty() ? new zzrp(inputStreamA, arrayList3) : null;
            if (zzrpVar != null) {
                arrayList.add(zzrpVar);
            }
        }
        Iterator<E> it2 = zzrsVar.f30881b.iterator();
        if (it2.hasNext()) {
            ((zztc) it2.next()).a((InputStream) Iterables.b(arrayList));
            throw null;
        }
        Collections.reverse(arrayList);
        return (InputStream) arrayList.get(0);
    }

    @Override // com.google.android.gms.internal.measurement.zzrt
    public final /* bridge */ /* synthetic */ Object a(zzrs zzrsVar) {
        return b(zzrsVar);
    }
}
