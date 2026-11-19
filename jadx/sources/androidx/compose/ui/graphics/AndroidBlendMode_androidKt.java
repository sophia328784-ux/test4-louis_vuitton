package androidx.compose.ui.graphics;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-graphics"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidBlendMode_androidKt {
    public static final android.graphics.BlendMode a(int i2) {
        BlendMode.Companion companion = BlendMode.f8847a;
        companion.getClass();
        if (i2 == 0) {
            return android.graphics.BlendMode.CLEAR;
        }
        companion.getClass();
        if (i2 == BlendMode.f8848b) {
            return android.graphics.BlendMode.SRC;
        }
        companion.getClass();
        if (i2 == BlendMode.f8849c) {
            return android.graphics.BlendMode.DST;
        }
        companion.getClass();
        if (i2 == BlendMode.d) {
            return android.graphics.BlendMode.SRC_OVER;
        }
        companion.getClass();
        if (i2 == BlendMode.f8850e) {
            return android.graphics.BlendMode.DST_OVER;
        }
        companion.getClass();
        if (i2 == BlendMode.f8851f) {
            return android.graphics.BlendMode.SRC_IN;
        }
        companion.getClass();
        if (i2 == BlendMode.g) {
            return android.graphics.BlendMode.DST_IN;
        }
        companion.getClass();
        if (i2 == BlendMode.f8852h) {
            return android.graphics.BlendMode.SRC_OUT;
        }
        companion.getClass();
        if (i2 == BlendMode.f8853i) {
            return android.graphics.BlendMode.DST_OUT;
        }
        companion.getClass();
        if (i2 == BlendMode.f8854j) {
            return android.graphics.BlendMode.SRC_ATOP;
        }
        companion.getClass();
        if (i2 == BlendMode.f8855k) {
            return android.graphics.BlendMode.DST_ATOP;
        }
        companion.getClass();
        if (i2 == BlendMode.l) {
            return android.graphics.BlendMode.XOR;
        }
        companion.getClass();
        if (i2 == BlendMode.m) {
            return android.graphics.BlendMode.PLUS;
        }
        companion.getClass();
        if (i2 == BlendMode.n) {
            return android.graphics.BlendMode.MODULATE;
        }
        companion.getClass();
        if (i2 == BlendMode.o) {
            return android.graphics.BlendMode.SCREEN;
        }
        companion.getClass();
        if (i2 == BlendMode.p) {
            return android.graphics.BlendMode.OVERLAY;
        }
        companion.getClass();
        if (i2 == BlendMode.q) {
            return android.graphics.BlendMode.DARKEN;
        }
        companion.getClass();
        if (i2 == BlendMode.r) {
            return android.graphics.BlendMode.LIGHTEN;
        }
        companion.getClass();
        if (i2 == BlendMode.s) {
            return android.graphics.BlendMode.COLOR_DODGE;
        }
        companion.getClass();
        if (i2 == BlendMode.t) {
            return android.graphics.BlendMode.COLOR_BURN;
        }
        companion.getClass();
        if (i2 == BlendMode.u) {
            return android.graphics.BlendMode.HARD_LIGHT;
        }
        companion.getClass();
        if (i2 == BlendMode.v) {
            return android.graphics.BlendMode.SOFT_LIGHT;
        }
        companion.getClass();
        if (i2 == BlendMode.w) {
            return android.graphics.BlendMode.DIFFERENCE;
        }
        companion.getClass();
        if (i2 == BlendMode.x) {
            return android.graphics.BlendMode.EXCLUSION;
        }
        companion.getClass();
        if (i2 == BlendMode.y) {
            return android.graphics.BlendMode.MULTIPLY;
        }
        companion.getClass();
        if (i2 == BlendMode.z) {
            return android.graphics.BlendMode.HUE;
        }
        companion.getClass();
        if (i2 == BlendMode.A) {
            return android.graphics.BlendMode.SATURATION;
        }
        companion.getClass();
        if (i2 == BlendMode.B) {
            return android.graphics.BlendMode.COLOR;
        }
        companion.getClass();
        return i2 == BlendMode.C ? android.graphics.BlendMode.LUMINOSITY : android.graphics.BlendMode.SRC_OVER;
    }
}
