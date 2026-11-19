package com.vuitton.android.presentation.screen.booking.personalinfo.loginstatus.components;

import androidx.compose.foundation.ScrollKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.atoms.textfield.LVTextFieldKt;
import com.vuitton.android.presentation.screen.booking.personalinfo.models.BookingPersonalInfoViewState;
import defpackage.a4;
import defpackage.b3;
import defpackage.cj;
import defpackage.g0;
import defpackage.k;
import defpackage.o60;
import defpackage.qd;
import defpackage.tr;
import defpackage.ve;
import defpackage.we;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BookingAccountStatusScreenKt {
    public static final void a(final BookingPersonalInfoViewState bookingPersonalInfoViewState, final Function1 function1, Function0 function0, final Function0 function2, SnackbarHostState snackbarHostState, Composer composer, int i2) {
        GapComposer gapComposer;
        bookingPersonalInfoViewState.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        snackbarHostState.getClass();
        GapComposer gapComposerH = composer.h(-1861114565);
        int i3 = (gapComposerH.y(bookingPersonalInfoViewState) ? 4 : 2) | i2 | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(snackbarHostState) ? 16384 : 8192;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new FocusRequester();
                gapComposerH.q(objX);
            }
            final FocusRequester focusRequester = (FocusRequester) objX;
            final FocusManager focusManager = (FocusManager) gapComposerH.k(CompositionLocalsKt.f10032i);
            final ScrollState scrollStateB = ScrollKt.b(gapComposerH);
            String strC = StringResources_androidKt.c(gapComposerH, R.string.booking_form_email_title);
            Unit unit = Unit.f71739a;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new BookingAccountStatusScreenKt$BookingAccountStatusScreen$1$1(focusRequester, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            Modifier modifierO = new DTFunctionNameModifier("BookingAccountStatusScreen").o(SizeKt.f5052c);
            boolean zK = gapComposerH.K(strC);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$1) {
                objX3 = new a4(strC, 4);
                gapComposerH.q(objX3);
            }
            gapComposer = gapComposerH;
            ScaffoldKt.a(SemanticsModifierKt.b(modifierO, false, (Function1) objX3), ComposableLambdaKt.b(-531913473, new qd(1, strC, function0), gapComposerH), null, ComposableLambdaKt.b(152047233, new g0(snackbarHostState, 9), gapComposerH), null, 0, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, null, ComposableLambdaKt.b(1584791050, new Function3() { // from class: com.vuitton.android.presentation.screen.booking.personalinfo.loginstatus.components.a
                /* JADX WARN: Code duplicated, block: B:45:0x02a4  */
                /* JADX WARN: Code duplicated, block: B:47:0x02b1  */
                /* JADX WARN: Code duplicated, block: B:50:0x02c8  */
                /* JADX WARN: Code duplicated, block: B:52:0x02cc  */
                /* JADX WARN: Code duplicated, block: B:57:0x02e4  */
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer$Companion$Empty$1 composer$Companion$Empty$2;
                    String strK;
                    Integer numValueOf;
                    Integer num;
                    boolean zY;
                    Object objX4;
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierA = WindowInsetsPadding_androidKt.a(PaddingKt.h(new DTFunctionNameModifier("BookingAccountStatusScreen$lambda$5").o(SizeKt.f5052c), paddingValues));
                        final FocusManager focusManager2 = focusManager;
                        boolean zY2 = composer2.y(focusManager2);
                        Object objX5 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                        if (zY2 || objX5 == composer$Companion$Empty$3) {
                            objX5 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.booking.personalinfo.loginstatus.components.BookingAccountStatusScreenKt$BookingAccountStatusScreen$5$1$1
                                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                    Object objE = TapGestureDetectorKt.e(pointerInputScope, null, null, null, new we(focusManager2, 0), continuation, 7);
                                    return objE == CoroutineSingletons.COROUTINE_SUSPENDED ? objE : Unit.f71739a;
                                }
                            };
                            composer2.q(objX5);
                        }
                        Modifier modifierB = WindowInsetsPadding_androidKt.b(PaddingKt.i(ScrollKt.d(SuspendingPointerInputFilterKt.a(modifierA, focusManager2, (PointerInputEventHandler) objX5), scrollStateB, false, 14), LVAppDesignKitTheme.l(composer2).f48416e));
                        Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                        float f2 = LVAppDesignKitTheme.l(composer2).f48417f;
                        Alignment.f8582a.getClass();
                        Arrangement.SpacedAligned spacedAlignedG = Arrangement.g(f2, Alignment.Companion.l);
                        BiasAlignment.Horizontal horizontal = Alignment.Companion.n;
                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedG, horizontal, composer2, 0);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                        ComposeUiNode.b0.getClass();
                        Function0 function3 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function3);
                        } else {
                            composer2.o();
                        }
                        Function2 function4 = ComposeUiNode.Companion.f9644f;
                        Updater.c(composer2, columnMeasurePolicyA, function4);
                        Function2 function5 = ComposeUiNode.Companion.f9643e;
                        Updater.c(composer2, persistentCompositionLocalMapN, function5);
                        Integer numValueOf2 = Integer.valueOf(iHashCode);
                        Function2 function6 = ComposeUiNode.Companion.g;
                        Updater.c(composer2, numValueOf2, function6);
                        Function1 function7 = ComposeUiNode.Companion.f9645h;
                        Updater.b(composer2, function7);
                        Function2 function8 = ComposeUiNode.Companion.d;
                        Updater.c(composer2, modifierC, function8);
                        TextKt.c(StringResources_androidKt.c(composer2, R.string.booking_form_email_description), null, LVAppDesignKitTheme.c(composer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).g, composer2, 0, 0, 131066);
                        Modifier modifierD = tr.d("BookingAccountStatusScreen$lambda$5", 1.0f);
                        ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(composer2).d), horizontal, composer2, 0);
                        int iHashCode2 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function3);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, columnMeasurePolicyA2, function4);
                        Updater.c(composer2, persistentCompositionLocalMapN2, function5);
                        cj.s(iHashCode2, composer2, function6, composer2, function7);
                        TextKt.c(StringResources_androidKt.c(composer2, R.string.booking_form_required_fields_label), ColumnScopeInstance.f4944a.b(defpackage.a.f(composer2, modifierC2, function8, "BookingAccountStatusScreen$lambda$5"), Alignment.Companion.p), LVAppDesignKitTheme.c(composer2).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(composer2).m, composer2, 0, 0, 131064);
                        Modifier modifierA2 = FocusRequesterModifierKt.a(SizeKt.d(new DTFunctionNameModifier("BookingAccountStatusScreen$lambda$5"), 1.0f), focusRequester);
                        BookingPersonalInfoViewState bookingPersonalInfoViewState2 = bookingPersonalInfoViewState;
                        String str = bookingPersonalInfoViewState2.f54731a;
                        boolean z = bookingPersonalInfoViewState2.f54733c;
                        String strC2 = StringResources_androidKt.c(composer2, R.string.booking_form_email_label);
                        boolean z2 = bookingPersonalInfoViewState2.f54732b;
                        boolean z3 = !z;
                        String strC3 = StringResources_androidKt.c(composer2, R.string.form_invalid_email_error);
                        if (!bookingPersonalInfoViewState2.f54732b) {
                            strC3 = null;
                        }
                        boolean zY3 = composer2.y(focusManager2);
                        Function0 function9 = function2;
                        boolean zK2 = zY3 | composer2.K(function9);
                        Object objX6 = composer2.x();
                        if (zK2) {
                            composer$Companion$Empty$2 = composer$Companion$Empty$3;
                        } else {
                            composer$Companion$Empty$2 = composer$Companion$Empty$3;
                            if (objX6 == composer$Companion$Empty$2) {
                            }
                            Composer$Companion$Empty$1 composer$Companion$Empty$4 = composer$Companion$Empty$2;
                            LVTextFieldKt.a(str, function1, modifierA2, null, z3, strC2, z2, strC3, null, null, new KeyboardActions((Function1) objX6, null, null, null, null, null, 62, null), null, null, null, false, composer2, 0, 0, 31496);
                            composer2.r();
                            Modifier modifierD2 = SizeKt.d(new DTFunctionNameModifier("BookingAccountStatusScreen$lambda$5"), 1.0f);
                            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer2).f48446a;
                            if (z) {
                                composer2.L(-2049775094);
                                composer2.F();
                                strK = "";
                            } else {
                                strK = o60.k(composer2, -897405465, R.string.booking_form_cta_label, composer2);
                            }
                            String str2 = strK;
                            numValueOf = Integer.valueOf(LVAppDesignKitTheme.a(composer2).p);
                            if (z) {
                                num = numValueOf;
                            } else {
                                num = null;
                            }
                            zY = composer2.y(focusManager2) | composer2.K(function9);
                            objX4 = composer2.x();
                            if (zY || objX4 == composer$Companion$Empty$4) {
                                objX4 = new ve(focusManager2, function9, 0);
                                composer2.q(objX4);
                            }
                            LVButtonKt.b(6, 360, composer2, modifierD2, configurationButton, null, num, str2, (Function0) objX4, false, z3, false);
                            composer2.r();
                        }
                        objX6 = new k(focusManager2, function9, 15);
                        composer2.q(objX6);
                        Composer$Companion$Empty$1 composer$Companion$Empty$5 = composer$Companion$Empty$2;
                        LVTextFieldKt.a(str, function1, modifierA2, null, z3, strC2, z2, strC3, null, null, new KeyboardActions((Function1) objX6, null, null, null, null, null, 62, null), null, null, null, false, composer2, 0, 0, 31496);
                        composer2.r();
                        Modifier modifierD3 = SizeKt.d(new DTFunctionNameModifier("BookingAccountStatusScreen$lambda$5"), 1.0f);
                        ConfigurationButton configurationButton2 = LVAppDesignKitTheme.b(composer2).f48446a;
                        if (z) {
                            composer2.L(-2049775094);
                            composer2.F();
                            strK = "";
                        } else {
                            strK = o60.k(composer2, -897405465, R.string.booking_form_cta_label, composer2);
                        }
                        String str3 = strK;
                        numValueOf = Integer.valueOf(LVAppDesignKitTheme.a(composer2).p);
                        if (z) {
                            num = numValueOf;
                        } else {
                            num = null;
                        }
                        zY = composer2.y(focusManager2) | composer2.K(function9);
                        objX4 = composer2.x();
                        if (zY) {
                            objX4 = new ve(focusManager2, function9, 0);
                            composer2.q(objX4);
                        } else {
                            objX4 = new ve(focusManager2, function9, 0);
                            composer2.q(objX4);
                        }
                        LVButtonKt.b(6, 360, composer2, modifierD3, configurationButton2, null, num, str3, (Function0) objX4, false, z3, false);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, 805309488, 308);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(bookingPersonalInfoViewState, function1, function0, function2, snackbarHostState, i2, 3, false);
        }
    }
}
