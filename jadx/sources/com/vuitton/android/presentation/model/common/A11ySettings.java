package com.vuitton.android.presentation.model.common;

import defpackage.a;
import defpackage.cj;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/model/common/A11ySettings;", "", "", "isAutoplayDisabled", "isContrastEnhanced", "isNavigationSimplified", "<init>", "(ZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class A11ySettings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f51775a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f51776b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f51777c;

    public /* synthetic */ A11ySettings(boolean z, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3);
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final boolean getF51775a() {
        return this.f51775a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof A11ySettings)) {
            return false;
        }
        A11ySettings a11ySettings = (A11ySettings) obj;
        return this.f51775a == a11ySettings.f51775a && this.f51776b == a11ySettings.f51776b && this.f51777c == a11ySettings.f51777c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f51777c) + o60.b(Boolean.hashCode(this.f51775a) * 31, 31, this.f51776b);
    }

    public final String toString() {
        return a.p(cj.m("A11ySettings(isAutoplayDisabled=", ", isContrastEnhanced=", ", isNavigationSimplified=", this.f51775a, this.f51776b), this.f51777c, ")");
    }

    public A11ySettings(boolean z, boolean z2, boolean z3) {
        this.f51775a = z;
        this.f51776b = z2;
        this.f51777c = z3;
    }

    public A11ySettings() {
        this(false, false, false, 7, null);
    }
}
