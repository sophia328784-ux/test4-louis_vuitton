package com.vuitton.android.presentation.screen.services.components;

import android.content.Context;
import android.content.Intent;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.github.druk.dnssd.NSType;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.services.ServicesDestinations;
import com.vuitton.android.presentation.screen.services.ServicesDestinationsKt;
import com.vuitton.android.presentation.screen.services.ServicesViewModel;
import com.vuitton.android.presentation.screen.services.models.ServicesViewState;
import com.vuitton.android.presentation.tracking.AppsFlyerTrackerEntryPointKt;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import com.vuitton.foundation.logger.LegacyLogger;
import defpackage.cv0;
import defpackage.dv0;
import defpackage.ef;
import defpackage.gi0;
import defpackage.jm0;
import defpackage.kj0;
import defpackage.o60;
import defpackage.pq0;
import defpackage.r0;
import defpackage.tr;
import defpackage.wi0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ServicesComposableKt {
    public static final void a(final ServicesViewModel servicesViewModel, final Function1 function1, final Function0 function0, Composer composer, int i2) {
        servicesViewModel.getClass();
        function1.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1128689142);
        int i3 = i2 | (gapComposerH.K(servicesViewModel) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            final AppsFlyerUiTracker appsFlyerUiTracker = (AppsFlyerUiTracker) gapComposerH.k(AppsFlyerTrackerEntryPointKt.f65808a);
            final MutableState mutableStateB = SnapshotStateKt.b(servicesViewModel.getE(), gapComposerH);
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
            boolean zY = gapComposerH.y(context);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zY || objX == composer$Companion$Empty$1) {
                objX = new ef(context, 15);
                gapComposerH.q(objX);
            }
            final ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX, gapComposerH, 0);
            Unit unit = Unit.f71739a;
            int i4 = i3 & 14;
            boolean z = i4 == 4;
            Object objX2 = gapComposerH.x();
            if (z || objX2 == composer$Companion$Empty$1) {
                objX2 = new ServicesComposableKt$ServicesComposable$1$1(servicesViewModel, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            boolean zY2 = (i4 == 4) | gapComposerH.y(context);
            Object objX3 = gapComposerH.x();
            if (zY2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new ServicesComposableKt$ServicesComposable$2$1(servicesViewModel, context, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            final LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            final LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            ScaffoldKt.a(null, ComposableLambdaKt.b(273759922, new kj0(mutableStateB, servicesViewModel, context, lVModalBottomSheetStateF, function1, 17), gapComposerH), null, null, null, 0, 0L, 0L, WindowInsetsExtKt.a(), ComposableLambdaKt.b(-1079215865, new Function3() { // from class: com.vuitton.android.presentation.screen.services.components.a
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Context context2;
                    Object r0Var;
                    ServicesViewModel servicesViewModel2;
                    State state;
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    int i5 = 4;
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierB = BackgroundKt.b(o60.e("ServicesComposable$lambda$5", paddingValues), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iHashCode = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                        ComposeUiNode.b0.getClass();
                        Function0 function2 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function2);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        State state2 = mutableStateB;
                        ServicesViewState servicesViewState = (ServicesViewState) state2.getF10755b();
                        ServicesViewModel servicesViewModel3 = servicesViewModel;
                        boolean zY3 = composer2.y(servicesViewModel3);
                        Object objX4 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zY3 || objX4 == composer$Companion$Empty$2) {
                            ServicesComposableKt$ServicesComposable$4$1$1$1 servicesComposableKt$ServicesComposable$4$1$1$1 = new ServicesComposableKt$ServicesComposable$4$1$1$1(0, servicesViewModel3, ServicesViewModel.class, "onAppointmentsClicked", "onAppointmentsClicked()V", 0);
                            composer2.q(servicesComposableKt$ServicesComposable$4$1$1$1);
                            objX4 = servicesComposableKt$ServicesComposable$4$1$1$1;
                        }
                        Function0 function3 = (Function0) ((KFunction) objX4);
                        boolean zY4 = composer2.y(servicesViewModel3) | composer2.K(state2);
                        Context context3 = context;
                        boolean zY5 = zY4 | composer2.y(context3);
                        ManagedActivityResultLauncher managedActivityResultLauncher = managedActivityResultLauncherA;
                        boolean zY6 = zY5 | composer2.y(managedActivityResultLauncher);
                        Object objX5 = composer2.x();
                        if (zY6 || objX5 == composer$Companion$Empty$2) {
                            objX5 = new r0(servicesViewModel3, context3, managedActivityResultLauncher, state2, 27);
                            context2 = context3;
                            composer2.q(objX5);
                        } else {
                            context2 = context3;
                        }
                        Function0 function4 = (Function0) objX5;
                        boolean zY7 = composer2.y(servicesViewModel3);
                        AppsFlyerUiTracker appsFlyerUiTracker2 = appsFlyerUiTracker;
                        boolean zY8 = zY7 | composer2.y(appsFlyerUiTracker2) | composer2.y(context2) | composer2.K(state2);
                        Object objX6 = composer2.x();
                        if (zY8 || objX6 == composer$Companion$Empty$2) {
                            r0Var = new r0(servicesViewModel3, appsFlyerUiTracker2, context2, state2, 28);
                            servicesViewModel2 = servicesViewModel3;
                            state = state2;
                            composer2.q(r0Var);
                        } else {
                            r0Var = objX6;
                            state = state2;
                            servicesViewModel2 = servicesViewModel3;
                        }
                        Function0 function5 = (Function0) r0Var;
                        boolean zY9 = composer2.y(servicesViewModel2) | composer2.K(state) | composer2.y(context2);
                        Object objX7 = composer2.x();
                        if (zY9 || objX7 == composer$Companion$Empty$2) {
                            objX7 = new cv0(servicesViewModel2, state, context2, 3);
                            composer2.q(objX7);
                        }
                        Function0 function6 = (Function0) objX7;
                        boolean zY10 = composer2.y(servicesViewModel2) | composer2.K(state) | composer2.y(context2);
                        Object objX8 = composer2.x();
                        if (zY10 || objX8 == composer$Companion$Empty$2) {
                            objX8 = new cv0(servicesViewModel2, state, context2, i5);
                            composer2.q(objX8);
                        }
                        Function0 function7 = (Function0) objX8;
                        boolean zY11 = composer2.y(servicesViewModel2) | composer2.y(context2) | composer2.K(state);
                        Object objX9 = composer2.x();
                        if (zY11 || objX9 == composer$Companion$Empty$2) {
                            objX9 = new cv0(servicesViewModel2, context2, state, 5);
                            composer2.q(objX9);
                        }
                        Function0 function8 = (Function0) objX9;
                        boolean zY12 = composer2.y(servicesViewModel2) | composer2.y(context2) | composer2.K(state);
                        Object objX10 = composer2.x();
                        if (zY12 || objX10 == composer$Companion$Empty$2) {
                            objX10 = new cv0(servicesViewModel2, context2, state, 0);
                            composer2.q(objX10);
                        }
                        Function0 function9 = (Function0) objX10;
                        boolean zY13 = composer2.y(servicesViewModel2) | composer2.y(context2) | composer2.K(state);
                        Object objX11 = composer2.x();
                        if (zY13 || objX11 == composer$Companion$Empty$2) {
                            objX11 = new cv0(servicesViewModel2, context2, state, 1);
                            composer2.q(objX11);
                        }
                        Function0 function10 = (Function0) objX11;
                        boolean zY14 = composer2.y(servicesViewModel2) | composer2.y(context2) | composer2.K(state);
                        Object objX12 = composer2.x();
                        if (zY14 || objX12 == composer$Companion$Empty$2) {
                            objX12 = new cv0(servicesViewModel2, context2, state, 2);
                            composer2.q(objX12);
                        }
                        Function0 function11 = (Function0) objX12;
                        boolean zY15 = composer2.y(context2) | composer2.K(state);
                        Object objX13 = composer2.x();
                        if (zY15 || objX13 == composer$Companion$Empty$2) {
                            objX13 = new wi0(context2, state, 1);
                            composer2.q(objX13);
                        }
                        Function0 function12 = (Function0) objX13;
                        boolean zY16 = composer2.y(servicesViewModel2) | composer2.y(context2);
                        Object objX14 = composer2.x();
                        if (zY16 || objX14 == composer$Companion$Empty$2) {
                            objX14 = new dv0(servicesViewModel2, context2, 0);
                            composer2.q(objX14);
                        }
                        State state3 = state;
                        ServicesScreenKt.f(servicesViewState, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, (Function0) objX14, composer2, 0);
                        if (((ServicesViewState) state3.getF10755b()).f64405b) {
                            ProgressViewKt.a(PaddingKt.m(BoxScopeInstance.f4938a.g(pq0.h(1.0f, -1148148434, composer2, "ServicesComposable$lambda$5"), Alignment.Companion.f8589i), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).g, 7), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, false, composer2, 0, 4);
                            composer2.F();
                        } else {
                            composer2.L(-1147803435);
                            composer2.F();
                        }
                        ContactUsUiModel contactUsUiModel = ((ServicesViewState) state3.getF10755b()).m;
                        boolean zY17 = composer2.y(servicesViewModel2);
                        Function0 function13 = function0;
                        boolean zK = zY17 | composer2.K(function13);
                        Object objX15 = composer2.x();
                        if (zK || objX15 == composer$Companion$Empty$2) {
                            objX15 = new jm0(servicesViewModel2, function13, 20);
                            composer2.q(objX15);
                        }
                        int i6 = LVModalBottomSheetState.f48797e;
                        ContactUsBottomSheetKt.a(contactUsUiModel, lVModalBottomSheetStateF, lVModalBottomSheetStateF2, function1, (Function0) objX15, composer2, (i6 << 3) | (i6 << 6));
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 805306416, NSType.MAILB);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new gi0(i2, 24, servicesViewModel, function1, function0);
        }
    }

    public static final void b(Context context, String str) {
        Unit unit;
        context.getClass();
        String strB = StringExtKt.b(str);
        if (strB != null) {
            Intent intentA = ServicesDestinationsKt.a(new ServicesDestinations.ToWebViewPage(strB), context);
            if (intentA != null) {
                context.startActivity(intentA);
                unit = Unit.f71739a;
            } else {
                unit = null;
            }
            if (unit != null) {
                return;
            }
        }
        if (LegacyLogger.f()) {
            LegacyLogger.e("ServicesComposable").e(5, null, tr.g("Invalid URL : ", str), new Object[0]);
        }
    }
}
