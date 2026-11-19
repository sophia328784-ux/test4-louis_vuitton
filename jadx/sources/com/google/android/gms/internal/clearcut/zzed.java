package com.google.android.gms.internal.clearcut;

import defpackage.n00;
import defpackage.v7;
import java.lang.reflect.Field;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
final class zzed {
    public Object A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzee f29710a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object[] f29711b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Class f29712c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f29713e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f29714f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f29715h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f29716i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f29717j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f29718k;
    public final int l;
    public final int[] m;
    public int n;
    public int o;
    public int p = Integer.MAX_VALUE;
    public int q = Integer.MIN_VALUE;
    public int r = 0;
    public int s;
    public int t;
    public int u;
    public int v;
    public int w;
    public Field x;
    public Object y;
    public Object z;

    public zzed(Class cls, String str, Object[] objArr) {
        this.f29712c = cls;
        zzee zzeeVar = new zzee(str);
        this.f29710a = zzeeVar;
        this.f29711b = objArr;
        this.d = zzeeVar.a();
        int iA = zzeeVar.a();
        this.f29713e = iA;
        if (iA == 0) {
            this.f29714f = 0;
            this.g = 0;
            this.f29715h = 0;
            this.f29716i = 0;
            this.f29718k = 0;
            this.f29717j = 0;
            this.l = 0;
            this.m = null;
            return;
        }
        int iA2 = zzeeVar.a();
        this.f29714f = iA2;
        int iA3 = zzeeVar.a();
        this.g = zzeeVar.a();
        this.f29715h = zzeeVar.a();
        this.f29718k = zzeeVar.a();
        this.f29717j = zzeeVar.a();
        this.f29716i = zzeeVar.a();
        this.l = zzeeVar.a();
        int iA4 = zzeeVar.a();
        this.m = iA4 != 0 ? new int[iA4] : null;
        this.n = (iA2 << 1) + iA3;
    }

    public static Field b(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String string = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(string).length() + name.length() + String.valueOf(str).length() + 40);
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            v7.h(n00.r(" not found. Known fields are ", string, sb));
            return null;
        }
    }

    public final boolean a() {
        zzee zzeeVar = this.f29710a;
        if (zzeeVar.f29720b >= zzeeVar.f29719a.length()) {
            return false;
        }
        this.s = zzeeVar.a();
        int iA = zzeeVar.a();
        this.t = iA;
        int i2 = iA & 255;
        this.u = i2;
        int i3 = this.s;
        if (i3 < this.p) {
            this.p = i3;
        }
        if (i3 > this.q) {
            this.q = i3;
        }
        zzcb zzcbVar = zzcb.zziw;
        if (i2 != zzcbVar.a() && this.u >= zzcb.zzhq.a()) {
            zzcb.zziv.a();
        }
        int i4 = this.r + 1;
        this.r = i4;
        int i5 = this.p;
        int i6 = this.s;
        Class cls = zzeh.f29721a;
        if (i6 >= 40) {
            long j2 = i4;
            int i7 = (((((long) i6) - ((long) i5)) + 10) > (((j2 + 3) * 3) + (2 * j2) + 3) ? 1 : (((((long) i6) - ((long) i5)) + 10) == (((j2 + 3) * 3) + (2 * j2) + 3) ? 0 : -1));
        }
        if ((this.t & 1024) != 0) {
            int i8 = this.o;
            this.o = i8 + 1;
            this.m[i8] = i6;
        }
        this.y = null;
        this.z = null;
        this.A = null;
        int i9 = this.u;
        int iA2 = zzcbVar.a();
        int i10 = this.d;
        if (i9 > iA2) {
            this.v = zzeeVar.a();
            if (this.u == zzcb.zzhh.a() + 51 || this.u == zzcb.zzhp.a() + 51) {
                this.y = c();
                return true;
            }
            if (this.u == zzcb.zzhk.a() + 51 && (i10 & 1) == 1) {
                this.z = c();
            }
            return true;
        }
        this.x = b(this.f29712c, (String) c());
        if ((i10 & 1) == 1 && this.u <= zzcb.zzhp.a()) {
            this.w = zzeeVar.a();
        }
        if (this.u == zzcb.zzhh.a() || this.u == zzcb.zzhp.a()) {
            this.y = this.x.getType();
            return true;
        }
        if (this.u == zzcb.zzhz.a() || this.u == zzcb.zziv.a()) {
            this.y = c();
            return true;
        }
        if (this.u == zzcb.zzhk.a() || this.u == zzcb.zzic.a() || this.u == zzcb.zziq.a()) {
            if ((i10 & 1) == 1) {
                this.z = c();
            }
            return true;
        }
        if (this.u == zzcbVar.a()) {
            this.A = c();
            if ((this.t & 2048) != 0) {
                this.z = c();
            }
        }
        return true;
    }

    public final Object c() {
        int i2 = this.n;
        this.n = i2 + 1;
        return this.f29711b[i2];
    }
}
