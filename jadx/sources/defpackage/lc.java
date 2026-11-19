package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.FlowRowScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.unit.Constraints;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import androidx.lifecycle.compose.RememberLifecycleOwnerKt;
import androidx.navigation3.runtime.NavEntry;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.presentation.compose.components.LVTagFilterKt;
import com.vuitton.android.presentation.compose.components.TagFilterType;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Unit;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.ranges.IntProgressionIterator;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class lc implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f75991b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f75992c;

    public /* synthetic */ lc(int i2, MutableState mutableState) {
        this.f75991b = i2;
        this.f75992c = mutableState;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        Lifecycle.State state;
        int i2 = this.f75991b;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        MutableState mutableState = this.f75992c;
        switch (i2) {
            case 0:
                NavEntry navEntry = (NavEntry) obj;
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer.K(navEntry) ? 4 : 2;
                }
                if (composer.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    List list = (List) mutableState.getF10755b();
                    boolean z = (iIntValue & 14) == 4;
                    Object objX = composer.x();
                    if (z || objX == composer$Companion$Empty$1) {
                        objX = new c1(navEntry, 15);
                        composer.q(objX);
                    }
                    Function1 function1 = (Function1) objX;
                    if (list instanceof RandomAccess) {
                        int size = list.size();
                        int i3 = 0;
                        while (true) {
                            if (i3 >= size) {
                                state = Lifecycle.State.CREATED;
                            } else if (((Boolean) function1.invoke(list.get(i3))).booleanValue()) {
                                state = Lifecycle.State.RESUMED;
                            } else {
                                i3++;
                            }
                        }
                    } else {
                        List list2 = list;
                        if (!(list2 instanceof Collection) || !list2.isEmpty()) {
                            Iterator it = list2.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    if (((Boolean) function1.invoke(it.next())).booleanValue()) {
                                        state = Lifecycle.State.RESUMED;
                                    }
                                }
                            }
                        }
                        state = Lifecycle.State.CREATED;
                    }
                    CompositionLocalKt.a(LocalLifecycleOwnerKt.f13562a.c(RememberLifecycleOwnerKt.a(state, composer)), ComposableLambdaKt.b(-1713684244, new mc(navEntry, 0), composer), composer, 56);
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((FlowRowScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    for (BookingFormModuleDataUiModel.MultipleTextOption multipleTextOption : (List) mutableState.getF10755b()) {
                        boolean zK = composer2.K(mutableState) | composer2.K(multipleTextOption);
                        Object objX2 = composer2.x();
                        if (zK || objX2 == composer$Companion$Empty$1) {
                            objX2 = new tf(mutableState, multipleTextOption, 5);
                            composer2.q(objX2);
                        }
                        Function0 function0 = (Function0) objX2;
                        LVTagFilterKt.a(null, multipleTextOption.f54522b, null, multipleTextOption.d ? TagFilterType.DISABLED : multipleTextOption.f54523c ? TagFilterType.ACTIVE_DELETABLE : TagFilterType.ENABLED, null, false, null, false, function0, composer2, 0, 245);
                    }
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            case 2:
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer3 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue3 & 6) == 0) {
                    iIntValue3 |= composer3.K(paddingValues) ? 4 : 2;
                }
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 19) != 18)) {
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                    Modifier modifierK = PaddingKt.k(BackgroundKt.b(o60.e("OsaKisaComposable$lambda$6", paddingValues).o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer3).f48361b.f48375b, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(composer3).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                    Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
                    Alignment.f8582a.getClass();
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, composer3, 0);
                    int iHashCode = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                    Modifier modifierC = ComposedModifierKt.c(composer3, modifierK);
                    ComposeUiNode.b0.getClass();
                    Function0 function2 = ComposeUiNode.Companion.f9641b;
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function2);
                    } else {
                        composer3.o();
                    }
                    Function2 function3 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer3, columnMeasurePolicyA, function3);
                    Function2 function4 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer3, persistentCompositionLocalMapN, function4);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function5 = ComposeUiNode.Companion.g;
                    Updater.c(composer3, numValueOf, function5);
                    Function1 function6 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer3, function6);
                    Function2 function7 = ComposeUiNode.Companion.d;
                    TextKt.c(StringResources_androidKt.c(composer3, R.string.legal_specific_consent_description), PaddingKt.m(a.f(composer3, modifierC, function7, "OsaKisaComposable$lambda$6"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), LVAppDesignKitTheme.c(composer3).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).f48427h, composer3, 0, 0, 131064);
                    Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("OsaKisaComposable$lambda$6"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).g, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.f4918a, Alignment.Companion.l, composer3, 48);
                    int iHashCode2 = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierM);
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function2);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, rowMeasurePolicyA, function3);
                    Updater.c(composer3, persistentCompositionLocalMapN2, function4);
                    cj.s(iHashCode2, composer3, function5, composer3, function6);
                    Updater.c(composer3, modifierC2, function7);
                    boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                    Object objX3 = composer3.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new c30(15, mutableState);
                        composer3.q(objX3);
                    }
                    LVCheckboxKt.a(null, false, zBooleanValue, null, false, (Function1) objX3, composer3, ImageMetadata.EDGE_MODE, 27);
                    TextKt.c(StringResources_androidKt.c(composer3, R.string.legal_specific_consent_checkbox), PaddingKt.m(new DTFunctionNameModifier("OsaKisaComposable$lambda$6"), LVAppDesignKitTheme.l(composer3).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.c(composer3).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer3).f48430k, composer3, 0, 0, 131064);
                    composer3.r();
                    composer3.r();
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
            default:
                MeasureScope measureScope = (MeasureScope) obj;
                Measurable measurable = (Measurable) obj2;
                measureScope.getClass();
                measurable.getClass();
                Placeable placeableT = measurable.T(((Constraints) obj3).f10999a);
                TextLayoutResult textLayoutResult = (TextLayoutResult) mutableState.getF10755b();
                textLayoutResult.getClass();
                MultiParagraph multiParagraph = textLayoutResult.f10553b;
                int i4 = multiParagraph.f10465f;
                if (i4 == 0) {
                    return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new a2(placeableT, 13));
                }
                Iterator<Integer> it2 = RangesKt.j(0, i4).iterator();
                IntProgressionIterator intProgressionIterator = (IntProgressionIterator) it2;
                if (intProgressionIterator.d) {
                    IntIterator intIterator = (IntIterator) it2;
                    float f2 = textLayoutResult.f(intIterator.nextInt());
                    while (intProgressionIterator.d) {
                        f2 = Math.min(f2, textLayoutResult.f(intIterator.nextInt()));
                    }
                    Iterator<Integer> it3 = RangesKt.j(0, multiParagraph.f10465f).iterator();
                    IntProgressionIterator intProgressionIterator2 = (IntProgressionIterator) it3;
                    if (intProgressionIterator2.d) {
                        IntIterator intIterator2 = (IntIterator) it3;
                        float fG = textLayoutResult.g(intIterator2.nextInt());
                        while (intProgressionIterator2.d) {
                            fG = Math.max(fG, textLayoutResult.g(intIterator2.nextInt()));
                        }
                        return measureScope.V0((int) Math.ceil(fG - f2), placeableT.f9549c, MapsKt.c(), new qb(placeableT, f2, 2));
                    }
                    b21.x();
                } else {
                    b21.x();
                }
                return null;
        }
    }
}
