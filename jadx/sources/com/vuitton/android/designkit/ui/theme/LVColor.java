package com.vuitton.android.designkit.ui.theme;

import androidx.compose.material3.ColorScheme;
import androidx.compose.material3.ColorSchemeKt;
import androidx.compose.ui.graphics.Color;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001:\u0002\u000e\u000fB?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/LVColor;", "", "Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;", "core", "Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;", "sem", "Landroidx/compose/ui/graphics/Color;", "black500", "black300", "black100", "Landroidx/compose/material3/ColorScheme;", "m3Palette", "<init>", "(Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;JJJLandroidx/compose/material3/ColorScheme;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Core", "Semantic", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVColor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Core f48360a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Semantic f48361b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f48362c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f48363e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ColorScheme f48364f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u001f\b\u0087\b\u0018\u00002\u00020\u0001Bç\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u0012\u0006\u0010\u001b\u001a\u00020\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u0002\u0012\u0006\u0010\u001e\u001a\u00020\u0002¢\u0006\u0004\b\u001f\u0010 ¨\u0006!"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;", "", "Landroidx/compose/ui/graphics/Color;", "surfaceExtraLight", "surfaceLight", "surfaceSubtle", "surfaceIntense", "productCard", "invertSurfaceExtraLight", "invertSurfaceLight", "invertSurfaceSubtle", "invertSurfaceIntense", "invertProductCard", "contentIntense", "contentSubtle", "invertContentIntense", "invertContentSubtle", "borderIntense", "borderSubtle", "borderThin", "invertBorderIntense", "invertBorderSubtle", "invertBorderThin", "accent", "highlight", "success", "error", "invertAccent", "invertHighlight", "invertSuccess", "invertError", "<init>", "(JJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Semantic {
        public final long A;
        public final long B;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f48374a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f48375b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f48376c;
        public final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f48377e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f48378f;
        public final long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f48379h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f48380i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f48381j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final long f48382k;
        public final long l;
        public final long m;
        public final long n;
        public final long o;
        public final long p;
        public final long q;
        public final long r;
        public final long s;
        public final long t;
        public final long u;
        public final long v;
        public final long w;
        public final long x;
        public final long y;
        public final long z;

        public Semantic(long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, DefaultConstructorMarker defaultConstructorMarker) {
            this.f48374a = j2;
            this.f48375b = j3;
            this.f48376c = j4;
            this.d = j5;
            this.f48377e = j6;
            this.f48378f = j7;
            this.g = j8;
            this.f48379h = j9;
            this.f48380i = j10;
            this.f48381j = j11;
            this.f48382k = j12;
            this.l = j13;
            this.m = j14;
            this.n = j15;
            this.o = j16;
            this.p = j17;
            this.q = j18;
            this.r = j19;
            this.s = j20;
            this.t = j21;
            this.u = j22;
            this.v = j23;
            this.w = j24;
            this.x = j25;
            this.y = j26;
            this.z = j27;
            this.A = j28;
            this.B = j29;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Semantic)) {
                return false;
            }
            Semantic semantic = (Semantic) obj;
            return Color.c(this.f48374a, semantic.f48374a) && Color.c(this.f48375b, semantic.f48375b) && Color.c(this.f48376c, semantic.f48376c) && Color.c(this.d, semantic.d) && Color.c(this.f48377e, semantic.f48377e) && Color.c(this.f48378f, semantic.f48378f) && Color.c(this.g, semantic.g) && Color.c(this.f48379h, semantic.f48379h) && Color.c(this.f48380i, semantic.f48380i) && Color.c(this.f48381j, semantic.f48381j) && Color.c(this.f48382k, semantic.f48382k) && Color.c(this.l, semantic.l) && Color.c(this.m, semantic.m) && Color.c(this.n, semantic.n) && Color.c(this.o, semantic.o) && Color.c(this.p, semantic.p) && Color.c(this.q, semantic.q) && Color.c(this.r, semantic.r) && Color.c(this.s, semantic.s) && Color.c(this.t, semantic.t) && Color.c(this.u, semantic.u) && Color.c(this.v, semantic.v) && Color.c(this.w, semantic.w) && Color.c(this.x, semantic.x) && Color.c(this.y, semantic.y) && Color.c(this.z, semantic.z) && Color.c(this.A, semantic.A) && Color.c(this.B, semantic.B);
        }

        public final int hashCode() {
            Color.Companion companion = Color.f8866b;
            ULong.Companion companion2 = ULong.INSTANCE;
            return Long.hashCode(this.B) + fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(Long.hashCode(this.f48374a) * 31, 31, this.f48375b), 31, this.f48376c), 31, this.d), 31, this.f48377e), 31, this.f48378f), 31, this.g), 31, this.f48379h), 31, this.f48380i), 31, this.f48381j), 31, this.f48382k), 31, this.l), 31, this.m), 31, this.n), 31, this.o), 31, this.p), 31, this.q), 31, this.r), 31, this.s), 31, this.t), 31, this.u), 31, this.v), 31, this.w), 31, this.x), 31, this.y), 31, this.z), 31, this.A);
        }

        public final String toString() {
            String strI = Color.i(this.f48374a);
            String strI2 = Color.i(this.f48375b);
            String strI3 = Color.i(this.f48376c);
            String strI4 = Color.i(this.d);
            String strI5 = Color.i(this.f48377e);
            String strI6 = Color.i(this.f48378f);
            String strI7 = Color.i(this.g);
            String strI8 = Color.i(this.f48379h);
            String strI9 = Color.i(this.f48380i);
            String strI10 = Color.i(this.f48381j);
            String strI11 = Color.i(this.f48382k);
            String strI12 = Color.i(this.l);
            String strI13 = Color.i(this.m);
            String strI14 = Color.i(this.n);
            String strI15 = Color.i(this.o);
            String strI16 = Color.i(this.p);
            String strI17 = Color.i(this.q);
            String strI18 = Color.i(this.r);
            String strI19 = Color.i(this.s);
            String strI20 = Color.i(this.t);
            String strI21 = Color.i(this.u);
            String strI22 = Color.i(this.v);
            String strI23 = Color.i(this.w);
            String strI24 = Color.i(this.x);
            String strI25 = Color.i(this.y);
            String strI26 = Color.i(this.z);
            String strI27 = Color.i(this.A);
            String strI28 = Color.i(this.B);
            StringBuilder sbS = fc.s("Semantic(surfaceExtraLight=", strI, ", surfaceLight=", strI2, ", surfaceSubtle=");
            cj.C(sbS, strI3, ", surfaceIntense=", strI4, ", productCard=");
            cj.C(sbS, strI5, ", invertSurfaceExtraLight=", strI6, ", invertSurfaceLight=");
            cj.C(sbS, strI7, ", invertSurfaceSubtle=", strI8, ", invertSurfaceIntense=");
            cj.C(sbS, strI9, ", invertProductCard=", strI10, ", contentIntense=");
            cj.C(sbS, strI11, ", contentSubtle=", strI12, ", invertContentIntense=");
            cj.C(sbS, strI13, ", invertContentSubtle=", strI14, ", borderIntense=");
            cj.C(sbS, strI15, ", borderSubtle=", strI16, ", borderThin=");
            cj.C(sbS, strI17, ", invertBorderIntense=", strI18, ", invertBorderSubtle=");
            cj.C(sbS, strI19, ", invertBorderThin=", strI20, ", accent=");
            cj.C(sbS, strI21, ", highlight=", strI22, ", success=");
            cj.C(sbS, strI23, ", error=", strI24, ", invertAccent=");
            cj.C(sbS, strI25, ", invertHighlight=", strI26, ", invertSuccess=");
            return tr.l(sbS, strI27, ", invertError=", strI28, ")");
        }
    }

    public LVColor(Core core, Semantic semantic, long j2, long j3, long j4, ColorScheme colorScheme, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(core, semantic, (i2 & 4) != 0 ? androidx.compose.ui.graphics.ColorKt.c(4278190080L) : j2, (i2 & 8) != 0 ? androidx.compose.ui.graphics.ColorKt.c(4283716692L) : j3, (i2 & 16) != 0 ? androidx.compose.ui.graphics.ColorKt.c(4293322470L) : j4, (i2 & 32) != 0 ? ColorSchemeKt.e(-8193, semantic.f48374a) : colorScheme, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVColor)) {
            return false;
        }
        LVColor lVColor = (LVColor) obj;
        return Intrinsics.c(this.f48360a, lVColor.f48360a) && Intrinsics.c(this.f48361b, lVColor.f48361b) && Color.c(this.f48362c, lVColor.f48362c) && Color.c(this.d, lVColor.d) && Color.c(this.f48363e, lVColor.f48363e) && Intrinsics.c(this.f48364f, lVColor.f48364f);
    }

    public final int hashCode() {
        int iHashCode = (this.f48361b.hashCode() + (this.f48360a.hashCode() * 31)) * 31;
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return this.f48364f.hashCode() + fc.a(fc.a(fc.a(iHashCode, 31, this.f48362c), 31, this.d), 31, this.f48363e);
    }

    public final String toString() {
        String strI = Color.i(this.f48362c);
        String strI2 = Color.i(this.d);
        String strI3 = Color.i(this.f48363e);
        StringBuilder sb = new StringBuilder("LVColor(core=");
        sb.append(this.f48360a);
        sb.append(", sem=");
        sb.append(this.f48361b);
        sb.append(", black500=");
        cj.C(sb, strI, ", black300=", strI2, ", black100=");
        sb.append(strI3);
        sb.append(", m3Palette=");
        sb.append(this.f48364f);
        sb.append(")");
        return sb.toString();
    }

    public LVColor(Core core, Semantic semantic, long j2, long j3, long j4, ColorScheme colorScheme, DefaultConstructorMarker defaultConstructorMarker) {
        core.getClass();
        semantic.getClass();
        colorScheme.getClass();
        this.f48360a = core;
        this.f48361b = semantic;
        this.f48362c = j2;
        this.d = j3;
        this.f48363e = j4;
        this.f48364f = colorScheme;
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u001d\b\u0087\b\u0018\u00002\u00020\u0001B\u008b\u0002\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0002¢\u0006\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/LVColor$Core;", "", "Landroidx/compose/ui/graphics/Color;", "loud", "strong", "sensible", "soft", "low", "product", "faint", "silent", "interactive", "brand", "positive", "negative", "orderOnBehalf", "invertLoud", "invertProduct", "invertStrong", "invertSensible", "invertSoft", "invertLow", "invertFaint", "invertSilent", "invertInteractive", "invertBrand", "invertPositive", "invertNegative", "invertOrderOnBehalf", "<init>", "(JJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Core {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f48365a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f48366b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f48367c;
        public final long d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f48368e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f48369f;
        public final long g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final long f48370h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final long f48371i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final long f48372j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final long f48373k;
        public final long l;
        public final long m;
        public final long n;
        public final long o;
        public final long p;
        public final long q;
        public final long r;
        public final long s;
        public final long t;
        public final long u;
        public final long v;
        public final long w;
        public final long x;
        public final long y;
        public final long z;

        /* JADX WARN: Illegal instructions before constructor call */
        public Core(long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            long j28;
            long j29;
            long j30;
            long j31;
            long j32;
            long j33;
            long j34;
            long j35;
            long j36;
            long j37;
            long j38;
            long j39;
            long j40;
            long j41;
            long j42;
            long j43;
            long j44;
            long j45;
            long j46;
            long j47;
            long j48;
            long j49;
            long j50;
            long j51;
            long j52;
            long j53;
            if ((i2 & 1) != 0) {
                int i3 = ColorPrimitive.s;
                j28 = ColorPrimitive.f48333b;
            } else {
                j28 = j2;
            }
            if ((i2 & 2) != 0) {
                int i4 = ColorPrimitive.s;
                j29 = ColorPrimitive.d;
            } else {
                j29 = j3;
            }
            if ((i2 & 4) != 0) {
                int i5 = ColorPrimitive.s;
                j30 = ColorPrimitive.f48335e;
            } else {
                j30 = j4;
            }
            if ((i2 & 8) != 0) {
                int i6 = ColorPrimitive.s;
                j31 = ColorPrimitive.f48336f;
            } else {
                j31 = j5;
            }
            if ((i2 & 16) != 0) {
                int i7 = ColorPrimitive.s;
                j32 = ColorPrimitive.g;
            } else {
                j32 = j6;
            }
            if ((i2 & 32) != 0) {
                int i8 = ColorPrimitive.s;
                j33 = ColorPrimitive.f48337h;
            } else {
                j33 = j7;
            }
            if ((i2 & 64) != 0) {
                int i9 = ColorPrimitive.s;
                j34 = ColorPrimitive.f48338i;
            } else {
                j34 = j8;
            }
            if ((i2 & 128) != 0) {
                int i10 = ColorPrimitive.s;
                j35 = ColorPrimitive.f48339j;
            } else {
                j35 = j9;
            }
            long j54 = j28;
            if ((i2 & 256) != 0) {
                int i11 = ColorPrimitive.s;
                j36 = ColorPrimitive.f48332a;
            } else {
                j36 = j10;
            }
            long j55 = j36;
            if ((i2 & 512) != 0) {
                int i12 = ColorPrimitive.s;
                j37 = ColorPrimitive.f48340k;
            } else {
                j37 = j11;
            }
            long j56 = j37;
            if ((i2 & 1024) != 0) {
                int i13 = ColorPrimitive.s;
                j38 = ColorPrimitive.m;
            } else {
                j38 = j12;
            }
            long j57 = j38;
            if ((i2 & 2048) != 0) {
                int i14 = ColorPrimitive.s;
                j39 = ColorPrimitive.o;
            } else {
                j39 = j13;
            }
            long j58 = j39;
            if ((i2 & 4096) != 0) {
                int i15 = ColorPrimitive.s;
                j40 = ColorPrimitive.q;
            } else {
                j40 = j14;
            }
            long j59 = j40;
            if ((i2 & 8192) != 0) {
                int i16 = ColorPrimitive.s;
                j41 = ColorPrimitive.f48338i;
            } else {
                j41 = j15;
            }
            long j60 = j41;
            if ((i2 & 16384) != 0) {
                int i17 = ColorPrimitive.s;
                j42 = ColorPrimitive.f48337h;
            } else {
                j42 = j16;
            }
            if ((i2 & 32768) != 0) {
                int i18 = ColorPrimitive.s;
                j43 = ColorPrimitive.f48336f;
            } else {
                j43 = j17;
            }
            if ((i2 & 65536) != 0) {
                int i19 = ColorPrimitive.s;
                j44 = ColorPrimitive.f48335e;
            } else {
                j44 = j18;
            }
            if ((i2 & 131072) != 0) {
                int i20 = ColorPrimitive.s;
                j45 = ColorPrimitive.d;
            } else {
                j45 = j19;
            }
            if ((i2 & 262144) != 0) {
                int i21 = ColorPrimitive.s;
                j46 = ColorPrimitive.f48334c;
            } else {
                j46 = j20;
            }
            if ((i2 & 524288) != 0) {
                int i22 = ColorPrimitive.s;
                j47 = ColorPrimitive.f48333b;
            } else {
                j47 = j21;
            }
            if ((i2 & 1048576) != 0) {
                int i23 = ColorPrimitive.s;
                j48 = ColorPrimitive.f48332a;
            } else {
                j48 = j22;
            }
            if ((i2 & PKIFailureInfo.badSenderNonce) != 0) {
                int i24 = ColorPrimitive.s;
                j49 = ColorPrimitive.f48339j;
            } else {
                j49 = j23;
            }
            if ((i2 & 4194304) != 0) {
                int i25 = ColorPrimitive.s;
                j50 = ColorPrimitive.l;
            } else {
                j50 = j24;
            }
            if ((i2 & 8388608) != 0) {
                int i26 = ColorPrimitive.s;
                j51 = ColorPrimitive.n;
            } else {
                j51 = j25;
            }
            if ((i2 & 16777216) != 0) {
                int i27 = ColorPrimitive.s;
                j52 = ColorPrimitive.p;
            } else {
                j52 = j26;
            }
            if ((i2 & 33554432) != 0) {
                int i28 = ColorPrimitive.s;
                j53 = ColorPrimitive.r;
            } else {
                j53 = j27;
            }
            this(j54, j29, j30, j31, j32, j33, j34, j35, j55, j56, j57, j58, j59, j60, j42, j43, j44, j45, j46, j47, j48, j49, j50, j51, j52, j53, null);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Core)) {
                return false;
            }
            Core core = (Core) obj;
            return Color.c(this.f48365a, core.f48365a) && Color.c(this.f48366b, core.f48366b) && Color.c(this.f48367c, core.f48367c) && Color.c(this.d, core.d) && Color.c(this.f48368e, core.f48368e) && Color.c(this.f48369f, core.f48369f) && Color.c(this.g, core.g) && Color.c(this.f48370h, core.f48370h) && Color.c(this.f48371i, core.f48371i) && Color.c(this.f48372j, core.f48372j) && Color.c(this.f48373k, core.f48373k) && Color.c(this.l, core.l) && Color.c(this.m, core.m) && Color.c(this.n, core.n) && Color.c(this.o, core.o) && Color.c(this.p, core.p) && Color.c(this.q, core.q) && Color.c(this.r, core.r) && Color.c(this.s, core.s) && Color.c(this.t, core.t) && Color.c(this.u, core.u) && Color.c(this.v, core.v) && Color.c(this.w, core.w) && Color.c(this.x, core.x) && Color.c(this.y, core.y) && Color.c(this.z, core.z);
        }

        public final int hashCode() {
            Color.Companion companion = Color.f8866b;
            ULong.Companion companion2 = ULong.INSTANCE;
            return Long.hashCode(this.z) + fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(Long.hashCode(this.f48365a) * 31, 31, this.f48366b), 31, this.f48367c), 31, this.d), 31, this.f48368e), 31, this.f48369f), 31, this.g), 31, this.f48370h), 31, this.f48371i), 31, this.f48372j), 31, this.f48373k), 31, this.l), 31, this.m), 31, this.n), 31, this.o), 31, this.p), 31, this.q), 31, this.r), 31, this.s), 31, this.t), 31, this.u), 31, this.v), 31, this.w), 31, this.x), 31, this.y);
        }

        public final String toString() {
            String strI = Color.i(this.f48365a);
            String strI2 = Color.i(this.f48366b);
            String strI3 = Color.i(this.f48367c);
            String strI4 = Color.i(this.d);
            String strI5 = Color.i(this.f48368e);
            String strI6 = Color.i(this.f48369f);
            String strI7 = Color.i(this.g);
            String strI8 = Color.i(this.f48370h);
            String strI9 = Color.i(this.f48371i);
            String strI10 = Color.i(this.f48372j);
            String strI11 = Color.i(this.f48373k);
            String strI12 = Color.i(this.l);
            String strI13 = Color.i(this.m);
            String strI14 = Color.i(this.n);
            String strI15 = Color.i(this.o);
            String strI16 = Color.i(this.p);
            String strI17 = Color.i(this.q);
            String strI18 = Color.i(this.r);
            String strI19 = Color.i(this.s);
            String strI20 = Color.i(this.t);
            String strI21 = Color.i(this.u);
            String strI22 = Color.i(this.v);
            String strI23 = Color.i(this.w);
            String strI24 = Color.i(this.x);
            String strI25 = Color.i(this.y);
            String strI26 = Color.i(this.z);
            StringBuilder sbS = fc.s("Core(loud=", strI, ", strong=", strI2, ", sensible=");
            cj.C(sbS, strI3, ", soft=", strI4, ", low=");
            cj.C(sbS, strI5, ", product=", strI6, ", faint=");
            cj.C(sbS, strI7, ", silent=", strI8, ", interactive=");
            cj.C(sbS, strI9, ", brand=", strI10, ", positive=");
            cj.C(sbS, strI11, ", negative=", strI12, ", orderOnBehalf=");
            cj.C(sbS, strI13, ", invertLoud=", strI14, ", invertProduct=");
            cj.C(sbS, strI15, ", invertStrong=", strI16, ", invertSensible=");
            cj.C(sbS, strI17, ", invertSoft=", strI18, ", invertLow=");
            cj.C(sbS, strI19, ", invertFaint=", strI20, ", invertSilent=");
            cj.C(sbS, strI21, ", invertInteractive=", strI22, ", invertBrand=");
            cj.C(sbS, strI23, ", invertPositive=", strI24, ", invertNegative=");
            return tr.l(sbS, strI25, ", invertOrderOnBehalf=", strI26, ")");
        }

        public Core(long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, DefaultConstructorMarker defaultConstructorMarker) {
            this.f48365a = j2;
            this.f48366b = j3;
            this.f48367c = j4;
            this.d = j5;
            this.f48368e = j6;
            this.f48369f = j7;
            this.g = j8;
            this.f48370h = j9;
            this.f48371i = j10;
            this.f48372j = j11;
            this.f48373k = j12;
            this.l = j13;
            this.m = j14;
            this.n = j15;
            this.o = j16;
            this.p = j17;
            this.q = j18;
            this.r = j19;
            this.s = j20;
            this.t = j21;
            this.u = j22;
            this.v = j23;
            this.w = j24;
            this.x = j25;
            this.y = j26;
            this.z = j27;
        }
    }
}
