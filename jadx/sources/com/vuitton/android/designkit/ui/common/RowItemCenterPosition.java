package com.vuitton.android.designkit.ui.common;

import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/designkit/ui/common/RowItemCenterPosition;", "", "raw", "", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class RowItemCenterPosition {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f48317a;

    public final boolean equals(Object obj) {
        if (obj instanceof RowItemCenterPosition) {
            return this.f48317a == ((RowItemCenterPosition) obj).f48317a;
        }
        return false;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f48317a);
    }

    public final String toString() {
        return n00.m(this.f48317a, "RowItemCenterPosition(raw=", ")");
    }
}
