package com.vuitton.android.presentation.screen.catalog.thematicplp.screen;

import android.content.Context;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.BackHandlerKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
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
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.catalog.thematicplp.components.ThematicPlpThemesOverlayKt;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.CurrentThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.tracking.ThematicPlpTrackingUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.viewstate.ThematicPlpViewState;
import defpackage.cl0;
import defpackage.e31;
import defpackage.es0;
import defpackage.fs0;
import defpackage.m21;
import defpackage.mf;
import defpackage.n00;
import defpackage.p01;
import defpackage.qd;
import defpackage.v11;
import defpackage.w11;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003¨\u0006\r²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u00048\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\t\u001a\u0004\u0018\u00010\b8\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u000b\u001a\u00020\n8\nX\u008a\u0084\u0002²\u0006\f\u0010\f\u001a\u00020\n8\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewstate/ThematicPlpViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;", "currentUpdatedProduct", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;", "trackingWishlistClickType", "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThemeAnimationState;", "themeAnimationContext", "Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;", "afterAuthFeedback", "", "changeGridVocalizationEnabled", "changeThemeVocalizationEnabled", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ThematicPlpComposableKt {
    public static final void a(Modifier modifier, final ThematicPlpViewModel thematicPlpViewModel, Function0 function0, Function0 function1, String str, List list, final Function1 function2, Function0 function3, String str2, String str3, Composer composer, int i2) {
        Function0 function4;
        GapComposer gapComposer;
        Object thematicPlpComposableKt$ThematicPlpComposable$1$1;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        ThematicPlpViewModel thematicPlpViewModel2;
        Object thematicPlpComposableKt$ThematicPlpComposable$3$1;
        SnackbarHostState snackbarHostState;
        int i3;
        int i4;
        boolean z;
        Unit unit;
        boolean z2;
        Modifier modifierE = modifier;
        String str4 = str;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ThematicPlpComposable");
        }
        thematicPlpViewModel.getClass();
        function0.getClass();
        function1.getClass();
        list.getClass();
        function2.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-1337980267);
        int i5 = i2 | 6 | (gapComposerH.K(thematicPlpViewModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128);
        if ((i2 & 3072) == 0) {
            i5 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        int i6 = i5 | (gapComposerH.K(str4) ? 16384 : 8192) | (gapComposerH.y(list) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304) | (gapComposerH.K(str2) ? 67108864 : 33554432) | (gapComposerH.K(str3) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i6 & 1, (i6 & 306783379) != 306783378)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("ThematicPlpComposable");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final MutableState mutableStateB = SnapshotStateKt.b(thematicPlpViewModel.getV(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(thematicPlpViewModel.B7(), gapComposerH);
            MutableState mutableStateB3 = SnapshotStateKt.b(thematicPlpViewModel.a8(), gapComposerH);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$2) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX;
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            Unit unit2 = Unit.f71739a;
            int i7 = i6 & 112;
            boolean zY = (i7 == 32) | gapComposerH.y(list) | ((i6 & 234881024) == 67108864) | ((1879048192 & i6) == 536870912);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                thematicPlpViewModel2 = thematicPlpViewModel;
                thematicPlpComposableKt$ThematicPlpComposable$1$1 = new ThematicPlpComposableKt$ThematicPlpComposable$1$1(thematicPlpViewModel2, list, str2, str3, null);
                gapComposerH.q(thematicPlpComposableKt$ThematicPlpComposable$1$1);
            } else {
                thematicPlpComposableKt$ThematicPlpComposable$1$1 = objX2;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                thematicPlpViewModel2 = thematicPlpViewModel;
            }
            EffectsKt.e(gapComposerH, unit2, (Function2) thematicPlpComposableKt$ThematicPlpComposable$1$1);
            boolean z3 = (i6 & 896) == 256;
            Object objX3 = gapComposerH.x();
            if (z3 || objX3 == composer$Companion$Empty$1) {
                objX3 = new w11(function0, 2);
                gapComposerH.q(objX3);
            }
            BackHandlerKt.a(false, (Function0) objX3, gapComposerH, 0, 1);
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotStateKt.g(ThemeAnimationState.Stable.f55498a);
                gapComposerH.q(objX4);
            }
            final MutableState mutableState = (MutableState) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = SnapshotStateKt.g(null);
                gapComposerH.q(objX5);
            }
            MutableState mutableState2 = (MutableState) objX5;
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
            boolean zK = (i7 == 32) | gapComposerH.K(r23);
            Object objX6 = gapComposerH.x();
            if (zK || objX6 == composer$Companion$Empty$1) {
                objX6 = new cl0(mutableState2, thematicPlpViewModel2, mutableStateB3, 21);
                gapComposerH.q(objX6);
            }
            ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX6, gapComposerH, 0);
            boolean zY2 = ((i6 & 29360128) == 8388608) | (i7 == 32) | gapComposerH.y(managedActivityResultLauncherA) | gapComposerH.y(context) | gapComposerH.y(r25) | gapComposerH.K(mutableStateB2);
            Object objX7 = gapComposerH.x();
            if (zY2 || objX7 == composer$Companion$Empty$1) {
                snackbarHostState = snackbarHostState2;
                i3 = 2048;
                i4 = 32;
                z = true;
                unit = unit2;
                thematicPlpComposableKt$ThematicPlpComposable$3$1 = new ThematicPlpComposableKt$ThematicPlpComposable$3$1(thematicPlpViewModel2, managedActivityResultLauncherA, context, snackbarHostState, hapticFeedback, function3, mutableState2, mutableStateB2, null);
                gapComposerH.q(thematicPlpComposableKt$ThematicPlpComposable$3$1);
            } else {
                thematicPlpComposableKt$ThematicPlpComposable$3$1 = objX7;
                unit = unit2;
                snackbarHostState = snackbarHostState2;
                i3 = 2048;
                i4 = 32;
                z = true;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) thematicPlpComposableKt$ThematicPlpComposable$3$1);
            final MutableState mutableStateB4 = SnapshotStateKt.b(thematicPlpViewModel.wb(), gapComposerH);
            final MutableState mutableStateB5 = SnapshotStateKt.b(thematicPlpViewModel.E8(), gapComposerH);
            boolean z4 = (i6 & 7168) == i3 ? z : false;
            Object objX8 = gapComposerH.x();
            if (z4 || objX8 == composer$Companion$Empty$1) {
                function4 = function1;
                objX8 = new ThematicPlpComposableKt$ThematicPlpComposable$4$1(function4, null);
                gapComposerH.q(objX8);
            } else {
                function4 = function1;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX8);
            str4 = str;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1245180327, new qd(18, str4, function0), gapComposerH);
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(1376197083, new fs0(snackbarHostState, 9), gapComposerH);
            ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(-1579834780, new Function3() { // from class: com.vuitton.android.presentation.screen.catalog.thematicplp.screen.a
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer$Companion$Empty$1 composer$Companion$Empty$3;
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
                        Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("ThematicPlpComposable$lambda$19"), Call.Parameters.DEFAULT_CAMERA_ZOOM, paddingValues.getF5031b(), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                        MutableState mutableState3 = mutableState;
                        ThemeAnimationState themeAnimationState = (ThemeAnimationState) mutableState3.getF10755b();
                        themeAnimationState.getClass();
                        Modifier modifierB = ModifierExtKt.b(modifierM, themeAnimationState instanceof ThemeAnimationState.OverlayOpen, new e31(2), composer2, 0);
                        ThematicPlpViewState thematicPlpViewState = (ThematicPlpViewState) mutableStateB.getF10755b();
                        ThemeAnimationState themeAnimationState2 = (ThemeAnimationState) mutableState3.getF10755b();
                        boolean zBooleanValue = ((Boolean) mutableStateB5.getF10755b()).booleanValue();
                        boolean zBooleanValue2 = ((Boolean) mutableStateB4.getF10755b()).booleanValue();
                        final ThematicPlpViewModel thematicPlpViewModel3 = thematicPlpViewModel;
                        boolean zY3 = composer2.y(thematicPlpViewModel3);
                        Object objX9 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$4 = Composer.Companion.f7939a;
                        if (zY3 || objX9 == composer$Companion$Empty$4) {
                            composer$Companion$Empty$3 = composer$Companion$Empty$4;
                            ThematicPlpComposableKt$ThematicPlpComposable$7$2$1 thematicPlpComposableKt$ThematicPlpComposable$7$2$1 = new ThematicPlpComposableKt$ThematicPlpComposable$7$2$1(1, thematicPlpViewModel3, ThematicPlpViewModel.class, "updateCurrentGridMode", "updateCurrentGridMode(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;)V", 0);
                            composer2.q(thematicPlpComposableKt$ThematicPlpComposable$7$2$1);
                            objX9 = thematicPlpComposableKt$ThematicPlpComposable$7$2$1;
                        } else {
                            composer$Companion$Empty$3 = composer$Companion$Empty$4;
                        }
                        Function1 function5 = (Function1) ((KFunction) objX9);
                        boolean zY4 = composer2.y(thematicPlpViewModel3);
                        Object objX10 = composer2.x();
                        if (zY4 || objX10 == composer$Companion$Empty$3) {
                            ThematicPlpComposableKt$ThematicPlpComposable$7$3$1 thematicPlpComposableKt$ThematicPlpComposable$7$3$1 = new ThematicPlpComposableKt$ThematicPlpComposable$7$3$1(1, thematicPlpViewModel3, ThematicPlpViewModel.class, "updateCurrentPlp", "updateCurrentPlp(Ljava/lang/String;)V", 0);
                            composer2.q(thematicPlpComposableKt$ThematicPlpComposable$7$3$1);
                            objX10 = thematicPlpComposableKt$ThematicPlpComposable$7$3$1;
                        }
                        Function1 function6 = (Function1) ((KFunction) objX10);
                        boolean zY5 = composer2.y(thematicPlpViewModel3);
                        Object objX11 = composer2.x();
                        if (zY5 || objX11 == composer$Companion$Empty$3) {
                            ThematicPlpComposableKt$ThematicPlpComposable$7$4$1 thematicPlpComposableKt$ThematicPlpComposable$7$4$1 = new ThematicPlpComposableKt$ThematicPlpComposable$7$4$1(2, thematicPlpViewModel3, ThematicPlpViewModel.class, "updateWishlist", "updateWishlist-C1oCpJM(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;)V", 0);
                            composer2.q(thematicPlpComposableKt$ThematicPlpComposable$7$4$1);
                            objX11 = thematicPlpComposableKt$ThematicPlpComposable$7$4$1;
                        }
                        Function2 function7 = (Function2) ((KFunction) objX11);
                        boolean zY6 = composer2.y(thematicPlpViewModel3);
                        Object objX12 = composer2.x();
                        if (zY6 || objX12 == composer$Companion$Empty$3) {
                            ThematicPlpComposableKt$ThematicPlpComposable$7$5$1 thematicPlpComposableKt$ThematicPlpComposable$7$5$1 = new ThematicPlpComposableKt$ThematicPlpComposable$7$5$1(2, thematicPlpViewModel3, ThematicPlpViewModel.class, "updateWishlistAnimation", "updateWishlistAnimation(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeItemUiModel;Z)V", 0);
                            composer2.q(thematicPlpComposableKt$ThematicPlpComposable$7$5$1);
                            objX12 = thematicPlpComposableKt$ThematicPlpComposable$7$5$1;
                        }
                        Function2 function8 = (Function2) ((KFunction) objX12);
                        boolean zY7 = composer2.y(thematicPlpViewModel3);
                        Object objX13 = composer2.x();
                        if (zY7 || objX13 == composer$Companion$Empty$3) {
                            ThematicPlpComposableKt$ThematicPlpComposable$7$6$1 thematicPlpComposableKt$ThematicPlpComposable$7$6$1 = new ThematicPlpComposableKt$ThematicPlpComposable$7$6$1(0, thematicPlpViewModel3, ThematicPlpViewModel.class, "loadNextTheme", "loadNextTheme()V", 0);
                            composer2.q(thematicPlpComposableKt$ThematicPlpComposable$7$6$1);
                            objX13 = thematicPlpComposableKt$ThematicPlpComposable$7$6$1;
                        }
                        Function0 function9 = (Function0) ((KFunction) objX13);
                        boolean zY8 = composer2.y(thematicPlpViewModel3);
                        Object objX14 = composer2.x();
                        if (zY8 || objX14 == composer$Companion$Empty$3) {
                            ThematicPlpComposableKt$ThematicPlpComposable$7$7$1 thematicPlpComposableKt$ThematicPlpComposable$7$7$1 = new ThematicPlpComposableKt$ThematicPlpComposable$7$7$1(0, thematicPlpViewModel3, ThematicPlpViewModel.class, "loadMoreItems", "loadMoreItems()V", 0);
                            composer2.q(thematicPlpComposableKt$ThematicPlpComposable$7$7$1);
                            objX14 = thematicPlpComposableKt$ThematicPlpComposable$7$7$1;
                        }
                        Function0 function10 = (Function0) ((KFunction) objX14);
                        boolean zY9 = composer2.y(thematicPlpViewModel3);
                        Object objX15 = composer2.x();
                        if (zY9 || objX15 == composer$Companion$Empty$3) {
                            objX15 = new p01(thematicPlpViewModel3, mutableState3, 15);
                            composer2.q(objX15);
                        }
                        Function0 function11 = (Function0) objX15;
                        Object objX16 = composer2.x();
                        if (objX16 == composer$Companion$Empty$3) {
                            objX16 = new v11(4, mutableState3);
                            composer2.q(objX16);
                        }
                        Function0 function12 = (Function0) objX16;
                        boolean zY10 = composer2.y(thematicPlpViewModel3);
                        Function1 function13 = function2;
                        boolean zK2 = zY10 | composer2.K(function13);
                        Object objX17 = composer2.x();
                        if (zK2 || objX17 == composer$Companion$Empty$3) {
                            objX17 = new es0(thematicPlpViewModel3, function13, 17);
                            composer2.q(objX17);
                        }
                        Function2 function14 = (Function2) objX17;
                        boolean zY11 = composer2.y(thematicPlpViewModel3);
                        Object objX18 = composer2.x();
                        if (zY11 || objX18 == composer$Companion$Empty$3) {
                            objX18 = new Function1() { // from class: x31
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    int i10 = i8;
                                    ThematicPlpViewModel thematicPlpViewModel4 = thematicPlpViewModel3;
                                    GridModes gridModes = (GridModes) obj4;
                                    switch (i10) {
                                        case 0:
                                            gridModes.getClass();
                                            thematicPlpViewModel4.w9(new ThematicPlpTrackingUiModel.ChangeLayoutButtonClickedEvent(gridModes));
                                            break;
                                        case 1:
                                            gridModes.getClass();
                                            thematicPlpViewModel4.w9(new ThematicPlpTrackingUiModel.ChangeLayoutPinchOutEvent(gridModes));
                                            break;
                                        default:
                                            gridModes.getClass();
                                            thematicPlpViewModel4.w9(new ThematicPlpTrackingUiModel.ChangeLayoutPinchInEvent(gridModes));
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX18);
                        }
                        Function1 function15 = (Function1) objX18;
                        boolean zY12 = composer2.y(thematicPlpViewModel3);
                        Object objX19 = composer2.x();
                        if (zY12 || objX19 == composer$Companion$Empty$3) {
                            objX19 = new Function1() { // from class: x31
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    int i10 = i9;
                                    ThematicPlpViewModel thematicPlpViewModel4 = thematicPlpViewModel3;
                                    GridModes gridModes = (GridModes) obj4;
                                    switch (i10) {
                                        case 0:
                                            gridModes.getClass();
                                            thematicPlpViewModel4.w9(new ThematicPlpTrackingUiModel.ChangeLayoutButtonClickedEvent(gridModes));
                                            break;
                                        case 1:
                                            gridModes.getClass();
                                            thematicPlpViewModel4.w9(new ThematicPlpTrackingUiModel.ChangeLayoutPinchOutEvent(gridModes));
                                            break;
                                        default:
                                            gridModes.getClass();
                                            thematicPlpViewModel4.w9(new ThematicPlpTrackingUiModel.ChangeLayoutPinchInEvent(gridModes));
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX19);
                        }
                        Function1 function16 = (Function1) objX19;
                        boolean zY13 = composer2.y(thematicPlpViewModel3);
                        Object objX20 = composer2.x();
                        if (zY13 || objX20 == composer$Companion$Empty$3) {
                            final int i10 = 2;
                            objX20 = new Function1() { // from class: x31
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    int i11 = i10;
                                    ThematicPlpViewModel thematicPlpViewModel4 = thematicPlpViewModel3;
                                    GridModes gridModes = (GridModes) obj4;
                                    switch (i11) {
                                        case 0:
                                            gridModes.getClass();
                                            thematicPlpViewModel4.w9(new ThematicPlpTrackingUiModel.ChangeLayoutButtonClickedEvent(gridModes));
                                            break;
                                        case 1:
                                            gridModes.getClass();
                                            thematicPlpViewModel4.w9(new ThematicPlpTrackingUiModel.ChangeLayoutPinchOutEvent(gridModes));
                                            break;
                                        default:
                                            gridModes.getClass();
                                            thematicPlpViewModel4.w9(new ThematicPlpTrackingUiModel.ChangeLayoutPinchInEvent(gridModes));
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX20);
                        }
                        ThematicPlpScreenKt.b(modifierB, thematicPlpViewState, themeAnimationState2, zBooleanValue, zBooleanValue2, function5, function6, function7, function8, function9, function10, function11, function12, function14, function15, function16, (Function1) objX20, composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            int i8 = i4;
            ScaffoldKt.a(dTFunctionNameModifier, composableLambdaImplB, null, composableLambdaImplB2, null, 0, 0L, 0L, null, composableLambdaImplB3, gapComposerH, 805309494, 500);
            modifierE = dTFunctionNameModifier;
            gapComposer = gapComposerH;
            ThemeAnimationState themeAnimationState = (ThemeAnimationState) mutableState.getF10755b();
            themeAnimationState.getClass();
            if (themeAnimationState instanceof ThemeAnimationState.OverlayOpen) {
                gapComposer.L(-1603571763);
                CurrentThemeUiModel currentThemeUiModel = ((ThematicPlpViewState) mutableStateB.getF10755b()).f55588e;
                if (currentThemeUiModel == null) {
                    gapComposer.L(1828882900);
                    z2 = false;
                    gapComposer.Z(false);
                } else {
                    gapComposer.L(1828882901);
                    ThemeUiModel themeUiModelC = ThematicPlpScreenKt.c(currentThemeUiModel.f55426a, ((ThematicPlpViewState) mutableStateB.getF10755b()).f55589f);
                    if (themeUiModelC == null) {
                        gapComposer.L(161338968);
                        z2 = false;
                        gapComposer.Z(false);
                    } else {
                        gapComposer.L(161338969);
                        List list2 = ((ThematicPlpViewState) mutableStateB.getF10755b()).f55589f;
                        float f2 = LVAppDesignKitTheme.d(gapComposer).v;
                        float f3 = LVAppDesignKitTheme.l(gapComposer).f48416e;
                        boolean z5 = i7 != i8 ? false : z;
                        Object objX9 = gapComposer.x();
                        if (z5 || objX9 == composer$Companion$Empty$1) {
                            objX9 = new m21(thematicPlpViewModel, mutableState, 13);
                            gapComposer.q(objX9);
                        }
                        ThematicPlpThemesOverlayKt.b(themeUiModelC, list2, f3, f2, null, (Function1) objX9, gapComposer, 0);
                        z2 = false;
                        gapComposer.Z(false);
                    }
                    gapComposer.Z(z2);
                }
                gapComposer.Z(z2);
            } else {
                gapComposer.L(1829496205);
                gapComposer.Z(false);
            }
        } else {
            function4 = function1;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new mf(modifierE, thematicPlpViewModel, function0, function4, str4, list, function2, function3, str2, str3, i2);
        }
    }
}
