package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzaca;
import com.google.android.gms.internal.measurement.zzacb;
import defpackage.d21;
import defpackage.r81;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzacb<MessageType extends zzacb<MessageType, BuilderType>, BuilderType extends zzaca<MessageType, BuilderType>> implements zzafc {
    protected transient int zza = 0;

    public static void k(Iterable iterable, List list) {
        iterable.getClass();
        if (iterable instanceof zzaen) {
            List listD0 = ((zzaen) iterable).d0();
            zzaen zzaenVar = (zzaen) list;
            int size = list.size();
            for (Object obj : listD0) {
                if (obj == null) {
                    int size2 = zzaenVar.size() - size;
                    StringBuilder sb = new StringBuilder(String.valueOf(size2).length() + 26);
                    sb.append("Element at index ");
                    sb.append(size2);
                    sb.append(" is null.");
                    String string = sb.toString();
                    int size3 = zzaenVar.size();
                    while (true) {
                        size3--;
                        if (size3 < size) {
                            r81.d(string);
                            return;
                        }
                        zzaenVar.remove(size3);
                    }
                } else if (obj instanceof zzacr) {
                    zzaenVar.e0();
                } else if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    zzacr.o(0, bArr.length, bArr);
                    zzaenVar.e0();
                } else {
                    zzaenVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof zzafk) {
            list.addAll((Collection) iterable);
            return;
        }
        if (iterable instanceof Collection) {
            int size4 = ((Collection) iterable).size();
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size4);
            } else if (list instanceof zzafm) {
                zzafm zzafmVar = (zzafm) list;
                int i2 = zzafmVar.d + size4;
                int length = zzafmVar.f30453c.length;
                if (i2 > length) {
                    if (length != 0) {
                        while (length < i2) {
                            length = Math.max(((length * 3) / 2) + 1, 10);
                        }
                        zzafmVar.f30453c = Arrays.copyOf(zzafmVar.f30453c, length);
                    } else {
                        zzafmVar.f30453c = new Object[Math.max(i2, 10)];
                    }
                }
            }
        }
        int size5 = list.size();
        if (!(iterable instanceof List) || !(iterable instanceof RandomAccess)) {
            for (Object obj2 : iterable) {
                if (obj2 == null) {
                    zzaca.i(size5, list);
                    throw null;
                }
                list.add(obj2);
            }
            return;
        }
        List list2 = (List) iterable;
        int size6 = list2.size();
        for (int i3 = 0; i3 < size6; i3++) {
            Object obj3 = list2.get(i3);
            if (obj3 == null) {
                zzaca.i(size5, list);
                throw null;
            }
            list.add(obj3);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzafc
    public final void d(OutputStream outputStream) {
        zzadu zzaduVar = (zzadu) this;
        int iE = zzaduVar.e();
        boolean z = zzada.f30392b;
        if (iE > 4096) {
            iE = 4096;
        }
        zzacz zzaczVar = new zzacz(outputStream, iE);
        zzaduVar.f(zzaczVar);
        if (zzaczVar.f30388e > 0) {
            zzaczVar.G();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzafc
    public final zzacr g() {
        try {
            zzadu zzaduVar = (zzadu) this;
            int iE = zzaduVar.e();
            zzacr zzacrVar = zzacr.f30367c;
            byte[] bArr = new byte[iE];
            boolean z = zzada.f30392b;
            zzacx zzacxVar = new zzacx(bArr, iE);
            zzaduVar.f(zzacxVar);
            zzacxVar.e();
            return new zzacq(bArr);
        } catch (IOException e2) {
            String name = getClass().getName();
            r81.g(d21.p(new StringBuilder(name.length() + 72), "Serializing ", name, " to a ByteString threw an IOException (should never happen)."), e2);
            return null;
        }
    }

    public final byte[] i() {
        try {
            zzadu zzaduVar = (zzadu) this;
            int iE = zzaduVar.e();
            byte[] bArr = new byte[iE];
            boolean z = zzada.f30392b;
            zzacx zzacxVar = new zzacx(bArr, iE);
            zzaduVar.f(zzacxVar);
            zzacxVar.e();
            return bArr;
        } catch (IOException e2) {
            String name = getClass().getName();
            r81.g(d21.p(new StringBuilder(name.length() + 72), "Serializing ", name, " to a byte array threw an IOException (should never happen)."), e2);
            return null;
        }
    }

    public int j(zzafp zzafpVar) {
        throw null;
    }
}
