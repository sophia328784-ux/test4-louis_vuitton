package androidx.compose.material3;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.internal.ProvideContentColorTextStyleKt;
import androidx.compose.material3.tokens.DatePickerModalTokens;
import androidx.compose.material3.tokens.DialogTokens;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.window.DialogProperties;
import defpackage.fc;
import defpackage.fg;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class DatePickerDialog_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final PaddingValuesImpl f6764a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f6765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f6766c;

    static {
        Dp.Companion companion = Dp.f11004c;
        f6764a = PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 6.0f, 8.0f, 3);
        f6765b = 8.0f;
        f6766c = 12.0f;
    }

    public static final void a(Function0 function0, final ComposableLambdaImpl composableLambdaImpl, Modifier modifier, final Function2 function2, Shape shape, DatePickerColors datePickerColors, DialogProperties dialogProperties, final ComposableLambdaImpl composableLambdaImpl2, Composer composer, int i2) {
        int i3;
        Shape shape2;
        DatePickerColors datePickerColors2;
        DialogProperties dialogProperties2;
        int i4;
        final Shape shape3;
        final DatePickerColors datePickerColorsC;
        DialogProperties dialogProperties3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "DatePickerDialog-GmEhDVc");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(219718641);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(modifier2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= 8192;
        }
        int i5 = 196608 | i3;
        if ((1572864 & i2) == 0) {
            i5 = 720896 | i3;
        }
        int i6 = 12582912 | i5;
        if ((100663296 & i2) == 0) {
            i6 |= gapComposerH.y(composableLambdaImpl2) ? 67108864 : 33554432;
        }
        if (gapComposerH.p(i6 & 1, (38347923 & i6) != 38347922)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                DatePickerDefaults datePickerDefaults = DatePickerDefaults.f6760a;
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                Shape shapeA = ShapesKt.a(DatePickerModalTokens.f7761c, gapComposerH);
                DatePickerDefaults datePickerDefaults2 = DatePickerDefaults.f6760a;
                i4 = i6 & (-3727361);
                shape3 = shapeA;
                datePickerColorsC = DatePickerDefaults.c(gapComposerH);
                dialogProperties3 = new DialogProperties(false, false, false, 3, (DefaultConstructorMarker) null);
            } else {
                gapComposerH.D();
                i4 = i6 & (-3727361);
                shape3 = shape;
                datePickerColorsC = datePickerColors;
                dialogProperties3 = dialogProperties;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            AlertDialogKt.b(function0, SizeKt.v(modifier2, null, 3), dialogProperties3, ComposableLambdaKt.b(1108953335, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        Modifier modifierH = SizeKt.h(SizeKt.n(DatePickerModalTokens.d), Call.Parameters.DEFAULT_CAMERA_ZOOM, DatePickerModalTokens.f7760b, 1);
                        long j2 = datePickerColorsC.f6751a;
                        final Function2 function3 = function2;
                        final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl;
                        final ComposableLambdaImpl composableLambdaImpl4 = composableLambdaImpl2;
                        SurfaceKt.a(modifierH, shape3, j2, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(1782015378, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1.1
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                Composer composer3 = (Composer) obj3;
                                int iIntValue2 = ((Number) obj4).intValue();
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                    Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
                                    Alignment.f8582a.getClass();
                                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$SpaceBetween$1, Alignment.Companion.n, composer3, 6);
                                    int iG = composer3.G();
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                                    Modifier.Companion companion = Modifier.Companion.f8607b;
                                    Modifier modifierC = ComposedModifierKt.c(composer3, companion);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function1 = ComposeUiNode.Companion.f9641b;
                                    if (composer3.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer3.B();
                                    if (composer3.getS()) {
                                        composer3.C(function1);
                                    } else {
                                        composer3.o();
                                    }
                                    Function2 function4 = ComposeUiNode.Companion.f9644f;
                                    Updater.c(composer3, columnMeasurePolicyA, function4);
                                    Function2 function5 = ComposeUiNode.Companion.f9643e;
                                    Updater.c(composer3, persistentCompositionLocalMapN, function5);
                                    Function2 function6 = ComposeUiNode.Companion.g;
                                    if (composer3.getS() || !Intrinsics.c(composer3.x(), Integer.valueOf(iG))) {
                                        fc.A(function6, iG, composer3, iG);
                                    }
                                    Function2 function7 = ComposeUiNode.Companion.d;
                                    Updater.c(composer3, modifierC, function7);
                                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                                    Modifier modifierA = columnScopeInstance.a(companion, 1.0f, false);
                                    BiasAlignment biasAlignment = Alignment.Companion.f8584b;
                                    MeasurePolicy measurePolicyD = BoxKt.d(biasAlignment, false);
                                    int iG2 = composer3.G();
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                                    Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierA);
                                    if (composer3.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer3.B();
                                    if (composer3.getS()) {
                                        composer3.C(function1);
                                    } else {
                                        composer3.o();
                                    }
                                    Updater.c(composer3, measurePolicyD, function4);
                                    Updater.c(composer3, persistentCompositionLocalMapN2, function5);
                                    if (composer3.getS() || !Intrinsics.c(composer3.x(), Integer.valueOf(iG2))) {
                                        fc.A(function6, iG2, composer3, iG2);
                                    }
                                    Updater.c(composer3, modifierC2, function7);
                                    composableLambdaImpl4.A(columnScopeInstance, composer3, 6);
                                    composer3.r();
                                    Modifier modifierH2 = PaddingKt.h(columnScopeInstance.b(companion, Alignment.Companion.p), DatePickerDialog_androidKt.f6764a);
                                    MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                                    int iG3 = composer3.G();
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer3.n();
                                    Modifier modifierC3 = ComposedModifierKt.c(composer3, modifierH2);
                                    if (composer3.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer3.B();
                                    if (composer3.getS()) {
                                        composer3.C(function1);
                                    } else {
                                        composer3.o();
                                    }
                                    Updater.c(composer3, measurePolicyD2, function4);
                                    Updater.c(composer3, persistentCompositionLocalMapN3, function5);
                                    if (composer3.getS() || !Intrinsics.c(composer3.x(), Integer.valueOf(iG3))) {
                                        fc.A(function6, iG3, composer3, iG3);
                                    }
                                    Updater.c(composer3, modifierC3, function7);
                                    long jD = ColorSchemeKt.d(DialogTokens.f7768a, composer3);
                                    TextStyle textStyleA = TypographyKt.a(DialogTokens.f7769b, composer3);
                                    final Function2 function8 = function3;
                                    final ComposableLambdaImpl composableLambdaImpl5 = composableLambdaImpl3;
                                    ProvideContentColorTextStyleKt.a(jD, textStyleA, ComposableLambdaKt.b(-1103927529, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1
                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(Object obj5, Object obj6) {
                                            Composer composer4 = (Composer) obj5;
                                            int iIntValue3 = ((Number) obj6).intValue();
                                            if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                                float f2 = DatePickerDialog_androidKt.f6765b;
                                                float f3 = DatePickerDialog_androidKt.f6766c;
                                                final Function2 function9 = function8;
                                                final ComposableLambdaImpl composableLambdaImpl6 = composableLambdaImpl5;
                                                AlertDialogKt.a(f2, f3, ComposableLambdaKt.b(-1980163584, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerDialog_androidKt$DatePickerDialog$1$1$1$2$1.1
                                                    @Override // kotlin.jvm.functions.Function2
                                                    public final Object invoke(Object obj7, Object obj8) {
                                                        Composer composer5 = (Composer) obj7;
                                                        int iIntValue4 = ((Number) obj8).intValue();
                                                        if (composer5.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                                                            OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                                                            Function2 function10 = function9;
                                                            if (function10 == null) {
                                                                composer5.L(322524505);
                                                            } else {
                                                                composer5.L(-266690648);
                                                                function10.invoke(composer5, 0);
                                                            }
                                                            composer5.F();
                                                            composableLambdaImpl6.invoke(composer5, 0);
                                                        } else {
                                                            composer5.D();
                                                        }
                                                        return Unit.f71739a;
                                                    }
                                                }, composer4), composer4, 438);
                                            } else {
                                                composer4.D();
                                            }
                                            return Unit.f71739a;
                                        }
                                    }, composer3), composer3, KyberEngine.KyberPolyBytes);
                                    composer3.r();
                                    composer3.r();
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 12582918, 104);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, (i4 & 14) | 3072 | ((i4 >> 15) & 896));
            dialogProperties2 = dialogProperties3;
            shape2 = shape3;
            datePickerColors2 = datePickerColorsC;
        } else {
            gapComposerH.D();
            shape2 = shape;
            datePickerColors2 = datePickerColors;
            dialogProperties2 = dialogProperties;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fg(function0, composableLambdaImpl, modifier2, function2, shape2, datePickerColors2, dialogProperties2, composableLambdaImpl2, i2);
        }
    }
}
