package com.vuitton.android.presentation.utils;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MathUtilsKt {
    public static final float a(float f2, float f3, float f4, float f5, float f6) {
        if (f3 != f5) {
            return (((f6 - f4) * (f2 - f3)) / (f5 - f3)) + f4;
        }
        if (f2 == f3) {
            return f4;
        }
        return Float.NaN;
    }
}
