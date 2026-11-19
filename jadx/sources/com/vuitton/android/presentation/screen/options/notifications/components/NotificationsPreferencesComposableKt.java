package com.vuitton.android.presentation.screen.options.notifications.components;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.compose.LifecycleEffectKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.options.notifications.NotificationsPreferencesViewModel;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesBottomSheet;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesTrackingUiModel;
import com.vuitton.android.presentation.screen.options.notifications.models.NotificationsPreferencesViewState;
import defpackage.ae0;
import defpackage.kw;
import defpackage.n00;
import defpackage.o60;
import defpackage.p1;
import defpackage.pg0;
import defpackage.pq0;
import defpackage.uv;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/options/notifications/models/NotificationsPreferencesBottomSheet;", "currentBottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NotificationsPreferencesComposableKt {
    public static final void a(String str, NotificationsPreferencesBottomSheet notificationsPreferencesBottomSheet, Function0 function0, Function0 function1, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-126952550);
        int i3 = i2 | (gapComposerH.K(str) ? 4 : 2) | (gapComposerH.K(notificationsPreferencesBottomSheet) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (Intrinsics.c(notificationsPreferencesBottomSheet, NotificationsPreferencesBottomSheet.NotifyMeDisabled.f59949e) || Intrinsics.c(notificationsPreferencesBottomSheet, NotificationsPreferencesBottomSheet.SystemNotificationDisabled.f59950e) || Intrinsics.c(notificationsPreferencesBottomSheet, NotificationsPreferencesBottomSheet.NoOptInCustomization.f59947e)) {
                gapComposerH.L(1823087331);
                int i4 = i3 & 14;
                int i5 = i3 << 6;
                NotificationPermissionBottomSheetKt.a(str, notificationsPreferencesBottomSheet.f59945b, notificationsPreferencesBottomSheet.f59946c, notificationsPreferencesBottomSheet.d, function0, function1, gapComposerH, i4 | (57344 & i5) | (i5 & ImageMetadata.JPEG_GPS_COORDINATES));
                gapComposerH.Z(false);
            } else if (Intrinsics.c(notificationsPreferencesBottomSheet, NotificationsPreferencesBottomSheet.None.f59948e)) {
                gapComposerH.L(1823449287);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1823486952);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv((Object) str, (Object) notificationsPreferencesBottomSheet, function0, (Function) function1, i2, 13);
        }
    }

    public static final void b(final NotificationsPreferencesViewModel notificationsPreferencesViewModel, final Function0 function0, Function0 function1, Function0 function2, Function0 function3, boolean z, Composer composer, int i2, int i3) {
        boolean z2;
        int i4;
        boolean z3;
        Function0 function4;
        notificationsPreferencesViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-823837401);
        int i5 = i2 | (gapComposerH.K(notificationsPreferencesViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192);
        int i6 = i3 & 32;
        if (i6 != 0) {
            i4 = i5 | ImageMetadata.EDGE_MODE;
            z2 = z;
        } else {
            z2 = z;
            i4 = i5 | (gapComposerH.b(z2) ? 131072 : 65536);
        }
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            boolean z4 = i6 != 0 ? false : z2;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final MutableState mutableStateB = SnapshotStateKt.b(notificationsPreferencesViewModel.getT(), gapComposerH);
            final MutableState mutableStateB2 = SnapshotStateKt.b(notificationsPreferencesViewModel.getP(), gapComposerH);
            final LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            Boolean boolValueOf = Boolean.valueOf(z4);
            int i7 = i4 & 14;
            boolean z5 = ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | (i7 == 4);
            Object objX2 = gapComposerH.x();
            if (z5 || objX2 == composer$Companion$Empty$1) {
                objX2 = new NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$1$1(z4, notificationsPreferencesViewModel, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) objX2);
            Unit unit = Unit.f71739a;
            boolean zY = (i7 == 4) | gapComposerH.y(context);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$2$1(notificationsPreferencesViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            Lifecycle.Event event = Lifecycle.Event.ON_RESUME;
            boolean z6 = i7 == 4;
            Object objX4 = gapComposerH.x();
            if (z6 || objX4 == composer$Companion$Empty$1) {
                objX4 = new pg0(notificationsPreferencesViewModel, 0);
                gapComposerH.q(objX4);
            }
            LifecycleEffectKt.a(event, null, (Function0) objX4, gapComposerH, 6);
            NotificationsPreferencesViewState notificationsPreferencesViewState = (NotificationsPreferencesViewState) mutableStateB.getF10755b();
            boolean zK = gapComposerH.K(mutableStateB) | (i7 == 4) | gapComposerH.K(mutableStateB2);
            Object objX5 = gapComposerH.x();
            if (zK || objX5 == composer$Companion$Empty$1) {
                objX5 = new NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$4$1(notificationsPreferencesViewModel, mutableStateB, mutableStateB2, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.e(gapComposerH, notificationsPreferencesViewState, (Function2) objX5);
            NotificationsPreferencesBottomSheet notificationsPreferencesBottomSheet = (NotificationsPreferencesBottomSheet) mutableStateB2.getF10755b();
            boolean zK2 = gapComposerH.K(mutableStateB2) | gapComposerH.y(lVModalBottomSheetStateF);
            Object objX6 = gapComposerH.x();
            if (zK2 || objX6 == composer$Companion$Empty$1) {
                objX6 = new NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$5$1(mutableStateB2, lVModalBottomSheetStateF, null);
                gapComposerH.q(objX6);
            }
            EffectsKt.e(gapComposerH, notificationsPreferencesBottomSheet, (Function2) objX6);
            boolean z7 = (i7 == 4) | ((i4 & 896) == 256) | ((i4 & 112) == 32) | ((i4 & 7168) == 2048) | ((i4 & 57344) == 16384);
            Object objX7 = gapComposerH.x();
            if (z7 || objX7 == composer$Companion$Empty$1) {
                NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1 notificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1 = new NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1(notificationsPreferencesViewModel, function1, function0, function2, function3, null);
                function4 = function2;
                gapComposerH.q(notificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1);
                objX7 = notificationsPreferencesComposableKt$NotificationsPreferencesComposable$6$1;
            } else {
                function4 = function2;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX7);
            ScaffoldKt.a(null, ComposableLambdaKt.b(-133867541, new kw(function4, 11), gapComposerH), null, ComposableLambdaKt.b(1698514669, new ae0(snackbarHostState, 5), gapComposerH), null, 0, 0L, 0L, null, ComposableLambdaKt.b(833101622, new Function3() { // from class: com.vuitton.android.presentation.screen.options.notifications.components.a
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    final int i8 = 0;
                    final int i9 = 1;
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierE = o60.e("NotificationsPreferencesComposable$lambda$11", paddingValues);
                        final MutableState mutableState = mutableStateB;
                        NotificationsPreferencesViewState notificationsPreferencesViewState2 = (NotificationsPreferencesViewState) mutableState.getF10755b();
                        final NotificationsPreferencesViewModel notificationsPreferencesViewModel2 = notificationsPreferencesViewModel;
                        boolean zY2 = composer2.y(notificationsPreferencesViewModel2);
                        Object objX8 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zY2 || objX8 == composer$Companion$Empty$2) {
                            NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$9$1$1 notificationsPreferencesComposableKt$NotificationsPreferencesComposable$9$1$1 = new NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$9$1$1(2, notificationsPreferencesViewModel2, NotificationsPreferencesViewModel.class, "onPreferenceCheckChanged", "onPreferenceCheckChanged(Lcom/vuitton/foundation/model/domain/model/account/notifications/NotificationPreferenceType;Z)V", 0);
                            composer2.q(notificationsPreferencesComposableKt$NotificationsPreferencesComposable$9$1$1);
                            objX8 = notificationsPreferencesComposableKt$NotificationsPreferencesComposable$9$1$1;
                        }
                        Function2 function5 = (Function2) ((KFunction) objX8);
                        boolean zK3 = composer2.K(mutableState) | composer2.y(notificationsPreferencesViewModel2);
                        Object objX9 = composer2.x();
                        if (zK3 || objX9 == composer$Companion$Empty$2) {
                            objX9 = new Function0() { // from class: qg0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i10 = i8;
                                    MutableState mutableState2 = mutableState;
                                    NotificationsPreferencesViewModel notificationsPreferencesViewModel3 = notificationsPreferencesViewModel2;
                                    switch (i10) {
                                        case 0:
                                            if (!((NotificationsPreferencesViewState) mutableState2.getF10755b()).f59960c) {
                                                notificationsPreferencesViewModel3.m3(NotificationsPreferencesBottomSheet.NoOptInCustomization.f59947e);
                                            } else if (((NotificationsPreferencesViewState) mutableState2.getF10755b()).f59959b) {
                                                notificationsPreferencesViewModel3.z9();
                                            } else {
                                                notificationsPreferencesViewModel3.m3(NotificationsPreferencesBottomSheet.SystemNotificationDisabled.f59950e);
                                            }
                                            break;
                                        default:
                                            NotificationsPreferencesBottomSheet notificationsPreferencesBottomSheet2 = (NotificationsPreferencesBottomSheet) mutableState2.getF10755b();
                                            if (Intrinsics.c(notificationsPreferencesBottomSheet2, NotificationsPreferencesBottomSheet.SystemNotificationDisabled.f59950e)) {
                                                notificationsPreferencesViewModel3.K3(NotificationsPreferencesTrackingUiModel.OnCloseNotificationsDisabledPopin.f59951a);
                                            } else if (Intrinsics.c(notificationsPreferencesBottomSheet2, NotificationsPreferencesBottomSheet.NoOptInCustomization.f59947e)) {
                                                notificationsPreferencesViewModel3.K3(NotificationsPreferencesTrackingUiModel.OnClosePersonalizationPopin.f59952a);
                                            } else {
                                                Intrinsics.c(notificationsPreferencesBottomSheet2, NotificationsPreferencesBottomSheet.None.f59948e);
                                            }
                                            notificationsPreferencesViewModel3.h5();
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX9);
                        }
                        Function0 function6 = (Function0) objX9;
                        boolean zY3 = composer2.y(notificationsPreferencesViewModel2);
                        Object objX10 = composer2.x();
                        if (zY3 || objX10 == composer$Companion$Empty$2) {
                            objX10 = new pg0(notificationsPreferencesViewModel2, 1);
                            composer2.q(objX10);
                        }
                        final Function0 function7 = function0;
                        NotificationsPreferencesScreenKt.a(modifierE, notificationsPreferencesViewState2, function5, function6, function7, (Function0) objX10, composer2, 0);
                        if (((NotificationsPreferencesViewState) mutableState.getF10755b()).f59961e) {
                            ProgressViewKt.a(BackgroundKt.b(pq0.j(-1684715355, composer2, "NotificationsPreferencesComposable$lambda$11").o(SizeKt.f5052c), Color.b(LVAppDesignKitTheme.h(composer2).d, LVAppDesignKitTheme.c(composer2).f48361b.f48374a), RectangleShapeKt.f8913a), 0L, false, composer2, 0, 6);
                            composer2.F();
                        } else {
                            composer2.L(-1684370356);
                            composer2.F();
                        }
                        LVModalBottomSheetState lVModalBottomSheetState = lVModalBottomSheetStateF;
                        if (lVModalBottomSheetState.a()) {
                            composer2.L(-1684275031);
                            String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                            final MutableState mutableState2 = mutableStateB2;
                            boolean zK4 = composer2.K(mutableState2) | composer2.y(notificationsPreferencesViewModel2);
                            Object objX11 = composer2.x();
                            if (zK4 || objX11 == composer$Companion$Empty$2) {
                                objX11 = new Function0() { // from class: qg0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        int i10 = i9;
                                        MutableState mutableState3 = mutableState2;
                                        NotificationsPreferencesViewModel notificationsPreferencesViewModel3 = notificationsPreferencesViewModel2;
                                        switch (i10) {
                                            case 0:
                                                if (!((NotificationsPreferencesViewState) mutableState3.getF10755b()).f59960c) {
                                                    notificationsPreferencesViewModel3.m3(NotificationsPreferencesBottomSheet.NoOptInCustomization.f59947e);
                                                } else if (((NotificationsPreferencesViewState) mutableState3.getF10755b()).f59959b) {
                                                    notificationsPreferencesViewModel3.z9();
                                                } else {
                                                    notificationsPreferencesViewModel3.m3(NotificationsPreferencesBottomSheet.SystemNotificationDisabled.f59950e);
                                                }
                                                break;
                                            default:
                                                NotificationsPreferencesBottomSheet notificationsPreferencesBottomSheet2 = (NotificationsPreferencesBottomSheet) mutableState3.getF10755b();
                                                if (Intrinsics.c(notificationsPreferencesBottomSheet2, NotificationsPreferencesBottomSheet.SystemNotificationDisabled.f59950e)) {
                                                    notificationsPreferencesViewModel3.K3(NotificationsPreferencesTrackingUiModel.OnCloseNotificationsDisabledPopin.f59951a);
                                                } else if (Intrinsics.c(notificationsPreferencesBottomSheet2, NotificationsPreferencesBottomSheet.NoOptInCustomization.f59947e)) {
                                                    notificationsPreferencesViewModel3.K3(NotificationsPreferencesTrackingUiModel.OnClosePersonalizationPopin.f59952a);
                                                } else {
                                                    Intrinsics.c(notificationsPreferencesBottomSheet2, NotificationsPreferencesBottomSheet.None.f59948e);
                                                }
                                                notificationsPreferencesViewModel3.h5();
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                composer2.q(objX11);
                            }
                            final Context context2 = context;
                            LVModalBottomSheetKt.b(null, strC, (Function0) objX11, lVModalBottomSheetState, null, 0L, false, null, ComposableLambdaKt.b(-196113618, new Function3() { // from class: com.vuitton.android.presentation.screen.options.notifications.components.b
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj4, Object obj5, Object obj6) {
                                    Composer composer3 = (Composer) obj5;
                                    int iIntValue2 = ((Integer) obj6).intValue();
                                    ((ColumnScope) obj4).getClass();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        MutableState mutableState3 = mutableState2;
                                        String strA = StringResourceUiModelKt.a(((NotificationsPreferencesBottomSheet) mutableState3.getF10755b()).f59944a, context2);
                                        NotificationsPreferencesBottomSheet notificationsPreferencesBottomSheet2 = (NotificationsPreferencesBottomSheet) mutableState3.getF10755b();
                                        NotificationsPreferencesViewModel notificationsPreferencesViewModel3 = notificationsPreferencesViewModel2;
                                        boolean zY4 = composer3.y(notificationsPreferencesViewModel3);
                                        Object objX12 = composer3.x();
                                        if (zY4 || objX12 == Composer.Companion.f7939a) {
                                            NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$9$5$1$1 notificationsPreferencesComposableKt$NotificationsPreferencesComposable$9$5$1$1 = new NotificationsPreferencesComposableKt$NotificationsPreferencesComposable$9$5$1$1(0, notificationsPreferencesViewModel3, NotificationsPreferencesViewModel.class, "onBottomSheetPositiveButtonClick", "onBottomSheetPositiveButtonClick()V", 0);
                                            composer3.q(notificationsPreferencesComposableKt$NotificationsPreferencesComposable$9$5$1$1);
                                            objX12 = notificationsPreferencesComposableKt$NotificationsPreferencesComposable$9$5$1$1;
                                        }
                                        NotificationsPreferencesComposableKt.a(strA, notificationsPreferencesBottomSheet2, (Function0) ((KFunction) objX12), function7, composer3, 0);
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                            composer2.F();
                        } else {
                            composer2.L(-1683185908);
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, 805309488, 501);
            z3 = z4;
        } else {
            gapComposerH.D();
            z3 = z2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(notificationsPreferencesViewModel, function0, function1, function2, function3, z3, i2, i3);
        }
    }
}
