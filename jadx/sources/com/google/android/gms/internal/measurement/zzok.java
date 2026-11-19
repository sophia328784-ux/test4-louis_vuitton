package com.google.android.gms.internal.measurement;

import defpackage.o91;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
final class zzok implements Comparable {
    public static final AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(zzok.class, Object.class, "c");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ long f30777e = o91.f76733a.objectFieldOffset(zzok.class.getDeclaredField("c"));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f30778b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Object f30779c;

    public /* synthetic */ zzok(String str, byte[] bArr) {
        this.f30778b = str;
        this.f30779c = bArr;
    }

    public final /* synthetic */ void a(byte[] bArr) {
        byte[][] bArr2;
        zzok zzokVar;
        int i2 = 0;
        while (true) {
            Object obj = this.f30779c;
            if (!(obj instanceof byte[])) {
                byte[][] bArr3 = (byte[][]) obj;
                while (true) {
                    int length = bArr3.length;
                    if (i2 >= length) {
                        bArr2 = (byte[][]) Arrays.copyOf(bArr3, length + 1);
                        bArr2[length] = bArr;
                        break;
                    } else if (Arrays.equals(bArr, bArr3[i2])) {
                        return;
                    } else {
                        i2++;
                    }
                }
            } else {
                byte[] bArr4 = (byte[]) obj;
                if (Arrays.equals(bArr, bArr4)) {
                    return;
                }
                i2 = 1;
                bArr2 = new byte[][]{bArr4, bArr};
            }
            byte[][] bArr5 = bArr2;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = d;
            while (true) {
                atomicReferenceFieldUpdater.getClass();
                Unsafe unsafe = o91.f76733a;
                long j2 = f30777e;
                zzokVar = this;
                if (unsafe.compareAndSwapObject(zzokVar, j2, obj, bArr5)) {
                    return;
                }
                if (unsafe.getObjectVolatile(zzokVar, j2) != obj) {
                    break;
                } else {
                    this = zzokVar;
                }
            }
            this = zzokVar;
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return this.f30778b.compareTo((String) obj);
    }
}
