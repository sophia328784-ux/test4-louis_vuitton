package androidx.compose.material3;

import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.gestures.snapping.LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt;
import androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$SpaceEvenly$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.foundation.lazy.grid.GridCells;
import androidx.compose.foundation.lazy.grid.LazyGridDslKt;
import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.foundation.lazy.grid.LazyGridScope;
import androidx.compose.foundation.lazy.grid.LazyGridScope$items$1;
import androidx.compose.foundation.lazy.grid.LazyGridState;
import androidx.compose.foundation.lazy.grid.LazyGridStateKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material3.DatePickerColors;
import androidx.compose.material3.DatePickerFormatter;
import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.SelectableDates;
import androidx.compose.material3.internal.CalendarDate;
import androidx.compose.material3.internal.CalendarModel;
import androidx.compose.material3.internal.CalendarModelImpl;
import androidx.compose.material3.internal.CalendarMonth;
import androidx.compose.material3.internal.Icons$AutoMirrored$Filled;
import androidx.compose.material3.internal.Icons$Filled;
import androidx.compose.material3.internal.ProvideContentColorTextStyleKt;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.material3.tokens.DatePickerModalTokens;
import androidx.compose.material3.tokens.MotionSchemeKeyTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.StrokeJoin;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.PathBuilder;
import androidx.compose.ui.graphics.vector.PathNode;
import androidx.compose.ui.graphics.vector.VectorKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import defpackage.a4;
import defpackage.bp;
import defpackage.ck;
import defpackage.d0;
import defpackage.dm;
import defpackage.ds;
import defpackage.es;
import defpackage.fc;
import defpackage.fs;
import defpackage.g2;
import defpackage.hs;
import defpackage.iq;
import defpackage.is;
import defpackage.j8;
import defpackage.k4;
import defpackage.k6;
import defpackage.n00;
import defpackage.tr;
import defpackage.u8;
import defpackage.um;
import defpackage.v1;
import defpackage.xr;
import defpackage.yr;
import defpackage.zr;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.IntIterator;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.IntRange;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\u0002²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "yearPickerVisible", "material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class DatePickerKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f6780a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f6781b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final float f6782c;
    public static final PaddingValuesImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final PaddingValuesImpl f6783e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final PaddingValuesImpl f6784f;
    public static final float g;

    static {
        Dp.Companion companion = Dp.f11004c;
        f6780a = 48.0f;
        f6781b = 56.0f;
        f6782c = 12.0f;
        d = PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12.0f, 12.0f, 3);
        f6783e = PaddingKt.e(24.0f, 16.0f, 12.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 8);
        f6784f = PaddingKt.e(24.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12.0f, 12.0f, 2);
        g = 16.0f;
    }

    public static final void a(Modifier modifier, final Function2 function2, final Function2 function3, final Function2 function4, final DatePickerColors datePickerColors, TextStyle textStyle, float f2, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        final TextStyle textStyle2;
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "DateEntryContainer-au3_HiA");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1539132883);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function3) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function4) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(datePickerColors) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            textStyle2 = textStyle;
            i3 |= gapComposerH.K(textStyle2) ? 131072 : 65536;
        } else {
            textStyle2 = textStyle;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.c(f2) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 8388608 : 4194304;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (i4 & 4793491) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierR = SizeKt.r(modifier2, DatePickerModalTokens.d, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14);
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new bp(11);
                gapComposerH.q(objX);
            }
            Modifier modifierB = BackgroundKt.b(SemanticsModifierKt.b(modifierR, false, (Function1) objX), datePickerColors.f6751a, RectangleShapeKt.f8913a);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Function2 function5 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function5);
            }
            d(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "DateEntryContainer-au3_HiA"), function2, datePickerColors.f6752b, datePickerColors.f6753c, f2, ComposableLambdaKt.b(-1658370654, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DateEntryContainer$2$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Arrangement.Horizontal horizontal;
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier.Companion companion = Modifier.Companion.f8607b;
                        Modifier modifierD = SizeKt.d(companion, 1.0f);
                        Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, composer2, 0);
                        int iG2 = composer2.G();
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                        ComposeUiNode.b0.getClass();
                        Function0 function1 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function1);
                        } else {
                            composer2.o();
                        }
                        Function2 function6 = ComposeUiNode.Companion.f9644f;
                        Updater.c(composer2, columnMeasurePolicyA2, function6);
                        Function2 function7 = ComposeUiNode.Companion.f9643e;
                        Updater.c(composer2, persistentCompositionLocalMapN, function7);
                        Function2 function8 = ComposeUiNode.Companion.g;
                        if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG2))) {
                            fc.A(function8, iG2, composer2, iG2);
                        }
                        Function2 function9 = ComposeUiNode.Companion.d;
                        Updater.c(composer2, modifierC2, function9);
                        final Function2 function10 = function3;
                        Function2 function11 = function4;
                        if (function10 == null || function11 == null) {
                            horizontal = function10 != null ? Arrangement.f4918a : Arrangement.f4919b;
                        } else {
                            horizontal = Arrangement.g;
                        }
                        Modifier modifierD2 = SizeKt.d(companion, 1.0f);
                        RowMeasurePolicy rowMeasurePolicyA = RowKt.a(horizontal, Alignment.Companion.l, composer2, 48);
                        int iG3 = composer2.G();
                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                        Modifier modifierC3 = ComposedModifierKt.c(composer2, modifierD2);
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function1);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, rowMeasurePolicyA, function6);
                        Updater.c(composer2, persistentCompositionLocalMapN2, function7);
                        if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG3))) {
                            fc.A(function8, iG3, composer2, iG3);
                        }
                        Updater.c(composer2, modifierC3, function9);
                        if (function10 != null) {
                            composer2.L(-516028300);
                            TextKt.a(textStyle2, ComposableLambdaKt.b(-738208900, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DateEntryContainer$2$1$1$1$1
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Number) obj4).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        Modifier modifierA = RowScopeInstance.f5040a.a(Modifier.Companion.f8607b, 1.0f, true);
                                        Alignment.f8582a.getClass();
                                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                        int iG4 = composer3.G();
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer3.n();
                                        Modifier modifierC4 = ComposedModifierKt.c(composer3, modifierA);
                                        ComposeUiNode.b0.getClass();
                                        Function0 function12 = ComposeUiNode.Companion.f9641b;
                                        if (composer3.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer3.B();
                                        if (composer3.getS()) {
                                            composer3.C(function12);
                                        } else {
                                            composer3.o();
                                        }
                                        Updater.c(composer3, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                        Updater.c(composer3, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                                        Function2 function13 = ComposeUiNode.Companion.g;
                                        if (composer3.getS() || !Intrinsics.c(composer3.x(), Integer.valueOf(iG4))) {
                                            fc.A(function13, iG4, composer3, iG4);
                                        }
                                        Updater.c(composer3, modifierC4, ComposeUiNode.Companion.d);
                                        function10.invoke(composer3, 0);
                                        composer3.r();
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2), composer2, 48);
                            composer2.F();
                        } else {
                            composer2.L(-515838022);
                            composer2.F();
                        }
                        if (function11 == null) {
                            composer2.L(-515799087);
                        } else {
                            composer2.L(260455984);
                            function11.invoke(composer2, 0);
                        }
                        composer2.F();
                        composer2.r();
                        if (function2 == null && function10 == null && function11 == null) {
                            composer2.L(-250277930);
                            composer2.F();
                        } else {
                            composer2.L(-250360576);
                            DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, datePickerColors.x, composer2, 0, 3);
                            composer2.F();
                        }
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, (i4 & 112) | 196614 | (57344 & (i4 >> 6)));
            gapComposer = gapComposerH;
            composableLambdaImpl.invoke(gapComposer, Integer.valueOf(14 & (i4 >> 21)));
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new es(modifier2, function2, function3, function4, datePickerColors, textStyle, f2, composableLambdaImpl, i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(final DatePickerState datePickerState, Modifier modifier, DatePickerFormatter datePickerFormatter, final DatePickerColors datePickerColors, Function2 function2, Function2 function3, boolean z, FocusRequester focusRequester, Composer composer, int i2) {
        DatePickerFormatter datePickerFormatter2;
        Function2 function4;
        Function2 function5;
        Modifier modifier2;
        FocusRequester focusRequester2;
        Function2 function6;
        final FocusRequester focusRequester3;
        Function2 function7;
        int i3;
        final DatePickerFormatter datePickerFormatter3;
        ComposableLambdaImpl composableLambdaImplB;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "DatePicker");
        }
        GapComposer gapComposerH = composer.h(1105472031);
        int i4 = i2 | (gapComposerH.K(datePickerState) ? 4 : 2) | 176 | (gapComposerH.K(datePickerColors) ? 2048 : 1024) | 12804096;
        if (gapComposerH.p(i4 & 1, (4793491 & i4) != 4793490)) {
            gapComposerH.y0();
            int i5 = i2 & 1;
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i5 == 0 || gapComposerH.h0()) {
                dTFunctionNameModifier = new DTFunctionNameModifier("DatePicker");
                Object objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    DatePickerDefaults datePickerDefaults = DatePickerDefaults.f6760a;
                    objX = new DatePickerFormatterImpl("yMMMM", "yMMMd", "yMMMMEEEEd");
                    gapComposerH.q(objX);
                }
                final DatePickerFormatter datePickerFormatter4 = (DatePickerFormatter) objX;
                int i6 = i4 & (-897);
                ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(1655706771, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePicker$2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            DatePickerDefaults.f6760a.b(datePickerState.g(), 3120, datePickerColors.f6752b, composer2, PaddingKt.h(Modifier.Companion.f8607b, DatePickerKt.f6783e));
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH);
                ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(1439279037, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePicker$3
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            DatePickerDefaults datePickerDefaults2 = DatePickerDefaults.f6760a;
                            DatePickerState datePickerState2 = datePickerState;
                            datePickerDefaults2.a(datePickerState2.c(), datePickerState2.g(), datePickerFormatter4, PaddingKt.h(Modifier.Companion.f8607b, DatePickerKt.f6784f), datePickerColors.f6753c, composer2, 199680);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH);
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new FocusRequester();
                    gapComposerH.q(objX2);
                }
                function6 = composableLambdaImplB2;
                focusRequester3 = (FocusRequester) objX2;
                function7 = composableLambdaImplB3;
                i3 = i6;
                datePickerFormatter3 = datePickerFormatter4;
            } else {
                gapComposerH.D();
                int i7 = i4 & (-897);
                datePickerFormatter3 = datePickerFormatter;
                function6 = function2;
                function7 = function3;
                focusRequester3 = focusRequester;
                i3 = i7;
            }
            Modifier modifier3 = dTFunctionNameModifier;
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean zK = gapComposerH.K(datePickerState.getLocale());
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = datePickerState instanceof BaseDatePickerStateImpl ? ((BaseDatePickerStateImpl) datePickerState).f6570c : new CalendarModelImpl(datePickerState.getLocale());
                gapComposerH.q(objX3);
            }
            final CalendarModel calendarModel = (CalendarModel) objX3;
            if (z) {
                gapComposerH.L(-690551113);
                composableLambdaImplB = ComposableLambdaKt.b(-1483431603, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePicker$5
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Modifier modifierH = PaddingKt.h(Modifier.Companion.f8607b, DatePickerKt.d);
                            DatePickerState datePickerState2 = datePickerState;
                            int iG = datePickerState2.g();
                            boolean zK2 = composer2.K(datePickerState2);
                            Object objX4 = composer2.x();
                            if (zK2 || objX4 == Composer.Companion.f7939a) {
                                objX4 = new hs(datePickerState2, 0);
                                composer2.q(objX4);
                            }
                            DatePickerKt.f(modifierH, iG, (Function1) objX4, datePickerColors, composer2, 6);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-690163489);
                gapComposerH.Z(false);
                composableLambdaImplB = null;
            }
            FocusRequester focusRequester4 = focusRequester3;
            Function2 function8 = function6;
            Function2 function9 = function7;
            a(modifier3, function8, function9, composableLambdaImplB, datePickerColors, TypographyKt.a(DatePickerModalTokens.q, gapComposerH), DatePickerModalTokens.o, ComposableLambdaKt.b(-1346903698, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePicker$6
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        DatePickerState datePickerState2 = datePickerState;
                        Long lC = datePickerState2.c();
                        long jH = datePickerState2.h();
                        int iG = datePickerState2.g();
                        boolean zK2 = composer2.K(datePickerState2);
                        Object objX4 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zK2 || objX4 == composer$Companion$Empty$2) {
                            objX4 = new hs(datePickerState2, 1);
                            composer2.q(objX4);
                        }
                        Function1 function1 = (Function1) objX4;
                        boolean zK3 = composer2.K(datePickerState2);
                        Object objX5 = composer2.x();
                        if (zK3 || objX5 == composer$Companion$Empty$2) {
                            objX5 = new hs(datePickerState2, 2);
                            composer2.q(objX5);
                        }
                        DatePickerKt.k(lC, jH, iG, function1, (Function1) objX5, calendarModel, datePickerState2.d(), datePickerFormatter3, datePickerState2.b(), datePickerColors, focusRequester3, composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, (57344 & (i3 << 3)) | 14156214);
            function4 = function8;
            function5 = function9;
            datePickerFormatter2 = datePickerFormatter3;
            modifier2 = modifier3;
            focusRequester2 = focusRequester4;
        } else {
            gapComposerH.D();
            datePickerFormatter2 = datePickerFormatter;
            function4 = function2;
            function5 = function3;
            modifier2 = dTFunctionNameModifier;
            focusRequester2 = focusRequester;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new dm(datePickerState, modifier2, datePickerFormatter2, datePickerColors, function4, function5, z, focusRequester2, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0298  */
    /* JADX WARN: Code duplicated, block: B:102:0x029f  */
    /* JADX WARN: Code duplicated, block: B:103:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:108:0x02be  */
    /* JADX WARN: Code duplicated, block: B:110:0x0379  */
    /* JADX WARN: Code duplicated, block: B:112:0x037e  */
    /* JADX WARN: Code duplicated, block: B:72:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:76:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:82:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:86:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:89:0x0250  */
    /* JADX WARN: Code duplicated, block: B:91:0x0257  */
    /* JADX WARN: Code duplicated, block: B:92:0x025b  */
    /* JADX WARN: Code duplicated, block: B:97:0x0276  */
    public static final void c(Long l, final long j2, Function1 function1, Function1 function2, final CalendarModel calendarModel, final IntRange intRange, DatePickerFormatter datePickerFormatter, final SelectableDates selectableDates, final DatePickerColors datePickerColors, Composer composer, int i2) {
        Function2 function3;
        Function2 function4;
        float f2;
        String strA;
        boolean zY;
        Object objX;
        boolean zY2;
        Object objX2;
        boolean zK;
        Object objX3;
        int i3;
        Function2 function5;
        MeasurePolicy measurePolicyD;
        int iG;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        ColumnMeasurePolicy columnMeasurePolicyA;
        int iG2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        GapComposer gapComposerH = composer.h(-434467002);
        Applier applier = gapComposerH.f7976a;
        int i4 = i2 | (gapComposerH.K(l) ? 4 : 2) | (gapComposerH.e(j2) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(calendarModel) ? 16384 : 8192) | (gapComposerH.y(intRange) ? 131072 : 65536) | (gapComposerH.K(datePickerFormatter) ? 1048576 : 524288) | (gapComposerH.K(selectableDates) ? 8388608 : 4194304) | (gapComposerH.K(datePickerColors) ? 67108864 : 33554432);
        int i5 = 1;
        if (gapComposerH.p(i4 & 1, (38347923 & i4) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final CalendarMonth calendarMonthE = calendarModel.e(j2);
            int i6 = (((calendarMonthE.f7593a - intRange.f71951b) * 12) + calendarMonthE.f7594b) - 1;
            if (i6 < 0) {
                i6 = 0;
            }
            final LazyListState lazyListStateA = LazyListStateKt.a(i6, gapComposerH, 2);
            Integer numValueOf = Integer.valueOf(i6);
            boolean zK2 = gapComposerH.K(lazyListStateA) | gapComposerH.d(i6);
            Object objX4 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new DatePickerKt$DatePickerContent$1$1(i6, lazyListStateA, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, numValueOf, (Function2) objX4);
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX5);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX5;
            Object[] objArr = new Object[0];
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = new iq(22);
                gapComposerH.q(objX6);
            }
            final MutableState mutableState = (MutableState) RememberSaveableKt.d(objArr, (Function0) objX6, gapComposerH, 48);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("DatePickerContent");
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            int iG3 = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposerH.U();
            Modifier modifierC3 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function6 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA2, function6);
            Function2 function7 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU3, function7);
            Function2 function8 = ComposeUiNode.Companion.g;
            if (gapComposerH.S) {
                function3 = function6;
            } else {
                function3 = function6;
                if (!Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG3))) {
                }
                function4 = ComposeUiNode.Companion.d;
                DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposerH, modifierC3, function4, "DatePickerContent");
                f2 = f6782c;
                Modifier modifierK = PaddingKt.k(dTFunctionNameModifierE, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                boolean zD = lazyListStateA.d();
                boolean zB = lazyListStateA.b();
                boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                strA = datePickerFormatter.a(Long.valueOf(j2), calendarModel.f7587a);
                if (strA == null) {
                    strA = "-";
                }
                String str = strA;
                zY = gapComposerH.y(coroutineScope) | gapComposerH.K(lazyListStateA);
                objX = gapComposerH.x();
                if (zY || objX == composer$Companion$Empty$1) {
                    objX = new c(coroutineScope, lazyListStateA, 0);
                    gapComposerH.q(objX);
                }
                Function0 function9 = (Function0) objX;
                zY2 = gapComposerH.y(coroutineScope) | gapComposerH.K(lazyListStateA);
                objX2 = gapComposerH.x();
                if (zY2 || objX2 == composer$Companion$Empty$1) {
                    objX2 = new c(coroutineScope, lazyListStateA, i5);
                    gapComposerH.q(objX2);
                }
                Function0 function10 = (Function0) objX2;
                zK = gapComposerH.K(mutableState);
                objX3 = gapComposerH.x();
                if (zK || objX3 == composer$Companion$Empty$1) {
                    objX3 = new d0(24, mutableState);
                    gapComposerH.q(objX3);
                }
                i3 = i4 & 234881024;
                function5 = function3;
                j(modifierK, zD, zB, zBooleanValue, str, function9, function10, (Function0) objX3, datePickerColors, gapComposerH, i3 | 6);
                gapComposerH = gapComposerH;
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("DatePickerContent");
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                iG = gapComposerH.G();
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, function5);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
                if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                    defpackage.a.t(iG, gapComposerH, iG, function8);
                }
                Modifier modifierK2 = PaddingKt.k(tr.e(gapComposerH, modifierC, function4, "DatePickerContent"), f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
                iG2 = gapComposerH.G();
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK2);
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function5);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function7);
                if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG2))) {
                    defpackage.a.t(iG2, gapComposerH, iG2, function8);
                }
                Updater.c(gapComposerH, modifierC2, function4);
                l(datePickerColors, calendarModel, gapComposerH, ((i4 >> 24) & 14) | ((i4 >> 9) & 112));
                g(lazyListStateA, l, function1, function2, calendarModel, intRange, datePickerFormatter, selectableDates, datePickerColors, gapComposerH, ((i4 << 3) & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4) | (458752 & i4) | (3670016 & i4) | (i4 & 29360128) | i3);
                gapComposerH.Z(true);
                MotionSchemeKeyTokens motionSchemeKeyTokens = MotionSchemeKeyTokens.DefaultEffects;
                FiniteAnimationSpec finiteAnimationSpecA = MotionSchemeKt.a(motionSchemeKeyTokens, gapComposerH);
                FiniteAnimationSpec finiteAnimationSpecA2 = MotionSchemeKt.a(MotionSchemeKeyTokens.FastEffects, gapComposerH);
                FiniteAnimationSpec finiteAnimationSpecA3 = MotionSchemeKt.a(motionSchemeKeyTokens, gapComposerH);
                AnimatedVisibilityKt.e(((Boolean) mutableState.getF10755b()).booleanValue(), ClipKt.b(new DTFunctionNameModifier("DatePickerContent")), EnterExitTransitionKt.d(finiteAnimationSpecA3, null, null, 14).b(EnterExitTransitionKt.e(0.6f, finiteAnimationSpecA)), EnterExitTransitionKt.n(finiteAnimationSpecA3, null, null, 14).b(EnterExitTransitionKt.h(finiteAnimationSpecA2, 2)), null, ComposableLambdaKt.b(1193716082, new Function3<AnimatedVisibilityScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$2$4$2
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        Composer composer2 = (Composer) obj2;
                        ((Number) obj3).intValue();
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        int i7 = Strings.f7646a;
                        String strA2 = Strings_androidKt.a(composer2, R.string.m3c_date_picker_year_picker_pane_title);
                        boolean zK3 = composer2.K(strA2);
                        Object objX7 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zK3 || objX7 == composer$Companion$Empty$2) {
                            objX7 = new a4(strA2, 26);
                            composer2.q(objX7);
                        }
                        Modifier.Companion companion = Modifier.Companion.f8607b;
                        Modifier modifierB = SemanticsModifierKt.b(companion, false, (Function1) objX7);
                        Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                        Alignment.f8582a.getClass();
                        ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, composer2, 0);
                        int iG4 = composer2.G();
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC4 = ComposedModifierKt.c(composer2, modifierB);
                        ComposeUiNode.b0.getClass();
                        Function0 function11 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function11);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, columnMeasurePolicyA3, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Function2 function12 = ComposeUiNode.Companion.g;
                        if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG4))) {
                            fc.A(function12, iG4, composer2, iG4);
                        }
                        Updater.c(composer2, modifierC4, ComposeUiNode.Companion.d);
                        float f3 = DatePickerKt.f6780a * 7.0f;
                        Dp.Companion companion2 = Dp.f11004c;
                        Modifier modifierK3 = PaddingKt.k(SizeKt.i(companion, f3 - DividerDefaults.f6903a), DatePickerKt.f6782c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                        final MutableState mutableState2 = mutableState;
                        boolean zK4 = composer2.K(mutableState2);
                        final CoroutineScope coroutineScope2 = coroutineScope;
                        boolean zY3 = zK4 | composer2.y(coroutineScope2);
                        final LazyListState lazyListState = lazyListStateA;
                        boolean zK5 = zY3 | composer2.K(lazyListState);
                        final IntRange intRange2 = intRange;
                        boolean zY4 = zK5 | composer2.y(intRange2);
                        final CalendarMonth calendarMonth = calendarMonthE;
                        boolean zK6 = zY4 | composer2.K(calendarMonth);
                        Object objX8 = composer2.x();
                        if (zK6 || objX8 == composer$Companion$Empty$2) {
                            Function1 function13 = new Function1() { // from class: androidx.compose.material3.e
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    int iIntValue = ((Integer) obj4).intValue();
                                    float f4 = DatePickerKt.f6780a;
                                    MutableState mutableState3 = mutableState2;
                                    mutableState3.setValue(Boolean.valueOf(!((Boolean) mutableState3.getF10755b()).booleanValue()));
                                    BuildersKt.c(coroutineScope2, null, null, new DatePickerKt$DatePickerContent$2$4$2$2$1$1$1(lazyListState, iIntValue, intRange2, calendarMonth, null), 3);
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(function13);
                            objX8 = function13;
                        }
                        long j3 = j2;
                        SelectableDates selectableDates2 = selectableDates;
                        CalendarModel calendarModel2 = calendarModel;
                        DatePickerColors datePickerColors2 = datePickerColors;
                        DatePickerKt.n(modifierK3, j3, (Function1) objX8, selectableDates2, calendarModel2, intRange2, datePickerColors2, composer2, 6);
                        DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, datePickerColors2.x, composer2, 0, 3);
                        composer2.r();
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 196656, 16);
                gapComposerH.Z(true);
                gapComposerH.Z(true);
            }
            defpackage.a.t(iG3, gapComposerH, iG3, function8);
            function4 = ComposeUiNode.Companion.d;
            DTFunctionNameModifier dTFunctionNameModifierE2 = tr.e(gapComposerH, modifierC3, function4, "DatePickerContent");
            f2 = f6782c;
            Modifier modifierK3 = PaddingKt.k(dTFunctionNameModifierE2, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            boolean zD2 = lazyListStateA.d();
            boolean zB2 = lazyListStateA.b();
            boolean zBooleanValue2 = ((Boolean) mutableState.getF10755b()).booleanValue();
            strA = datePickerFormatter.a(Long.valueOf(j2), calendarModel.f7587a);
            if (strA == null) {
                strA = "-";
            }
            String str2 = strA;
            zY = gapComposerH.y(coroutineScope) | gapComposerH.K(lazyListStateA);
            objX = gapComposerH.x();
            if (zY) {
                objX = new c(coroutineScope, lazyListStateA, 0);
                gapComposerH.q(objX);
            } else {
                objX = new c(coroutineScope, lazyListStateA, 0);
                gapComposerH.q(objX);
            }
            Function0 function11 = (Function0) objX;
            zY2 = gapComposerH.y(coroutineScope) | gapComposerH.K(lazyListStateA);
            objX2 = gapComposerH.x();
            if (zY2) {
                objX2 = new c(coroutineScope, lazyListStateA, i5);
                gapComposerH.q(objX2);
            } else {
                objX2 = new c(coroutineScope, lazyListStateA, i5);
                gapComposerH.q(objX2);
            }
            Function0 function12 = (Function0) objX2;
            zK = gapComposerH.K(mutableState);
            objX3 = gapComposerH.x();
            if (zK) {
                objX3 = new d0(24, mutableState);
                gapComposerH.q(objX3);
            } else {
                objX3 = new d0(24, mutableState);
                gapComposerH.q(objX3);
            }
            i3 = i4 & 234881024;
            function5 = function3;
            j(modifierK3, zD2, zB2, zBooleanValue2, str2, function11, function12, (Function0) objX3, datePickerColors, gapComposerH, i3 | 6);
            gapComposerH = gapComposerH;
            DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("DatePickerContent");
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            iG = gapComposerH.G();
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier3);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
            if (gapComposerH.S) {
                defpackage.a.t(iG, gapComposerH, iG, function8);
            } else {
                defpackage.a.t(iG, gapComposerH, iG, function8);
            }
            Modifier modifierK4 = PaddingKt.k(tr.e(gapComposerH, modifierC, function4, "DatePickerContent"), f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, horizontal, gapComposerH, 0);
            iG2 = gapComposerH.G();
            persistentCompositionLocalMapU2 = gapComposerH.U();
            modifierC2 = ComposedModifierKt.c(gapComposerH, modifierK4);
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function5);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function7);
            if (gapComposerH.S) {
                defpackage.a.t(iG2, gapComposerH, iG2, function8);
            } else {
                defpackage.a.t(iG2, gapComposerH, iG2, function8);
            }
            Updater.c(gapComposerH, modifierC2, function4);
            l(datePickerColors, calendarModel, gapComposerH, ((i4 >> 24) & 14) | ((i4 >> 9) & 112));
            g(lazyListStateA, l, function1, function2, calendarModel, intRange, datePickerFormatter, selectableDates, datePickerColors, gapComposerH, ((i4 << 3) & 112) | (i4 & 896) | (i4 & 7168) | (57344 & i4) | (458752 & i4) | (3670016 & i4) | (i4 & 29360128) | i3);
            gapComposerH.Z(true);
            MotionSchemeKeyTokens motionSchemeKeyTokens2 = MotionSchemeKeyTokens.DefaultEffects;
            FiniteAnimationSpec finiteAnimationSpecA4 = MotionSchemeKt.a(motionSchemeKeyTokens2, gapComposerH);
            FiniteAnimationSpec finiteAnimationSpecA5 = MotionSchemeKt.a(MotionSchemeKeyTokens.FastEffects, gapComposerH);
            FiniteAnimationSpec finiteAnimationSpecA6 = MotionSchemeKt.a(motionSchemeKeyTokens2, gapComposerH);
            AnimatedVisibilityKt.e(((Boolean) mutableState.getF10755b()).booleanValue(), ClipKt.b(new DTFunctionNameModifier("DatePickerContent")), EnterExitTransitionKt.d(finiteAnimationSpecA6, null, null, 14).b(EnterExitTransitionKt.e(0.6f, finiteAnimationSpecA4)), EnterExitTransitionKt.n(finiteAnimationSpecA6, null, null, 14).b(EnterExitTransitionKt.h(finiteAnimationSpecA5, 2)), null, ComposableLambdaKt.b(1193716082, new Function3<AnimatedVisibilityScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerContent$2$4$2
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    ((Number) obj3).intValue();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    int i7 = Strings.f7646a;
                    String strA2 = Strings_androidKt.a(composer2, R.string.m3c_date_picker_year_picker_pane_title);
                    boolean zK3 = composer2.K(strA2);
                    Object objX7 = composer2.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                    if (zK3 || objX7 == composer$Companion$Empty$2) {
                        objX7 = new a4(strA2, 26);
                        composer2.q(objX7);
                    }
                    Modifier.Companion companion = Modifier.Companion.f8607b;
                    Modifier modifierB = SemanticsModifierKt.b(companion, false, (Function1) objX7);
                    Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA3 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, composer2, 0);
                    int iG4 = composer2.G();
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer2, modifierB);
                    ComposeUiNode.b0.getClass();
                    Function0 function13 = ComposeUiNode.Companion.f9641b;
                    if (composer2.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer2.B();
                    if (composer2.getS()) {
                        composer2.C(function13);
                    } else {
                        composer2.o();
                    }
                    Updater.c(composer2, columnMeasurePolicyA3, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Function2 function14 = ComposeUiNode.Companion.g;
                    if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG4))) {
                        fc.A(function14, iG4, composer2, iG4);
                    }
                    Updater.c(composer2, modifierC4, ComposeUiNode.Companion.d);
                    float f3 = DatePickerKt.f6780a * 7.0f;
                    Dp.Companion companion2 = Dp.f11004c;
                    Modifier modifierK5 = PaddingKt.k(SizeKt.i(companion, f3 - DividerDefaults.f6903a), DatePickerKt.f6782c, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    final MutableState mutableState2 = mutableState;
                    boolean zK4 = composer2.K(mutableState2);
                    final CoroutineScope coroutineScope2 = coroutineScope;
                    boolean zY3 = zK4 | composer2.y(coroutineScope2);
                    final LazyListState lazyListState = lazyListStateA;
                    boolean zK5 = zY3 | composer2.K(lazyListState);
                    final IntRange intRange2 = intRange;
                    boolean zY4 = zK5 | composer2.y(intRange2);
                    final CalendarMonth calendarMonth = calendarMonthE;
                    boolean zK6 = zY4 | composer2.K(calendarMonth);
                    Object objX8 = composer2.x();
                    if (zK6 || objX8 == composer$Companion$Empty$2) {
                        Function1 function15 = new Function1() { // from class: androidx.compose.material3.e
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj4) {
                                int iIntValue = ((Integer) obj4).intValue();
                                float f4 = DatePickerKt.f6780a;
                                MutableState mutableState3 = mutableState2;
                                mutableState3.setValue(Boolean.valueOf(!((Boolean) mutableState3.getF10755b()).booleanValue()));
                                BuildersKt.c(coroutineScope2, null, null, new DatePickerKt$DatePickerContent$2$4$2$2$1$1$1(lazyListState, iIntValue, intRange2, calendarMonth, null), 3);
                                return Unit.f71739a;
                            }
                        };
                        composer2.q(function15);
                        objX8 = function15;
                    }
                    long j3 = j2;
                    SelectableDates selectableDates2 = selectableDates;
                    CalendarModel calendarModel2 = calendarModel;
                    DatePickerColors datePickerColors2 = datePickerColors;
                    DatePickerKt.n(modifierK5, j3, (Function1) objX8, selectableDates2, calendarModel2, intRange2, datePickerColors2, composer2, 6);
                    DividerKt.a(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, datePickerColors2.x, composer2, 0, 3);
                    composer2.r();
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 196656, 16);
            gapComposerH.Z(true);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new xr(l, j2, function1, function2, calendarModel, intRange, datePickerFormatter, selectableDates, datePickerColors, i2);
        }
    }

    public static final void d(Modifier modifier, final Function2 function2, long j2, long j3, float f2, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        boolean z;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "DatePickerHeader-pc5RIQQ");
        }
        GapComposer gapComposerH = composer.h(2020490761);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(function2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.e(j2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.e(j3) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.c(f2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierO = SizeKt.d(modifierE, 1.0f).o(function2 != null ? SizeKt.b(new DTFunctionNameModifier("DatePickerHeader-pc5RIQQ"), Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1) : new DTFunctionNameModifier("DatePickerHeader-pc5RIQQ"));
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$SpaceBetween$1, Alignment.Companion.n, gapComposerH, 6);
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Function2 function3 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function3);
            }
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            if (function2 != null) {
                gapComposerH.L(396894187);
                z = true;
                ProvideContentColorTextStyleKt.a(j2, TypographyKt.a(DatePickerModalTokens.s, gapComposerH), ComposableLambdaKt.b(1344395458, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DatePickerHeader$1$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8588h, false);
                            int iG2 = composer2.G();
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC2 = ComposedModifierKt.c(composer2, Modifier.Companion.f8607b);
                            ComposeUiNode.b0.getClass();
                            Function0 function1 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function1);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Function2 function4 = ComposeUiNode.Companion.g;
                            if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG2))) {
                                fc.A(function4, iG2, composer2, iG2);
                            }
                            Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                            function2.invoke(composer2, 0);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, ((i3 >> 6) & 14) | KyberEngine.KyberPolyBytes);
                gapComposerH.Z(false);
            } else {
                z = true;
                gapComposerH.L(397163267);
                gapComposerH.Z(false);
            }
            CompositionLocalKt.a(defpackage.a.d(j3, ContentColorKt.f6730a), composableLambdaImpl, gapComposerH, ((i3 >> 12) & 112) | 8);
            gapComposerH.Z(z);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new fs(modifierE, function2, j2, j3, f2, composableLambdaImpl, i2);
        }
    }

    public static final void e(final String str, Modifier modifier, final boolean z, final Function0 function0, final boolean z2, final boolean z3, final boolean z4, final boolean z5, final String str2, final DatePickerColors datePickerColors, Composer composer, final int i2) {
        int i3;
        long j2;
        State stateL;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Day");
        }
        final Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-945355136);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(str) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(modifier2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.b(z2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.b(z3) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.b(z4) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.b(z5) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            i3 |= gapComposerH.K(str2) ? 67108864 : 33554432;
        }
        if ((805306368 & i2) == 0) {
            i3 |= gapComposerH.K(datePickerColors) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if (gapComposerH.p(i3 & 1, (306783379 & i3) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z6 = (234881024 & i3) == 67108864;
            Object objX = gapComposerH.x();
            if (z6 || objX == Composer.Companion.f7939a) {
                objX = new a4(str2, 24);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifier2, true, (Function1) objX);
            Shape shapeA = ShapesKt.a(DatePickerModalTokens.f7763f, gapComposerH);
            int i4 = i3 >> 6;
            if (z) {
                j2 = z3 ? datePickerColors.r : datePickerColors.s;
            } else {
                Color.f8866b.getClass();
                j2 = Color.f8870h;
            }
            long j3 = j2;
            if (z2) {
                gapComposerH.L(-1319856736);
                stateL = SingleValueAnimationKt.b(j3, MotionSchemeKt.a(MotionSchemeKeyTokens.DefaultEffects, gapComposerH), null, gapComposerH, 0, 12);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1319630064);
                stateL = SnapshotStateKt.l(new Color(j3), gapComposerH);
                gapComposerH.Z(false);
            }
            SurfaceKt.b(z, function0, modifierB, z3, shapeA, ((Color) stateL.getF10755b()).f8872a, (!z4 || z) ? null : BorderStrokeKt.a(DatePickerModalTokens.l, datePickerColors.u), ComposableLambdaKt.b(1126347158, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Day$2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    State stateB;
                    Composer composer2;
                    Composer composer3 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer3.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        float f2 = DatePickerModalTokens.g;
                        float f3 = DatePickerModalTokens.f7762e;
                        Modifier.Companion companion = Modifier.Companion.f8607b;
                        Modifier modifierL = SizeKt.l(companion, f2, f3);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                        int iG = composer3.G();
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                        Modifier modifierC = ComposedModifierKt.c(composer3, modifierL);
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
                        Updater.c(composer3, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Function2 function2 = ComposeUiNode.Companion.g;
                        if (composer3.getS() || !Intrinsics.c(composer3.x(), Integer.valueOf(iG))) {
                            fc.A(function2, iG, composer3, iG);
                        }
                        Updater.c(composer3, modifierC, ComposeUiNode.Companion.d);
                        Object objX2 = composer3.x();
                        if (objX2 == Composer.Companion.f7939a) {
                            objX2 = new bp(13);
                            composer3.q(objX2);
                        }
                        Modifier modifierA = SemanticsModifierKt.a(companion, (Function1) objX2);
                        DatePickerColors datePickerColors2 = datePickerColors;
                        long j4 = datePickerColors2.o;
                        boolean z7 = z;
                        boolean z8 = z5;
                        boolean z9 = z3;
                        if (z7 && z9) {
                            j4 = datePickerColors2.p;
                        } else if (z7 && !z9) {
                            j4 = datePickerColors2.q;
                        } else if (z8 && z9) {
                            j4 = datePickerColors2.w;
                        } else if (!z8 || z9) {
                            if (z4 && z9) {
                                j4 = datePickerColors2.t;
                            } else if (z9) {
                                j4 = datePickerColors2.n;
                            }
                        }
                        long j5 = j4;
                        if (z8) {
                            composer3.L(-969483020);
                            stateB = SnapshotStateKt.l(new Color(j5), composer3);
                            composer3.F();
                            composer2 = composer3;
                        } else {
                            composer3.L(-969417610);
                            stateB = SingleValueAnimationKt.b(j5, MotionSchemeKt.a(MotionSchemeKeyTokens.DefaultEffects, composer3), null, composer3, 0, 12);
                            composer2 = composer3;
                            composer2.F();
                        }
                        long j6 = ((Color) stateB.getF10755b()).f8872a;
                        TextAlign.f10959b.getClass();
                        TextKt.c(str, modifierA, j6, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 261112);
                        composer2.r();
                    } else {
                        composer3.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, i4 & 7294);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: cs
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    DatePickerKt.e(str, modifier2, z, function0, z2, z3, z4, z5, str2, datePickerColors, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void f(Modifier modifier, final int i2, final Function1 function1, DatePickerColors datePickerColors, Composer composer, int i3) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "DisplayModeToggleButton-iUJLfQg");
        }
        final Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(-1461252485);
        int i4 = (gapComposerH.d(i2) ? 32 : 16) | i3 | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.K(datePickerColors) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            CompositionLocalKt.a(defpackage.a.d(datePickerColors.f6753c, ContentColorKt.f6730a), ComposableLambdaKt.b(-1734512197, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$DisplayModeToggleButton$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        DisplayMode.f6900b.getClass();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        Function1 function2 = function1;
                        if (i2 == 0) {
                            composer2.L(-101264927);
                            ImageVector imageVectorD = Icons$Filled.f7622b;
                            if (imageVectorD == null) {
                                Dp.Companion companion = Dp.f11004c;
                                ImageVector.Builder builder = new ImageVector.Builder("Filled.Edit", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, BERTags.FLAGS, null);
                                EmptyList emptyList = VectorKt.f9173a;
                                Color.f8866b.getClass();
                                SolidColor solidColor = new SolidColor(Color.f8867c, null);
                                StrokeCap.f8932a.getClass();
                                StrokeJoin.f8935a.getClass();
                                int i5 = StrokeJoin.f8937c;
                                PathBuilder pathBuilder = new PathBuilder();
                                pathBuilder.f(3.0f, 17.25f);
                                PathNode.VerticalTo verticalTo = new PathNode.VerticalTo(21.0f);
                                ArrayList arrayList = pathBuilder.f9098a;
                                arrayList.add(verticalTo);
                                pathBuilder.c(3.75f);
                                pathBuilder.d(17.81f, 9.94f);
                                pathBuilder.e(-3.75f, -3.75f);
                                pathBuilder.d(3.0f, 17.25f);
                                pathBuilder.a();
                                pathBuilder.f(20.71f, 7.04f);
                                pathBuilder.b(0.39f, -0.39f, 0.39f, -1.02f, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.41f);
                                pathBuilder.e(-2.34f, -2.34f);
                                pathBuilder.b(-0.39f, -0.39f, -1.02f, -0.39f, -1.41f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                pathBuilder.e(-1.83f, 1.83f);
                                pathBuilder.e(3.75f, 3.75f);
                                pathBuilder.e(1.83f, -1.83f);
                                pathBuilder.a();
                                builder.b(arrayList, 0, "", solidColor, 1.0f, null, 1.0f, 1.0f, 0, i5, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                imageVectorD = builder.d();
                                Icons$Filled.f7622b = imageVectorD;
                            }
                            int i6 = Strings.f7646a;
                            String strA = Strings_androidKt.a(composer2, R.string.m3c_date_picker_switch_to_input_mode);
                            boolean zK = composer2.K(function2);
                            Object objX = composer2.x();
                            if (zK || objX == composer$Companion$Empty$1) {
                                objX = new u8(function2, 11);
                                composer2.q(objX);
                            }
                            DatePickerKt.h((Function0) objX, imageVectorD, strA, modifier2, false, composer2, 0, 16);
                            composer2.F();
                        } else {
                            composer2.L(-100967048);
                            ImageVector imageVectorD2 = Icons$Filled.f7623c;
                            if (imageVectorD2 == null) {
                                Dp.Companion companion2 = Dp.f11004c;
                                ImageVector.Builder builder2 = new ImageVector.Builder("Filled.DateRange", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, BERTags.FLAGS, null);
                                EmptyList emptyList2 = VectorKt.f9173a;
                                Color.f8866b.getClass();
                                SolidColor solidColor2 = new SolidColor(Color.f8867c, null);
                                StrokeCap.f8932a.getClass();
                                StrokeJoin.f8935a.getClass();
                                int i7 = StrokeJoin.f8937c;
                                PathBuilder pathBuilder2 = new PathBuilder();
                                pathBuilder2.f(9.0f, 11.0f);
                                pathBuilder2.d(7.0f, 11.0f);
                                pathBuilder2.g(2.0f);
                                pathBuilder2.c(2.0f);
                                pathBuilder2.g(-2.0f);
                                pathBuilder2.a();
                                pathBuilder2.f(13.0f, 11.0f);
                                pathBuilder2.c(-2.0f);
                                pathBuilder2.g(2.0f);
                                pathBuilder2.c(2.0f);
                                pathBuilder2.g(-2.0f);
                                pathBuilder2.a();
                                pathBuilder2.f(17.0f, 11.0f);
                                pathBuilder2.c(-2.0f);
                                pathBuilder2.g(2.0f);
                                pathBuilder2.c(2.0f);
                                pathBuilder2.g(-2.0f);
                                pathBuilder2.a();
                                pathBuilder2.f(19.0f, 4.0f);
                                pathBuilder2.c(-1.0f);
                                pathBuilder2.d(18.0f, 2.0f);
                                pathBuilder2.c(-2.0f);
                                pathBuilder2.g(2.0f);
                                pathBuilder2.d(8.0f, 4.0f);
                                pathBuilder2.d(8.0f, 2.0f);
                                pathBuilder2.d(6.0f, 2.0f);
                                pathBuilder2.g(2.0f);
                                pathBuilder2.d(5.0f, 4.0f);
                                pathBuilder2.b(-1.11f, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.99f, 0.9f, -1.99f, 2.0f);
                                pathBuilder2.d(3.0f, 20.0f);
                                pathBuilder2.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.1f, 0.89f, 2.0f, 2.0f, 2.0f);
                                pathBuilder2.c(14.0f);
                                pathBuilder2.b(1.1f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2.0f, -0.9f, 2.0f, -2.0f);
                                pathBuilder2.d(21.0f, 6.0f);
                                pathBuilder2.b(Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.1f, -0.9f, -2.0f, -2.0f, -2.0f);
                                pathBuilder2.a();
                                pathBuilder2.f(19.0f, 20.0f);
                                pathBuilder2.d(5.0f, 20.0f);
                                pathBuilder2.d(5.0f, 9.0f);
                                pathBuilder2.c(14.0f);
                                pathBuilder2.g(11.0f);
                                pathBuilder2.a();
                                builder2.b(pathBuilder2.f9098a, 0, "", solidColor2, 1.0f, null, 1.0f, 1.0f, 0, i7, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                imageVectorD2 = builder2.d();
                                Icons$Filled.f7623c = imageVectorD2;
                            }
                            int i8 = Strings.f7646a;
                            String strA2 = Strings_androidKt.a(composer2, R.string.m3c_date_picker_switch_to_calendar_mode);
                            boolean zK2 = composer2.K(function2);
                            Object objX2 = composer2.x();
                            if (zK2 || objX2 == composer$Companion$Empty$1) {
                                objX2 = new u8(function2, 12);
                                composer2.q(objX2);
                            }
                            DatePickerKt.h((Function0) objX2, imageVectorD2, strA2, modifier2, false, composer2, 0, 16);
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 56);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new v1(modifier2, i2, function1, datePickerColors, i3);
        }
    }

    public static final void g(LazyListState lazyListState, final Long l, final Function1 function1, Function1 function2, final CalendarModel calendarModel, final IntRange intRange, final DatePickerFormatter datePickerFormatter, final SelectableDates selectableDates, final DatePickerColors datePickerColors, Composer composer, int i2) {
        Object datePickerKt$HorizontalMonthsList$2$1;
        final LazyListState lazyListState2 = lazyListState;
        GapComposer gapComposerH = composer.h(-1994757941);
        int i3 = i2 | (gapComposerH.K(lazyListState2) ? 4 : 2);
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.K(l) ? 32 : 16;
        }
        int i4 = i3 | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(calendarModel) ? 16384 : 8192) | (gapComposerH.y(intRange) ? 131072 : 65536) | (gapComposerH.K(datePickerFormatter) ? 1048576 : 524288) | (gapComposerH.K(selectableDates) ? 8388608 : 4194304) | (gapComposerH.K(datePickerColors) ? 67108864 : 33554432);
        if (gapComposerH.p(i4 & 1, (38347923 & i4) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final CalendarDate calendarDateG = calendarModel.g();
            boolean zK = gapComposerH.K(intRange);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = calendarModel.d(intRange.f71951b, 1);
                gapComposerH.q(objX);
            }
            final CalendarMonth calendarMonth = (CalendarMonth) objX;
            TextKt.a(TypographyKt.a(DatePickerModalTokens.f7764h, gapComposerH), ComposableLambdaKt.b(1504086906, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$HorizontalMonthsList$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Object objX2 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (objX2 == composer$Companion$Empty$2) {
                            objX2 = new bp(14);
                            composer2.q(objX2);
                        }
                        Modifier modifierB = SemanticsModifierKt.b(Modifier.Companion.f8607b, false, (Function1) objX2);
                        DatePickerDefaults datePickerDefaults = DatePickerDefaults.f6760a;
                        DecayAnimationSpec decayAnimationSpecB = DecayAnimationSpecKt.b();
                        FiniteAnimationSpec finiteAnimationSpecA = MotionSchemeKt.a(MotionSchemeKeyTokens.DefaultEffects, composer2);
                        boolean zK2 = composer2.K(decayAnimationSpecB);
                        LazyListState lazyListState3 = lazyListState2;
                        boolean zK3 = zK2 | composer2.K(lazyListState3);
                        Object objX3 = composer2.x();
                        if (zK3 || objX3 == composer$Companion$Empty$2) {
                            final LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1 lazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1 = new LazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1(lazyListState3, SnapPosition.Center.f4876a);
                            SnapLayoutInfoProvider snapLayoutInfoProvider = new SnapLayoutInfoProvider() { // from class: androidx.compose.material3.DatePickerDefaults$rememberSnapFlingBehavior$1$snapLayoutInfoProvider$1
                                @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
                                public final float a(float f2) {
                                    return lazyListSnapLayoutInfoProviderKt$SnapLayoutInfoProvider$1.a(f2);
                                }

                                @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
                                public final float b(float f2, float f3) {
                                    return Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                }
                            };
                            float f2 = SnapFlingBehaviorKt.f4867a;
                            SnapFlingBehavior snapFlingBehavior = new SnapFlingBehavior(snapLayoutInfoProvider, decayAnimationSpecB, finiteAnimationSpecA);
                            composer2.q(snapFlingBehavior);
                            objX3 = snapFlingBehavior;
                        }
                        TargetedFlingBehavior targetedFlingBehavior = (TargetedFlingBehavior) objX3;
                        boolean zY = composer2.y(intRange) | composer2.y(calendarModel) | composer2.K(calendarMonth) | composer2.K(function1) | composer2.K(calendarDateG) | composer2.K(l) | composer2.y(datePickerFormatter) | composer2.K(selectableDates);
                        final DatePickerColors datePickerColors2 = datePickerColors;
                        boolean zK4 = zY | composer2.K(datePickerColors2);
                        Object objX4 = composer2.x();
                        if (zK4 || objX4 == composer$Companion$Empty$2) {
                            final IntRange intRange2 = intRange;
                            final CalendarModel calendarModel2 = calendarModel;
                            final CalendarMonth calendarMonth2 = calendarMonth;
                            final Function1 function3 = function1;
                            final CalendarDate calendarDate = calendarDateG;
                            final Long l2 = l;
                            final DatePickerFormatter datePickerFormatter2 = datePickerFormatter;
                            final SelectableDates selectableDates2 = selectableDates;
                            Function1 function4 = new Function1() { // from class: androidx.compose.material3.f
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj3) {
                                    LazyListScope lazyListScope = (LazyListScope) obj3;
                                    float f3 = DatePickerKt.f6780a;
                                    IntRange intRange3 = intRange2;
                                    int i5 = ((intRange3.f71952c - intRange3.f71951b) + 1) * 12;
                                    final CalendarModel calendarModel3 = calendarModel2;
                                    final CalendarMonth calendarMonth3 = calendarMonth2;
                                    final Function1 function5 = function3;
                                    final CalendarDate calendarDate2 = calendarDate;
                                    final Long l3 = l2;
                                    final DatePickerFormatter datePickerFormatter3 = datePickerFormatter2;
                                    final SelectableDates selectableDates3 = selectableDates2;
                                    final DatePickerColors datePickerColors3 = datePickerColors2;
                                    LazyListScope.j(lazyListScope, i5, null, null, new ComposableLambdaImpl(72599078, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$HorizontalMonthsList$1$2$1$1
                                        @Override // kotlin.jvm.functions.Function4
                                        public final Object g(Object obj4, Object obj5, Object obj6, Object obj7) {
                                            int i6;
                                            LazyItemScope lazyItemScope = (LazyItemScope) obj4;
                                            int iIntValue2 = ((Number) obj5).intValue();
                                            Composer composer3 = (Composer) obj6;
                                            int iIntValue3 = ((Number) obj7).intValue();
                                            if ((iIntValue3 & 6) == 0) {
                                                i6 = (composer3.K(lazyItemScope) ? 4 : 2) | iIntValue3;
                                            } else {
                                                i6 = iIntValue3;
                                            }
                                            if ((iIntValue3 & 48) == 0) {
                                                i6 |= composer3.d(iIntValue2) ? 32 : 16;
                                            }
                                            if (composer3.p(i6 & 1, (i6 & 147) != 146)) {
                                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                                CalendarMonth calendarMonth4 = calendarMonth3;
                                                CalendarModel calendarModel4 = calendarModel3;
                                                CalendarMonth calendarMonthJ = calendarModel4.j(calendarMonth4, iIntValue2);
                                                Modifier modifierD = lazyItemScope.d(Modifier.Companion.f8607b);
                                                Alignment.f8582a.getClass();
                                                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                                int iG = composer3.G();
                                                PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                                                Modifier modifierC = ComposedModifierKt.c(composer3, modifierD);
                                                ComposeUiNode.b0.getClass();
                                                Function0 function0 = ComposeUiNode.Companion.f9641b;
                                                if (composer3.getF7976a() == null) {
                                                    ComposablesKt.b();
                                                    throw null;
                                                }
                                                composer3.B();
                                                if (composer3.getS()) {
                                                    composer3.C(function0);
                                                } else {
                                                    composer3.o();
                                                }
                                                Updater.c(composer3, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                                Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                                Function2 function6 = ComposeUiNode.Companion.g;
                                                if (composer3.getS() || !Intrinsics.c(composer3.x(), Integer.valueOf(iG))) {
                                                    fc.A(function6, iG, composer3, iG);
                                                }
                                                Updater.c(composer3, modifierC, ComposeUiNode.Companion.d);
                                                DatePickerKt.i(calendarMonthJ, function5, calendarDate2.f7586e, l3, datePickerFormatter3, selectableDates3, datePickerColors3, calendarModel4.f7587a, composer3, 221184);
                                                composer3.r();
                                            } else {
                                                composer3.D();
                                            }
                                            return Unit.f71739a;
                                        }
                                    }), 6);
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(function4);
                            objX4 = function4;
                        }
                        LazyDslKt.b(modifierB, lazyListState3, null, null, null, targetedFlingBehavior, false, null, (Function1) objX4, composer2, 0, 444);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 48);
            boolean zY = ((i4 & 14) == 4) | ((i4 & 7168) == 2048) | gapComposerH.y(calendarModel) | gapComposerH.y(intRange);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                lazyListState2 = lazyListState;
                datePickerKt$HorizontalMonthsList$2$1 = new DatePickerKt$HorizontalMonthsList$2$1(lazyListState2, function2, calendarModel, intRange, null);
                gapComposerH.q(datePickerKt$HorizontalMonthsList$2$1);
            } else {
                datePickerKt$HorizontalMonthsList$2$1 = objX2;
                lazyListState2 = lazyListState;
            }
            EffectsKt.e(gapComposerH, lazyListState2, (Function2) datePickerKt$HorizontalMonthsList$2$1);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new k4(lazyListState2, l, function1, function2, calendarModel, intRange, datePickerFormatter, selectableDates, datePickerColors, i2);
        }
    }

    public static final void h(final Function0 function0, final ImageVector imageVector, final String str, Modifier modifier, boolean z, Composer composer, int i2, int i3) {
        int i4;
        boolean z2;
        int i5;
        Modifier modifier2;
        boolean z3;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "IconButtonWithTooltip");
        }
        GapComposer gapComposerH = composer.h(-368059805);
        int i6 = i2 | (gapComposerH.y(function0) ? 4 : 2) | (gapComposerH.K(imageVector) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128);
        int i7 = i3 & 8;
        if (i7 != 0) {
            i4 = i6 | 3072;
        } else {
            i4 = i6 | (gapComposerH.K(dTFunctionNameModifier) ? 2048 : 1024);
        }
        int i8 = i3 & 16;
        if (i8 != 0) {
            i5 = i4 | 24576;
            z2 = z;
        } else {
            z2 = z;
            i5 = i4 | (gapComposerH.b(z2) ? 16384 : 8192);
        }
        if (gapComposerH.p(i5 & 1, (i5 & 9363) != 9362)) {
            if (i7 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("IconButtonWithTooltip");
            }
            if (i8 != 0) {
                z2 = true;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            float f2 = TooltipDefaults.f7400b;
            TooltipAnchorPosition.f7394a.getClass();
            final Modifier modifier3 = dTFunctionNameModifier;
            final boolean z4 = z2;
            TooltipKt.b(TooltipDefaults.a(gapComposerH, TooltipAnchorPosition.f7395b), ComposableLambdaKt.b(-456272562, new Function3<TooltipScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$IconButtonWithTooltip$1
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    TooltipScope tooltipScope = (TooltipScope) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Number) obj3).intValue();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= (iIntValue & 8) == 0 ? composer2.K(tooltipScope) : composer2.y(tooltipScope) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        final String str2 = str;
                        TooltipKt.a(tooltipScope, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, 0L, 0L, ComposableLambdaKt.b(1905952188, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$IconButtonWithTooltip$1.1
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj4, Object obj5) {
                                Composer composer3 = (Composer) obj4;
                                int iIntValue2 = ((Number) obj5).intValue();
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    TextKt.c(str2, null, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer3, 0, 0, 262142);
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, (iIntValue & 14) | 805306368);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), TooltipKt.c(gapComposerH), null, false, ComposableLambdaKt.b(-1124908186, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$IconButtonWithTooltip$2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        final ImageVector imageVector2 = imageVector;
                        final String str2 = str;
                        IconButtonKt.a(function0, modifier3, z4, null, null, ComposableLambdaKt.b(-1301085432, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$IconButtonWithTooltip$2.1
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                Composer composer3 = (Composer) obj3;
                                int iIntValue2 = ((Number) obj4).intValue();
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    IconKt.b(imageVector2, str2, null, 0L, composer3, 0, 12);
                                } else {
                                    composer3.D();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), composer2, 1572864, 56);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 100663344, 248);
            modifier2 = modifier3;
            z3 = z4;
        } else {
            gapComposerH.D();
            modifier2 = dTFunctionNameModifier;
            z3 = z2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new j8(function0, imageVector, str, modifier2, z3, i2, i3);
        }
    }

    public static final void i(final CalendarMonth calendarMonth, final Function1 function1, final long j2, final Long l, final DatePickerFormatter datePickerFormatter, final SelectableDates selectableDates, final DatePickerColors datePickerColors, final Locale locale, Composer composer, final int i2) {
        GapComposer gapComposer;
        GapComposer gapComposer2;
        String str;
        CalendarMonth calendarMonth2 = calendarMonth;
        Object obj = function1;
        Long l2 = l;
        DatePickerFormatter datePickerFormatter2 = datePickerFormatter;
        GapComposer gapComposerH = composer.h(-333300603);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(calendarMonth2) ? 4 : 2) | (gapComposerH.y(obj) ? 32 : 16) | (gapComposerH.e(j2) ? 256 : 128) | (gapComposerH.K(l2) ? 2048 : 1024) | (gapComposerH.K(datePickerFormatter2) ? 1048576 : 524288) | (gapComposerH.K(selectableDates) ? 8388608 : 4194304) | (gapComposerH.K(datePickerColors) ? 67108864 : 33554432) | (gapComposerH.y(locale) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, (i3 & 306783379) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str2 = "Month";
            DTFunctionNameModifier dTFunctionNameModifierJ = n00.j(gapComposerH, 606771165, false, "Month");
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("Month");
            float f2 = f6780a * 6.0f;
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierO = SizeKt.i(dTFunctionNameModifier, f2).o(dTFunctionNameModifierJ);
            Arrangement$SpaceEvenly$1 arrangement$SpaceEvenly$1 = Arrangement.f4922f;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$SpaceEvenly$1, Alignment.Companion.n, gapComposerH, 6);
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Function2 function2 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function2);
            }
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(-680088486);
            int i4 = 0;
            int i5 = 0;
            int i6 = 6;
            while (i4 < i6) {
                Modifier modifierD = tr.d(str2, 1.0f);
                Arrangement$SpaceEvenly$1 arrangement$SpaceEvenly$2 = Arrangement.f4922f;
                Alignment.f8582a.getClass();
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceEvenly$2, Alignment.Companion.l, gapComposerH, 54);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                int iG2 = gapComposerH.G();
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierD);
                ComposeUiNode.b0.getClass();
                int i7 = i4;
                Function0 function3 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                int i8 = i5;
                if (gapComposerH.S) {
                    gapComposerH.C(function3);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                Function2 function4 = ComposeUiNode.Companion.g;
                if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG2))) {
                    defpackage.a.t(iG2, gapComposerH, iG2, function4);
                }
                Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                gapComposerH.L(1542622325);
                int i9 = 0;
                int i10 = i8;
                while (i9 < 7) {
                    int i11 = calendarMonth2.d;
                    if (i10 < i11 || i10 >= i11 + calendarMonth2.f7595c) {
                        gapComposer2 = gapComposerH;
                        str = str2;
                        Modifier modifierR = SizeKt.r(n00.i(gapComposer2, 576825328, str), DatePickerModalTokens.g, DatePickerModalTokens.f7762e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 12);
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = InteractiveComponentSizeKt.f7013c;
                        SpacerKt.a(gapComposer2, SizeKt.p(modifierR, ((Dp) gapComposer2.k(staticProvidableCompositionLocal)).f11006b, ((Dp) gapComposer2.k(staticProvidableCompositionLocal)).f11006b));
                        gapComposer2.Z(false);
                    } else {
                        gapComposerH.L(577914947);
                        int i12 = i10 - calendarMonth2.d;
                        long j3 = (((long) i12) * 86400000) + calendarMonth2.f7596e;
                        boolean z = j3 == j2;
                        boolean z2 = l2 != null && j3 == l2.longValue();
                        gapComposerH.L(578890300);
                        gapComposerH.Z(false);
                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        StringBuilder sb = new StringBuilder();
                        gapComposerH.L(974838827);
                        gapComposerH.Z(false);
                        if (z) {
                            gapComposerH.L(1416920485);
                            if (sb.length() > 0) {
                                sb.append(", ");
                            }
                            int i13 = Strings.f7646a;
                            sb.append(Strings_androidKt.a(gapComposerH, R.string.m3c_date_picker_today_description));
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(975029291);
                            gapComposerH.Z(false);
                        }
                        String string = sb.length() == 0 ? null : sb.toString();
                        String strB = datePickerFormatter2.b(Long.valueOf(j3), locale, true);
                        if (strB == null) {
                            strB = "";
                        }
                        String strA = CalendarLocale_jvmKt.a(i12 + 1, locale);
                        DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier(str2);
                        boolean zE = ((i3 & 112) == 32) | gapComposerH.e(j3);
                        Object objX = gapComposerH.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (zE || objX == composer$Companion$Empty$1) {
                            objX = new k6(obj, j3, 1);
                            gapComposerH.q(objX);
                        }
                        Function0 function5 = (Function0) objX;
                        boolean zE2 = gapComposerH.e(j3) | ((i3 & 29360128) == 8388608);
                        Object objX2 = gapComposerH.x();
                        if (zE2 || objX2 == composer$Companion$Empty$1) {
                            selectableDates.getClass();
                            objX2 = Boolean.valueOf(selectableDates.a(j3));
                            gapComposerH.q(objX2);
                        }
                        boolean zBooleanValue = ((Boolean) objX2).booleanValue();
                        if (string != null) {
                            strB = tr.h(string, ", ", strB);
                        }
                        GapComposer gapComposer3 = gapComposerH;
                        str = str2;
                        e(strA, dTFunctionNameModifier2, z2, function5, z2, zBooleanValue, z, false, strB, datePickerColors, gapComposer3, ((i3 << 3) & 1879048192) | 48);
                        gapComposer2 = gapComposer3;
                        gapComposer2.Z(false);
                    }
                    obj = function1;
                    datePickerFormatter2 = datePickerFormatter;
                    str2 = str;
                    gapComposerH = gapComposer2;
                    i10++;
                    i9++;
                    applier = applier;
                    calendarMonth2 = calendarMonth;
                    l2 = l;
                }
                GapComposer gapComposer4 = gapComposerH;
                gapComposer4.Z(false);
                gapComposer4.Z(true);
                obj = function1;
                datePickerFormatter2 = datePickerFormatter;
                i6 = 6;
                gapComposerH = gapComposer4;
                i4 = i7 + 1;
                i5 = i10;
                applier = applier;
                calendarMonth2 = calendarMonth;
                l2 = l;
            }
            gapComposer = gapComposerH;
            gapComposer.Z(false);
            gapComposer.Z(true);
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(function1, j2, l, datePickerFormatter, selectableDates, datePickerColors, locale, i2) { // from class: bs

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Function1 f20935c;
                public final /* synthetic */ long d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Long f20936e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ DatePickerFormatter f20937f;
                public final /* synthetic */ SelectableDates g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ DatePickerColors f20938h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Locale f20939i;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int iA = RecomposeScopeImplKt.a(221185);
                    DatePickerKt.i(this.f20934b, this.f20935c, this.d, this.f20936e, this.f20937f, this.g, this.f20938h, this.f20939i, (Composer) obj2, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void j(Modifier modifier, final boolean z, final boolean z2, boolean z3, final String str, final Function0 function0, final Function0 function1, Function0 function2, final DatePickerColors datePickerColors, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "MonthsNavigation");
        }
        GapComposer gapComposerH = composer.h(-773929258);
        int i3 = i2 | (gapComposerH.b(z) ? 32 : 16) | (gapComposerH.b(z2) ? 256 : 128) | (gapComposerH.b(z3) ? 2048 : 1024) | (gapComposerH.K(str) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536) | (gapComposerH.y(function1) ? 1048576 : 524288) | (gapComposerH.y(function2) ? 8388608 : 4194304) | (gapComposerH.K(datePickerColors) ? 67108864 : 33554432);
        if (gapComposerH.p(i3 & 1, (38347923 & i3) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierI = SizeKt.i(SizeKt.d(modifierE, 1.0f), f6781b);
            Arrangement.Horizontal horizontal = z3 ? Arrangement.f4918a : Arrangement.g;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(horizontal, Alignment.Companion.l, gapComposerH, 48);
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Function2 function4 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function4);
            }
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            o(function2, z3, null, ComposableLambdaKt.b(619076006, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$MonthsNavigation$1$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        String str2 = str;
                        boolean zK = composer2.K(str2);
                        Object objX = composer2.x();
                        if (zK || objX == Composer.Companion.f7939a) {
                            objX = new a4(str2, 27);
                            composer2.q(objX);
                        }
                        TextKt.c(str2, SemanticsModifierKt.b(Modifier.Companion.f8607b, false, (Function1) objX), datePickerColors.f6755f, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 262136);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, ((i3 >> 21) & 14) | 3072 | ((i3 >> 6) & 112));
            if (z3) {
                gapComposerH.L(282432080);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(281624840);
                CompositionLocalKt.a(defpackage.a.d(datePickerColors.f6755f, ContentColorKt.f6730a), ComposableLambdaKt.b(-128317193, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$MonthsNavigation$1$2
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                            Alignment.f8582a.getClass();
                            RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, composer2, 0);
                            int iG2 = composer2.G();
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC2 = ComposedModifierKt.c(composer2, Modifier.Companion.f8607b);
                            ComposeUiNode.b0.getClass();
                            Function0 function5 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function5);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, rowMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Function2 function6 = ComposeUiNode.Companion.g;
                            if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG2))) {
                                fc.A(function6, iG2, composer2, iG2);
                            }
                            Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                            ImageVector imageVectorD = Icons$AutoMirrored$Filled.f7619a;
                            if (imageVectorD == null) {
                                Dp.Companion companion = Dp.f11004c;
                                ImageVector.Builder builder = new ImageVector.Builder("AutoMirrored.Filled.KeyboardArrowLeft", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, true, 96, null);
                                EmptyList emptyList = VectorKt.f9173a;
                                Color.f8866b.getClass();
                                SolidColor solidColor = new SolidColor(Color.f8867c, null);
                                StrokeCap.f8932a.getClass();
                                StrokeJoin.f8935a.getClass();
                                int i4 = StrokeJoin.f8937c;
                                PathBuilder pathBuilder = new PathBuilder();
                                pathBuilder.f(15.41f, 16.59f);
                                pathBuilder.d(10.83f, 12.0f);
                                pathBuilder.e(4.58f, -4.59f);
                                pathBuilder.d(14.0f, 6.0f);
                                pathBuilder.e(-6.0f, 6.0f);
                                pathBuilder.e(6.0f, 6.0f);
                                pathBuilder.e(1.41f, -1.41f);
                                pathBuilder.a();
                                builder.b(pathBuilder.f9098a, 0, "", solidColor, 1.0f, null, 1.0f, 1.0f, 0, i4, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                imageVectorD = builder.d();
                                Icons$AutoMirrored$Filled.f7619a = imageVectorD;
                            }
                            ImageVector imageVector = imageVectorD;
                            int i5 = Strings.f7646a;
                            DatePickerKt.h(function1, imageVector, Strings_androidKt.a(composer2, R.string.m3c_date_picker_switch_to_previous_month), null, z2, composer2, 0, 8);
                            ImageVector imageVectorD2 = Icons$AutoMirrored$Filled.f7620b;
                            if (imageVectorD2 == null) {
                                Dp.Companion companion2 = Dp.f11004c;
                                ImageVector.Builder builder2 = new ImageVector.Builder("AutoMirrored.Filled.KeyboardArrowRight", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, true, 96, null);
                                EmptyList emptyList2 = VectorKt.f9173a;
                                Color.f8866b.getClass();
                                SolidColor solidColor2 = new SolidColor(Color.f8867c, null);
                                StrokeCap.f8932a.getClass();
                                StrokeJoin.f8935a.getClass();
                                int i6 = StrokeJoin.f8937c;
                                PathBuilder pathBuilder2 = new PathBuilder();
                                pathBuilder2.f(8.59f, 16.59f);
                                pathBuilder2.d(13.17f, 12.0f);
                                pathBuilder2.d(8.59f, 7.41f);
                                pathBuilder2.d(10.0f, 6.0f);
                                pathBuilder2.e(6.0f, 6.0f);
                                pathBuilder2.e(-6.0f, 6.0f);
                                pathBuilder2.e(-1.41f, -1.41f);
                                pathBuilder2.a();
                                builder2.b(pathBuilder2.f9098a, 0, "", solidColor2, 1.0f, null, 1.0f, 1.0f, 0, i6, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                imageVectorD2 = builder2.d();
                                Icons$AutoMirrored$Filled.f7620b = imageVectorD2;
                            }
                            DatePickerKt.h(function0, imageVectorD2, Strings_androidKt.a(composer2, R.string.m3c_date_picker_switch_to_next_month), null, z, composer2, 0, 8);
                            composer2.r();
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposerH, 56);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new yr(modifierE, z, z2, z3, str, function0, function1, function2, datePickerColors, i2);
        }
    }

    public static final void k(final Long l, final long j2, final int i2, final Function1 function1, final Function1 function2, final CalendarModel calendarModel, final IntRange intRange, final DatePickerFormatter datePickerFormatter, final SelectableDates selectableDates, final DatePickerColors datePickerColors, final FocusRequester focusRequester, Composer composer, final int i3) {
        GapComposer gapComposerH = composer.h(-2053685029);
        int i4 = i3 | (gapComposerH.K(l) ? 4 : 2) | (gapComposerH.e(j2) ? 32 : 16) | (gapComposerH.d(i2) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(calendarModel) ? 131072 : 65536) | (gapComposerH.y(intRange) ? 1048576 : 524288) | (gapComposerH.K(datePickerFormatter) ? 8388608 : 4194304) | (gapComposerH.K(selectableDates) ? 67108864 : 33554432) | (gapComposerH.K(datePickerColors) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && ((gapComposerH.K(focusRequester) ? (char) 4 : (char) 2) & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            Dp.Companion companion = Dp.f11004c;
            int i5 = -density.B0(48.0f);
            FiniteAnimationSpec finiteAnimationSpecA = MotionSchemeKt.a(MotionSchemeKeyTokens.DefaultEffects, gapComposerH);
            FiniteAnimationSpec finiteAnimationSpecA2 = MotionSchemeKt.a(MotionSchemeKeyTokens.FastEffects, gapComposerH);
            MotionSchemeKeyTokens motionSchemeKeyTokens = MotionSchemeKeyTokens.DefaultSpatial;
            FiniteAnimationSpec finiteAnimationSpecA3 = MotionSchemeKt.a(motionSchemeKeyTokens, gapComposerH);
            FiniteAnimationSpec finiteAnimationSpecA4 = MotionSchemeKt.a(motionSchemeKeyTokens, gapComposerH);
            DisplayMode displayMode = new DisplayMode(i2);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("SwitchableDateEntryContent-KaiTk9E");
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new bp(12);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(dTFunctionNameModifier, false, (Function1) objX);
            boolean zY = gapComposerH.y(finiteAnimationSpecA3) | gapComposerH.y(finiteAnimationSpecA) | gapComposerH.y(finiteAnimationSpecA2) | gapComposerH.d(i5) | gapComposerH.y(finiteAnimationSpecA4);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                objX2 = new um(finiteAnimationSpecA3, finiteAnimationSpecA, finiteAnimationSpecA2, i5, finiteAnimationSpecA4);
                gapComposerH.q(objX2);
            }
            AnimatedContentKt.b(displayMode, modifierB, (Function1) objX2, null, "DatePickerDisplayModeAnimation", null, ComposableLambdaKt.b(1838500091, new Function4<AnimatedContentScope, DisplayMode, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$SwitchableDateEntryContent$3
                @Override // kotlin.jvm.functions.Function4
                public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                    int i6 = ((DisplayMode) obj2).f6902a;
                    Composer composer2 = (Composer) obj3;
                    ((Number) obj4).intValue();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    DisplayMode.f6900b.getClass();
                    DatePickerColors datePickerColors2 = datePickerColors;
                    if (i6 == 0) {
                        composer2.L(1567031954);
                        DatePickerKt.c(l, j2, function1, function2, calendarModel, intRange, datePickerFormatter, selectableDates, datePickerColors2, composer2, 0);
                        composer2.F();
                    } else if (i6 == DisplayMode.f6901c) {
                        composer2.L(1567050592);
                        DateInputKt.a(l, function1, calendarModel, intRange, datePickerFormatter, selectableDates, datePickerColors2, focusRequester, composer2, 0);
                        composer2.F();
                    } else {
                        composer2.L(1334373351);
                        composer2.F();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, ((i4 >> 6) & 14) | 1597440, 40);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(l, j2, i2, function1, function2, calendarModel, intRange, datePickerFormatter, selectableDates, datePickerColors, focusRequester, i3) { // from class: gs

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ Long f69471b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ long f69472c;
                public final /* synthetic */ int d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function1 f69473e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function1 f69474f;
                public final /* synthetic */ CalendarModel g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ IntRange f69475h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ DatePickerFormatter f69476i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ SelectableDates f69477j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ DatePickerColors f69478k;
                public final /* synthetic */ FocusRequester l;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    DatePickerKt.k(this.f69471b, this.f69472c, this.d, this.f69473e, this.f69474f, this.g, this.f69475h, this.f69476i, this.f69477j, this.f69478k, this.l, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void l(DatePickerColors datePickerColors, CalendarModel calendarModel, Composer composer, int i2) {
        GapComposer gapComposer;
        GapComposer gapComposerH = composer.h(-1849465391);
        Applier applier = gapComposerH.f7976a;
        int i3 = (i2 & 6) == 0 ? (gapComposerH.K(datePickerColors) ? 4 : 2) | i2 : i2;
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.y(calendarModel) ? 32 : 16;
        }
        boolean z = false;
        if (gapComposerH.p(i3 & 1, (i3 & 19) != 18)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            int f7591c = calendarModel.getF7591c();
            ArrayList d2 = calendarModel.getD();
            ArrayList arrayList = new ArrayList();
            int i4 = f7591c - 1;
            int size = d2.size();
            for (int i5 = i4; i5 < size; i5++) {
                arrayList.add(d2.get(i5));
            }
            for (int i6 = 0; i6 < i4; i6++) {
                arrayList.add(d2.get(i6));
            }
            TextStyle textStyleA = TypographyKt.a(DatePickerModalTokens.x, gapComposerH);
            String str = "WeekDays";
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("WeekDays");
            float f2 = f6780a;
            float f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            Modifier modifierD = SizeKt.d(SizeKt.b(dTFunctionNameModifier, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2, 1), 1.0f);
            Arrangement$SpaceEvenly$1 arrangement$SpaceEvenly$1 = Arrangement.f4922f;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceEvenly$1, Alignment.Companion.l, gapComposerH, 54);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Function2 function2 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function2);
            }
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.L(24563235);
            int size2 = arrayList.size();
            int i7 = 0;
            while (i7 < size2) {
                Pair pair = (Pair) arrayList.get(i7);
                DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier(str);
                boolean zK = gapComposerH.K(pair);
                Object objX = gapComposerH.x();
                if (zK || objX == Composer.Companion.f7939a) {
                    objX = new ck(pair, 9);
                    gapComposerH.q(objX);
                }
                Modifier modifierR = SizeKt.r(SemanticsModifierKt.a(dTFunctionNameModifier2, (Function1) objX), DatePickerModalTokens.g, DatePickerModalTokens.f7762e, f3, 12);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = InteractiveComponentSizeKt.f7013c;
                Modifier modifierP = SizeKt.p(modifierR, ((Dp) gapComposerH.k(staticProvidableCompositionLocal)).f11006b, ((Dp) gapComposerH.k(staticProvidableCompositionLocal)).f11006b);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, z);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                int iG2 = gapComposerH.G();
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierP);
                ComposeUiNode.b0.getClass();
                Function0 function1 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function1);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                Function2 function3 = ComposeUiNode.Companion.g;
                if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG2))) {
                    defpackage.a.t(iG2, gapComposerH, iG2, function3);
                }
                Updater.c(gapComposerH, modifierC2, ComposeUiNode.Companion.d);
                String str2 = (String) pair.f71706c;
                Modifier modifierW = SizeKt.w(new DTFunctionNameModifier(str), null, 3);
                String str3 = str;
                long j2 = datePickerColors.d;
                TextAlign.f10959b.getClass();
                GapComposer gapComposer2 = gapComposerH;
                TextKt.c(str2, modifierW, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyleA, gapComposer2, 48, 0, 130040);
                gapComposer2.Z(true);
                i7++;
                str = str3;
                gapComposerH = gapComposer2;
                f3 = 0.0f;
                size2 = size2;
                arrayList = arrayList;
                applier = applier;
                z = false;
            }
            gapComposer = gapComposerH;
            gapComposer.Z(z);
            gapComposer.Z(true);
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new g2(datePickerColors, calendarModel, i2, 13);
        }
    }

    public static final void m(final String str, Modifier modifier, final boolean z, final boolean z2, Function0 function0, final boolean z3, String str2, final DatePickerColors datePickerColors, Composer composer, int i2) {
        long j2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Year");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(-1153850597);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.b(z2) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.b(z3) ? 131072 : 65536) | (gapComposerH.K(str2) ? 1048576 : 524288) | (gapComposerH.K(datePickerColors) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            boolean z4 = ((i3 & 7168) == 2048) | ((i3 & 896) == 256);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z4 || objX == composer$Companion$Empty$1) {
                objX = (!z2 || z) ? null : BorderStrokeKt.a(DatePickerModalTokens.l, datePickerColors.u);
                gapComposerH.q(objX);
            }
            BorderStroke borderStroke = (BorderStroke) objX;
            boolean z5 = (3670016 & i3) == 1048576;
            Object objX2 = gapComposerH.x();
            if (z5 || objX2 == composer$Companion$Empty$1) {
                objX2 = new a4(str2, 25);
                gapComposerH.q(objX2);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifier2, true, (Function1) objX2);
            Shape shapeA = ShapesKt.a(DatePickerModalTokens.D, gapComposerH);
            int i4 = i3 >> 6;
            int i5 = i4 & 14;
            if (z) {
                j2 = z3 ? datePickerColors.l : datePickerColors.m;
            } else {
                Color.f8866b.getClass();
                j2 = Color.f8870h;
            }
            SurfaceKt.b(z, function0, modifierB, z3, shapeA, ((Color) SingleValueAnimationKt.b(j2, MotionSchemeKt.a(MotionSchemeKeyTokens.DefaultEffects, gapComposerH), null, gapComposerH, 0, 12).getF10755b()).f8872a, borderStroke, ComposableLambdaKt.b(-564400443, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$Year$2
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    long j3;
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier.Companion companion = Modifier.Companion.f8607b;
                        Modifier modifierD = SizeKt.d(companion, 1.0f);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8587f, false);
                        int iG = composer2.G();
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierD);
                        ComposeUiNode.b0.getClass();
                        Function0 function1 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function1);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Function2 function2 = ComposeUiNode.Companion.g;
                        if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                            fc.A(function2, iG, composer2, iG);
                        }
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        Object objX3 = composer2.x();
                        if (objX3 == Composer.Companion.f7939a) {
                            objX3 = new bp(15);
                            composer2.q(objX3);
                        }
                        Modifier modifierA = SemanticsModifierKt.a(companion, (Function1) objX3);
                        DatePickerColors datePickerColors2 = datePickerColors;
                        boolean z6 = z;
                        boolean z7 = z3;
                        if (z6 && z7) {
                            j3 = datePickerColors2.f6758j;
                        } else if (z6 && !z7) {
                            j3 = datePickerColors2.f6759k;
                        } else if (z2 && z7) {
                            j3 = datePickerColors2.f6757i;
                        } else {
                            j3 = z7 ? datePickerColors2.g : datePickerColors2.f6756h;
                        }
                        long j4 = ((Color) SingleValueAnimationKt.b(j3, MotionSchemeKt.a(MotionSchemeKeyTokens.DefaultEffects, composer2), null, composer2, 0, 12).getF10755b()).f8872a;
                        TextAlign.f10959b.getClass();
                        TextKt.c(str, modifierA, j4, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, null, composer2, 0, 0, 261112);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, i5 | ((i3 >> 9) & 112) | (i4 & 7168));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ds(str, modifier2, z, z2, function0, z3, str2, datePickerColors, i2);
        }
    }

    public static final void n(Modifier modifier, final long j2, final Function1 function1, final SelectableDates selectableDates, final CalendarModel calendarModel, final IntRange intRange, final DatePickerColors datePickerColors, Composer composer, final int i2) {
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "YearPicker");
        }
        final Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(-1286899812);
        int i3 = i2 | (gapComposerH.e(j2) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.K(selectableDates) ? 2048 : 1024) | (gapComposerH.y(calendarModel) ? 16384 : 8192) | (gapComposerH.y(intRange) ? 131072 : 65536) | (gapComposerH.K(datePickerColors) ? 1048576 : 524288);
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            TextStyle textStyleA = TypographyKt.a(DatePickerModalTokens.A, gapComposerH);
            Function2<Composer, Integer, Unit> function2 = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$YearPicker$1
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        CalendarModel calendarModel2 = calendarModel;
                        final int i4 = calendarModel2.f(calendarModel2.g()).f7593a;
                        final int i5 = calendarModel2.e(j2).f7593a;
                        IntRange intRange2 = intRange;
                        LazyGridState lazyGridStateA = LazyGridStateKt.a(Math.max(0, (i5 - intRange2.f71951b) - 3), composer2, 2);
                        GridCells.Fixed fixed = new GridCells.Fixed(3);
                        final DatePickerColors datePickerColors2 = datePickerColors;
                        Modifier modifierB = BackgroundKt.b(modifier2, datePickerColors2.f6751a, RectangleShapeKt.f8913a);
                        Arrangement$SpaceEvenly$1 arrangement$SpaceEvenly$1 = Arrangement.f4922f;
                        Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(DatePickerKt.g);
                        boolean zY = composer2.y(calendarModel2) | composer2.y(intRange2) | composer2.d(i5) | composer2.d(i4) | composer2.K(function1) | composer2.K(selectableDates) | composer2.K(datePickerColors2);
                        Object objX = composer2.x();
                        if (zY || objX == Composer.Companion.f7939a) {
                            final IntRange intRange3 = intRange;
                            final CalendarModel calendarModel3 = calendarModel;
                            final Function1 function3 = function1;
                            final SelectableDates selectableDates2 = selectableDates;
                            Function1 function4 = new Function1() { // from class: androidx.compose.material3.g
                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj3) {
                                    int size;
                                    LazyGridScope lazyGridScope = (LazyGridScope) obj3;
                                    final IntRange intRange4 = intRange3;
                                    intRange4.getClass();
                                    if (intRange4 instanceof Collection) {
                                        size = ((Collection) intRange4).size();
                                    } else {
                                        Iterator<Integer> it = intRange4.iterator();
                                        int i6 = 0;
                                        while (((IntProgressionIterator) it).d) {
                                            ((IntIterator) it).next();
                                            i6++;
                                            if (i6 < 0) {
                                                CollectionsKt.s0();
                                                throw null;
                                            }
                                        }
                                        size = i6;
                                    }
                                    final CalendarModel calendarModel4 = calendarModel3;
                                    final int i7 = i5;
                                    final int i8 = i4;
                                    final Function1 function5 = function3;
                                    final SelectableDates selectableDates3 = selectableDates2;
                                    final DatePickerColors datePickerColors3 = datePickerColors2;
                                    lazyGridScope.d(size, LazyGridScope$items$1.f5334b, new ComposableLambdaImpl(674613074, true, new Function4<LazyGridItemScope, Integer, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$YearPicker$1$1$1$1
                                        @Override // kotlin.jvm.functions.Function4
                                        public final Object g(Object obj4, Object obj5, Object obj6, Object obj7) {
                                            int iIntValue2 = ((Number) obj5).intValue();
                                            Composer composer3 = (Composer) obj6;
                                            int iIntValue3 = ((Number) obj7).intValue();
                                            if ((iIntValue3 & 48) == 0) {
                                                iIntValue3 |= composer3.d(iIntValue2) ? 32 : 16;
                                            }
                                            if (composer3.p(iIntValue3 & 1, (iIntValue3 & 145) != 144)) {
                                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                                int i9 = iIntValue2 + intRange4.f71951b;
                                                String strA = CalendarLocale_jvmKt.a(i9, calendarModel4.f7587a);
                                                Modifier modifierL = SizeKt.l(Modifier.Companion.f8607b, DatePickerModalTokens.z, DatePickerModalTokens.y);
                                                boolean z = i9 == i7;
                                                boolean z2 = i9 == i8;
                                                Function1 function6 = function5;
                                                boolean zK = composer3.K(function6) | composer3.d(i9);
                                                Object objX2 = composer3.x();
                                                if (zK || objX2 == Composer.Companion.f7939a) {
                                                    objX2 = new is(i9, 0, function6);
                                                    composer3.q(objX2);
                                                }
                                                selectableDates3.getClass();
                                                int i10 = Strings.f7646a;
                                                DatePickerKt.m(strA, modifierL, z, z2, (Function0) objX2, true, String.format(Strings_androidKt.a(composer3, R.string.m3c_date_picker_navigate_to_year_description), Arrays.copyOf(new Object[]{strA}, 1)), datePickerColors3, composer3, 48);
                                            } else {
                                                composer3.D();
                                            }
                                            return Unit.f71739a;
                                        }
                                    }));
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(function4);
                            objX = function4;
                        }
                        LazyGridDslKt.b(fixed, modifierB, lazyGridStateA, null, spacedAlignedF, arrangement$SpaceEvenly$1, null, false, null, (Function1) objX, composer2, 1769472, 920);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            };
            modifier2 = modifier2;
            TextKt.a(textStyleA, ComposableLambdaKt.b(1301915789, function2, gapComposerH), gapComposerH, 48);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(j2, function1, selectableDates, calendarModel, intRange, datePickerColors, i2) { // from class: as

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ long f20613c;
                public final /* synthetic */ Function1 d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ SelectableDates f20614e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ CalendarModel f20615f;
                public final /* synthetic */ IntRange g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ DatePickerColors f20616h;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(7);
                    DatePickerKt.n(this.f20612b, this.f20613c, this.d, this.f20614e, this.f20615f, this.g, this.f20616h, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void o(Function0 function0, final boolean z, Modifier modifier, final ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "YearPickerMenuButton");
        }
        GapComposer gapComposerH = composer.h(-709923073);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.b(z) ? 32 : 16;
        }
        int i4 = i3 | KyberEngine.KyberPolyBytes;
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.y(composableLambdaImpl) ? 2048 : 1024;
        }
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("YearPickerMenuButton");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.f5846a;
            PaddingValuesImpl paddingValuesImpl = ButtonDefaults.f6634a;
            ButtonKt.b(function0, dTFunctionNameModifier, false, roundedCornerShape, ButtonDefaults.d(((Color) gapComposerH.k(ContentColorKt.f6730a)).f8872a, gapComposerH), null, ComposableLambdaKt.b(1899489890, new Function3<RowScope, Composer, Integer, Unit>() { // from class: androidx.compose.material3.DatePickerKt$YearPickerMenuButton$1
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    String strA;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Number) obj3).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        composableLambdaImpl.invoke(composer2, 0);
                        float f2 = ButtonDefaults.f6637e;
                        Modifier modifierC = Modifier.Companion.f8607b;
                        SpacerKt.a(composer2, SizeKt.o(modifierC, f2));
                        ImageVector imageVectorD = Icons$Filled.d;
                        if (imageVectorD == null) {
                            Dp.Companion companion = Dp.f11004c;
                            ImageVector.Builder builder = new ImageVector.Builder("Filled.ArrowDropDown", 24.0f, 24.0f, 24.0f, 24.0f, 0L, 0, false, BERTags.FLAGS, null);
                            EmptyList emptyList = VectorKt.f9173a;
                            Color.f8866b.getClass();
                            SolidColor solidColor = new SolidColor(Color.f8867c, null);
                            StrokeCap.f8932a.getClass();
                            StrokeJoin.f8935a.getClass();
                            int i5 = StrokeJoin.f8937c;
                            PathBuilder pathBuilder = new PathBuilder();
                            pathBuilder.f(7.0f, 10.0f);
                            pathBuilder.e(5.0f, 5.0f);
                            pathBuilder.e(5.0f, -5.0f);
                            pathBuilder.a();
                            builder.b(pathBuilder.f9098a, 0, "", solidColor, 1.0f, null, 1.0f, 1.0f, 0, i5, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                            imageVectorD = builder.d();
                            Icons$Filled.d = imageVectorD;
                        }
                        ImageVector imageVector = imageVectorD;
                        boolean z2 = z;
                        if (z2) {
                            composer2.L(1509384391);
                            int i6 = Strings.f7646a;
                            strA = Strings_androidKt.a(composer2, R.string.m3c_date_picker_switch_to_day_selection);
                            composer2.F();
                        } else {
                            composer2.L(1509478662);
                            int i7 = Strings.f7646a;
                            strA = Strings_androidKt.a(composer2, R.string.m3c_date_picker_switch_to_year_selection);
                            composer2.F();
                        }
                        String str = strA;
                        float f3 = z2 ? 180.0f : 0.0f;
                        if (f3 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            modifierC = GraphicsLayerModifierKt.c(modifierC, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, 0L, null, 0, 524031);
                        }
                        IconKt.b(imageVector, str, modifierC, 0L, composer2, 0, 8);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, (i4 & 14) | 807075840 | ((i4 >> 3) & 112), 388);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zr(function0, z, modifier2, composableLambdaImpl, i2);
        }
    }

    public static final DatePickerState p(final Long l, final IntRange intRange, SelectableDates selectableDates, Composer composer, int i2) {
        final SelectableDates selectableDates2;
        DisplayMode.f6900b.getClass();
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        final Locale localeA = CalendarLocale_androidKt.a(composer);
        Object[] objArr = new Object[0];
        DatePickerStateImpl.f6882h.getClass();
        boolean z = true;
        SaverKt$Saver$1 saverKt$Saver$1A = ListSaverKt.a(new h(), new a(selectableDates, localeA, 1));
        boolean zY = ((((i2 & 14) ^ 6) > 4 && composer.K(l)) || (i2 & 6) == 4) | ((((i2 & 112) ^ 48) > 32 && composer.K(l)) || (i2 & 48) == 32) | composer.y(intRange) | ((((i2 & 7168) ^ 3072) > 2048 && composer.d(0)) || (i2 & 3072) == 2048);
        if ((((57344 & i2) ^ 24576) <= 16384 || !composer.K(selectableDates)) && (i2 & 24576) != 16384) {
            z = false;
        }
        boolean zY2 = zY | z | composer.y(localeA);
        Object objX = composer.x();
        if (zY2 || objX == Composer.Companion.f7939a) {
            selectableDates2 = selectableDates;
            objX = new Function0() { // from class: androidx.compose.material3.d
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    float f2 = DatePickerKt.f6780a;
                    return new DatePickerStateImpl(l, l, intRange, 0, selectableDates2, localeA, null);
                }
            };
            composer.q(objX);
        } else {
            selectableDates2 = selectableDates;
        }
        DatePickerStateImpl datePickerStateImpl = (DatePickerStateImpl) RememberSaveableKt.b(objArr, saverKt$Saver$1A, (Function0) objX, composer, 0);
        ((SnapshotMutableStateImpl) datePickerStateImpl.d).setValue(selectableDates2);
        return datePickerStateImpl;
    }
}
