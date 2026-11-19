package com.vuitton.android.presentation.ar;

import defpackage.fc;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0014\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/ar/V2A;", "", "", "floatArray", "<init>", "([F)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class V2A {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float[] f50556a;

    public V2A(float[] fArr) {
        fArr.getClass();
        this.f50556a = fArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof V2A) && Intrinsics.c(this.f50556a, ((V2A) obj).f50556a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f50556a);
    }

    public final String toString() {
        return fc.h("V2A(floatArray=", Arrays.toString(this.f50556a), ")");
    }
}
