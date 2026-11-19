package androidx.compose.material3;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.material3.tokens.ColorSchemeKeyTokens;
import androidx.compose.material3.tokens.FilledCardTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.unit.Dp;
import defpackage.b3;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class CardKt {
    /* JADX WARN: Code duplicated, block: B:18:0x003f  */
    /* JADX WARN: Code duplicated, block: B:19:0x0041  */
    /* JADX WARN: Code duplicated, block: B:22:0x004a  */
    /* JADX WARN: Code duplicated, block: B:31:0x0069  */
    /* JADX WARN: Code duplicated, block: B:33:0x006d  */
    /* JADX WARN: Code duplicated, block: B:36:0x0081  */
    /* JADX WARN: Code duplicated, block: B:37:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:41:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:44:0x0136  */
    /* JADX WARN: Code duplicated, block: B:47:0x0146  */
    /* JADX WARN: Code duplicated, block: B:49:? A[RETURN, SYNTHETIC] */
    public static final void a(Modifier modifier, Shape shape, CardColors cardColors, CardElevation cardElevation, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2, int i3) {
        Shape shapeA;
        int i4;
        boolean z;
        final ComposableLambdaImpl composableLambdaImpl2;
        CardColors cardColors2;
        CardElevation cardElevation2;
        Shape shape2;
        RecomposeScopeImpl recomposeScopeImplB0;
        ColorScheme colorSchemeA;
        CardColors cardColors3;
        CardColors cardColors4;
        int i5;
        CardColors cardColors5;
        CardElevation cardElevation3;
        float f2;
        Object objX;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Card");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1359693790);
        int i6 = i2 | (gapComposerH.K(modifier2) ? 4 : 2);
        if ((i3 & 2) == 0) {
            shapeA = shape;
            int i7 = gapComposerH.K(shapeA) ? 32 : 16;
            i4 = i6 | i7 | 25728;
            if ((74899 & i4) != 74898) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0 || gapComposerH.h0()) {
                    if ((i3 & 2) != 0) {
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        shapeA = ShapesKt.a(FilledCardTokens.f7792b, gapComposerH);
                        i4 &= -113;
                    }
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    colorSchemeA = MaterialTheme.a(gapComposerH);
                    cardColors3 = colorSchemeA.Y;
                    if (cardColors3 == null) {
                        ColorSchemeKeyTokens colorSchemeKeyTokens = FilledCardTokens.f7791a;
                        cardColors4 = new CardColors(ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens), ColorSchemeKt.a(colorSchemeA, ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens)), ColorKt.f(Color.b(FilledCardTokens.d, ColorSchemeKt.c(colorSchemeA, FilledCardTokens.f7793c)), ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens)), Color.b(0.38f, ColorSchemeKt.a(colorSchemeA, ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens))), null);
                        colorSchemeA.Y = cardColors4;
                    } else {
                        cardColors4 = cardColors3;
                    }
                    i5 = i4 & (-8065);
                    cardColors5 = cardColors4;
                    cardElevation3 = new CardElevation(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, FilledCardTokens.f7795f, FilledCardTokens.f7794e, Call.Parameters.DEFAULT_CAMERA_ZOOM, null);
                } else {
                    gapComposerH.D();
                    if ((i3 & 2) != 0) {
                        i4 &= -113;
                    }
                    cardElevation3 = cardElevation;
                    i5 = i4 & (-8065);
                    cardColors5 = cardColors;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                int i8 = i5;
                long j2 = cardColors5.f6654a;
                long j3 = cardColors5.f6655b;
                f2 = cardElevation3.f6657a;
                gapComposerH.L(-1763481333);
                gapComposerH.L(167751211);
                objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = SnapshotStateKt.g(new Dp(f2));
                    gapComposerH.q(objX);
                }
                gapComposerH.Z(false);
                gapComposerH.Z(false);
                composableLambdaImpl2 = composableLambdaImpl;
                SurfaceKt.a(modifier2, shapeA, j2, j3, Call.Parameters.DEFAULT_CAMERA_ZOOM, ((Dp) ((MutableState) objX).getF10755b()).f11006b, ComposableLambdaKt.b(-97109725, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.CardKt$Card$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                            Alignment.f8582a.getClass();
                            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                            int iG = composer2.G();
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, Modifier.Companion.f8607b);
                            ComposeUiNode.b0.getClass();
                            Function0 function0 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function0);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Function2 function2 = ComposeUiNode.Companion.g;
                            if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                                fc.A(function2, iG, composer2, iG);
                            }
                            Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                            composableLambdaImpl2.A(ColumnScopeInstance.f4944a, composer2, 6);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 1572864 | (i8 & 112) | (i8 & 14) | 12582912, 16);
                cardColors2 = cardColors5;
                cardElevation2 = cardElevation3;
            } else {
                composableLambdaImpl2 = composableLambdaImpl;
                gapComposerH.D();
                cardColors2 = cardColors;
                cardElevation2 = cardElevation;
            }
            shape2 = shapeA;
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new b3(modifier2, shape2, cardColors2, cardElevation2, composableLambdaImpl2, i2, i3);
            }
        }
        shapeA = shape;
        i4 = i6 | i7 | 25728;
        if ((74899 & i4) != 74898) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i4 & 1, z)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if ((i3 & 2) != 0) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    shapeA = ShapesKt.a(FilledCardTokens.f7792b, gapComposerH);
                    i4 &= -113;
                }
                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                colorSchemeA = MaterialTheme.a(gapComposerH);
                cardColors3 = colorSchemeA.Y;
                if (cardColors3 == null) {
                    ColorSchemeKeyTokens colorSchemeKeyTokens2 = FilledCardTokens.f7791a;
                    cardColors4 = new CardColors(ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens2), ColorSchemeKt.a(colorSchemeA, ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens2)), ColorKt.f(Color.b(FilledCardTokens.d, ColorSchemeKt.c(colorSchemeA, FilledCardTokens.f7793c)), ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens2)), Color.b(0.38f, ColorSchemeKt.a(colorSchemeA, ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens2))), null);
                    colorSchemeA.Y = cardColors4;
                } else {
                    cardColors4 = cardColors3;
                }
                i5 = i4 & (-8065);
                cardColors5 = cardColors4;
                cardElevation3 = new CardElevation(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, FilledCardTokens.f7795f, FilledCardTokens.f7794e, Call.Parameters.DEFAULT_CAMERA_ZOOM, null);
            } else {
                if ((i3 & 2) != 0) {
                    OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                    shapeA = ShapesKt.a(FilledCardTokens.f7792b, gapComposerH);
                    i4 &= -113;
                }
                OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                colorSchemeA = MaterialTheme.a(gapComposerH);
                cardColors3 = colorSchemeA.Y;
                if (cardColors3 == null) {
                    ColorSchemeKeyTokens colorSchemeKeyTokens3 = FilledCardTokens.f7791a;
                    cardColors4 = new CardColors(ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens3), ColorSchemeKt.a(colorSchemeA, ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens3)), ColorKt.f(Color.b(FilledCardTokens.d, ColorSchemeKt.c(colorSchemeA, FilledCardTokens.f7793c)), ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens3)), Color.b(0.38f, ColorSchemeKt.a(colorSchemeA, ColorSchemeKt.c(colorSchemeA, colorSchemeKeyTokens3))), null);
                    colorSchemeA.Y = cardColors4;
                } else {
                    cardColors4 = cardColors3;
                }
                i5 = i4 & (-8065);
                cardColors5 = cardColors4;
                cardElevation3 = new CardElevation(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, FilledCardTokens.f7795f, FilledCardTokens.f7794e, Call.Parameters.DEFAULT_CAMERA_ZOOM, null);
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey8 = ComposerKt.f7940a;
            int i9 = i5;
            long j4 = cardColors5.f6654a;
            long j5 = cardColors5.f6655b;
            f2 = cardElevation3.f6657a;
            gapComposerH.L(-1763481333);
            gapComposerH.L(167751211);
            objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = SnapshotStateKt.g(new Dp(f2));
                gapComposerH.q(objX);
            }
            gapComposerH.Z(false);
            gapComposerH.Z(false);
            composableLambdaImpl2 = composableLambdaImpl;
            SurfaceKt.a(modifier2, shapeA, j4, j5, Call.Parameters.DEFAULT_CAMERA_ZOOM, ((Dp) ((MutableState) objX).getF10755b()).f11006b, ComposableLambdaKt.b(-97109725, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.CardKt$Card$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                        Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer2, 0);
                        int iG = composer2.G();
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, Modifier.Companion.f8607b);
                        ComposeUiNode.b0.getClass();
                        Function0 function0 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function0);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Function2 function2 = ComposeUiNode.Companion.g;
                        if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                            fc.A(function2, iG, composer2, iG);
                        }
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        composableLambdaImpl2.A(ColumnScopeInstance.f4944a, composer2, 6);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 1572864 | (i9 & 112) | (i9 & 14) | 12582912, 16);
            cardColors2 = cardColors5;
            cardElevation2 = cardElevation3;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposerH.D();
            cardColors2 = cardColors;
            cardElevation2 = cardElevation;
        }
        shape2 = shapeA;
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(modifier2, shape2, cardColors2, cardElevation2, composableLambdaImpl2, i2, i3);
        }
    }
}
