package com.vuitton.android.presentation.screen.booking.personalinfo.infoform.components;

import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVEmptyViewKt;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.personalinfo.models.BookingPersonalInfoViewState;
import com.vuitton.android.presentation.screen.dynamicform.components.DynamicFormComposableKt;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import defpackage.a4;
import defpackage.d;
import defpackage.d3;
import defpackage.g0;
import defpackage.i4;
import defpackage.mf;
import defpackage.n00;
import defpackage.o0;
import defpackage.pf;
import defpackage.pq0;
import defpackage.tr;
import defpackage.we;
import defpackage.z;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingInfoFormScreenKt {
    public static final void a(final BookingPersonalInfoViewState bookingPersonalInfoViewState, BookingCTAState bookingCTAState, SnackbarHostState snackbarHostState, final Function2 function2, final Function1 function1, final Function0 function0, final Function1 function3, Function0 function4, final Function0 function5, final Function0 function6, Composer composer, int i2) {
        GapComposer gapComposer;
        bookingPersonalInfoViewState.getClass();
        bookingCTAState.getClass();
        snackbarHostState.getClass();
        function2.getClass();
        function1.getClass();
        function0.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        GapComposer gapComposerH = composer.h(-1234431283);
        int i3 = i2 | (gapComposerH.y(bookingPersonalInfoViewState) ? 4 : 2) | (gapComposerH.d(bookingCTAState.ordinal()) ? 32 : 16) | (gapComposerH.K(snackbarHostState) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288);
        if ((i2 & 12582912) == 0) {
            i3 |= gapComposerH.y(function4) ? 8388608 : 4194304;
        }
        int i4 = i3 | (gapComposerH.y(function5) ? 67108864 : 33554432) | (gapComposerH.y(function6) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i4 & 1, (306783379 & i4) != 306783378)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final FocusManager focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
            final ScrollState scrollStateB = ScrollKt.b(gapComposerH);
            final String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_loading_status);
            String strC2 = StringResources_androidKt.c(gapComposerH, R.string.booking_form_personal_information_title);
            boolean z = bookingCTAState == BookingCTAState.LOADING;
            Modifier modifierO = new DTFunctionNameModifier("BookingInfoFormScreen").o(SizeKt.f5052c);
            boolean zK = gapComposerH.K(strC2);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new a4(strC2, 8);
                gapComposerH.q(objX);
            }
            final boolean z2 = z;
            gapComposer = gapComposerH;
            ScaffoldKt.a(SemanticsModifierKt.b(modifierO, false, (Function1) objX), ComposableLambdaKt.b(931750025, new o0(function4, 18), gapComposerH), ComposableLambdaKt.b(1938431272, new i4(bookingPersonalInfoViewState, z, focusManager, function6, 7), gapComposerH), ComposableLambdaKt.b(-1349854777, new g0(snackbarHostState, 11), gapComposerH), null, 0, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, null, ComposableLambdaKt.b(-739643746, new Function3() { // from class: com.vuitton.android.presentation.screen.booking.personalinfo.infoform.components.a
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        BookingPersonalInfoViewState bookingPersonalInfoViewState2 = bookingPersonalInfoViewState;
                        boolean z3 = bookingPersonalInfoViewState2.f54733c;
                        FormUiModel formUiModel = bookingPersonalInfoViewState2.f54734e;
                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (z3) {
                            Modifier modifierO2 = pq0.j(-2128033670, composer2, "BookingInfoFormScreen$lambda$4").o(SizeKt.f5052c);
                            String str = strC;
                            boolean zK2 = composer2.K(str);
                            Object objX2 = composer2.x();
                            if (zK2 || objX2 == composer$Companion$Empty$1) {
                                objX2 = new a4(str, 7);
                                composer2.q(objX2);
                            }
                            LVFlowerLoaderKt.a(SemanticsModifierKt.b(modifierO2, false, (Function1) objX2), null, false, composer2, 0, 6);
                            composer2.F();
                        } else if (bookingPersonalInfoViewState2.d) {
                            LVEmptyViewKt.e(PaddingKt.h(pq0.j(-2128025438, composer2, "BookingInfoFormScreen$lambda$4").o(SizeKt.f5052c), paddingValues), null, StringResources_androidKt.c(composer2, R.string.error_generic), null, null, StringResources_androidKt.c(composer2, R.string.button_try_again), function5, composer2, 0, 122);
                            composer2.F();
                        } else {
                            Modifier modifierO3 = pq0.j(-1543846717, composer2, "BookingInfoFormScreen$lambda$4").o(SizeKt.f5052c);
                            Unit unit = Unit.f71739a;
                            final FocusManager focusManager2 = focusManager;
                            boolean zY = composer2.y(focusManager2);
                            Object objX3 = composer2.x();
                            if (zY || objX3 == composer$Companion$Empty$1) {
                                objX3 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.booking.personalinfo.infoform.components.BookingInfoFormScreenKt$BookingInfoFormScreen$5$2$1
                                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                        Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager2, 1), continuation, 7);
                                        return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                    }
                                };
                                composer2.q(objX3);
                            }
                            Modifier modifierI = PaddingKt.i(PaddingKt.h(ScrollKt.d(SuspendingPointerInputFilterKt.a(modifierO3, unit, (PointerInputEventHandler) objX3), scrollStateB, false, 14), paddingValues), LVAppDesignKitTheme.l(composer2).f48416e);
                            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer2).f48416e);
                            Alignment.f8582a.getClass();
                            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, composer2, 0);
                            int iHashCode = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierI);
                            ComposeUiNode.b0.getClass();
                            Function0 function7 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function7);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                            Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                            Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                            Modifier modifierC2 = n00.c(composer2, modifierC, ComposeUiNode.Companion.d, "BookingInfoFormScreen$lambda$4", 1.0f);
                            String strC3 = StringResources_androidKt.c(composer2, R.string.booking_form_personal_information_description);
                            TextStyle textStyle = LVAppDesignKitTheme.n(composer2).g;
                            long j2 = LVAppDesignKitTheme.c(composer2).f48361b.f48382k;
                            TextAlign.f10959b.getClass();
                            TextKt.c(strC3, modifierC2, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyle, composer2, 48, 0, 130040);
                            boolean zK3 = composer2.K(formUiModel);
                            Object objX4 = composer2.x();
                            if (zK3 || objX4 == composer$Companion$Empty$1) {
                                FormSectionTypeUiModel formSectionTypeUiModel = FormSectionTypeUiModel.BOOKING_PERSONAL_DATA_COLLECTION_CONSENT;
                                formUiModel.getClass();
                                formSectionTypeUiModel.getClass();
                                objX4 = Boolean.valueOf(formUiModel.c(formSectionTypeUiModel) != null);
                                composer2.q(objX4);
                            }
                            boolean zBooleanValue = ((Boolean) objX4).booleanValue();
                            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1928218373, new z(15, bookingPersonalInfoViewState2, function1, function3, function0), composer2);
                            Modifier modifierD = tr.d("BookingInfoFormScreen$lambda$4", 1.0f);
                            FormUiModel formUiModel2 = bookingPersonalInfoViewState2.f54734e;
                            boolean z4 = z2;
                            boolean z5 = !z4;
                            boolean zB = composer2.b(z4) | composer2.y(focusManager2);
                            Function0 function8 = function6;
                            boolean zK4 = zB | composer2.K(function8);
                            Object objX5 = composer2.x();
                            if (zK4 || objX5 == composer$Companion$Empty$1) {
                                objX5 = new d(z4, focusManager2, function8, 1);
                                composer2.q(objX5);
                            }
                            DynamicFormComposableKt.a(modifierD, null, formUiModel2, z5, Call.Parameters.DEFAULT_CAMERA_ZOOM, function2, null, (Function0) objX5, null, null, true, true, false, null, null, ComposableLambdaKt.b(-238952128, new d3(composableLambdaImplB, 7), composer2), null, ComposableLambdaKt.b(1745651436, new pf(zBooleanValue, composableLambdaImplB, 0), composer2), false, composer2, 6, 12779574, 357202);
                            composer2.r();
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, 805309872, 304);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new mf(bookingPersonalInfoViewState, bookingCTAState, snackbarHostState, function2, function1, function0, function3, function4, function5, function6, i2);
        }
    }
}
