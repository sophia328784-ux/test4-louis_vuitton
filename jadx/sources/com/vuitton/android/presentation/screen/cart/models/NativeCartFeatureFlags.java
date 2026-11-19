package com.vuitton.android.presentation.screen.cart.models;

import defpackage.a;
import defpackage.cj;
import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;", "", "", "isVatIncludedForOrderReview", "isVatIncludedForCartItem", "isRefreshAuthCheckout", "<init>", "(ZZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NativeCartFeatureFlags {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f55201a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f55202b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f55203c;

    public /* synthetic */ NativeCartFeatureFlags(boolean z, boolean z2, boolean z3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? false : z2, (i2 & 4) != 0 ? false : z3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NativeCartFeatureFlags)) {
            return false;
        }
        NativeCartFeatureFlags nativeCartFeatureFlags = (NativeCartFeatureFlags) obj;
        return this.f55201a == nativeCartFeatureFlags.f55201a && this.f55202b == nativeCartFeatureFlags.f55202b && this.f55203c == nativeCartFeatureFlags.f55203c;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f55203c) + o60.b(Boolean.hashCode(this.f55201a) * 31, 31, this.f55202b);
    }

    public final String toString() {
        return a.p(cj.m("NativeCartFeatureFlags(isVatIncludedForOrderReview=", ", isVatIncludedForCartItem=", ", isRefreshAuthCheckout=", this.f55201a, this.f55202b), this.f55203c, ")");
    }

    public NativeCartFeatureFlags(boolean z, boolean z2, boolean z3) {
        this.f55201a = z;
        this.f55202b = z2;
        this.f55203c = z3;
    }

    public NativeCartFeatureFlags() {
        this(false, false, false, 7, null);
    }
}
