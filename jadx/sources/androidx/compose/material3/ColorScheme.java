package androidx.compose.material3;

import androidx.compose.ui.graphics.Color;
import defpackage.o60;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b5\b\u0007\u0018\u00002\u00020\u0001B\u0087\u0003\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u0012\u0006\u0010\u001b\u001a\u00020\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u0002\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\u0006\u0010\u001f\u001a\u00020\u0002\u0012\u0006\u0010 \u001a\u00020\u0002\u0012\u0006\u0010!\u001a\u00020\u0002\u0012\u0006\u0010\"\u001a\u00020\u0002\u0012\u0006\u0010#\u001a\u00020\u0002\u0012\u0006\u0010$\u001a\u00020\u0002\u0012\u0006\u0010%\u001a\u00020\u0002\u0012\u0006\u0010&\u001a\u00020\u0002\u0012\u0006\u0010'\u001a\u00020\u0002\u0012\u0006\u0010(\u001a\u00020\u0002\u0012\u0006\u0010)\u001a\u00020\u0002\u0012\u0006\u0010*\u001a\u00020\u0002\u0012\u0006\u0010+\u001a\u00020\u0002\u0012\u0006\u0010,\u001a\u00020\u0002\u0012\u0006\u0010-\u001a\u00020\u0002\u0012\u0006\u0010.\u001a\u00020\u0002\u0012\u0006\u0010/\u001a\u00020\u0002\u0012\u0006\u00100\u001a\u00020\u0002\u0012\u0006\u00101\u001a\u00020\u0002\u0012\u0006\u00102\u001a\u00020\u0002¢\u0006\u0004\b3\u00104B©\u0002\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u0012\u0006\u0010\u001b\u001a\u00020\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u0002\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\u0006\u0010\u001f\u001a\u00020\u0002\u0012\u0006\u0010 \u001a\u00020\u0002\u0012\u0006\u0010!\u001a\u00020\u0002\u0012\u0006\u0010\"\u001a\u00020\u0002\u0012\u0006\u0010#\u001a\u00020\u0002\u0012\u0006\u0010$\u001a\u00020\u0002\u0012\u0006\u0010%\u001a\u00020\u0002\u0012\u0006\u0010&\u001a\u00020\u0002¢\u0006\u0004\b3\u00105Bñ\u0001\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\u0002\u0012\u0006\u0010\u001b\u001a\u00020\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u0002\u0012\u0006\u0010\u001e\u001a\u00020\u0002\u0012\u0006\u0010\u001f\u001a\u00020\u0002¢\u0006\u0004\b3\u00106¨\u00067"}, d2 = {"Landroidx/compose/material3/ColorScheme;", "", "Landroidx/compose/ui/graphics/Color;", "primary", "onPrimary", "primaryContainer", "onPrimaryContainer", "inversePrimary", "secondary", "onSecondary", "secondaryContainer", "onSecondaryContainer", "tertiary", "onTertiary", "tertiaryContainer", "onTertiaryContainer", "background", "onBackground", "surface", "onSurface", "surfaceVariant", "onSurfaceVariant", "surfaceTint", "inverseSurface", "inverseOnSurface", "error", "onError", "errorContainer", "onErrorContainer", "outline", "outlineVariant", "scrim", "surfaceBright", "surfaceDim", "surfaceContainer", "surfaceContainerHigh", "surfaceContainerHighest", "surfaceContainerLow", "surfaceContainerLowest", "primaryFixed", "primaryFixedDim", "onPrimaryFixed", "onPrimaryFixedVariant", "secondaryFixed", "secondaryFixedDim", "onSecondaryFixed", "onSecondaryFixedVariant", "tertiaryFixed", "tertiaryFixedDim", "onTertiaryFixed", "onTertiaryFixedVariant", "<init>", "(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ColorScheme {
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
    public final long R;
    public final long S;
    public final long T;
    public final long U;
    public final long V;
    public ButtonColors W;
    public ButtonColors X;
    public CardColors Y;
    public TopAppBarColors Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f6662a;
    public DatePickerColors a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f6663b;
    public IconButtonColors b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f6664c;
    public IconToggleButtonColors c0;
    public final long d;
    public MenuItemColors d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f6665e;
    public RadioButtonColors e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f6666f;
    public SliderColors f0;
    public final long g;
    public SwitchColors g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f6667h;
    public TextFieldColors h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f6668i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f6669j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f6670k;
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

    public ColorScheme(long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, long j38, long j39, long j40, long j41, long j42, long j43, long j44, long j45, long j46, long j47, long j48, long j49, DefaultConstructorMarker defaultConstructorMarker) {
        this.f6662a = j2;
        this.f6663b = j3;
        this.f6664c = j4;
        this.d = j5;
        this.f6665e = j6;
        this.f6666f = j7;
        this.g = j8;
        this.f6667h = j9;
        this.f6668i = j10;
        this.f6669j = j11;
        this.f6670k = j12;
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
        this.C = j30;
        this.D = j31;
        this.E = j32;
        this.F = j33;
        this.G = j34;
        this.H = j35;
        this.I = j36;
        this.J = j37;
        this.K = j38;
        this.L = j39;
        this.M = j40;
        this.N = j41;
        this.O = j42;
        this.P = j43;
        this.Q = j44;
        this.R = j45;
        this.S = j46;
        this.T = j47;
        this.U = j48;
        this.V = j49;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ColorScheme(primary=");
        o60.y(this.f6662a, "onPrimary=", sb);
        o60.y(this.f6663b, "primaryContainer=", sb);
        o60.y(this.f6664c, "onPrimaryContainer=", sb);
        long j2 = this.d;
        o60.y(j2, "inversePrimary=", sb);
        o60.y(this.f6665e, "secondary=", sb);
        o60.y(this.f6666f, "onSecondary=", sb);
        o60.y(this.g, "secondaryContainer=", sb);
        o60.y(this.f6667h, "onSecondaryContainer=", sb);
        o60.y(this.f6668i, "tertiary=", sb);
        o60.y(this.f6669j, "onTertiary=", sb);
        o60.y(this.f6670k, "tertiaryContainer=", sb);
        o60.y(this.l, "onTertiaryContainer=", sb);
        o60.y(this.m, "background=", sb);
        o60.y(this.n, "onBackground=", sb);
        o60.y(this.o, "surface=", sb);
        o60.y(this.p, "onSurface=", sb);
        o60.y(this.q, "surfaceVariant=", sb);
        o60.y(this.r, "onSurfaceVariant=", sb);
        o60.y(this.s, "surfaceTint=", sb);
        o60.y(this.t, "inverseSurface=", sb);
        o60.y(this.u, "inverseOnSurface=", sb);
        o60.y(this.v, "error=", sb);
        o60.y(this.w, "onError=", sb);
        o60.y(this.x, "errorContainer=", sb);
        o60.y(this.y, "onErrorContainer=", sb);
        o60.y(this.z, "outline=", sb);
        o60.y(this.A, "outlineVariant=", sb);
        o60.y(this.B, "scrim=", sb);
        o60.y(this.C, "surfaceBright=", sb);
        o60.y(this.D, "surfaceDim=", sb);
        o60.y(this.E, "surfaceContainer=", sb);
        o60.y(this.F, "surfaceContainerHigh=", sb);
        o60.y(this.G, "surfaceContainerHighest=", sb);
        o60.y(this.H, "surfaceContainerLow=", sb);
        o60.y(this.I, "surfaceContainerLowest=", sb);
        o60.y(this.J, "primaryFixed=", sb);
        o60.y(this.K, "primaryFixedDim=", sb);
        o60.y(this.L, "onPrimaryFixed=", sb);
        o60.y(j2, "onPrimaryFixedVariant=", sb);
        o60.y(this.N, "secondaryFixed=", sb);
        o60.y(this.O, "secondaryFixedDim=", sb);
        o60.y(this.P, "onSecondaryFixed=", sb);
        o60.y(this.Q, "onSecondaryFixedVariant=", sb);
        o60.y(this.R, "tertiaryFixed=", sb);
        o60.y(this.S, "tertiaryFixedDim=", sb);
        o60.y(this.T, "onTertiaryFixed=", sb);
        o60.y(this.U, "onTertiaryFixedVariant=", sb);
        sb.append((Object) Color.i(this.V));
        sb.append(')');
        return sb.toString();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public ColorScheme(long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, long j31, long j32, long j33, long j34, long j35, long j36, long j37, DefaultConstructorMarker defaultConstructorMarker) {
        Color.f8866b.getClass();
        long j38 = Color.f8871i;
        this(j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j32, j33, j34, j35, j36, j37, j38, j38, j38, j38, j38, j38, j38, j38, j38, j38, j38, j38, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    @Deprecated
    public ColorScheme(long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, long j30, DefaultConstructorMarker defaultConstructorMarker) {
        Color.f8866b.getClass();
        long j31 = Color.f8871i;
        this(j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16, j17, j18, j19, j20, j21, j22, j23, j24, j25, j26, j27, j28, j29, j30, j31, j31, j31, j31, j31, j31, j31, j31, j31, j31, j31, j31, j31, j31, j31, j31, j31, j31, j31, null);
    }
}
