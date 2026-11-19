package com.vuitton.android.presentation.screen.cart.components;

import android.content.Context;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
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
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.lifecycle.Lifecycle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVHeaderTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.compose.components.LifecycleEventKt;
import com.vuitton.android.presentation.compose.components.ProgressViewKt;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.extensions.ModifierExtKt;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.cart.CommercialNotification;
import com.vuitton.android.presentation.screen.cart.NativeCartViewModel;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.NativeCartBottomSheetScreen;
import com.vuitton.android.presentation.screen.cart.components.bottomsheets.NativeCartBottomSheetsKt;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartPreviousScreen;
import com.vuitton.android.presentation.screen.cart.models.CartUiModel;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceTracker;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModel;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModelImpl;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.android.presentation.tracking.AppsFlyerTrackerEntryPointKt;
import com.vuitton.android.presentation.tracking.AppsFlyerUiTracker;
import defpackage.ae0;
import defpackage.be0;
import defpackage.c30;
import defpackage.dd0;
import defpackage.hg;
import defpackage.jx;
import defpackage.k60;
import defpackage.le;
import defpackage.m8;
import defpackage.n00;
import defpackage.o8;
import defpackage.p1;
import defpackage.pp;
import defpackage.pq0;
import defpackage.q70;
import defpackage.r;
import defpackage.se0;
import defpackage.te0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004¨\u0006\u000f²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0003\u001a\u0004\u0018\u00010\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\n\u001a\u0004\u0018\u00010\t8\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\f\u001a\u0004\u0018\u00010\u000b8\n@\nX\u008a\u008e\u0002²\u0006\u0010\u0010\r\u001a\u0004\u0018\u00010\u00028\n@\nX\u008a\u008e\u0002²\u0006\u0012\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;", "packaging", "Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceViewModelImpl$ReinsuranceState;", "reinsurance", "Lkotlin/Function0;", "", "cartAuthAction", "Lcom/vuitton/android/presentation/screen/cart/components/bottomsheets/NativeCartBottomSheetScreen;", "currentBottomSheet", "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;", "currentCartItem", "currentReinsuranceItem", "currentOnBackPressed", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeCartComposableKt {
    public static final void a(ContactUsUiModel contactUsUiModel, boolean z, LVModalBottomSheetState lVModalBottomSheetState, Function1 function1, Function0 function0, Function0 function2, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(537921258);
        if ((i2 & 6) == 0) {
            i3 = ((i2 & 8) == 0 ? gapComposerH.K(contactUsUiModel) : gapComposerH.y(contactUsUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.b(z) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= (i2 & 512) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(function0) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 131072 : 65536;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (74899 & i4) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1301924865, new se0(0, lVModalBottomSheetState, contactUsUiModel, function0, function1), gapComposerH);
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, 690040180, "CartTopAppBar");
                Object objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new be0(4);
                    gapComposerH.q(objX);
                }
                LVHeaderTopBarKt.a(SemanticsModifierKt.b(dTFunctionNameModifierI, false, (Function1) objX), StringResources_androidKt.c(gapComposerH, R.string.nc_title_shopping_cart), composableLambdaImplB, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, KyberEngine.KyberPolyBytes, 248);
                gapComposerH.Z(false);
            } else {
                DTFunctionNameModifier dTFunctionNameModifierI2 = n00.i(gapComposerH, 690458308, "CartTopAppBar");
                Object objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new be0(5);
                    gapComposerH.q(objX2);
                }
                LVStandardTopBarKt.a(SemanticsModifierKt.b(dTFunctionNameModifierI2, false, (Function1) objX2), null, false, StringResources_androidKt.c(gapComposerH, R.string.nc_title_shopping_cart), null, null, function2, composableLambdaImplB, null, null, null, gapComposerH, ((i4 << 3) & 3670016) | 12582912, 0, 3894);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(contactUsUiModel, z, lVModalBottomSheetState, function1, function0, function2, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:218:0x0541  */
    /* JADX WARN: Code duplicated, block: B:223:0x056b  */
    /* JADX WARN: Code duplicated, block: B:225:0x05b0  */
    public static final void b(final NativeCartViewModel nativeCartViewModel, ReinsuranceViewModel reinsuranceViewModel, CartPreviousScreen cartPreviousScreen, Function0 function0, Function0 function1, final Function1 function2, final Function0 function3, final Function0 function4, final Function1 function5, Function1 function6, Function0 function7, final Function1 function8, Composer composer, int i2) {
        GapComposer gapComposer;
        Object obj;
        Context context;
        boolean z;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MutableState mutableState;
        ManagedActivityResultLauncher managedActivityResultLauncher;
        Context context2;
        List list;
        LVModalBottomSheetState lVModalBottomSheetState;
        boolean z2;
        final ReinsuranceTracker reinsuranceTracker;
        MutableState mutableState2;
        int i3;
        Function2 function9;
        boolean zY;
        Object objX;
        MutableState mutableState3;
        final MutableState mutableState4;
        nativeCartViewModel.getClass();
        reinsuranceViewModel.getClass();
        cartPreviousScreen.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        GapComposer gapComposerH = composer.h(2071646076);
        int i4 = i2 | (gapComposerH.K(nativeCartViewModel) ? 4 : 2) | (gapComposerH.K(reinsuranceViewModel) ? 32 : 16) | (gapComposerH.d(cartPreviousScreen.ordinal()) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288) | (gapComposerH.y(function4) ? 8388608 : 4194304) | (gapComposerH.y(function5) ? 67108864 : 33554432) | (gapComposerH.y(function6) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i5 = (gapComposerH.y(function7) ? 4 : 2) | (gapComposerH.y(function8) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, ((306783379 & i4) == 306783378 && (i5 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context3 = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            MutableState mutableStateB = SnapshotStateKt.b(nativeCartViewModel.getZ(), gapComposerH);
            AppsFlyerUiTracker appsFlyerUiTracker = (AppsFlyerUiTracker) gapComposerH.k(AppsFlyerTrackerEntryPointKt.f65808a);
            final MutableState mutableStateB2 = SnapshotStateKt.b(reinsuranceViewModel.getF63421f(), gapComposerH);
            final MutableState mutableStateB3 = SnapshotStateKt.b(reinsuranceViewModel.getD(), gapComposerH);
            Object objX2 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX2 == composer$Companion$Empty$2) {
                objX2 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX2;
            Lifecycle.Event eventA = LifecycleEventKt.a(gapComposerH);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            ReinsuranceTracker reinsuranceTracker2 = (ReinsuranceTracker) gapComposerH.k(ReinsuranceTrackerEntryPointKt.f63416a);
            boolean z3 = cartPreviousScreen == CartPreviousScreen.MAIN;
            CartUiModel cartUiModel = ((NativeCartViewState) mutableStateB.getF10755b()).f55204a;
            boolean zK = ((i4 & 112) == 32) | gapComposerH.K(mutableStateB);
            Object objX3 = gapComposerH.x();
            if (zK || objX3 == composer$Companion$Empty$2) {
                objX3 = new NativeCartComposableKt$NativeCartComposable$1$1(reinsuranceViewModel, mutableStateB, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, cartUiModel, (Function2) objX3);
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$2) {
                objX4 = SnapshotStateKt.g(new dd0(14));
                gapComposerH.q(objX4);
            }
            MutableState mutableState5 = (MutableState) objX4;
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$2) {
                objX5 = new c30(14, mutableState5);
                gapComposerH.q(objX5);
            }
            ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX5, gapComposerH, 48);
            ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult2 = new ActivityResultContracts$StartActivityForResult();
            int i6 = i4 & 14;
            boolean zK2 = gapComposerH.K(mutableStateB) | (i6 == 4);
            Object objX6 = gapComposerH.x();
            if (zK2 || objX6 == composer$Companion$Empty$2) {
                objX6 = new k60(nativeCartViewModel, mutableStateB, 17);
                gapComposerH.q(objX6);
            }
            ManagedActivityResultLauncher managedActivityResultLauncherA2 = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult2, (Function1) objX6, gapComposerH, 0);
            ArrayList arrayList = ((NativeCartViewState) mutableStateB.getF10755b()).f55211j;
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Iterator it2 = it;
                Object next = it2.next();
                if (next instanceof CommercialNotification) {
                    arrayList2.add(next);
                }
                it = it2;
            }
            final CommercialNotification commercialNotification = (CommercialNotification) CollectionsKt.firstOrNull(arrayList2);
            Object objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$2) {
                objX7 = new be0(3);
                gapComposerH.q(objX7);
            }
            LVModalBottomSheetState lVModalBottomSheetStateF3 = LVModalBottomSheetKt.f(48, 5, gapComposerH, (Function1) objX7);
            Object objX8 = gapComposerH.x();
            if (objX8 == composer$Companion$Empty$2) {
                obj = null;
                objX8 = SnapshotStateKt.g(null);
                gapComposerH.q(objX8);
            } else {
                obj = null;
            }
            MutableState mutableState6 = (MutableState) objX8;
            Object objX9 = gapComposerH.x();
            if (objX9 == composer$Companion$Empty$2) {
                objX9 = SnapshotStateKt.g(obj);
                gapComposerH.q(objX9);
            }
            final MutableState mutableState7 = (MutableState) objX9;
            Object objX10 = gapComposerH.x();
            if (objX10 == composer$Companion$Empty$2) {
                objX10 = SnapshotStateKt.g(obj);
                gapComposerH.q(objX10);
            }
            MutableState mutableState8 = (MutableState) objX10;
            boolean zY2 = gapComposerH.y(lVModalBottomSheetStateF3);
            Object objX11 = gapComposerH.x();
            if (zY2 || objX11 == composer$Companion$Empty$2) {
                objX11 = new m8(lVModalBottomSheetStateF3, mutableState6, 4);
                gapComposerH.q(objX11);
            }
            final Function0 function10 = (Function0) objX11;
            boolean zY3 = gapComposerH.y(lVModalBottomSheetStateF3);
            Object objX12 = gapComposerH.x();
            if (zY3 || objX12 == composer$Companion$Empty$2) {
                objX12 = new r(lVModalBottomSheetStateF3, mutableState6, mutableState7, mutableState8);
                gapComposerH.q(objX12);
            }
            final Function3 function11 = (Function3) objX12;
            boolean zD = gapComposerH.d(eventA.ordinal()) | (i6 == 4);
            Object objX13 = gapComposerH.x();
            if (zD || objX13 == composer$Companion$Empty$2) {
                objX13 = new NativeCartComposableKt$NativeCartComposable$2$1(eventA, nativeCartViewModel, null);
                gapComposerH.q(objX13);
            }
            EffectsKt.e(gapComposerH, eventA, (Function2) objX13);
            Boolean bool = Boolean.TRUE;
            boolean zK3 = (i6 == 4) | gapComposerH.K(function11);
            Object objX14 = gapComposerH.x();
            if (zK3 || objX14 == composer$Companion$Empty$2) {
                objX14 = new NativeCartComposableKt$NativeCartComposable$3$1(nativeCartViewModel, function11, null);
                gapComposerH.q(objX14);
            }
            EffectsKt.e(gapComposerH, bool, (Function2) objX14);
            boolean zY4 = (i6 == 4) | gapComposerH.y(context3) | gapComposerH.y(managedActivityResultLauncherA);
            Object objX15 = gapComposerH.x();
            if (zY4 || objX15 == composer$Companion$Empty$2) {
                context = context3;
                z = true;
                NativeCartComposableKt$NativeCartComposable$4$1 nativeCartComposableKt$NativeCartComposable$4$1 = new NativeCartComposableKt$NativeCartComposable$4$1(nativeCartViewModel, context, managedActivityResultLauncherA, mutableState5, null);
                gapComposerH.q(nativeCartComposableKt$NativeCartComposable$4$1);
                objX15 = nativeCartComposableKt$NativeCartComposable$4$1;
            } else {
                context = context3;
                z = true;
            }
            EffectsKt.e(gapComposerH, bool, (Function2) objX15);
            Unit unit = Unit.f71739a;
            boolean zY5 = gapComposerH.y(context) | (i6 != 4 ? false : z);
            Object objX16 = gapComposerH.x();
            if (zY5 || objX16 == composer$Companion$Empty$2) {
                objX16 = new NativeCartComposableKt$NativeCartComposable$5$1(nativeCartViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX16);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX16);
            boolean zY6 = gapComposerH.y(managedActivityResultLauncherA2) | (i6 != 4 ? false : z) | gapComposerH.y(context) | ((r25 & 896) == 256 ? z : false) | gapComposerH.K(mutableStateB);
            Object objX17 = gapComposerH.x();
            if (zY6 || objX17 == composer$Companion$Empty$2) {
                Context context4 = context;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                mutableState = mutableStateB;
                NativeCartComposableKt$NativeCartComposable$6$1 nativeCartComposableKt$NativeCartComposable$6$1 = new NativeCartComposableKt$NativeCartComposable$6$1(nativeCartViewModel, managedActivityResultLauncherA2, context4, cartPreviousScreen, mutableState, null);
                managedActivityResultLauncher = managedActivityResultLauncherA2;
                context2 = context4;
                gapComposerH.q(nativeCartComposableKt$NativeCartComposable$6$1);
                objX17 = nativeCartComposableKt$NativeCartComposable$6$1;
            } else {
                managedActivityResultLauncher = managedActivityResultLauncherA2;
                mutableState = mutableStateB;
                context2 = context;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX17);
            boolean z4 = i6 != 4 ? false : z;
            Object objX18 = gapComposerH.x();
            if (z4 || objX18 == composer$Companion$Empty$1) {
                list = null;
                objX18 = new NativeCartComposableKt$NativeCartComposable$7$1(nativeCartViewModel, null);
                gapComposerH.q(objX18);
            } else {
                list = null;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX18);
            MutableState mutableStateL = SnapshotStateKt.l(function0, gapComposerH);
            Object objX19 = gapComposerH.x();
            if (objX19 == composer$Companion$Empty$1) {
                z2 = z3;
                lVModalBottomSheetState = lVModalBottomSheetStateF;
                objX19 = new ComposableLambdaImpl(-272700797, z, new hg(z2, lVModalBottomSheetStateF, function6, nativeCartViewModel, mutableState, mutableStateL));
                gapComposerH.q(objX19);
            } else {
                lVModalBottomSheetState = lVModalBottomSheetStateF;
                z2 = z3;
            }
            Function2 function12 = (Function2) objX19;
            if ((((NativeCartViewState) mutableState.getF10755b()).d && ((NativeCartViewState) mutableState.getF10755b()).f55204a == null) || ((NativeCartViewState) mutableState.getF10755b()).f55207e) {
                gapComposerH.L(2029692016);
                NativeCartLoadingScreenKt.a(snackbarHostState, function12, gapComposerH, 54);
                gapComposerH.Z(false);
            } else if (((NativeCartViewState) mutableState.getF10755b()).f55208f) {
                gapComposerH.L(2029873087);
                boolean z5 = i6 != 4 ? false : z;
                Object objX20 = gapComposerH.x();
                if (z5 || objX20 == composer$Companion$Empty$1) {
                    i3 = 54;
                    function9 = function12;
                    NativeCartComposableKt$NativeCartComposable$8$1 nativeCartComposableKt$NativeCartComposable$8$1 = new NativeCartComposableKt$NativeCartComposable$8$1(0, nativeCartViewModel, NativeCartViewModel.class, "getCartFull", "getCartFull()V", 0);
                    gapComposerH.q(nativeCartComposableKt$NativeCartComposable$8$1);
                    objX20 = nativeCartComposableKt$NativeCartComposable$8$1;
                } else {
                    function9 = function12;
                    i3 = 54;
                }
                NativeCartErrorScreenKt.a(snackbarHostState, function9, (Function0) ((KFunction) objX20), gapComposerH, i3);
                gapComposerH.Z(false);
            } else {
                if (((NativeCartViewState) mutableState.getF10755b()).g) {
                    gapComposerH.L(2030100999);
                    NativeCartEmptyScreenKt.a(snackbarHostState, function12, function1, gapComposerH, ((r25 >> 6) & 896) | 54);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(2030455546);
                    CartUiModel cartUiModel2 = ((NativeCartViewState) mutableState.getF10755b()).f55204a;
                    if (cartUiModel2 != null) {
                        list = cartUiModel2.f55183c;
                    }
                    List list2 = list;
                    boolean z6 = (list2 == null || list2.isEmpty()) ? z : false;
                    long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b;
                    WindowInsets windowInsetsA = WindowInsetsExtKt.a();
                    boolean z7 = z2;
                    final boolean z8 = z6;
                    final MutableState mutableState9 = mutableState;
                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(1901175606, new q70(z8, z7, function11, mutableState9, appsFlyerUiTracker, nativeCartViewModel), gapComposerH);
                    ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-1387110443, new ae0(snackbarHostState, 2), gapComposerH);
                    final Context context5 = context2;
                    final ManagedActivityResultLauncher managedActivityResultLauncher2 = managedActivityResultLauncher;
                    reinsuranceTracker = reinsuranceTracker2;
                    mutableState2 = mutableState9;
                    ScaffoldKt.a(null, function12, composableLambdaImplB, composableLambdaImplB2, null, 0, j2, 0L, windowInsetsA, ComposableLambdaKt.b(-776899412, new Function3() { // from class: com.vuitton.android.presentation.screen.cart.components.b
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj2, Object obj3, Object obj4) {
                            Composer$Companion$Empty$1 composer$Companion$Empty$3;
                            PaddingValues paddingValues = (PaddingValues) obj2;
                            Composer composer2 = (Composer) obj3;
                            int iIntValue = ((Integer) obj4).intValue();
                            paddingValues.getClass();
                            if ((iIntValue & 6) == 0) {
                                iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                            }
                            if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                if (z8) {
                                    composer2.L(971396886);
                                    composer2.F();
                                } else {
                                    composer2.L(968517730);
                                    Modifier modifierH = PaddingKt.h(new DTFunctionNameModifier("NativeCartComposable$lambda$33"), paddingValues);
                                    MutableState mutableState10 = mutableState9;
                                    NativeCartViewState nativeCartViewState = (NativeCartViewState) mutableState10.getF10755b();
                                    ReinsuranceUiModel reinsuranceUiModel = (ReinsuranceUiModel) mutableStateB2.getF10755b();
                                    ReinsuranceViewModelImpl.ReinsuranceState reinsuranceState = (ReinsuranceViewModelImpl.ReinsuranceState) mutableStateB3.getF10755b();
                                    NativeCartViewModel nativeCartViewModel2 = nativeCartViewModel;
                                    boolean zY7 = composer2.y(nativeCartViewModel2);
                                    Object objX21 = composer2.x();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$4 = Composer.Companion.f7939a;
                                    if (zY7 || objX21 == composer$Companion$Empty$4) {
                                        composer$Companion$Empty$3 = composer$Companion$Empty$4;
                                        NativeCartComposableKt$NativeCartComposable$11$1$1 nativeCartComposableKt$NativeCartComposable$11$1$1 = new NativeCartComposableKt$NativeCartComposable$11$1$1(1, nativeCartViewModel2, NativeCartViewModel.class, "removeSample", "removeSample(Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;)V", 0);
                                        composer2.q(nativeCartComposableKt$NativeCartComposable$11$1$1);
                                        objX21 = nativeCartComposableKt$NativeCartComposable$11$1$1;
                                    } else {
                                        composer$Companion$Empty$3 = composer$Companion$Empty$4;
                                    }
                                    KFunction kFunction = (KFunction) objX21;
                                    boolean zY8 = composer2.y(nativeCartViewModel2);
                                    Object objX22 = composer2.x();
                                    if (zY8 || objX22 == composer$Companion$Empty$3) {
                                        NativeCartComposableKt$NativeCartComposable$11$2$1 nativeCartComposableKt$NativeCartComposable$11$2$1 = new NativeCartComposableKt$NativeCartComposable$11$2$1(0, nativeCartViewModel2, NativeCartViewModel.class, "requestShoppingBag", "requestShoppingBag()V", 0);
                                        composer2.q(nativeCartComposableKt$NativeCartComposable$11$2$1);
                                        objX22 = nativeCartComposableKt$NativeCartComposable$11$2$1;
                                    }
                                    KFunction kFunction2 = (KFunction) objX22;
                                    boolean zY9 = composer2.y(nativeCartViewModel2);
                                    Object objX23 = composer2.x();
                                    if (zY9 || objX23 == composer$Companion$Empty$3) {
                                        NativeCartComposableKt$NativeCartComposable$11$3$1 nativeCartComposableKt$NativeCartComposable$11$3$1 = new NativeCartComposableKt$NativeCartComposable$11$3$1(2, nativeCartViewModel2, NativeCartViewModel.class, "updateQuantity", "updateQuantity(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;I)V", 0);
                                        composer2.q(nativeCartComposableKt$NativeCartComposable$11$3$1);
                                        objX23 = nativeCartComposableKt$NativeCartComposable$11$3$1;
                                    }
                                    KFunction kFunction3 = (KFunction) objX23;
                                    ReinsuranceTracker reinsuranceTracker3 = reinsuranceTracker;
                                    boolean zY10 = composer2.y(reinsuranceTracker3);
                                    Object objX24 = composer2.x();
                                    if (zY10 || objX24 == composer$Companion$Empty$3) {
                                        objX24 = new NativeCartComposableKt$NativeCartComposable$11$4$1(1, reinsuranceTracker3, ReinsuranceTracker.class, "trackOpenReinsurance", "trackOpenReinsurance(Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceUiModel;)V", 0);
                                        composer2.q(objX24);
                                    }
                                    KFunction kFunction4 = (KFunction) objX24;
                                    boolean zY11 = composer2.y(nativeCartViewModel2);
                                    Object objX25 = composer2.x();
                                    if (zY11 || objX25 == composer$Companion$Empty$3) {
                                        NativeCartComposableKt$NativeCartComposable$11$5$1 nativeCartComposableKt$NativeCartComposable$11$5$1 = new NativeCartComposableKt$NativeCartComposable$11$5$1(1, nativeCartViewModel2, NativeCartViewModel.class, "onItemExpanded", "onItemExpanded-Cirf5Rc(Ljava/lang/String;)V", 0);
                                        composer2.q(nativeCartComposableKt$NativeCartComposable$11$5$1);
                                        objX25 = nativeCartComposableKt$NativeCartComposable$11$5$1;
                                    }
                                    KFunction kFunction5 = (KFunction) objX25;
                                    boolean zY12 = composer2.y(nativeCartViewModel2);
                                    Object objX26 = composer2.x();
                                    if (zY12 || objX26 == composer$Companion$Empty$3) {
                                        NativeCartComposableKt$NativeCartComposable$11$6$1 nativeCartComposableKt$NativeCartComposable$11$6$1 = new NativeCartComposableKt$NativeCartComposable$11$6$1(1, nativeCartViewModel2, NativeCartViewModel.class, "onItemCollapsed", "onItemCollapsed-Cirf5Rc(Ljava/lang/String;)V", 0);
                                        composer2.q(nativeCartComposableKt$NativeCartComposable$11$6$1);
                                        objX26 = nativeCartComposableKt$NativeCartComposable$11$6$1;
                                    }
                                    KFunction kFunction6 = (KFunction) objX26;
                                    boolean zY13 = composer2.y(nativeCartViewModel2);
                                    Object objX27 = composer2.x();
                                    if (zY13 || objX27 == composer$Companion$Empty$3) {
                                        NativeCartComposableKt$NativeCartComposable$11$7$1 nativeCartComposableKt$NativeCartComposable$11$7$1 = new NativeCartComposableKt$NativeCartComposable$11$7$1(1, nativeCartViewModel2, NativeCartViewModel.class, "removeItemFromCart", "removeItemFromCart(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;Z)V", 0);
                                        composer2.q(nativeCartComposableKt$NativeCartComposable$11$7$1);
                                        objX27 = nativeCartComposableKt$NativeCartComposable$11$7$1;
                                    }
                                    Function1 function13 = (Function1) objX27;
                                    boolean zY14 = composer2.y(nativeCartViewModel2);
                                    Object objX28 = composer2.x();
                                    if (zY14 || objX28 == composer$Companion$Empty$3) {
                                        NativeCartComposableKt$NativeCartComposable$11$8$1 nativeCartComposableKt$NativeCartComposable$11$8$1 = new NativeCartComposableKt$NativeCartComposable$11$8$1(1, nativeCartViewModel2, NativeCartViewModel.class, "requestAddToWishlist", "requestAddToWishlist(Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;)V", 0);
                                        composer2.q(nativeCartComposableKt$NativeCartComposable$11$8$1);
                                        objX28 = nativeCartComposableKt$NativeCartComposable$11$8$1;
                                    }
                                    KFunction kFunction7 = (KFunction) objX28;
                                    boolean zY15 = composer2.y(nativeCartViewModel2);
                                    Context context6 = context5;
                                    boolean zY16 = zY15 | composer2.y(context6);
                                    ManagedActivityResultLauncher managedActivityResultLauncher3 = managedActivityResultLauncher2;
                                    boolean zY17 = zY16 | composer2.y(managedActivityResultLauncher3);
                                    Object objX29 = composer2.x();
                                    if (zY17 || objX29 == composer$Companion$Empty$3) {
                                        objX29 = new jx(nativeCartViewModel2, context6, managedActivityResultLauncher3, 22);
                                        composer2.q(objX29);
                                    }
                                    Function1 function14 = (Function1) objX29;
                                    Function1 function15 = function2;
                                    boolean zK4 = composer2.K(function15) | composer2.K(mutableState10);
                                    Object objX30 = composer2.x();
                                    if (zK4 || objX30 == composer$Companion$Empty$3) {
                                        objX30 = new o8(function15, mutableState10, 8);
                                        composer2.q(objX30);
                                    }
                                    Function0 function16 = (Function0) objX30;
                                    boolean zY18 = composer2.y(nativeCartViewModel2);
                                    Object objX31 = composer2.x();
                                    if (zY18 || objX31 == composer$Companion$Empty$3) {
                                        objX31 = new te0(nativeCartViewModel2, 0);
                                        composer2.q(objX31);
                                    }
                                    Composer$Companion$Empty$1 composer$Companion$Empty$5 = composer$Companion$Empty$3;
                                    NativeCartFilledScreenKt.b(modifierH, nativeCartViewState, reinsuranceUiModel, reinsuranceState, function14, function16, (Function0) objX31, function3, function4, (Function1) kFunction, (Function0) kFunction2, (Function2) kFunction3, (Function1) kFunction4, function11, (Function1) kFunction5, (Function1) kFunction6, function13, (Function1) kFunction7, function8, composer2, 0, 0, 0);
                                    if (((NativeCartViewState) mutableState10.getF10755b()).d) {
                                        ProgressViewKt.a(ModifierExtKt.a(pq0.j(970746010, composer2, "NativeCartComposable$lambda$33").o(SizeKt.f5052c), null, null, 7), 0L, false, composer2, 0, 6);
                                        composer2.F();
                                    } else {
                                        composer2.L(970988182);
                                        composer2.F();
                                    }
                                    Context context7 = (Context) composer2.k(AndroidCompositionLocals_androidKt.f9936b);
                                    String strC = StringResources_androidKt.c(composer2, R.string.content_description_loading);
                                    Boolean boolValueOf = Boolean.valueOf(((NativeCartViewState) mutableState10.getF10755b()).d);
                                    boolean zK5 = composer2.K(mutableState10) | composer2.y(context7) | composer2.K(strC);
                                    Object objX32 = composer2.x();
                                    if (zK5 || objX32 == composer$Companion$Empty$5) {
                                        objX32 = new NativeCartComposableKt$NativeCartComposable$11$12$1(context7, strC, mutableState10, null);
                                        composer2.q(objX32);
                                    }
                                    EffectsKt.e(composer2, boolValueOf, (Function2) objX32);
                                    composer2.F();
                                }
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH), gapComposerH, 805309872, 177);
                    gapComposer = gapComposerH;
                    gapComposer.Z(false);
                }
                if (lVModalBottomSheetStateF3.a()) {
                    gapComposer.L(2035295390);
                    Modifier modifierD = WindowInsetsPadding_androidKt.d(new DTFunctionNameModifier("NativeCartComposable"));
                    String strC = StringResources_androidKt.c(gapComposer, R.string.alt_close);
                    zY = gapComposer.y(reinsuranceTracker);
                    objX = gapComposer.x();
                    if (!zY || objX == composer$Companion$Empty$1) {
                        mutableState3 = mutableState6;
                        mutableState4 = mutableState8;
                        objX = new pp(reinsuranceTracker, mutableState3, mutableState4, 25);
                        gapComposer.q(objX);
                    } else {
                        mutableState3 = mutableState6;
                        mutableState4 = mutableState8;
                    }
                    Function0 function13 = (Function0) objX;
                    final MutableState mutableState10 = mutableState3;
                    LVModalBottomSheetKt.b(modifierD, strC, function13, lVModalBottomSheetStateF3, null, 0L, false, null, ComposableLambdaKt.b(479926603, new Function3() { // from class: com.vuitton.android.presentation.screen.cart.components.c
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj2, Object obj3, Object obj4) {
                            Composer composer2 = (Composer) obj3;
                            int iIntValue = ((Integer) obj4).intValue();
                            ((ColumnScope) obj2).getClass();
                            if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                NativeCartBottomSheetScreen nativeCartBottomSheetScreen = (NativeCartBottomSheetScreen) mutableState10.getF10755b();
                                if (nativeCartBottomSheetScreen == null) {
                                    composer2.L(-452643850);
                                    composer2.F();
                                } else {
                                    composer2.L(-452643849);
                                    CartItemUiModel cartItemUiModel = (CartItemUiModel) mutableState7.getF10755b();
                                    ReinsuranceUiModel reinsuranceUiModel = (ReinsuranceUiModel) mutableState4.getF10755b();
                                    NativeCartViewModel nativeCartViewModel2 = nativeCartViewModel;
                                    boolean zY7 = composer2.y(nativeCartViewModel2);
                                    Object objX21 = composer2.x();
                                    if (zY7 || objX21 == Composer.Companion.f7939a) {
                                        NativeCartComposableKt$NativeCartComposable$13$1$1$1 nativeCartComposableKt$NativeCartComposable$13$1$1$1 = new NativeCartComposableKt$NativeCartComposable$13$1$1$1(0, nativeCartViewModel2, NativeCartViewModel.class, "getCartFull", "getCartFull()V", 0);
                                        composer2.q(nativeCartComposableKt$NativeCartComposable$13$1$1$1);
                                        objX21 = nativeCartComposableKt$NativeCartComposable$13$1$1$1;
                                    }
                                    NativeCartBottomSheetsKt.c(nativeCartBottomSheetScreen, cartItemUiModel, reinsuranceUiModel, commercialNotification, function10, (Function0) ((KFunction) objX21), function5, composer2, 0);
                                    composer2.F();
                                }
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposer), gapComposer, (LVModalBottomSheetState.f48797e << 9) | 100663296, 240);
                    gapComposer.Z(false);
                } else {
                    gapComposer.L(2036323846);
                    gapComposer.Z(false);
                }
                ContactUsUiModel contactUsUiModel = ((NativeCartViewState) mutableState2.getF10755b()).n;
                int i7 = LVModalBottomSheetState.f48797e;
                ContactUsBottomSheetKt.a(contactUsUiModel, lVModalBottomSheetState, lVModalBottomSheetStateF2, function6, function7, gapComposer, (i7 << 6) | (i7 << 3) | ((i4 >> 18) & 7168) | ((i5 << 12) & 57344));
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            }
            mutableState2 = mutableState;
            reinsuranceTracker = reinsuranceTracker2;
            gapComposer = gapComposerH;
            if (lVModalBottomSheetStateF3.a()) {
                gapComposer.L(2035295390);
                Modifier modifierD2 = WindowInsetsPadding_androidKt.d(new DTFunctionNameModifier("NativeCartComposable"));
                String strC2 = StringResources_androidKt.c(gapComposer, R.string.alt_close);
                zY = gapComposer.y(reinsuranceTracker);
                objX = gapComposer.x();
                if (zY) {
                    mutableState3 = mutableState6;
                    mutableState4 = mutableState8;
                    objX = new pp(reinsuranceTracker, mutableState3, mutableState4, 25);
                    gapComposer.q(objX);
                } else {
                    mutableState3 = mutableState6;
                    mutableState4 = mutableState8;
                    objX = new pp(reinsuranceTracker, mutableState3, mutableState4, 25);
                    gapComposer.q(objX);
                }
                Function0 function14 = (Function0) objX;
                final MutableState mutableState11 = mutableState3;
                LVModalBottomSheetKt.b(modifierD2, strC2, function14, lVModalBottomSheetStateF3, null, 0L, false, null, ComposableLambdaKt.b(479926603, new Function3() { // from class: com.vuitton.android.presentation.screen.cart.components.c
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj2, Object obj3, Object obj4) {
                        Composer composer2 = (Composer) obj3;
                        int iIntValue = ((Integer) obj4).intValue();
                        ((ColumnScope) obj2).getClass();
                        if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            NativeCartBottomSheetScreen nativeCartBottomSheetScreen = (NativeCartBottomSheetScreen) mutableState11.getF10755b();
                            if (nativeCartBottomSheetScreen == null) {
                                composer2.L(-452643850);
                                composer2.F();
                            } else {
                                composer2.L(-452643849);
                                CartItemUiModel cartItemUiModel = (CartItemUiModel) mutableState7.getF10755b();
                                ReinsuranceUiModel reinsuranceUiModel = (ReinsuranceUiModel) mutableState4.getF10755b();
                                NativeCartViewModel nativeCartViewModel2 = nativeCartViewModel;
                                boolean zY7 = composer2.y(nativeCartViewModel2);
                                Object objX21 = composer2.x();
                                if (zY7 || objX21 == Composer.Companion.f7939a) {
                                    NativeCartComposableKt$NativeCartComposable$13$1$1$1 nativeCartComposableKt$NativeCartComposable$13$1$1$1 = new NativeCartComposableKt$NativeCartComposable$13$1$1$1(0, nativeCartViewModel2, NativeCartViewModel.class, "getCartFull", "getCartFull()V", 0);
                                    composer2.q(nativeCartComposableKt$NativeCartComposable$13$1$1$1);
                                    objX21 = nativeCartComposableKt$NativeCartComposable$13$1$1$1;
                                }
                                NativeCartBottomSheetsKt.c(nativeCartBottomSheetScreen, cartItemUiModel, reinsuranceUiModel, commercialNotification, function10, (Function0) ((KFunction) objX21), function5, composer2, 0);
                                composer2.F();
                            }
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposer), gapComposer, (LVModalBottomSheetState.f48797e << 9) | 100663296, 240);
                gapComposer.Z(false);
            } else {
                gapComposer.L(2036323846);
                gapComposer.Z(false);
            }
            ContactUsUiModel contactUsUiModel2 = ((NativeCartViewState) mutableState2.getF10755b()).n;
            int i8 = LVModalBottomSheetState.f48797e;
            ContactUsBottomSheetKt.a(contactUsUiModel2, lVModalBottomSheetState, lVModalBottomSheetStateF2, function6, function7, gapComposer, (i8 << 6) | (i8 << 3) | ((i4 >> 18) & 7168) | ((i5 << 12) & 57344));
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new le(nativeCartViewModel, reinsuranceViewModel, cartPreviousScreen, function0, function1, function2, function3, function4, function5, function6, function7, function8, i2);
        }
    }
}
