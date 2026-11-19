package androidx.compose.material3;

import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.ui.graphics.Color;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.ULong;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b$\b\u0007\u0018\u00002\u00020\u0001Bß\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u0012\u0006\u0010\u001b\u001a\u00020\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u0002\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\u0006\u0010\u001f\u001a\u00020\u0002\u0012\u0006\u0010 \u001a\u00020\u0002\u0012\u0006\u0010!\u001a\u00020\u0002\u0012\u0006\u0010\"\u001a\u00020\u0002\u0012\u0006\u0010#\u001a\u00020\u0002\u0012\u0006\u0010$\u001a\u00020\u0002\u0012\u0006\u0010%\u001a\u00020\u0002\u0012\u0006\u0010&\u001a\u00020\u0002\u0012\u0006\u0010'\u001a\u00020\u0002\u0012\u0006\u0010(\u001a\u00020\u0002\u0012\u0006\u0010)\u001a\u00020\u0002\u0012\u0006\u0010*\u001a\u00020\u0002\u0012\u0006\u0010+\u001a\u00020\u0002\u0012\u0006\u0010,\u001a\u00020\u0002\u0012\u0006\u0010-\u001a\u00020\u0002\u0012\u0006\u0010.\u001a\u00020\u0002¢\u0006\u0004\b/\u00100¨\u00061"}, d2 = {"Landroidx/compose/material3/TextFieldColors;", "", "Landroidx/compose/ui/graphics/Color;", "focusedTextColor", "unfocusedTextColor", "disabledTextColor", "errorTextColor", "focusedContainerColor", "unfocusedContainerColor", "disabledContainerColor", "errorContainerColor", "cursorColor", "errorCursorColor", "Landroidx/compose/foundation/text/selection/TextSelectionColors;", "textSelectionColors", "focusedIndicatorColor", "unfocusedIndicatorColor", "disabledIndicatorColor", "errorIndicatorColor", "focusedLeadingIconColor", "unfocusedLeadingIconColor", "disabledLeadingIconColor", "errorLeadingIconColor", "focusedTrailingIconColor", "unfocusedTrailingIconColor", "disabledTrailingIconColor", "errorTrailingIconColor", "focusedLabelColor", "unfocusedLabelColor", "disabledLabelColor", "errorLabelColor", "focusedPlaceholderColor", "unfocusedPlaceholderColor", "disabledPlaceholderColor", "errorPlaceholderColor", "focusedSupportingTextColor", "unfocusedSupportingTextColor", "disabledSupportingTextColor", "errorSupportingTextColor", "focusedPrefixColor", "unfocusedPrefixColor", "disabledPrefixColor", "errorPrefixColor", "focusedSuffixColor", "unfocusedSuffixColor", "disabledSuffixColor", "errorSuffixColor", "<init>", "(JJJJJJJJJJLandroidx/compose/foundation/text/selection/TextSelectionColors;JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TextFieldColors {
    public final long A;
    public final long B;
    public final long C;
    public final long D;
    public final long E;
    public final long F;
    public final long G;
    public final long H;
    public final long I;
    public final long J;
    public final long K;
    public final long L;
    public final long M;
    public final long N;
    public final long O;
    public final long P;
    public final long Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f7363a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f7364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f7365c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f7366e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f7367f;
    public final long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f7368h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f7369i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f7370j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TextSelectionColors f7371k;
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

    public TextFieldColors(long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, TextSelectionColors textSelectionColors, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, DefaultConstructorMarker defaultConstructorMarker) {
        this.f7363a = j2;
        this.f7364b = j3;
        this.f7365c = j4;
        this.d = j5;
        this.f7366e = j6;
        this.f7367f = j7;
        this.g = j8;
        this.f7368h = j9;
        this.f7369i = j10;
        this.f7370j = j11;
        this.f7371k = textSelectionColors;
        this.l = j12;
        this.m = j13;
        this.n = j14;
        this.o = j15;
        this.p = j16;
        this.q = j17;
        this.r = j18;
        this.s = j19;
        this.t = j20;
        this.u = j21;
        this.v = j22;
        this.w = j23;
        this.x = j24;
        this.y = j25;
        this.z = j26;
        this.A = j27;
        this.B = j28;
        this.C = j29;
        this.D = j30;
        this.E = j31;
        this.F = j32;
        this.G = j33;
        this.H = j34;
        this.I = j35;
        this.J = j36;
        this.K = j37;
        this.L = j38;
        this.M = j39;
        this.N = j40;
        this.O = j41;
        this.P = j42;
        this.Q = j43;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof TextFieldColors)) {
            return false;
        }
        TextFieldColors textFieldColors = (TextFieldColors) obj;
        return Color.c(this.f7363a, textFieldColors.f7363a) && Color.c(this.f7364b, textFieldColors.f7364b) && Color.c(this.f7365c, textFieldColors.f7365c) && Color.c(this.d, textFieldColors.d) && Color.c(this.f7366e, textFieldColors.f7366e) && Color.c(this.f7367f, textFieldColors.f7367f) && Color.c(this.g, textFieldColors.g) && Color.c(this.f7368h, textFieldColors.f7368h) && Color.c(this.f7369i, textFieldColors.f7369i) && Color.c(this.f7370j, textFieldColors.f7370j) && Intrinsics.c(this.f7371k, textFieldColors.f7371k) && Color.c(this.l, textFieldColors.l) && Color.c(this.m, textFieldColors.m) && Color.c(this.n, textFieldColors.n) && Color.c(this.o, textFieldColors.o) && Color.c(this.p, textFieldColors.p) && Color.c(this.q, textFieldColors.q) && Color.c(this.r, textFieldColors.r) && Color.c(this.s, textFieldColors.s) && Color.c(this.t, textFieldColors.t) && Color.c(this.u, textFieldColors.u) && Color.c(this.v, textFieldColors.v) && Color.c(this.w, textFieldColors.w) && Color.c(this.x, textFieldColors.x) && Color.c(this.y, textFieldColors.y) && Color.c(this.z, textFieldColors.z) && Color.c(this.A, textFieldColors.A) && Color.c(this.B, textFieldColors.B) && Color.c(this.C, textFieldColors.C) && Color.c(this.D, textFieldColors.D) && Color.c(this.E, textFieldColors.E) && Color.c(this.F, textFieldColors.F) && Color.c(this.G, textFieldColors.G) && Color.c(this.H, textFieldColors.H) && Color.c(this.I, textFieldColors.I) && Color.c(this.J, textFieldColors.J) && Color.c(this.K, textFieldColors.K) && Color.c(this.L, textFieldColors.L) && Color.c(this.M, textFieldColors.M) && Color.c(this.N, textFieldColors.N) && Color.c(this.O, textFieldColors.O) && Color.c(this.P, textFieldColors.P) && Color.c(this.Q, textFieldColors.Q);
    }

    public final int hashCode() {
        Color.Companion companion = Color.f8866b;
        ULong.Companion companion2 = ULong.INSTANCE;
        return Long.hashCode(this.Q) + fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a((this.f7371k.hashCode() + fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(fc.a(Long.hashCode(this.f7363a) * 31, 31, this.f7364b), 31, this.f7365c), 31, this.d), 31, this.f7366e), 31, this.f7367f), 31, this.g), 31, this.f7368h), 31, this.f7369i), 31, this.f7370j)) * 31, 31, this.l), 31, this.m), 31, this.n), 31, this.o), 31, this.p), 31, this.q), 31, this.r), 31, this.s), 31, this.t), 31, this.u), 31, this.v), 31, this.w), 31, this.x), 31, this.y), 31, this.z), 31, this.A), 31, this.B), 31, this.C), 31, this.D), 31, this.E), 31, this.F), 31, this.G), 31, this.H), 31, this.I), 31, this.J), 31, this.K), 31, this.L), 31, this.M), 31, this.N), 31, this.O), 31, this.P);
    }
}
