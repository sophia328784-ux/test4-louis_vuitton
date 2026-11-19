package defpackage;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnPlacedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.kizitonwose.calendar.compose.CalendarMonthsKt;
import com.kizitonwose.calendar.compose.ItemCoordinatesStore;
import com.kizitonwose.calendar.core.CalendarDay;
import com.kizitonwose.calendar.core.CalendarMonth;
import com.vuitton.android.presentation.screen.spotlight.components.SpotlightSkuPagerKt;
import defpackage.tr;
import java.util.List;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bi implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20872b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f20873c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f20874e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f20875f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f20876h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Function f20877i;

    public /* synthetic */ bi(Modifier modifier, PagerState pagerState, List list, boolean z, boolean z2, Function1 function1, Function1 function2, int i2) {
        this.f20874e = modifier;
        this.f20875f = pagerState;
        this.g = list;
        this.f20873c = z;
        this.d = z2;
        this.f20876h = function1;
        this.f20877i = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Modifier modifierV;
        int i2 = this.f20872b;
        Function function = this.f20877i;
        Object obj3 = this.f20876h;
        Object obj4 = this.g;
        Object obj5 = this.f20875f;
        Object obj6 = this.f20874e;
        switch (i2) {
            case 0:
                LazyItemScope lazyItemScope = (LazyItemScope) obj6;
                Function4 function4 = (Function4) obj5;
                final CalendarMonth calendarMonth = (CalendarMonth) obj4;
                final ItemCoordinatesStore itemCoordinatesStore = (ItemCoordinatesStore) obj3;
                final ComposableLambdaImpl composableLambdaImpl = (ComposableLambdaImpl) function;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                ComposableLambdaImpl composableLambdaImpl2 = CalendarMonthsKt.f35923a;
                if (composer.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    boolean z = this.f20873c;
                    Modifier modifierD = z ? tr.d("CalendarMonths$lambda$1$3$0", 1.0f) : lazyItemScope.d(new DTFunctionNameModifier("CalendarMonths$lambda$1$3$0"));
                    final boolean z2 = this.d;
                    if (z2) {
                        modifierV = z ? SizeKt.c(new DTFunctionNameModifier("CalendarMonths$lambda$1$3$0"), 1.0f) : lazyItemScope.b(new DTFunctionNameModifier("CalendarMonths$lambda$1$3$0"));
                    } else {
                        modifierV = SizeKt.v(new DTFunctionNameModifier("CalendarMonths$lambda$1$3$0"), null, 3);
                    }
                    Modifier modifierO = modifierD.o(modifierV);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer, 0);
                    int iHashCode = Long.hashCode(composer.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer.n();
                    Modifier modifierC = ComposedModifierKt.c(composer, modifierO);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer.B();
                    if (composer.getS()) {
                        composer.C(function0);
                    } else {
                        composer.o();
                    }
                    Updater.c(composer, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                    Updater.a(composer, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(composer, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer, modifierC, ComposeUiNode.Companion.d);
                    ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.f4944a;
                    if (function4 == null) {
                        composer.L(1028986199);
                    } else {
                        composer.L(-1213732886);
                        function4.g(columnScopeInstance, calendarMonth, composer, 6);
                    }
                    composer.F();
                    CalendarMonthsKt.f35924b.D(columnScopeInstance, calendarMonth, ComposableLambdaKt.b(-912247458, new Function2() { // from class: com.kizitonwose.calendar.compose.c
                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r25v2, types: [java.lang.Throwable] */
                        /* JADX WARN: Type inference failed for: r9v0 */
                        /* JADX WARN: Type inference failed for: r9v1, types: [androidx.compose.ui.Alignment$Vertical] */
                        /* JADX WARN: Type inference failed for: r9v7 */
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj7, Object obj8) {
                            Composer composer2 = (Composer) obj7;
                            int iIntValue2 = ((Integer) obj8).intValue();
                            ComposableLambdaImpl composableLambdaImpl3 = CalendarMonthsKt.f35923a;
                            boolean z3 = true;
                            int i3 = 0;
                            if (composer2.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                float f2 = 1.0f;
                                Modifier modifierD2 = tr.d("CalendarMonths$lambda$1$3$0$0$0", 1.0f);
                                boolean z4 = z2;
                                ColumnScopeInstance columnScopeInstance2 = ColumnScopeInstance.f4944a;
                                ?? r9 = 0;
                                int i4 = 3;
                                Modifier modifierO2 = modifierD2.o(z4 ? columnScopeInstance2.a(new DTFunctionNameModifier("CalendarMonths$lambda$1$3$0$0$0"), 1.0f, true) : SizeKt.v(new DTFunctionNameModifier("CalendarMonths$lambda$1$3$0$0$0"), null, 3));
                                Arrangement$Top$1 arrangement$Top$2 = Arrangement.f4920c;
                                Alignment.f8582a.getClass();
                                ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(arrangement$Top$2, Alignment.Companion.n, composer2, 0);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierO2);
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
                                Updater.c(composer2, columnMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                                Updater.c(composer2, persistentCompositionLocalMapN2, ComposeUiNode.Companion.f9643e);
                                Updater.a(composer2, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                Updater.c(composer2, modifierC2, ComposeUiNode.Companion.d);
                                composer2.L(1492730795);
                                int i5 = 0;
                                for (List<CalendarDay> list : calendarMonth.f35958c) {
                                    int i6 = i5 + 1;
                                    Modifier modifierO3 = tr.d("CalendarMonths$lambda$1$3$0$0$0", f2).o(z4 ? columnScopeInstance2.a(new DTFunctionNameModifier("CalendarMonths$lambda$1$3$0$0$0"), f2, z3) : SizeKt.v(new DTFunctionNameModifier("CalendarMonths$lambda$1$3$0$0$0"), r9, i4));
                                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                                    Alignment.f8582a.getClass();
                                    ?? r25 = r9;
                                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$Start$1, Alignment.Companion.f8591k, composer2, i3);
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    int iHashCode3 = Long.hashCode(composer2.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer2.n();
                                    Modifier modifierC3 = ComposedModifierKt.c(composer2, modifierO3);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function2 = ComposeUiNode.Companion.f9641b;
                                    if (composer2.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw r25;
                                    }
                                    composer2.B();
                                    if (composer2.getS()) {
                                        composer2.C(function2);
                                    } else {
                                        composer2.o();
                                    }
                                    Updater.c(composer2, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                                    Updater.c(composer2, persistentCompositionLocalMapN3, ComposeUiNode.Companion.f9643e);
                                    Updater.a(composer2, Integer.valueOf(iHashCode3), ComposeUiNode.Companion.g);
                                    Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                    Updater.c(composer2, modifierC3, ComposeUiNode.Companion.d);
                                    composer2.L(-386799768);
                                    int i7 = 0;
                                    for (CalendarDay calendarDay : list) {
                                        int i8 = i7 + 1;
                                        Modifier modifierB = ClipKt.b(RowScopeInstance.f5040a.a(new DTFunctionNameModifier("CalendarMonths$lambda$1$3$0$0$0"), f2, z3));
                                        ItemCoordinatesStore itemCoordinatesStore2 = itemCoordinatesStore;
                                        boolean zK = composer2.K(itemCoordinatesStore2);
                                        Object objX = composer2.x();
                                        if (zK || objX == Composer.Companion.f7939a) {
                                            objX = new CalendarMonthsKt$CalendarMonths$2$2$1$1$1$1$1$1$1(1, itemCoordinatesStore2, ItemCoordinatesStore.class, "onFirstDayPlaced", "onFirstDayPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V", 0);
                                            composer2.q(objX);
                                        }
                                        Function1 function3 = (Function1) ((KFunction) objX);
                                        if (i5 == 0 && i7 == 0) {
                                            modifierB = OnPlacedModifierKt.a(modifierB, function3);
                                        }
                                        Alignment.f8582a.getClass();
                                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                        int iHashCode4 = Long.hashCode(composer2.getT());
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer2.n();
                                        Modifier modifierC4 = ComposedModifierKt.c(composer2, modifierB);
                                        ComposeUiNode.b0.getClass();
                                        Function0 function5 = ComposeUiNode.Companion.f9641b;
                                        if (composer2.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw r25;
                                        }
                                        composer2.B();
                                        if (composer2.getS()) {
                                            composer2.C(function5);
                                        } else {
                                            composer2.o();
                                        }
                                        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                        Updater.c(composer2, persistentCompositionLocalMapN4, ComposeUiNode.Companion.f9643e);
                                        Updater.a(composer2, Integer.valueOf(iHashCode4), ComposeUiNode.Companion.g);
                                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                        Updater.c(composer2, modifierC4, ComposeUiNode.Companion.d);
                                        composableLambdaImpl.g(BoxScopeInstance.f4938a, calendarDay, composer2, 6);
                                        composer2.r();
                                        i7 = i8;
                                        f2 = 1.0f;
                                        z3 = true;
                                    }
                                    composer2.F();
                                    composer2.r();
                                    r9 = r25;
                                    i5 = i6;
                                    f2 = 1.0f;
                                    z3 = true;
                                    i3 = 0;
                                    i4 = 3;
                                }
                                composer2.F();
                                composer2.r();
                                OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer), composer, 390);
                    composer.L(1031214231);
                    composer.F();
                    composer.r();
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                SpotlightSkuPagerKt.a((Modifier) obj6, (PagerState) obj5, (List) obj4, this.f20873c, this.d, (Function1) obj3, (Function1) function, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ bi(boolean z, LazyItemScope lazyItemScope, boolean z2, Function4 function4, CalendarMonth calendarMonth, ItemCoordinatesStore itemCoordinatesStore, ComposableLambdaImpl composableLambdaImpl) {
        this.f20873c = z;
        this.f20874e = lazyItemScope;
        this.d = z2;
        this.f20875f = function4;
        this.g = calendarMonth;
        this.f20876h = itemCoordinatesStore;
        this.f20877i = composableLambdaImpl;
    }
}
