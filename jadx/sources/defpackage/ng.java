package defpackage;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.IconKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.RectangleShapeKt$RectangleShape$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.StringKt;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.ui.common.AccessibilityExtKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookInformationUiModel;
import com.vuitton.android.presentation.screen.booking.summary.models.PreBookUiModel;
import com.vuitton.android.presentation.screen.orders.components.exchange.OrderReturnOrExchangeSelectionScreenKt;
import com.vuitton.android.presentation.screen.orders.models.OrderReturnOrExchangeViewState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ng implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76517b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f76518c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f76519e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f76520f;
    public final /* synthetic */ Object g;

    public /* synthetic */ ng(PreBookUiModel preBookUiModel, boolean z, Function0 function0, Function0 function1, Function2 function2) {
        this.f76520f = preBookUiModel;
        this.f76518c = z;
        this.d = function0;
        this.f76519e = function1;
        this.g = function2;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        RowScopeInstance rowScopeInstance;
        Composer composer;
        Modifier dTFunctionNameModifier;
        Composer composer2;
        Composer composer3;
        int i2 = this.f76517b;
        RectangleShapeKt$RectangleShape$1 rectangleShapeKt$RectangleShape$1 = RectangleShapeKt.f8913a;
        Object obj4 = this.g;
        Object obj5 = this.f76520f;
        boolean z = this.f76518c;
        switch (i2) {
            case 0:
                PreBookUiModel preBookUiModel = (PreBookUiModel) obj5;
                Function2 function2 = (Function2) obj4;
                Modifier modifierE = (Modifier) obj;
                Composer composer4 = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                if (modifierE != null) {
                    modifierE = a.e(modifierE, "BookingSummaryCard$lambda$3");
                }
                modifierE.getClass();
                if ((iIntValue & 6) == 0) {
                    iIntValue |= composer4.K(modifierE) ? 4 : 2;
                }
                if (composer4.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierB = BackgroundKt.b(ClipKt.a(tr.d("BookingSummaryCard$lambda$3", 1.0f), LVAppDesignKitTheme.j(composer4).d), LVAppDesignKitTheme.c(composer4).f48361b.f48374a, rectangleShapeKt$RectangleShape$1);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer4.n();
                    Modifier modifierC = ComposedModifierKt.c(composer4, modifierB);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function0);
                    } else {
                        composer4.o();
                    }
                    Function2 function3 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer4, measurePolicyD, function3);
                    Function2 function4 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer4, persistentCompositionLocalMapN, function4);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function5 = ComposeUiNode.Companion.g;
                    Updater.c(composer4, numValueOf, function5);
                    Function1 function1 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer4, function1);
                    Function2 function6 = ComposeUiNode.Companion.d;
                    Modifier modifierI = PaddingKt.i(a.f(composer4, modifierC, function6, "BookingSummaryCard$lambda$3"), LVAppDesignKitTheme.l(composer4).f48416e);
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer4).f48416e);
                    BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, horizontal, composer4, 0);
                    int iHashCode2 = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer4.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer4, modifierI);
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function0);
                    } else {
                        composer4.o();
                    }
                    Updater.c(composer4, columnMeasurePolicyA, function3);
                    Updater.c(composer4, persistentCompositionLocalMapN2, function4);
                    cj.s(iHashCode2, composer4, function5, composer4, function1);
                    Updater.c(composer4, modifierC2, function6);
                    Object objX = composer4.x();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new re(25);
                        composer4.q(objX);
                    }
                    Modifier modifierD = SizeKt.d(SemanticsModifierKt.b(modifierE, true, (Function1) objX), 1.0f);
                    Arrangement.SpacedAligned spacedAlignedF2 = Arrangement.f(LVAppDesignKitTheme.l(composer4).f48416e);
                    BiasAlignment.Vertical vertical = Alignment.Companion.f8591k;
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF2, vertical, composer4, 0);
                    int iHashCode3 = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN3 = composer4.n();
                    Modifier modifierC3 = ComposedModifierKt.c(composer4, modifierD);
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function0);
                    } else {
                        composer4.o();
                    }
                    Updater.c(composer4, rowMeasurePolicyA, function3);
                    Updater.c(composer4, persistentCompositionLocalMapN3, function4);
                    cj.s(iHashCode3, composer4, function5, composer4, function1);
                    Updater.c(composer4, modifierC3, function6);
                    DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("BookingSummaryCard$lambda$3");
                    Dp.Companion companion = Dp.f11004c;
                    Modifier modifierA = ClipKt.a(SizeKt.o(dTFunctionNameModifier2, 112.0f), LVAppDesignKitTheme.j(composer4).d);
                    String str = preBookUiModel.f54823e.f51778b;
                    str.getClass();
                    ImageLoaderKt.b(modifierA, str, null, null, null, 0, false, null, null, null, composer4, 3072, 2036);
                    RowScopeInstance rowScopeInstance2 = RowScopeInstance.f5040a;
                    Modifier modifierB2 = cj.b("BookingSummaryCard$lambda$3", rowScopeInstance2, 1.0f, true);
                    ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f4920c, horizontal, composer4, 0);
                    int iHashCode4 = Long.hashCode(composer4.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN4 = composer4.n();
                    Modifier modifierC4 = ComposedModifierKt.c(composer4, modifierB2);
                    if (composer4.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer4.B();
                    if (composer4.getS()) {
                        composer4.C(function0);
                    } else {
                        composer4.o();
                    }
                    Updater.c(composer4, columnMeasurePolicyA2, function3);
                    Updater.c(composer4, persistentCompositionLocalMapN4, function4);
                    cj.s(iHashCode4, composer4, function5, composer4, function1);
                    Updater.c(composer4, modifierC4, function6);
                    String str2 = preBookUiModel.d;
                    if (str2 == null) {
                        composer4.L(1446155088);
                        composer4.F();
                        composer = composer4;
                        rowScopeInstance = rowScopeInstance2;
                    } else {
                        Modifier modifierM = PaddingKt.m(pq0.j(1446155089, composer4, "BookingSummaryCard$lambda$3"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer4).f48415c, 7);
                        Locale.f10870b.getClass();
                        rowScopeInstance = rowScopeInstance2;
                        composer = composer4;
                        TextKt.c(StringKt.a(str2, Locale.Companion.a()), modifierM, LVAppDesignKitTheme.c(composer4).f48361b.v, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer4).p, composer, 0, 0, 131064);
                        composer.F();
                    }
                    TextKt.c(preBookUiModel.f54822c, PaddingKt.m(new DTFunctionNameModifier("BookingSummaryCard$lambda$3"), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48415c, 7), LVAppDesignKitTheme.c(composer).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer).f48429j, composer, 0, 0, 131064);
                    Composer composer5 = composer;
                    String strC = StringResources_androidKt.c(composer5, R.string.booking_recap_modify_cta);
                    boolean zK = composer5.K(function2) | composer5.y(preBookUiModel);
                    Object objX2 = composer5.x();
                    if (zK || objX2 == composer$Companion$Empty$1) {
                        objX2 = new mg(function2, preBookUiModel, 1);
                        composer5.q(objX2);
                    }
                    LVLinkKt.a(null, strC, false, null, false, (Function0) objX2, composer5, 0, 29);
                    composer5.r();
                    Modifier modifierO = SizeKt.o(rowScopeInstance.b(new DTFunctionNameModifier("BookingSummaryCard$lambda$3"), vertical), LVAppDesignKitTheme.d(composer5).m);
                    boolean zB = composer5.b(z);
                    Function0 function7 = this.d;
                    boolean zK2 = zB | composer5.K(function7);
                    Function0 function8 = this.f76519e;
                    boolean zK3 = zK2 | composer5.K(function8);
                    Object objX3 = composer5.x();
                    if (zK3 || objX3 == composer$Companion$Empty$1) {
                        objX3 = new pg(z, function7, function8, 0);
                        composer5.q(objX3);
                    }
                    Modifier modifierC5 = ModifierExtKt.c(modifierO, false, null, null, (Function0) objX3, 31);
                    if (AccessibilityExtKt.a(composer5)) {
                        DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(959434894, composer5, "BookingSummaryCard$lambda$3");
                        Object objX4 = composer5.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new re(26);
                            composer5.q(objX4);
                        }
                        dTFunctionNameModifier = SemanticsModifierKt.b(dTFunctionNameModifierJ, false, (Function1) objX4);
                        composer5.F();
                    } else {
                        composer5.L(959569217);
                        composer5.F();
                        dTFunctionNameModifier = new DTFunctionNameModifier("BookingSummaryCard$lambda$3");
                    }
                    IconKt.a(PainterResources_androidKt.a(LVAppDesignKitTheme.g(composer5).q, composer5, 0), null, modifierC5.o(dTFunctionNameModifier), LVAppDesignKitTheme.c(composer5).f48361b.f48382k, composer5, 56, 0);
                    composer5.r();
                    composer5.L(-1045774364);
                    for (PreBookInformationUiModel preBookInformationUiModel : preBookUiModel.f54824f) {
                        DTFunctionNameModifier dTFunctionNameModifier3 = new DTFunctionNameModifier("BookingSummaryCard$lambda$3");
                        Object objX5 = composer5.x();
                        if (objX5 == composer$Companion$Empty$1) {
                            objX5 = new re(27);
                            composer5.q(objX5);
                        }
                        Modifier modifierD2 = SizeKt.d(SemanticsModifierKt.b(dTFunctionNameModifier3, true, (Function1) objX5), 1.0f);
                        Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
                        Alignment.f8582a.getClass();
                        RowMeasurePolicy rowMeasurePolicyA2 = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.l, composer5, 54);
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        int iHashCode5 = Long.hashCode(composer5.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN5 = composer5.n();
                        Modifier modifierC6 = ComposedModifierKt.c(composer5, modifierD2);
                        ComposeUiNode.b0.getClass();
                        Function0 function9 = ComposeUiNode.Companion.f9641b;
                        if (composer5.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer5.B();
                        if (composer5.getS()) {
                            composer5.C(function9);
                        } else {
                            composer5.o();
                        }
                        Updater.c(composer5, rowMeasurePolicyA2, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer5, persistentCompositionLocalMapN5, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer5, Integer.valueOf(iHashCode5), ComposeUiNode.Companion.g);
                        Updater.b(composer5, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer5, modifierC6, ComposeUiNode.Companion.d);
                        Composer composer6 = composer5;
                        TextKt.c(preBookInformationUiModel.f54813a, null, LVAppDesignKitTheme.c(composer5).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer5).l, composer6, 0, 0, 131066);
                        TextKt.c(preBookInformationUiModel.f54814b, null, LVAppDesignKitTheme.c(composer6).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer6).l, composer6, 0, 0, 131066);
                        composer5 = composer6;
                        composer5.r();
                    }
                    composer5.F();
                    String str3 = preBookUiModel.g;
                    if (str3 == null) {
                        composer5.L(1941681406);
                        composer5.F();
                    } else {
                        LVDisclaimerKt.a(pq0.h(1.0f, 1941681407, composer5, "BookingSummaryCard$lambda$3"), str3, null, 0L, null, null, composer5, 6, 60);
                        composer5.F();
                    }
                    String str4 = preBookUiModel.f54825h;
                    if (str4 == null) {
                        composer5.L(1941909938);
                        composer5.F();
                        composer2 = composer5;
                    } else {
                        Modifier modifierH = pq0.h(1.0f, 1941909939, composer5, "BookingSummaryCard$lambda$3");
                        TextAlign.f10959b.getClass();
                        composer2 = composer5;
                        TextKt.c(StringResources_androidKt.b(R.string.booking_recap_slot_reservation_label, new Object[]{str4}, composer5), modifierH, LVAppDesignKitTheme.c(composer5).f48361b.v, 0L, null, 0L, null, new TextAlign(TextAlign.f10963h), 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer5).m, composer2, 48, 0, 130040);
                        composer2.F();
                    }
                    composer2.r();
                    composer2.r();
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                } else {
                    composer4.D();
                }
                return Unit.f71739a;
            default:
                Function0 function10 = (Function0) obj5;
                OrderReturnOrExchangeViewState orderReturnOrExchangeViewState = (OrderReturnOrExchangeViewState) obj4;
                PaddingValues paddingValues = (PaddingValues) obj;
                Composer composer7 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                paddingValues.getClass();
                if ((iIntValue2 & 6) == 0) {
                    iIntValue2 |= composer7.K(paddingValues) ? 4 : 2;
                }
                if (composer7.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Modifier modifierH2 = PaddingKt.h(BackgroundKt.b(new DTFunctionNameModifier("OrderReturnOrExchangeSelectionScreen$lambda$3").o(SizeKt.f5052c), LVAppDesignKitTheme.c(composer7).f48361b.f48374a, rectangleShapeKt$RectangleShape$1), paddingValues);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode6 = Long.hashCode(composer7.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN6 = composer7.n();
                    Modifier modifierC7 = ComposedModifierKt.c(composer7, modifierH2);
                    ComposeUiNode.b0.getClass();
                    Function0 function11 = ComposeUiNode.Companion.f9641b;
                    if (composer7.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer7.B();
                    if (composer7.getS()) {
                        composer7.C(function11);
                    } else {
                        composer7.o();
                    }
                    Updater.c(composer7, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                    Updater.c(composer7, persistentCompositionLocalMapN6, ComposeUiNode.Companion.f9643e);
                    Updater.c(composer7, Integer.valueOf(iHashCode6), ComposeUiNode.Companion.g);
                    Updater.b(composer7, ComposeUiNode.Companion.f9645h);
                    Updater.c(composer7, modifierC7, ComposeUiNode.Companion.d);
                    if (z) {
                        composer3 = composer7;
                        LVFlowerLoaderKt.a(BoxScopeInstance.f4938a.g(pq0.j(979192861, composer7, "OrderReturnOrExchangeSelectionScreen$lambda$3"), Alignment.Companion.f8587f), null, false, composer3, 0, 6);
                        composer3.F();
                    } else {
                        composer7.L(979195874);
                        composer3 = composer7;
                        OrderReturnOrExchangeSelectionScreenKt.a(this.d, this.f76519e, function10, orderReturnOrExchangeViewState.a(), orderReturnOrExchangeViewState.f60309c, orderReturnOrExchangeViewState.m, composer3, 0);
                        composer3.F();
                    }
                    composer3.r();
                } else {
                    composer7.D();
                }
                return Unit.f71739a;
        }
    }

    public /* synthetic */ ng(boolean z, Function0 function0, Function0 function1, Function0 function2, OrderReturnOrExchangeViewState orderReturnOrExchangeViewState) {
        this.f76518c = z;
        this.d = function0;
        this.f76519e = function1;
        this.f76520f = function2;
        this.g = orderReturnOrExchangeViewState;
    }
}
