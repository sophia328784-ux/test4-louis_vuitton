package com.batch.android.t;

import defpackage.tr;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f24054a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f24055b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f24056c;
    private final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<a> f24057e;

    /* JADX WARN: Multi-variable type inference failed */
    public c(int i2, int i3, int i4, int i5, List<? extends a> list) {
        this.f24054a = i2;
        this.f24055b = i3;
        this.f24056c = i4;
        this.d = i5;
        this.f24057e = list;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ c a(c cVar, int i2, int i3, int i4, int i5, List list, int i6, Object obj) {
        if ((i6 & 1) != 0) {
            i2 = cVar.f24054a;
        }
        if ((i6 & 2) != 0) {
            i3 = cVar.f24055b;
        }
        if ((i6 & 4) != 0) {
            i4 = cVar.f24056c;
        }
        if ((i6 & 8) != 0) {
            i5 = cVar.d;
        }
        if ((i6 & 16) != 0) {
            list = cVar.f24057e;
        }
        List list2 = list;
        int i7 = i4;
        return cVar.a(i2, i3, i7, i5, list2);
    }

    public final int b() {
        return this.f24055b;
    }

    public final int c() {
        return this.f24056c;
    }

    public final int d() {
        return this.d;
    }

    public final List<a> e() {
        return this.f24057e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f24054a == cVar.f24054a && this.f24055b == cVar.f24055b && this.f24056c == cVar.f24056c && this.d == cVar.d && Intrinsics.c(this.f24057e, cVar.f24057e);
    }

    public final List<a> f() {
        return this.f24057e;
    }

    public final int g() {
        return this.f24056c;
    }

    public final int h() {
        return this.d;
    }

    public int hashCode() {
        int iB = tr.b(this.d, tr.b(this.f24056c, tr.b(this.f24055b, Integer.hashCode(this.f24054a) * 31, 31), 31), 31);
        List<a> list = this.f24057e;
        return iB + (list == null ? 0 : list.hashCode());
    }

    public final int i() {
        return this.f24054a;
    }

    public final int j() {
        return this.f24055b;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("QuietHours(startHour=");
        sb.append(this.f24054a);
        sb.append(", startMinute=");
        sb.append(this.f24055b);
        sb.append(", endHour=");
        sb.append(this.f24056c);
        sb.append(", endMinute=");
        sb.append(this.d);
        sb.append(", daysOfWeek=");
        return tr.m(sb, this.f24057e, ')');
    }

    public final c a(int i2, int i3, int i4, int i5, List<? extends a> list) {
        return new c(i2, i3, i4, i5, list);
    }

    public final int a() {
        return this.f24054a;
    }
}
