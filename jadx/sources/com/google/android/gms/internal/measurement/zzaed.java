package com.google.android.gms.internal.measurement;

import defpackage.lc0;
import java.nio.ByteBuffer;
import java.util.AbstractList;

/* JADX INFO: loaded from: classes2.dex */
public abstract class zzaed {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f30413a;

    public class zza<T> extends AbstractList<T> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final zzaeb f30414b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final zzaec f30415c;

        public zza(zzaeb zzaebVar, zzaec<T> zzaecVar) {
            this.f30414b = zzaebVar;
            this.f30415c = zzaecVar;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int i2) {
            return this.f30415c.e(this.f30414b.y(i2));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.f30414b.size();
        }
    }

    static {
        byte[] bArr = new byte[0];
        f30413a = bArr;
        ByteBuffer.wrap(bArr);
        try {
            new zzact(bArr).a(0);
        } catch (zzaeh e2) {
            lc0.u(e2);
        }
    }

    public static int a(int i2, int i3, byte[] bArr, int i4) {
        for (int i5 = i3; i5 < i3 + i4; i5++) {
            i2 = (i2 * 31) + bArr[i5];
        }
        return i2;
    }
}
