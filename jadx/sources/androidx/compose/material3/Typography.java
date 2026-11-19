package androidx.compose.material3;

import androidx.compose.material3.tokens.TypographyTokens;
import androidx.compose.ui.text.TextStyle;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\"\b\u0007\u0018\u00002\u00020\u0001Bµ\u0002\b\u0000\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u0002\u0012\b\b\u0002\u0010 \u001a\u00020\u0002¢\u0006\u0004\b!\u0010\"B\u009f\u0001\b\u0016\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b!\u0010#¨\u0006$"}, d2 = {"Landroidx/compose/material3/Typography;", "", "Landroidx/compose/ui/text/TextStyle;", "displayLarge", "displayMedium", "displaySmall", "headlineLarge", "headlineMedium", "headlineSmall", "titleLarge", "titleMedium", "titleSmall", "bodyLarge", "bodyMedium", "bodySmall", "labelLarge", "labelMedium", "labelSmall", "displayLargeEmphasized", "displayMediumEmphasized", "displaySmallEmphasized", "headlineLargeEmphasized", "headlineMediumEmphasized", "headlineSmallEmphasized", "titleLargeEmphasized", "titleMediumEmphasized", "titleSmallEmphasized", "bodyLargeEmphasized", "bodyMediumEmphasized", "bodySmallEmphasized", "labelLargeEmphasized", "labelMediumEmphasized", "labelSmallEmphasized", "<init>", "(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;)V", "(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class Typography {
    public final TextStyle A;
    public final TextStyle B;
    public final TextStyle C;
    public final TextStyle D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextStyle f7442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextStyle f7443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TextStyle f7444c;
    public final TextStyle d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextStyle f7445e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TextStyle f7446f;
    public final TextStyle g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final TextStyle f7447h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final TextStyle f7448i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextStyle f7449j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final TextStyle f7450k;
    public final TextStyle l;
    public final TextStyle m;
    public final TextStyle n;
    public final TextStyle o;
    public final TextStyle p;
    public final TextStyle q;
    public final TextStyle r;
    public final TextStyle s;
    public final TextStyle t;
    public final TextStyle u;
    public final TextStyle v;
    public final TextStyle w;
    public final TextStyle x;
    public final TextStyle y;
    public final TextStyle z;

    /* JADX WARN: Illegal instructions before constructor call */
    public Typography(TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, TextStyle textStyle14, TextStyle textStyle15, TextStyle textStyle16, TextStyle textStyle17, TextStyle textStyle18, TextStyle textStyle19, TextStyle textStyle20, TextStyle textStyle21, TextStyle textStyle22, TextStyle textStyle23, TextStyle textStyle24, TextStyle textStyle25, TextStyle textStyle26, TextStyle textStyle27, TextStyle textStyle28, TextStyle textStyle29, TextStyle textStyle30, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        TextStyle textStyle31;
        TextStyle textStyle32;
        TextStyle textStyle33;
        TextStyle textStyle34;
        TextStyle textStyle35;
        TextStyle textStyle36;
        TextStyle textStyle37;
        TextStyle textStyle38;
        TextStyle textStyle39;
        TextStyle textStyle40;
        TextStyle textStyle41;
        TextStyle textStyle42;
        TextStyle textStyle43;
        TextStyle textStyle44;
        TextStyle textStyle45;
        TextStyle textStyle46;
        TextStyle textStyle47;
        TextStyle textStyle48;
        TextStyle textStyle49;
        TextStyle textStyle50;
        TextStyle textStyle51;
        TextStyle textStyle52;
        TextStyle textStyle53;
        TextStyle textStyle54;
        TextStyle textStyle55;
        TextStyle textStyle56;
        TextStyle textStyle57;
        TextStyle textStyle58;
        TextStyle textStyle59;
        TextStyle textStyle60;
        if ((i2 & 1) != 0) {
            TextStyle textStyle61 = TypographyTokens.f7901a;
            textStyle31 = TypographyTokens.d;
        } else {
            textStyle31 = textStyle;
        }
        if ((i2 & 2) != 0) {
            TextStyle textStyle62 = TypographyTokens.f7901a;
            textStyle32 = TypographyTokens.f7904e;
        } else {
            textStyle32 = textStyle2;
        }
        if ((i2 & 4) != 0) {
            TextStyle textStyle63 = TypographyTokens.f7901a;
            textStyle33 = TypographyTokens.f7905f;
        } else {
            textStyle33 = textStyle3;
        }
        if ((i2 & 8) != 0) {
            TextStyle textStyle64 = TypographyTokens.f7901a;
            textStyle34 = TypographyTokens.g;
        } else {
            textStyle34 = textStyle4;
        }
        if ((i2 & 16) != 0) {
            TextStyle textStyle65 = TypographyTokens.f7901a;
            textStyle35 = TypographyTokens.f7906h;
        } else {
            textStyle35 = textStyle5;
        }
        if ((i2 & 32) != 0) {
            TextStyle textStyle66 = TypographyTokens.f7901a;
            textStyle36 = TypographyTokens.f7907i;
        } else {
            textStyle36 = textStyle6;
        }
        if ((i2 & 64) != 0) {
            TextStyle textStyle67 = TypographyTokens.f7901a;
            textStyle37 = TypographyTokens.m;
        } else {
            textStyle37 = textStyle7;
        }
        if ((i2 & 128) != 0) {
            TextStyle textStyle68 = TypographyTokens.f7901a;
            textStyle38 = TypographyTokens.n;
        } else {
            textStyle38 = textStyle8;
        }
        if ((i2 & 256) != 0) {
            TextStyle textStyle69 = TypographyTokens.f7901a;
            textStyle39 = TypographyTokens.o;
        } else {
            textStyle39 = textStyle9;
        }
        if ((i2 & 512) != 0) {
            TextStyle textStyle70 = TypographyTokens.f7901a;
            textStyle40 = TypographyTokens.f7901a;
        } else {
            textStyle40 = textStyle10;
        }
        if ((i2 & 1024) != 0) {
            TextStyle textStyle71 = TypographyTokens.f7901a;
            textStyle41 = TypographyTokens.f7902b;
        } else {
            textStyle41 = textStyle11;
        }
        if ((i2 & 2048) != 0) {
            TextStyle textStyle72 = TypographyTokens.f7901a;
            textStyle42 = TypographyTokens.f7903c;
        } else {
            textStyle42 = textStyle12;
        }
        if ((i2 & 4096) != 0) {
            TextStyle textStyle73 = TypographyTokens.f7901a;
            textStyle43 = TypographyTokens.f7908j;
        } else {
            textStyle43 = textStyle13;
        }
        if ((i2 & 8192) != 0) {
            TextStyle textStyle74 = TypographyTokens.f7901a;
            textStyle44 = TypographyTokens.f7909k;
        } else {
            textStyle44 = textStyle14;
        }
        if ((i2 & 16384) != 0) {
            TextStyle textStyle75 = TypographyTokens.f7901a;
            textStyle45 = TypographyTokens.l;
        } else {
            textStyle45 = textStyle15;
        }
        if ((i2 & 32768) != 0) {
            TextStyle textStyle76 = TypographyTokens.f7901a;
            textStyle46 = TypographyTokens.s;
        } else {
            textStyle46 = textStyle16;
        }
        if ((i2 & 65536) != 0) {
            TextStyle textStyle77 = TypographyTokens.f7901a;
            textStyle47 = TypographyTokens.t;
        } else {
            textStyle47 = textStyle17;
        }
        if ((i2 & 131072) != 0) {
            TextStyle textStyle78 = TypographyTokens.f7901a;
            textStyle48 = TypographyTokens.u;
        } else {
            textStyle48 = textStyle18;
        }
        if ((i2 & 262144) != 0) {
            TextStyle textStyle79 = TypographyTokens.f7901a;
            textStyle49 = TypographyTokens.v;
        } else {
            textStyle49 = textStyle19;
        }
        if ((i2 & 524288) != 0) {
            TextStyle textStyle80 = TypographyTokens.f7901a;
            textStyle50 = TypographyTokens.w;
        } else {
            textStyle50 = textStyle20;
        }
        if ((i2 & 1048576) != 0) {
            TextStyle textStyle81 = TypographyTokens.f7901a;
            textStyle51 = TypographyTokens.x;
        } else {
            textStyle51 = textStyle21;
        }
        if ((i2 & PKIFailureInfo.badSenderNonce) != 0) {
            TextStyle textStyle82 = TypographyTokens.f7901a;
            textStyle52 = TypographyTokens.B;
        } else {
            textStyle52 = textStyle22;
        }
        if ((i2 & 4194304) != 0) {
            TextStyle textStyle83 = TypographyTokens.f7901a;
            textStyle53 = TypographyTokens.C;
        } else {
            textStyle53 = textStyle23;
        }
        if ((i2 & 8388608) != 0) {
            TextStyle textStyle84 = TypographyTokens.f7901a;
            textStyle54 = TypographyTokens.D;
        } else {
            textStyle54 = textStyle24;
        }
        if ((i2 & 16777216) != 0) {
            TextStyle textStyle85 = TypographyTokens.f7901a;
            textStyle55 = TypographyTokens.p;
        } else {
            textStyle55 = textStyle25;
        }
        if ((i2 & 33554432) != 0) {
            TextStyle textStyle86 = TypographyTokens.f7901a;
            textStyle56 = TypographyTokens.q;
        } else {
            textStyle56 = textStyle26;
        }
        if ((i2 & 67108864) != 0) {
            TextStyle textStyle87 = TypographyTokens.f7901a;
            textStyle57 = TypographyTokens.r;
        } else {
            textStyle57 = textStyle27;
        }
        if ((i2 & 134217728) != 0) {
            TextStyle textStyle88 = TypographyTokens.f7901a;
            textStyle58 = TypographyTokens.y;
        } else {
            textStyle58 = textStyle28;
        }
        if ((i2 & 268435456) != 0) {
            TextStyle textStyle89 = TypographyTokens.f7901a;
            textStyle59 = TypographyTokens.z;
        } else {
            textStyle59 = textStyle29;
        }
        if ((i2 & PKIFailureInfo.duplicateCertReq) != 0) {
            TextStyle textStyle90 = TypographyTokens.f7901a;
            textStyle60 = TypographyTokens.A;
        } else {
            textStyle60 = textStyle30;
        }
        this(textStyle31, textStyle32, textStyle33, textStyle34, textStyle35, textStyle36, textStyle37, textStyle38, textStyle39, textStyle40, textStyle41, textStyle42, textStyle43, textStyle44, textStyle45, textStyle46, textStyle47, textStyle48, textStyle49, textStyle50, textStyle51, textStyle52, textStyle53, textStyle54, textStyle55, textStyle56, textStyle57, textStyle58, textStyle59, textStyle60);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Typography)) {
            return false;
        }
        Typography typography = (Typography) obj;
        return Intrinsics.c(this.f7442a, typography.f7442a) && Intrinsics.c(this.f7443b, typography.f7443b) && Intrinsics.c(this.f7444c, typography.f7444c) && Intrinsics.c(this.d, typography.d) && Intrinsics.c(this.f7445e, typography.f7445e) && Intrinsics.c(this.f7446f, typography.f7446f) && Intrinsics.c(this.g, typography.g) && Intrinsics.c(this.f7447h, typography.f7447h) && Intrinsics.c(this.f7448i, typography.f7448i) && Intrinsics.c(this.f7449j, typography.f7449j) && Intrinsics.c(this.f7450k, typography.f7450k) && Intrinsics.c(this.l, typography.l) && Intrinsics.c(this.m, typography.m) && Intrinsics.c(this.n, typography.n) && Intrinsics.c(this.o, typography.o) && Intrinsics.c(this.p, typography.p) && Intrinsics.c(this.q, typography.q) && Intrinsics.c(this.r, typography.r) && Intrinsics.c(this.s, typography.s) && Intrinsics.c(this.t, typography.t) && Intrinsics.c(this.u, typography.u) && Intrinsics.c(this.v, typography.v) && Intrinsics.c(this.w, typography.w) && Intrinsics.c(this.x, typography.x) && Intrinsics.c(this.y, typography.y) && Intrinsics.c(this.z, typography.z) && Intrinsics.c(this.A, typography.A) && Intrinsics.c(this.B, typography.B) && Intrinsics.c(this.C, typography.C) && Intrinsics.c(this.D, typography.D);
    }

    public final int hashCode() {
        return this.D.hashCode() + pq0.e(this.C, pq0.e(this.B, pq0.e(this.A, pq0.e(this.z, pq0.e(this.y, pq0.e(this.x, pq0.e(this.w, pq0.e(this.v, pq0.e(this.u, pq0.e(this.t, pq0.e(this.s, pq0.e(this.r, pq0.e(this.q, pq0.e(this.p, pq0.e(this.o, pq0.e(this.n, pq0.e(this.m, pq0.e(this.l, pq0.e(this.f7450k, pq0.e(this.f7449j, pq0.e(this.f7448i, pq0.e(this.f7447h, pq0.e(this.g, pq0.e(this.f7446f, pq0.e(this.f7445e, pq0.e(this.d, pq0.e(this.f7444c, pq0.e(this.f7443b, this.f7442a.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "Typography(displayLarge=" + this.f7442a + ", displayMedium=" + this.f7443b + ",displaySmall=" + this.f7444c + ", headlineLarge=" + this.d + ", headlineMedium=" + this.f7445e + ", headlineSmall=" + this.f7446f + ", titleLarge=" + this.g + ", titleMedium=" + this.f7447h + ", titleSmall=" + this.f7448i + ", bodyLarge=" + this.f7449j + ", bodyMedium=" + this.f7450k + ", bodySmall=" + this.l + ", labelLarge=" + this.m + ", labelMedium=" + this.n + ", labelSmall=" + this.o + ", displayLargeEmphasized=" + this.p + ", displayMediumEmphasized=" + this.q + ", displaySmallEmphasized=" + this.r + ", headlineLargeEmphasized=" + this.s + ", headlineMediumEmphasized=" + this.t + ", headlineSmallEmphasized=" + this.u + ", titleLargeEmphasized=" + this.v + ", titleMediumEmphasized=" + this.w + ", titleSmallEmphasized=" + this.x + ", bodyLargeEmphasized=" + this.y + ", bodyMediumEmphasized=" + this.z + ", bodySmallEmphasized=" + this.A + ", labelLargeEmphasized=" + this.B + ", labelMediumEmphasized=" + this.C + ", labelSmallEmphasized=" + this.D + ')';
    }

    public Typography(TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, TextStyle textStyle14, TextStyle textStyle15, TextStyle textStyle16, TextStyle textStyle17, TextStyle textStyle18, TextStyle textStyle19, TextStyle textStyle20, TextStyle textStyle21, TextStyle textStyle22, TextStyle textStyle23, TextStyle textStyle24, TextStyle textStyle25, TextStyle textStyle26, TextStyle textStyle27, TextStyle textStyle28, TextStyle textStyle29, TextStyle textStyle30) {
        this.f7442a = textStyle;
        this.f7443b = textStyle2;
        this.f7444c = textStyle3;
        this.d = textStyle4;
        this.f7445e = textStyle5;
        this.f7446f = textStyle6;
        this.g = textStyle7;
        this.f7447h = textStyle8;
        this.f7448i = textStyle9;
        this.f7449j = textStyle10;
        this.f7450k = textStyle11;
        this.l = textStyle12;
        this.m = textStyle13;
        this.n = textStyle14;
        this.o = textStyle15;
        this.p = textStyle16;
        this.q = textStyle17;
        this.r = textStyle18;
        this.s = textStyle19;
        this.t = textStyle20;
        this.u = textStyle21;
        this.v = textStyle22;
        this.w = textStyle23;
        this.x = textStyle24;
        this.y = textStyle25;
        this.z = textStyle26;
        this.A = textStyle27;
        this.B = textStyle28;
        this.C = textStyle29;
        this.D = textStyle30;
    }

    public Typography() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 1073741823, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Typography(TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, TextStyle textStyle14, TextStyle textStyle15, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        TextStyle textStyle16;
        TextStyle textStyle17;
        TextStyle textStyle18;
        TextStyle textStyle19;
        TextStyle textStyle20;
        TextStyle textStyle21;
        TextStyle textStyle22;
        TextStyle textStyle23;
        TextStyle textStyle24;
        TextStyle textStyle25;
        TextStyle textStyle26;
        TextStyle textStyle27;
        TextStyle textStyle28;
        TextStyle textStyle29;
        TextStyle textStyle30;
        if ((i2 & 1) != 0) {
            TextStyle textStyle31 = TypographyTokens.f7901a;
            textStyle16 = TypographyTokens.d;
        } else {
            textStyle16 = textStyle;
        }
        if ((i2 & 2) != 0) {
            TextStyle textStyle32 = TypographyTokens.f7901a;
            textStyle17 = TypographyTokens.f7904e;
        } else {
            textStyle17 = textStyle2;
        }
        if ((i2 & 4) != 0) {
            TextStyle textStyle33 = TypographyTokens.f7901a;
            textStyle18 = TypographyTokens.f7905f;
        } else {
            textStyle18 = textStyle3;
        }
        if ((i2 & 8) != 0) {
            TextStyle textStyle34 = TypographyTokens.f7901a;
            textStyle19 = TypographyTokens.g;
        } else {
            textStyle19 = textStyle4;
        }
        if ((i2 & 16) != 0) {
            TextStyle textStyle35 = TypographyTokens.f7901a;
            textStyle20 = TypographyTokens.f7906h;
        } else {
            textStyle20 = textStyle5;
        }
        if ((i2 & 32) != 0) {
            TextStyle textStyle36 = TypographyTokens.f7901a;
            textStyle21 = TypographyTokens.f7907i;
        } else {
            textStyle21 = textStyle6;
        }
        if ((i2 & 64) != 0) {
            TextStyle textStyle37 = TypographyTokens.f7901a;
            textStyle22 = TypographyTokens.m;
        } else {
            textStyle22 = textStyle7;
        }
        if ((i2 & 128) != 0) {
            TextStyle textStyle38 = TypographyTokens.f7901a;
            textStyle23 = TypographyTokens.n;
        } else {
            textStyle23 = textStyle8;
        }
        if ((i2 & 256) != 0) {
            TextStyle textStyle39 = TypographyTokens.f7901a;
            textStyle24 = TypographyTokens.o;
        } else {
            textStyle24 = textStyle9;
        }
        if ((i2 & 512) != 0) {
            TextStyle textStyle40 = TypographyTokens.f7901a;
            textStyle25 = TypographyTokens.f7901a;
        } else {
            textStyle25 = textStyle10;
        }
        if ((i2 & 1024) != 0) {
            TextStyle textStyle41 = TypographyTokens.f7901a;
            textStyle26 = TypographyTokens.f7902b;
        } else {
            textStyle26 = textStyle11;
        }
        if ((i2 & 2048) != 0) {
            TextStyle textStyle42 = TypographyTokens.f7901a;
            textStyle27 = TypographyTokens.f7903c;
        } else {
            textStyle27 = textStyle12;
        }
        if ((i2 & 4096) != 0) {
            TextStyle textStyle43 = TypographyTokens.f7901a;
            textStyle28 = TypographyTokens.f7908j;
        } else {
            textStyle28 = textStyle13;
        }
        if ((i2 & 8192) != 0) {
            TextStyle textStyle44 = TypographyTokens.f7901a;
            textStyle29 = TypographyTokens.f7909k;
        } else {
            textStyle29 = textStyle14;
        }
        if ((i2 & 16384) != 0) {
            TextStyle textStyle45 = TypographyTokens.f7901a;
            textStyle30 = TypographyTokens.l;
        } else {
            textStyle30 = textStyle15;
        }
        this(textStyle16, textStyle17, textStyle18, textStyle19, textStyle20, textStyle21, textStyle22, textStyle23, textStyle24, textStyle25, textStyle26, textStyle27, textStyle28, textStyle29, textStyle30);
    }

    public Typography(TextStyle textStyle, TextStyle textStyle2, TextStyle textStyle3, TextStyle textStyle4, TextStyle textStyle5, TextStyle textStyle6, TextStyle textStyle7, TextStyle textStyle8, TextStyle textStyle9, TextStyle textStyle10, TextStyle textStyle11, TextStyle textStyle12, TextStyle textStyle13, TextStyle textStyle14, TextStyle textStyle15) {
        this(textStyle, textStyle2, textStyle3, textStyle4, textStyle5, textStyle6, textStyle7, textStyle8, textStyle9, textStyle10, textStyle11, textStyle12, textStyle13, textStyle14, textStyle15, textStyle, textStyle2, textStyle3, textStyle4, textStyle5, textStyle6, textStyle7, textStyle8, textStyle9, textStyle10, textStyle11, textStyle12, textStyle13, textStyle14, textStyle15);
    }
}
