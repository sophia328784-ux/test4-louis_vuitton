package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.BiFunction;

/* JADX INFO: loaded from: classes2.dex */
public final class zzol implements zzoh {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f30780a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f30781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ConcurrentHashMap f30782c;

    public zzol() {
        new ConcurrentHashMap();
        this.f30781b = new ConcurrentHashMap();
        new ConcurrentHashMap();
        this.f30782c = new ConcurrentHashMap();
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:57:0x0047 A[EDGE_INSN: B:57:0x0047->B:55:0x0047 BREAK  A[LOOP:1: B:25:0x0067->B:60:?], SYNTHETIC] */
    public final void a(zzacr zzacrVar, Set set, String str) {
        zzok[] zzokVarArr;
        if (!set.isEmpty() && !this.f30780a.getAndSet(true)) {
            if (zzbu.f30588b == null) {
                synchronized (zzbu.class) {
                    try {
                        if (zzbu.f30588b == null) {
                            zzbu.f30588b = new zzbu();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            zzbu.f30588b.f30589a.add(0, new zzoj());
        }
        final byte[] bArrQ = zzacrVar.q();
        this.f30781b.compute(str, new BiFunction() { // from class: com.google.android.gms.internal.measurement.zzoi
            @Override // java.util.function.BiFunction
            public final /* synthetic */ Object apply(Object obj, Object obj2) {
                byte[] bArr = (byte[]) obj2;
                byte[] bArr2 = bArrQ;
                return Arrays.equals(bArr, bArr2) ? bArr : bArr2;
            }
        });
        Iterator it = set.iterator();
        while (it.hasNext()) {
            AtomicReference atomicReference = (AtomicReference) this.f30782c.putIfAbsent((String) it.next(), new AtomicReference(new zzok(str, bArrQ)));
            if (atomicReference != null) {
                while (true) {
                    Object obj = atomicReference.get();
                    if (obj instanceof zzok) {
                        zzok zzokVar = (zzok) obj;
                        if (str.equals(zzokVar.f30778b)) {
                            zzokVar.a(bArrQ);
                            break;
                        }
                        zzok zzokVar2 = new zzok(str, bArrQ);
                        zzokVarArr = str.compareTo(zzokVar.f30778b) < 0 ? new zzok[]{zzokVar2, zzokVar} : new zzok[]{zzokVar, zzokVar2};
                        do {
                            if (atomicReference.compareAndSet(obj, zzokVarArr)) {
                                break;
                            }
                        } while (atomicReference.get() == obj);
                    } else {
                        zzok[] zzokVarArr2 = (zzok[]) obj;
                        int iBinarySearch = Arrays.binarySearch(zzokVarArr2, str);
                        if (iBinarySearch >= 0) {
                            zzokVarArr2[iBinarySearch].a(bArrQ);
                            break;
                        }
                        int i2 = ~iBinarySearch;
                        int length = zzokVarArr2.length;
                        int i3 = length + 1;
                        int i4 = length - i2;
                        if (i4 == 0) {
                            zzokVarArr = (zzok[]) Arrays.copyOf(zzokVarArr2, i3);
                        } else {
                            zzok[] zzokVarArr3 = new zzok[i3];
                            System.arraycopy(zzokVarArr2, 0, zzokVarArr3, 0, i2);
                            System.arraycopy(zzokVarArr2, i2, zzokVarArr3, i2 + 1, i4);
                            zzokVarArr = zzokVarArr3;
                        }
                        zzokVarArr[i2] = new zzok(str, bArrQ);
                        do {
                            if (atomicReference.compareAndSet(obj, zzokVarArr)) {
                                break;
                                break;
                            }
                        } while (atomicReference.get() == obj);
                    }
                }
            }
        }
    }
}
