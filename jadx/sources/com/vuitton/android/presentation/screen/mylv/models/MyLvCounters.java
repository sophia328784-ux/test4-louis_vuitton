package com.vuitton.android.presentation.screen.mylv.models;

import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0087\b\u0018\u00002\u00020\u0001BC\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;", "", "", "repairsCounter", "ordersCounter", "certificatesCounter", "exclusiveOfferCounter", "appointmentsCounter", "experiencesCounter", "<init>", "(IIIIII)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class MyLvCounters {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f59411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f59412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f59413c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f59414e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f59415f;

    public /* synthetic */ MyLvCounters(int i2, int i3, int i4, int i5, int i6, int i7, int i8, DefaultConstructorMarker defaultConstructorMarker) {
        this((i8 & 1) != 0 ? 0 : i2, (i8 & 2) != 0 ? 0 : i3, (i8 & 4) != 0 ? 0 : i4, (i8 & 8) != 0 ? 0 : i5, (i8 & 16) != 0 ? 0 : i6, (i8 & 32) != 0 ? 0 : i7);
    }

    public static MyLvCounters a(MyLvCounters myLvCounters, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if ((i8 & 1) != 0) {
            i2 = myLvCounters.f59411a;
        }
        int i9 = i2;
        if ((i8 & 2) != 0) {
            i3 = myLvCounters.f59412b;
        }
        int i10 = i3;
        if ((i8 & 4) != 0) {
            i4 = myLvCounters.f59413c;
        }
        int i11 = i4;
        if ((i8 & 8) != 0) {
            i5 = myLvCounters.d;
        }
        int i12 = i5;
        if ((i8 & 16) != 0) {
            i6 = myLvCounters.f59414e;
        }
        int i13 = i6;
        if ((i8 & 32) != 0) {
            i7 = myLvCounters.f59415f;
        }
        myLvCounters.getClass();
        return new MyLvCounters(i9, i10, i11, i12, i13, i7);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MyLvCounters)) {
            return false;
        }
        MyLvCounters myLvCounters = (MyLvCounters) obj;
        return this.f59411a == myLvCounters.f59411a && this.f59412b == myLvCounters.f59412b && this.f59413c == myLvCounters.f59413c && this.d == myLvCounters.d && this.f59414e == myLvCounters.f59414e && this.f59415f == myLvCounters.f59415f;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f59415f) + tr.b(this.f59414e, tr.b(this.d, tr.b(this.f59413c, tr.b(this.f59412b, Integer.hashCode(this.f59411a) * 31, 31), 31), 31), 31);
    }

    public final String toString() {
        StringBuilder sbP = fc.p(this.f59411a, this.f59412b, "MyLvCounters(repairsCounter=", ", ordersCounter=", ", certificatesCounter=");
        fc.x(this.f59413c, this.d, ", exclusiveOfferCounter=", ", appointmentsCounter=", sbP);
        sbP.append(this.f59414e);
        sbP.append(", experiencesCounter=");
        sbP.append(this.f59415f);
        sbP.append(")");
        return sbP.toString();
    }

    public MyLvCounters(int i2, int i3, int i4, int i5, int i6, int i7) {
        this.f59411a = i2;
        this.f59412b = i3;
        this.f59413c = i4;
        this.d = i5;
        this.f59414e = i6;
        this.f59415f = i7;
    }

    public MyLvCounters() {
        this(0, 0, 0, 0, 0, 0, 63, null);
    }
}
