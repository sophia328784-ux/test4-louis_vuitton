package com.vuitton.android.presentation.screen.pdp.vto.beauty.models;

import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BeautyVtoViewStateKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f62158a;

        static {
            int[] iArr = new int[BeautyVtoMode.values().length];
            try {
                iArr[BeautyVtoMode.SIMPLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BeautyVtoMode.DUAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BeautyVtoMode.STACKING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f62158a = iArr;
        }
    }

    public static final String a(BeautyVtoMode beautyVtoMode) {
        beautyVtoMode.getClass();
        int i2 = WhenMappings.f62158a[beautyVtoMode.ordinal()];
        if (i2 == 1) {
            return "from_simple";
        }
        if (i2 == 2) {
            return "from_compare";
        }
        if (i2 == 3) {
            return "from_stacking";
        }
        v40.g();
        return null;
    }
}
