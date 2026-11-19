package com.vuitton.android.presentation.screen.account.myinformation.models;

import defpackage.a;
import defpackage.cj;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;", "", "", "isJP", "isCN", "isTH", "<init>", "(ZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class MyInfoLocaleFlags {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f52643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f52644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f52645c;

    public /* synthetic */ MyInfoLocaleFlags(boolean z, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MyInfoLocaleFlags)) {
            return false;
        }
        MyInfoLocaleFlags myInfoLocaleFlags = (MyInfoLocaleFlags) obj;
        return this.f52643a == myInfoLocaleFlags.f52643a && this.f52644b == myInfoLocaleFlags.f52644b && this.f52645c == myInfoLocaleFlags.f52645c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f52645c) + o60.b(Boolean.hashCode(this.f52643a) * 31, 31, this.f52644b);
    }

    public final String toString() {
        return a.p(cj.m("MyInfoLocaleFlags(isJP=", ", isCN=", ", isTH=", this.f52643a, this.f52644b), this.f52645c, ")");
    }

    public MyInfoLocaleFlags(boolean z, boolean z2, boolean z3) {
        this.f52643a = z;
        this.f52644b = z2;
        this.f52645c = z3;
    }

    public MyInfoLocaleFlags() {
        this(false, false, false, 7, null);
    }
}
