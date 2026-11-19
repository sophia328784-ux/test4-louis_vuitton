package androidx.compose.material3;

import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.DatePickerModalTokens;
import androidx.compose.material3.tokens.DividerTokens;
import androidx.compose.material3.tokens.ElevationTokens;
import androidx.compose.material3.tokens.OutlinedTextFieldTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.vuitton.android.R;
import defpackage.a4;
import defpackage.vr;
import defpackage.wr;
import java.util.Arrays;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/DatePickerDefaults;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class DatePickerDefaults {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DatePickerDefaults f6760a = new DatePickerDefaults();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final IntRange f6761b = new IntRange(1900, HarvestConfiguration.S_DOM_THR);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final DatePickerDefaults$AllDates$1 f6762c;

    static {
        float f2 = ElevationTokens.f7772a;
        f6762c = new DatePickerDefaults$AllDates$1();
    }

    public static DatePickerColors c(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        ColorScheme colorSchemeA = MaterialTheme.a(composer);
        DatePickerColors datePickerColors = colorSchemeA.a0;
        if (datePickerColors != null) {
            composer.L(642290457);
            composer.F();
            return datePickerColors;
        }
        composer.L(642416503);
        long jC = ColorSchemeKt.c(colorSchemeA, DatePickerModalTokens.f7759a);
        long jC2 = ColorSchemeKt.c(colorSchemeA, DatePickerModalTokens.r);
        long jC3 = ColorSchemeKt.c(colorSchemeA, DatePickerModalTokens.p);
        long jC4 = ColorSchemeKt.c(colorSchemeA, DatePickerModalTokens.w);
        long jC5 = ColorSchemeKt.c(colorSchemeA, DatePickerModalTokens.v);
        long j2 = colorSchemeA.s;
        ColorSchemeKeyTokens colorSchemeKeyTokens = DatePickerModalTokens.E;
        long jC6 = ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens);
        long jB = Color.b(0.38f, ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens));
        ColorSchemeKeyTokens colorSchemeKeyTokens2 = DatePickerModalTokens.m;
        long jC7 = ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens2);
        ColorSchemeKeyTokens colorSchemeKeyTokens3 = DatePickerModalTokens.C;
        long jC8 = ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens3);
        long jB2 = Color.b(0.38f, ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens3));
        ColorSchemeKeyTokens colorSchemeKeyTokens4 = DatePickerModalTokens.B;
        long jC9 = ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens4);
        long jB3 = Color.b(0.38f, ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens4));
        ColorSchemeKeyTokens colorSchemeKeyTokens5 = DatePickerModalTokens.n;
        long jC10 = ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens5);
        long jB4 = Color.b(0.38f, ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens5));
        ColorSchemeKeyTokens colorSchemeKeyTokens6 = DatePickerModalTokens.f7766j;
        long jC11 = ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens6);
        long jB5 = Color.b(0.38f, ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens6));
        ColorSchemeKeyTokens colorSchemeKeyTokens7 = DatePickerModalTokens.f7765i;
        long jC12 = ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens7);
        long jB6 = Color.b(0.38f, ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens7));
        long jC13 = ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens2);
        long jC14 = ColorSchemeKt.c(colorSchemeA, DatePickerModalTokens.f7767k);
        long jC15 = ColorSchemeKt.c(colorSchemeA, DatePickerModalTokens.u);
        long jC16 = ColorSchemeKt.c(colorSchemeA, DatePickerModalTokens.t);
        long jC17 = ColorSchemeKt.c(colorSchemeA, DividerTokens.f7770a);
        OutlinedTextFieldDefaults outlinedTextFieldDefaults = OutlinedTextFieldDefaults.f7118a;
        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        TextFieldColors textFieldColors = colorSchemeA.h0;
        if (textFieldColors == null) {
            composer.L(390452338);
            composer.F();
            textFieldColors = null;
        } else {
            long j3 = textFieldColors.F;
            long j4 = textFieldColors.E;
            long j5 = textFieldColors.D;
            long j6 = textFieldColors.C;
            long j7 = textFieldColors.B;
            long j8 = textFieldColors.A;
            long j9 = textFieldColors.z;
            long j10 = textFieldColors.y;
            long j11 = textFieldColors.x;
            long j12 = textFieldColors.w;
            long j13 = textFieldColors.v;
            long j14 = textFieldColors.u;
            long j15 = textFieldColors.t;
            long j16 = textFieldColors.s;
            long j17 = textFieldColors.r;
            long j18 = textFieldColors.q;
            long j19 = textFieldColors.p;
            long j20 = textFieldColors.o;
            long j21 = textFieldColors.n;
            long j22 = textFieldColors.m;
            long j23 = textFieldColors.l;
            TextSelectionColors textSelectionColors = textFieldColors.f7371k;
            composer.L(390452339);
            TextSelectionColors textSelectionColors2 = (TextSelectionColors) composer.k(TextSelectionColorsKt.f6503a);
            if (!Intrinsics.c(textSelectionColors, textSelectionColors2)) {
                textFieldColors = new TextFieldColors(textFieldColors.f7363a, textFieldColors.f7364b, textFieldColors.f7365c, textFieldColors.d, textFieldColors.f7366e, textFieldColors.f7367f, textFieldColors.g, textFieldColors.f7368h, textFieldColors.f7369i, textFieldColors.f7370j, textSelectionColors2 == null ? textSelectionColors : textSelectionColors2, j23, j22, j21, j20, j19, j18, j17, j16, j15, j14, j13, j12, j11, j10, j9, j8, j7, j6, j5, j4, j3, textFieldColors.G, textFieldColors.H, textFieldColors.I, textFieldColors.J, textFieldColors.K, textFieldColors.L, textFieldColors.M, textFieldColors.N, textFieldColors.O, textFieldColors.P, textFieldColors.Q, null);
                colorSchemeA.h0 = textFieldColors;
            }
            composer.F();
        }
        if (textFieldColors == null) {
            composer.L(-1788321191);
            long jC18 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.p);
            long jC19 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.v);
            ColorSchemeKeyTokens colorSchemeKeyTokens8 = OutlinedTextFieldTokens.f7816c;
            long jB7 = Color.b(0.38f, ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens8));
            long jC20 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.f7821j);
            Color.f8866b.getClass();
            long j24 = Color.f8870h;
            long jC21 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.f7814a);
            long jC22 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.f7820i);
            TextSelectionColors textSelectionColors3 = (TextSelectionColors) composer.k(TextSelectionColorsKt.f6503a);
            long jC23 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.s);
            long jC24 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.B);
            long jB8 = Color.b(0.12f, ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.f7818f));
            long jC25 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.m);
            long jC26 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.r);
            long jC27 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.A);
            long jB9 = Color.b(0.38f, ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.f7817e));
            long jC28 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.l);
            long jC29 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.u);
            long jC30 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.D);
            long jB10 = Color.b(0.38f, ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.f7819h));
            long jC31 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.o);
            long jC32 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.q);
            long jC33 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.z);
            long jB11 = Color.b(0.38f, ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.d));
            long jC34 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.f7822k);
            ColorSchemeKeyTokens colorSchemeKeyTokens9 = OutlinedTextFieldTokens.w;
            long jC35 = ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens9);
            long jC36 = ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens9);
            long jB12 = Color.b(0.38f, ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens8));
            long jC37 = ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens9);
            long jC38 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.t);
            long jC39 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.C);
            long jB13 = Color.b(0.38f, ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.g));
            long jC40 = ColorSchemeKt.c(colorSchemeA, OutlinedTextFieldTokens.n);
            ColorSchemeKeyTokens colorSchemeKeyTokens10 = OutlinedTextFieldTokens.x;
            long jC41 = ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens10);
            long jC42 = ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens10);
            long jB14 = Color.b(0.38f, ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens10));
            long jC43 = ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens10);
            ColorSchemeKeyTokens colorSchemeKeyTokens11 = OutlinedTextFieldTokens.y;
            textFieldColors = new TextFieldColors(jC18, jC19, jB7, jC20, j24, j24, j24, j24, jC21, jC22, textSelectionColors3, jC23, jC24, jB8, jC25, jC26, jC27, jB9, jC28, jC29, jC30, jB10, jC31, jC32, jC33, jB11, jC34, jC35, jC36, jB12, jC37, jC38, jC39, jB13, jC40, jC41, jC42, jB14, jC43, ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens11), ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens11), Color.b(0.38f, ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens11)), ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens11), null);
            colorSchemeA.h0 = textFieldColors;
            composer.F();
        } else {
            composer.L(-1788515437);
            composer.F();
        }
        DatePickerColors datePickerColors2 = new DatePickerColors(jC, jC2, jC3, jC4, jC5, j2, jC6, jB, jC7, jC8, jB2, jC9, jB3, jC10, jB4, jC11, jB5, jC12, jB6, jC13, jC14, jC16, jC15, jC17, textFieldColors, null);
        colorSchemeA.a0 = datePickerColors2;
        composer.F();
        return datePickerColors2;
    }

    public final void a(Long l, int i2, DatePickerFormatter datePickerFormatter, Modifier modifier, long j2, Composer composer, int i3) {
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "DatePickerHeadline-ISIPfiY");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1913724796);
        int i4 = i3 | (gapComposerH.K(l) ? 4 : 2) | (gapComposerH.d(i2) ? 32 : 16) | (gapComposerH.K(datePickerFormatter) ? 256 : 128) | (gapComposerH.e(j2) ? 16384 : 8192);
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            gapComposerH.y0();
            if ((i3 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Locale localeA = CalendarLocale_androidKt.a(gapComposerH);
            String strB = datePickerFormatter.b(l, localeA, false);
            String strB2 = datePickerFormatter.b(l, localeA, true);
            String strA = "";
            if (strB2 == null) {
                gapComposerH.L(380185931);
                DisplayMode.f6900b.getClass();
                if (i2 == 0) {
                    gapComposerH.L(843549871);
                    int i5 = Strings.f7646a;
                    strB2 = Strings_androidKt.a(gapComposerH, R.string.m3c_date_picker_no_selection_description);
                    gapComposerH.Z(false);
                } else if (i2 == DisplayMode.f6901c) {
                    gapComposerH.L(843552842);
                    int i6 = Strings.f7646a;
                    strB2 = Strings_androidKt.a(gapComposerH, R.string.m3c_date_input_no_input_description);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(380407362);
                    gapComposerH.Z(false);
                    strB2 = "";
                }
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(843542258);
                gapComposerH.Z(false);
            }
            if (strB == null) {
                gapComposerH.L(380507587);
                DisplayMode.f6900b.getClass();
                if (i2 == 0) {
                    gapComposerH.L(843560257);
                    int i7 = Strings.f7646a;
                    strB = Strings_androidKt.a(gapComposerH, R.string.m3c_date_picker_headline);
                    gapComposerH.Z(false);
                } else if (i2 == DisplayMode.f6901c) {
                    gapComposerH.L(843562784);
                    int i8 = Strings.f7646a;
                    strB = Strings_androidKt.a(gapComposerH, R.string.m3c_date_input_headline);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(380705954);
                    gapComposerH.Z(false);
                    strB = "";
                }
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(843557408);
                gapComposerH.Z(false);
            }
            DisplayMode.f6900b.getClass();
            if (i2 == 0) {
                gapComposerH.L(843570444);
                int i9 = Strings.f7646a;
                strA = Strings_androidKt.a(gapComposerH, R.string.m3c_date_picker_headline_description);
                gapComposerH.Z(false);
            } else if (i2 == DisplayMode.f6901c) {
                gapComposerH.L(843573323);
                int i10 = Strings.f7646a;
                strA = Strings_androidKt.a(gapComposerH, R.string.m3c_date_input_headline_description);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(381043234);
                gapComposerH.Z(false);
            }
            String str = String.format(strA, Arrays.copyOf(new Object[]{strB2}, 1));
            boolean zK = gapComposerH.K(str);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new a4(str, 23);
                gapComposerH.q(objX);
            }
            gapComposer = gapComposerH;
            TextKt.c(strB, SemanticsModifierKt.b(modifier2, false, (Function1) objX), j2, 0L, null, 0L, null, null, 0L, 0, false, 1, 0, null, null, gapComposer, (i4 >> 6) & 896, 24576, 245752);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new vr(this, l, i2, datePickerFormatter, modifier2, j2, i3);
        }
    }

    public final void b(int i2, int i3, long j2, Composer composer, Modifier modifier) {
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "DatePickerTitle-FNtVw6o");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-390880814);
        int i4 = i3 | (gapComposerH.d(i2) ? 4 : 2) | (gapComposerH.e(j2) ? 256 : 128);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            gapComposerH.y0();
            if ((i3 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            DisplayMode.f6900b.getClass();
            if (i2 == 0) {
                gapComposerH.L(-1974299164);
                int i5 = Strings.f7646a;
                TextKt.c(Strings_androidKt.a(gapComposerH, R.string.m3c_date_picker_title), modifier2, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, i4 & 1008, 0, 262136);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            } else {
                gapComposer = gapComposerH;
                if (i2 == DisplayMode.f6901c) {
                    gapComposer.L(-1974291869);
                    int i6 = Strings.f7646a;
                    TextKt.c(Strings_androidKt.a(gapComposer, R.string.m3c_date_input_title), modifier2, j2, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposer, i4 & 1008, 0, 262136);
                    gapComposer = gapComposer;
                    gapComposer.Z(false);
                } else {
                    gapComposer.L(-1073325776);
                    gapComposer.Z(false);
                }
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wr(this, i2, modifier2, j2, i3);
        }
    }
}
