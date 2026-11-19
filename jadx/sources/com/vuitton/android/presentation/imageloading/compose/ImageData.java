package com.vuitton.android.presentation.imageloading.compose;

import defpackage.o60;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0001¨\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/imageloading/compose/ImageData;", "", "raw", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class ImageData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f51524a;

    public final boolean equals(Object obj) {
        if (obj instanceof ImageData) {
            return Intrinsics.c(this.f51524a, ((ImageData) obj).f51524a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f51524a.hashCode();
    }

    public final String toString() {
        return o60.n("ImageData(raw=", this.f51524a, ")");
    }
}
