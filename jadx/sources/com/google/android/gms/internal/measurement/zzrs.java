package com.google.android.gms.internal.measurement;

import android.net.Uri;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Iterables;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzrs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzsx f30880a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableList f30881b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f30882c;
    public final Uri d;

    public zzrs(zzrr zzrrVar) {
        this.f30880a = zzrrVar.f30876a;
        this.f30881b = zzrrVar.f30877b;
        this.f30882c = zzrrVar.f30878c;
        this.d = zzrrVar.f30879e;
    }

    public final ArrayList a(OutputStream outputStream) throws IOException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(outputStream);
        ArrayList arrayList2 = this.f30882c;
        if (!arrayList2.isEmpty()) {
            int i2 = zzrq.f30874c;
            ArrayList arrayList3 = new ArrayList();
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                zzta zztaVarE0 = ((zztb) it.next()).e0();
                if (zztaVarE0 != null) {
                    arrayList3.add(zztaVarE0);
                }
            }
            zzrq zzrqVar = !arrayList3.isEmpty() ? new zzrq(outputStream, arrayList3) : null;
            if (zzrqVar != null) {
                arrayList.add(zzrqVar);
            }
        }
        Iterator<E> it2 = this.f30881b.iterator();
        if (it2.hasNext()) {
            ((zztc) it2.next()).b((OutputStream) Iterables.b(arrayList));
            throw null;
        }
        Collections.reverse(arrayList);
        return arrayList;
    }
}
