package androidx.compose.material3;

import androidx.compose.material3.tokens.ColorLightTokens;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import defpackage.cm;
import defpackage.v40;
import kotlin.Metadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class ColorSchemeKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f6671a = new StaticProvidableCompositionLocal(new cm(22));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final StaticProvidableCompositionLocal f6672b = new StaticProvidableCompositionLocal(new cm(23));

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f6673a;

        static {
            int[] iArr = new int[ColorSchemeKeyTokens.values().length];
            try {
                iArr[ColorSchemeKeyTokens.Background.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Error.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ColorSchemeKeyTokens.ErrorContainer.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InverseOnSurface.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InversePrimary.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[ColorSchemeKeyTokens.InverseSurface.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnBackground.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnError.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnErrorContainer.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimary.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimaryContainer.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondary.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondaryContainer.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSurface.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSurfaceVariant.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceTint.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiary.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiaryContainer.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Outline.ordinal()] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OutlineVariant.ordinal()] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Primary.ordinal()] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                iArr[ColorSchemeKeyTokens.PrimaryContainer.ordinal()] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Scrim.ordinal()] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Secondary.ordinal()] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SecondaryContainer.ordinal()] = 25;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Surface.ordinal()] = 26;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceVariant.ordinal()] = 27;
            } catch (NoSuchFieldError unused27) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceBright.ordinal()] = 28;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainer.ordinal()] = 29;
            } catch (NoSuchFieldError unused29) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerHigh.ordinal()] = 30;
            } catch (NoSuchFieldError unused30) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerHighest.ordinal()] = 31;
            } catch (NoSuchFieldError unused31) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerLow.ordinal()] = 32;
            } catch (NoSuchFieldError unused32) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceContainerLowest.ordinal()] = 33;
            } catch (NoSuchFieldError unused33) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SurfaceDim.ordinal()] = 34;
            } catch (NoSuchFieldError unused34) {
            }
            try {
                iArr[ColorSchemeKeyTokens.Tertiary.ordinal()] = 35;
            } catch (NoSuchFieldError unused35) {
            }
            try {
                iArr[ColorSchemeKeyTokens.TertiaryContainer.ordinal()] = 36;
            } catch (NoSuchFieldError unused36) {
            }
            try {
                iArr[ColorSchemeKeyTokens.PrimaryFixed.ordinal()] = 37;
            } catch (NoSuchFieldError unused37) {
            }
            try {
                iArr[ColorSchemeKeyTokens.PrimaryFixedDim.ordinal()] = 38;
            } catch (NoSuchFieldError unused38) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimaryFixed.ordinal()] = 39;
            } catch (NoSuchFieldError unused39) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnPrimaryFixedVariant.ordinal()] = 40;
            } catch (NoSuchFieldError unused40) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SecondaryFixed.ordinal()] = 41;
            } catch (NoSuchFieldError unused41) {
            }
            try {
                iArr[ColorSchemeKeyTokens.SecondaryFixedDim.ordinal()] = 42;
            } catch (NoSuchFieldError unused42) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondaryFixed.ordinal()] = 43;
            } catch (NoSuchFieldError unused43) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnSecondaryFixedVariant.ordinal()] = 44;
            } catch (NoSuchFieldError unused44) {
            }
            try {
                iArr[ColorSchemeKeyTokens.TertiaryFixed.ordinal()] = 45;
            } catch (NoSuchFieldError unused45) {
            }
            try {
                iArr[ColorSchemeKeyTokens.TertiaryFixedDim.ordinal()] = 46;
            } catch (NoSuchFieldError unused46) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiaryFixed.ordinal()] = 47;
            } catch (NoSuchFieldError unused47) {
            }
            try {
                iArr[ColorSchemeKeyTokens.OnTertiaryFixedVariant.ordinal()] = 48;
            } catch (NoSuchFieldError unused48) {
            }
            f6673a = iArr;
        }
    }

    public static final long a(ColorScheme colorScheme, long j2) {
        long j3 = colorScheme.f6662a;
        long j4 = colorScheme.U;
        long j5 = colorScheme.Q;
        long j6 = colorScheme.M;
        long j7 = colorScheme.q;
        if (Color.c(j2, j3)) {
            return colorScheme.f6663b;
        }
        if (Color.c(j2, colorScheme.f6666f)) {
            return colorScheme.g;
        }
        if (Color.c(j2, colorScheme.f6669j)) {
            return colorScheme.f6670k;
        }
        if (Color.c(j2, colorScheme.n)) {
            return colorScheme.o;
        }
        if (Color.c(j2, colorScheme.w)) {
            return colorScheme.x;
        }
        if (Color.c(j2, colorScheme.f6664c)) {
            return colorScheme.d;
        }
        if (Color.c(j2, colorScheme.f6667h)) {
            return colorScheme.f6668i;
        }
        if (Color.c(j2, colorScheme.l)) {
            return colorScheme.m;
        }
        if (Color.c(j2, colorScheme.y)) {
            return colorScheme.z;
        }
        if (Color.c(j2, colorScheme.u)) {
            return colorScheme.v;
        }
        if (Color.c(j2, colorScheme.p)) {
            return j7;
        }
        if (Color.c(j2, colorScheme.r)) {
            return colorScheme.s;
        }
        if (Color.c(j2, colorScheme.D) || Color.c(j2, colorScheme.F) || Color.c(j2, colorScheme.G) || Color.c(j2, colorScheme.H) || Color.c(j2, colorScheme.I) || Color.c(j2, colorScheme.J) || Color.c(j2, colorScheme.E)) {
            return j7;
        }
        if (Color.c(j2, colorScheme.K) || Color.c(j2, colorScheme.L)) {
            return j6;
        }
        if (Color.c(j2, colorScheme.O) || Color.c(j2, colorScheme.P)) {
            return j5;
        }
        if (Color.c(j2, colorScheme.S) || Color.c(j2, colorScheme.T)) {
            return j4;
        }
        Color.f8866b.getClass();
        return Color.f8871i;
    }

    public static final long b(long j2, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        composer.L(89374938);
        long jA = a(MaterialTheme.a(composer), j2);
        if (jA == 16) {
            jA = ((Color) composer.k(ContentColorKt.f6730a)).f8872a;
        }
        composer.F();
        return jA;
    }

    public static final long c(ColorScheme colorScheme, ColorSchemeKeyTokens colorSchemeKeyTokens) {
        switch (WhenMappings.f6673a[colorSchemeKeyTokens.ordinal()]) {
            case 1:
                return colorScheme.n;
            case 2:
                return colorScheme.w;
            case 3:
                return colorScheme.y;
            case 4:
                return colorScheme.v;
            case 5:
                return colorScheme.f6665e;
            case 6:
                return colorScheme.u;
            case 7:
                return colorScheme.o;
            case 8:
                return colorScheme.x;
            case 9:
                return colorScheme.z;
            case 10:
                return colorScheme.f6663b;
            case 11:
                return colorScheme.d;
            case 12:
                return colorScheme.g;
            case 13:
                return colorScheme.f6668i;
            case 14:
                return colorScheme.q;
            case 15:
                return colorScheme.s;
            case 16:
                return colorScheme.t;
            case 17:
                return colorScheme.f6670k;
            case 18:
                return colorScheme.m;
            case 19:
                return colorScheme.A;
            case 20:
                return colorScheme.B;
            case 21:
                return colorScheme.f6662a;
            case 22:
                return colorScheme.f6664c;
            case 23:
                return colorScheme.C;
            case 24:
                return colorScheme.f6666f;
            case 25:
                return colorScheme.f6667h;
            case 26:
                return colorScheme.p;
            case 27:
                return colorScheme.r;
            case 28:
                return colorScheme.D;
            case 29:
                return colorScheme.F;
            case 30:
                return colorScheme.G;
            case 31:
                return colorScheme.H;
            case 32:
                return colorScheme.I;
            case 33:
                return colorScheme.J;
            case 34:
                return colorScheme.E;
            case 35:
                return colorScheme.f6669j;
            case 36:
                return colorScheme.l;
            case 37:
                return colorScheme.K;
            case 38:
                return colorScheme.L;
            case 39:
                return colorScheme.M;
            case 40:
                return colorScheme.N;
            case 41:
                return colorScheme.O;
            case EACTags.CURRENCY_CODE /* 42 */:
                return colorScheme.P;
            case EACTags.DATE_OF_BIRTH /* 43 */:
                return colorScheme.Q;
            case EACTags.CARDHOLDER_NATIONALITY /* 44 */:
                return colorScheme.R;
            case EACTags.LANGUAGE_PREFERENCES /* 45 */:
                return colorScheme.S;
            case 46:
                return colorScheme.T;
            case EACTags.PIN_USAGE_POLICY /* 47 */:
                return colorScheme.U;
            case 48:
                return colorScheme.V;
            default:
                v40.g();
                return 0L;
        }
    }

    public static final long d(ColorSchemeKeyTokens colorSchemeKeyTokens, Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return c(MaterialTheme.a(composer), colorSchemeKeyTokens);
    }

    public static ColorScheme e(int i2, long j2) {
        long j3 = ColorLightTokens.z;
        return new ColorScheme(j3, ColorLightTokens.f7757j, ColorLightTokens.A, ColorLightTokens.f7758k, ColorLightTokens.f7753e, ColorLightTokens.E, ColorLightTokens.n, ColorLightTokens.F, ColorLightTokens.o, ColorLightTokens.R, ColorLightTokens.t, ColorLightTokens.S, ColorLightTokens.u, (i2 & 8192) != 0 ? ColorLightTokens.f7750a : j2, ColorLightTokens.g, ColorLightTokens.I, ColorLightTokens.r, ColorLightTokens.Q, ColorLightTokens.s, j3, ColorLightTokens.f7754f, ColorLightTokens.d, ColorLightTokens.f7751b, ColorLightTokens.f7755h, ColorLightTokens.f7752c, ColorLightTokens.f7756i, ColorLightTokens.x, ColorLightTokens.y, ColorLightTokens.D, ColorLightTokens.J, ColorLightTokens.P, ColorLightTokens.K, ColorLightTokens.L, ColorLightTokens.M, ColorLightTokens.N, ColorLightTokens.O, ColorLightTokens.B, ColorLightTokens.C, ColorLightTokens.l, ColorLightTokens.m, ColorLightTokens.G, ColorLightTokens.H, ColorLightTokens.p, ColorLightTokens.q, ColorLightTokens.T, ColorLightTokens.U, ColorLightTokens.v, ColorLightTokens.w, null);
    }
}
