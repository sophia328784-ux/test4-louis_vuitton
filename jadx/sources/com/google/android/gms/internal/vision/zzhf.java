package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzhe;
import com.google.android.gms.internal.vision.zzhf;
import defpackage.r81;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzhf<MessageType extends zzhf<MessageType, BuilderType>, BuilderType extends zzhe<MessageType, BuilderType>> implements zzkk {
    protected int zza = 0;

    public static void e(Iterable iterable, List list) {
        Charset charset = zzjf.f31225a;
        iterable.getClass();
        if (iterable instanceof zzjv) {
            List listG0 = ((zzjv) iterable).g0();
            zzjv zzjvVar = (zzjv) list;
            int size = list.size();
            for (Object obj : listG0) {
                if (obj == null) {
                    int size2 = zzjvVar.size() - size;
                    StringBuilder sb = new StringBuilder(37);
                    sb.append("Element at index ");
                    sb.append(size2);
                    sb.append(" is null.");
                    String string = sb.toString();
                    for (int size3 = zzjvVar.size() - 1; size3 >= size; size3--) {
                        zzjvVar.remove(size3);
                    }
                    r81.d(string);
                    return;
                }
                if (obj instanceof zzht) {
                    zzjvVar.y1((zzht) obj);
                } else {
                    zzjvVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof zzkw) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
        }
        int size4 = list.size();
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                int size5 = list.size() - size4;
                StringBuilder sb2 = new StringBuilder(37);
                sb2.append("Element at index ");
                sb2.append(size5);
                sb2.append(" is null.");
                String string2 = sb2.toString();
                for (int size6 = list.size() - 1; size6 >= size4; size6--) {
                    list.remove(size6);
                }
                r81.d(string2);
                return;
            }
            list.add(obj2);
        }
    }

    @Override // com.google.android.gms.internal.vision.zzkk
    public final zzht b() {
        try {
            zzjb zzjbVar = (zzjb) this;
            int iL = zzjbVar.L();
            zzht zzhtVar = zzht.f31188c;
            zzib zzibVar = new zzib(iL);
            zzii zziiVar = zzibVar.f31191a;
            zzjbVar.c(zziiVar);
            zziiVar.getClass();
            zzii.zza zzaVar = (zzii.zza) zziiVar;
            if (zzaVar.f31200e - zzaVar.f31201f == 0) {
                return new zzid(zzibVar.f31192b);
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e2) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a ByteString threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e2);
        }
    }

    public void f(int i2) {
        throw new UnsupportedOperationException();
    }

    public final byte[] g() {
        try {
            zzjb zzjbVar = (zzjb) this;
            int iL = zzjbVar.L();
            byte[] bArr = new byte[iL];
            Logger logger = zzii.f31197b;
            zzii.zza zzaVar = new zzii.zza(bArr, iL);
            zzjbVar.c(zzaVar);
            if (zzaVar.f31200e - zzaVar.f31201f == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e2) {
            String name = getClass().getName();
            StringBuilder sb = new StringBuilder(name.length() + 72);
            sb.append("Serializing ");
            sb.append(name);
            sb.append(" to a byte array threw an IOException (should never happen).");
            throw new RuntimeException(sb.toString(), e2);
        }
    }

    public int h() {
        throw new UnsupportedOperationException();
    }
}
