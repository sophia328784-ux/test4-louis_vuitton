package com.vuitton.android.presentation.screen.wishlist.components;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.foundation.layout.AndroidWindowInsets;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVHeaderTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.contact.compose.ContactUsBottomSheetKt;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.extensions.WindowInsetsExtKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.wishlist.WishlistViewModel;
import com.vuitton.android.presentation.screen.wishlist.components.WishlistComposableKt;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistUiModel;
import com.vuitton.android.presentation.screen.wishlist.model.WishlistViewState;
import defpackage.ew0;
import defpackage.k61;
import defpackage.kv0;
import defpackage.kz0;
import defpackage.m8;
import defpackage.n00;
import defpackage.o51;
import defpackage.t8;
import defpackage.u11;
import defpackage.zh;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/wishlist/components/WishlistBottomSheetScreen;", "currentBottomSheet", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class WishlistComposableKt {
    /* JADX WARN: Code duplicated, block: B:161:0x03de  */
    /* JADX WARN: Code duplicated, block: B:162:0x0421  */
    /* JADX WARN: Code duplicated, block: B:167:0x0439  */
    /* JADX WARN: Code duplicated, block: B:170:0x046b  */
    /* JADX WARN: Code duplicated, block: B:171:0x046d  */
    /* JADX WARN: Code duplicated, block: B:174:0x0476  */
    /* JADX WARN: Code duplicated, block: B:181:0x0487  */
    public static final void a(final WishlistViewModel wishlistViewModel, final boolean z, final boolean z2, final Function0 function0, final Function0 function1, final Function0 function2, final Function2 function3, final Function1 function4, final Function1 function5, final Function2 function6, Function0 function7, final Function1 function8, Function0 function9, Composer composer, final int i2, final int i3) {
        Function0 function10;
        int i4;
        final Function0 function11;
        GapComposer gapComposer;
        WindowInsets windowInsetsA;
        LVModalBottomSheetState lVModalBottomSheetState;
        MutableState mutableState;
        int i5;
        Function0 function12;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean z3;
        WishlistViewModel wishlistViewModel2;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        Composer$Companion$Empty$1 composer$Companion$Empty$3;
        boolean z4;
        boolean z5;
        boolean z6;
        int i6;
        boolean z7;
        Object objX;
        SnapshotStateList snapshotStateList;
        wishlistViewModel.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        GapComposer gapComposerH = composer.h(-1482459436);
        int i7 = (gapComposerH.K(wishlistViewModel) ? 4 : 2) | i2;
        if ((i2 & 48) == 0) {
            i7 |= gapComposerH.b(z) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i7 |= gapComposerH.b(z2) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            function10 = function0;
            i7 |= gapComposerH.y(function10) ? 2048 : 1024;
        } else {
            function10 = function0;
        }
        int i8 = i7 | (gapComposerH.y(function1) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288) | (gapComposerH.y(function4) ? 8388608 : 4194304) | (gapComposerH.y(function5) ? 67108864 : 33554432) | (gapComposerH.y(function6) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if ((i3 & 6) == 0) {
            i4 = i3 | (gapComposerH.y(function7) ? 4 : 2);
        } else {
            i4 = i3;
        }
        int i9 = 16;
        if (gapComposerH.y(function8)) {
            i9 = 32;
        }
        int i10 = i4 | i9 | (gapComposerH.y(function9) ? 256 : 128);
        if (gapComposerH.p(i8 & 1, ((i8 & 306783379) == 306783378 && (i10 & 147) == 146) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            final MutableState mutableStateB = SnapshotStateKt.b(wishlistViewModel.getC(), gapComposerH);
            Object objX2 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$4 = Composer.Companion.f7939a;
            if (objX2 == composer$Companion$Empty$4) {
                objX2 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX2;
            Unit unit = Unit.f71739a;
            int i11 = i8 & 14;
            boolean zY = (i11 == 4) | gapComposerH.y(context);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$4) {
                objX3 = new WishlistComposableKt$WishlistComposable$1$1(wishlistViewModel, snackbarHostState, context, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            boolean zY2 = gapComposerH.y(lVModalBottomSheetStateF);
            Object objX4 = gapComposerH.x();
            if (zY2 || objX4 == composer$Companion$Empty$4) {
                objX4 = new t8(lVModalBottomSheetStateF, 25);
                gapComposerH.q(objX4);
            }
            final Function0 function13 = (Function0) objX4;
            LVModalBottomSheetState lVModalBottomSheetStateF3 = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$4) {
                objX5 = SnapshotStateKt.g(null);
                gapComposerH.q(objX5);
            }
            MutableState mutableState2 = (MutableState) objX5;
            boolean zY3 = gapComposerH.y(lVModalBottomSheetStateF3);
            Object objX6 = gapComposerH.x();
            if (zY3 || objX6 == composer$Companion$Empty$4) {
                objX6 = new m8(lVModalBottomSheetStateF3, mutableState2, 14);
                gapComposerH.q(objX6);
            }
            Function0 function14 = (Function0) objX6;
            boolean z8 = i11 == 4;
            Object objX7 = gapComposerH.x();
            if (z8 || objX7 == composer$Companion$Empty$4) {
                objX7 = new k61(wishlistViewModel, 5);
                gapComposerH.q(objX7);
            }
            final Function0 function15 = (Function0) objX7;
            WishlistUiModel wishlistUiModel = ((WishlistViewState) mutableStateB.getF10755b()).d;
            boolean zIsEmpty = (wishlistUiModel == null || (snapshotStateList = wishlistUiModel.f65755a) == null) ? true : snapshotStateList.isEmpty();
            if (z2) {
                gapComposerH.L(1285680504);
                gapComposerH.Z(false);
                windowInsetsA = WindowInsetsExtKt.a();
            } else {
                gapComposerH.L(1285681383);
                AndroidWindowInsets androidWindowInsetsC = WindowInsets_androidKt.c(gapComposerH);
                WindowInsetsHolder.y.getClass();
                WindowInsets windowInsetsI = WindowInsetsKt.i(androidWindowInsetsC, WindowInsetsHolder.Companion.c(gapComposerH).f5075b);
                gapComposerH.Z(false);
                windowInsetsA = windowInsetsI;
            }
            if (((WishlistViewState) mutableStateB.getF10755b()).f65758b) {
                gapComposerH.L(1201501965);
                final int i12 = 0;
                lVModalBottomSheetState = lVModalBottomSheetStateF;
                final Function0 function16 = function10;
                mutableState = mutableState2;
                i5 = i10;
                function12 = function14;
                WishlistLoadingScreenKt.a(ComposableLambdaKt.b(-2055511420, new Function2() { // from class: com.vuitton.android.presentation.screen.wishlist.components.b
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        int i13 = i12;
                        Composer$Companion$Empty$1 composer$Companion$Empty$5 = Composer.Companion.f7939a;
                        MutableState mutableState3 = mutableStateB;
                        switch (i13) {
                            case 0:
                                Composer composer2 = (Composer) obj;
                                int iIntValue = ((Integer) obj2).intValue();
                                if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    WishlistViewModel wishlistViewModel3 = wishlistViewModel;
                                    boolean zY4 = composer2.y(wishlistViewModel3);
                                    Object objX8 = composer2.x();
                                    if (zY4 || objX8 == composer$Companion$Empty$5) {
                                        WishlistComposableKt$WishlistComposable$2$1$1 wishlistComposableKt$WishlistComposable$2$1$1 = new WishlistComposableKt$WishlistComposable$2$1$1(0, wishlistViewModel3, WishlistViewModel.class, "isStoreModeStillValid", "isStoreModeStillValid()Z", 0);
                                        composer2.q(wishlistComposableKt$WishlistComposable$2$1$1);
                                        objX8 = wishlistComposableKt$WishlistComposable$2$1$1;
                                    }
                                    WishlistComposableKt.b(z, (Function0) ((KFunction) objX8), function16, ((WishlistViewState) mutableState3.getF10755b()).f65764j, z2, function15, function13, function8, composer2, 0);
                                } else {
                                    composer2.D();
                                }
                                break;
                            case 1:
                                Composer composer3 = (Composer) obj;
                                int iIntValue2 = ((Integer) obj2).intValue();
                                if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    WishlistViewModel wishlistViewModel4 = wishlistViewModel;
                                    boolean zY5 = composer3.y(wishlistViewModel4);
                                    Object objX9 = composer3.x();
                                    if (zY5 || objX9 == composer$Companion$Empty$5) {
                                        WishlistComposableKt$WishlistComposable$3$1$1 wishlistComposableKt$WishlistComposable$3$1$1 = new WishlistComposableKt$WishlistComposable$3$1$1(0, wishlistViewModel4, WishlistViewModel.class, "isStoreModeStillValid", "isStoreModeStillValid()Z", 0);
                                        composer3.q(wishlistComposableKt$WishlistComposable$3$1$1);
                                        objX9 = wishlistComposableKt$WishlistComposable$3$1$1;
                                    }
                                    WishlistComposableKt.b(z, (Function0) ((KFunction) objX9), function16, ((WishlistViewState) mutableState3.getF10755b()).f65764j, z2, function15, function13, function8, composer3, 0);
                                } else {
                                    composer3.D();
                                }
                                break;
                            case 2:
                                Composer composer4 = (Composer) obj;
                                int iIntValue3 = ((Integer) obj2).intValue();
                                if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                    WishlistViewModel wishlistViewModel5 = wishlistViewModel;
                                    boolean zY6 = composer4.y(wishlistViewModel5);
                                    Object objX10 = composer4.x();
                                    if (zY6 || objX10 == composer$Companion$Empty$5) {
                                        WishlistComposableKt$WishlistComposable$5$1$1 wishlistComposableKt$WishlistComposable$5$1$1 = new WishlistComposableKt$WishlistComposable$5$1$1(0, wishlistViewModel5, WishlistViewModel.class, "isStoreModeStillValid", "isStoreModeStillValid()Z", 0);
                                        composer4.q(wishlistComposableKt$WishlistComposable$5$1$1);
                                        objX10 = wishlistComposableKt$WishlistComposable$5$1$1;
                                    }
                                    WishlistComposableKt.b(z, (Function0) ((KFunction) objX10), function16, ((WishlistViewState) mutableState3.getF10755b()).f65764j, z2, function15, function13, function8, composer4, 0);
                                } else {
                                    composer4.D();
                                }
                                break;
                            default:
                                Composer composer5 = (Composer) obj;
                                int iIntValue4 = ((Integer) obj2).intValue();
                                if (composer5.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                    WishlistViewModel wishlistViewModel6 = wishlistViewModel;
                                    boolean zY7 = composer5.y(wishlistViewModel6);
                                    Object objX11 = composer5.x();
                                    if (zY7 || objX11 == composer$Companion$Empty$5) {
                                        WishlistComposableKt$WishlistComposable$7$1$1 wishlistComposableKt$WishlistComposable$7$1$1 = new WishlistComposableKt$WishlistComposable$7$1$1(0, wishlistViewModel6, WishlistViewModel.class, "isStoreModeStillValid", "isStoreModeStillValid()Z", 0);
                                        composer5.q(wishlistComposableKt$WishlistComposable$7$1$1);
                                        objX11 = wishlistComposableKt$WishlistComposable$7$1$1;
                                    }
                                    WishlistComposableKt.b(z, (Function0) ((KFunction) objX11), function16, ((WishlistViewState) mutableState3.getF10755b()).f65764j, z2, function15, function13, function8, composer5, 0);
                                } else {
                                    composer5.D();
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                }, gapComposerH), windowInsetsA, gapComposerH, 6);
                z4 = false;
                gapComposerH.Z(false);
                composer$Companion$Empty$1 = composer$Companion$Empty$4;
            } else {
                lVModalBottomSheetState = lVModalBottomSheetStateF;
                WindowInsets windowInsets = windowInsetsA;
                mutableState = mutableState2;
                i5 = i10;
                function12 = function14;
                if (((WishlistViewState) mutableStateB.getF10755b()).f65759c) {
                    gapComposerH.L(1202297270);
                    final int i13 = 1;
                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1146647056, new Function2() { // from class: com.vuitton.android.presentation.screen.wishlist.components.b
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            int i14 = i13;
                            Composer$Companion$Empty$1 composer$Companion$Empty$5 = Composer.Companion.f7939a;
                            MutableState mutableState3 = mutableStateB;
                            switch (i14) {
                                case 0:
                                    Composer composer2 = (Composer) obj;
                                    int iIntValue = ((Integer) obj2).intValue();
                                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        WishlistViewModel wishlistViewModel3 = wishlistViewModel;
                                        boolean zY4 = composer2.y(wishlistViewModel3);
                                        Object objX8 = composer2.x();
                                        if (zY4 || objX8 == composer$Companion$Empty$5) {
                                            WishlistComposableKt$WishlistComposable$2$1$1 wishlistComposableKt$WishlistComposable$2$1$1 = new WishlistComposableKt$WishlistComposable$2$1$1(0, wishlistViewModel3, WishlistViewModel.class, "isStoreModeStillValid", "isStoreModeStillValid()Z", 0);
                                            composer2.q(wishlistComposableKt$WishlistComposable$2$1$1);
                                            objX8 = wishlistComposableKt$WishlistComposable$2$1$1;
                                        }
                                        WishlistComposableKt.b(z, (Function0) ((KFunction) objX8), function0, ((WishlistViewState) mutableState3.getF10755b()).f65764j, z2, function15, function13, function8, composer2, 0);
                                    } else {
                                        composer2.D();
                                    }
                                    break;
                                case 1:
                                    Composer composer3 = (Composer) obj;
                                    int iIntValue2 = ((Integer) obj2).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        WishlistViewModel wishlistViewModel4 = wishlistViewModel;
                                        boolean zY5 = composer3.y(wishlistViewModel4);
                                        Object objX9 = composer3.x();
                                        if (zY5 || objX9 == composer$Companion$Empty$5) {
                                            WishlistComposableKt$WishlistComposable$3$1$1 wishlistComposableKt$WishlistComposable$3$1$1 = new WishlistComposableKt$WishlistComposable$3$1$1(0, wishlistViewModel4, WishlistViewModel.class, "isStoreModeStillValid", "isStoreModeStillValid()Z", 0);
                                            composer3.q(wishlistComposableKt$WishlistComposable$3$1$1);
                                            objX9 = wishlistComposableKt$WishlistComposable$3$1$1;
                                        }
                                        WishlistComposableKt.b(z, (Function0) ((KFunction) objX9), function0, ((WishlistViewState) mutableState3.getF10755b()).f65764j, z2, function15, function13, function8, composer3, 0);
                                    } else {
                                        composer3.D();
                                    }
                                    break;
                                case 2:
                                    Composer composer4 = (Composer) obj;
                                    int iIntValue3 = ((Integer) obj2).intValue();
                                    if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                        WishlistViewModel wishlistViewModel5 = wishlistViewModel;
                                        boolean zY6 = composer4.y(wishlistViewModel5);
                                        Object objX10 = composer4.x();
                                        if (zY6 || objX10 == composer$Companion$Empty$5) {
                                            WishlistComposableKt$WishlistComposable$5$1$1 wishlistComposableKt$WishlistComposable$5$1$1 = new WishlistComposableKt$WishlistComposable$5$1$1(0, wishlistViewModel5, WishlistViewModel.class, "isStoreModeStillValid", "isStoreModeStillValid()Z", 0);
                                            composer4.q(wishlistComposableKt$WishlistComposable$5$1$1);
                                            objX10 = wishlistComposableKt$WishlistComposable$5$1$1;
                                        }
                                        WishlistComposableKt.b(z, (Function0) ((KFunction) objX10), function0, ((WishlistViewState) mutableState3.getF10755b()).f65764j, z2, function15, function13, function8, composer4, 0);
                                    } else {
                                        composer4.D();
                                    }
                                    break;
                                default:
                                    Composer composer5 = (Composer) obj;
                                    int iIntValue4 = ((Integer) obj2).intValue();
                                    if (composer5.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                        WishlistViewModel wishlistViewModel6 = wishlistViewModel;
                                        boolean zY7 = composer5.y(wishlistViewModel6);
                                        Object objX11 = composer5.x();
                                        if (zY7 || objX11 == composer$Companion$Empty$5) {
                                            WishlistComposableKt$WishlistComposable$7$1$1 wishlistComposableKt$WishlistComposable$7$1$1 = new WishlistComposableKt$WishlistComposable$7$1$1(0, wishlistViewModel6, WishlistViewModel.class, "isStoreModeStillValid", "isStoreModeStillValid()Z", 0);
                                            composer5.q(wishlistComposableKt$WishlistComposable$7$1$1);
                                            objX11 = wishlistComposableKt$WishlistComposable$7$1$1;
                                        }
                                        WishlistComposableKt.b(z, (Function0) ((KFunction) objX11), function0, ((WishlistViewState) mutableState3.getF10755b()).f65764j, z2, function15, function13, function8, composer5, 0);
                                    } else {
                                        composer5.D();
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH);
                    boolean z9 = i11 == 4;
                    Object objX8 = gapComposerH.x();
                    if (z9) {
                        composer$Companion$Empty$3 = composer$Companion$Empty$4;
                    } else {
                        composer$Companion$Empty$3 = composer$Companion$Empty$4;
                        if (objX8 == composer$Companion$Empty$3) {
                        }
                        WishlistErrorScreenKt.a(snackbarHostState, composableLambdaImplB, (Function0) ((KFunction) objX8), gapComposerH, 54);
                        z4 = false;
                        gapComposerH.Z(false);
                        composer$Companion$Empty$1 = composer$Companion$Empty$3;
                    }
                    objX8 = new WishlistComposableKt$WishlistComposable$4$1(0, wishlistViewModel, WishlistViewModel.class, "reloadWishlist", "reloadWishlist()V", 0);
                    gapComposerH.q(objX8);
                    WishlistErrorScreenKt.a(snackbarHostState, composableLambdaImplB, (Function0) ((KFunction) objX8), gapComposerH, 54);
                    z4 = false;
                    gapComposerH.Z(false);
                    composer$Companion$Empty$1 = composer$Companion$Empty$3;
                } else if (zIsEmpty) {
                    function7 = function7;
                    mutableStateB = mutableStateB;
                    composer$Companion$Empty$1 = composer$Companion$Empty$4;
                    gapComposerH = gapComposerH;
                    i11 = i11;
                    z3 = false;
                    gapComposerH.L(1204750114);
                    final int i14 = 3;
                    Function2 function17 = new Function2() { // from class: com.vuitton.android.presentation.screen.wishlist.components.b
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            int i15 = i14;
                            Composer$Companion$Empty$1 composer$Companion$Empty$5 = Composer.Companion.f7939a;
                            MutableState mutableState3 = mutableStateB;
                            switch (i15) {
                                case 0:
                                    Composer composer2 = (Composer) obj;
                                    int iIntValue = ((Integer) obj2).intValue();
                                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        WishlistViewModel wishlistViewModel3 = wishlistViewModel;
                                        boolean zY4 = composer2.y(wishlistViewModel3);
                                        Object objX9 = composer2.x();
                                        if (zY4 || objX9 == composer$Companion$Empty$5) {
                                            WishlistComposableKt$WishlistComposable$2$1$1 wishlistComposableKt$WishlistComposable$2$1$1 = new WishlistComposableKt$WishlistComposable$2$1$1(0, wishlistViewModel3, WishlistViewModel.class, "isStoreModeStillValid", "isStoreModeStillValid()Z", 0);
                                            composer2.q(wishlistComposableKt$WishlistComposable$2$1$1);
                                            objX9 = wishlistComposableKt$WishlistComposable$2$1$1;
                                        }
                                        WishlistComposableKt.b(z, (Function0) ((KFunction) objX9), function0, ((WishlistViewState) mutableState3.getF10755b()).f65764j, z2, function15, function13, function8, composer2, 0);
                                    } else {
                                        composer2.D();
                                    }
                                    break;
                                case 1:
                                    Composer composer3 = (Composer) obj;
                                    int iIntValue2 = ((Integer) obj2).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        WishlistViewModel wishlistViewModel4 = wishlistViewModel;
                                        boolean zY5 = composer3.y(wishlistViewModel4);
                                        Object objX10 = composer3.x();
                                        if (zY5 || objX10 == composer$Companion$Empty$5) {
                                            WishlistComposableKt$WishlistComposable$3$1$1 wishlistComposableKt$WishlistComposable$3$1$1 = new WishlistComposableKt$WishlistComposable$3$1$1(0, wishlistViewModel4, WishlistViewModel.class, "isStoreModeStillValid", "isStoreModeStillValid()Z", 0);
                                            composer3.q(wishlistComposableKt$WishlistComposable$3$1$1);
                                            objX10 = wishlistComposableKt$WishlistComposable$3$1$1;
                                        }
                                        WishlistComposableKt.b(z, (Function0) ((KFunction) objX10), function0, ((WishlistViewState) mutableState3.getF10755b()).f65764j, z2, function15, function13, function8, composer3, 0);
                                    } else {
                                        composer3.D();
                                    }
                                    break;
                                case 2:
                                    Composer composer4 = (Composer) obj;
                                    int iIntValue3 = ((Integer) obj2).intValue();
                                    if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                        WishlistViewModel wishlistViewModel5 = wishlistViewModel;
                                        boolean zY6 = composer4.y(wishlistViewModel5);
                                        Object objX11 = composer4.x();
                                        if (zY6 || objX11 == composer$Companion$Empty$5) {
                                            WishlistComposableKt$WishlistComposable$5$1$1 wishlistComposableKt$WishlistComposable$5$1$1 = new WishlistComposableKt$WishlistComposable$5$1$1(0, wishlistViewModel5, WishlistViewModel.class, "isStoreModeStillValid", "isStoreModeStillValid()Z", 0);
                                            composer4.q(wishlistComposableKt$WishlistComposable$5$1$1);
                                            objX11 = wishlistComposableKt$WishlistComposable$5$1$1;
                                        }
                                        WishlistComposableKt.b(z, (Function0) ((KFunction) objX11), function0, ((WishlistViewState) mutableState3.getF10755b()).f65764j, z2, function15, function13, function8, composer4, 0);
                                    } else {
                                        composer4.D();
                                    }
                                    break;
                                default:
                                    Composer composer5 = (Composer) obj;
                                    int iIntValue4 = ((Integer) obj2).intValue();
                                    if (composer5.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                        WishlistViewModel wishlistViewModel6 = wishlistViewModel;
                                        boolean zY7 = composer5.y(wishlistViewModel6);
                                        Object objX12 = composer5.x();
                                        if (zY7 || objX12 == composer$Companion$Empty$5) {
                                            WishlistComposableKt$WishlistComposable$7$1$1 wishlistComposableKt$WishlistComposable$7$1$1 = new WishlistComposableKt$WishlistComposable$7$1$1(0, wishlistViewModel6, WishlistViewModel.class, "isStoreModeStillValid", "isStoreModeStillValid()Z", 0);
                                            composer5.q(wishlistComposableKt$WishlistComposable$7$1$1);
                                            objX12 = wishlistComposableKt$WishlistComposable$7$1$1;
                                        }
                                        WishlistComposableKt.b(z, (Function0) ((KFunction) objX12), function0, ((WishlistViewState) mutableState3.getF10755b()).f65764j, z2, function15, function13, function8, composer5, 0);
                                    } else {
                                        composer5.D();
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    wishlistViewModel2 = wishlistViewModel;
                    WishlistEmptyScreenKt.a(snackbarHostState, ComposableLambdaKt.b(-724823509, function17, gapComposerH), function1, gapComposerH, ((i8 >> 6) & 896) | 54);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1203179747);
                    WishlistViewState wishlistViewState = (WishlistViewState) mutableStateB.getF10755b();
                    final int i15 = 2;
                    ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-1295431469, new Function2() { // from class: com.vuitton.android.presentation.screen.wishlist.components.b
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            int i16 = i15;
                            Composer$Companion$Empty$1 composer$Companion$Empty$5 = Composer.Companion.f7939a;
                            MutableState mutableState3 = mutableStateB;
                            switch (i16) {
                                case 0:
                                    Composer composer2 = (Composer) obj;
                                    int iIntValue = ((Integer) obj2).intValue();
                                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        WishlistViewModel wishlistViewModel3 = wishlistViewModel;
                                        boolean zY4 = composer2.y(wishlistViewModel3);
                                        Object objX9 = composer2.x();
                                        if (zY4 || objX9 == composer$Companion$Empty$5) {
                                            WishlistComposableKt$WishlistComposable$2$1$1 wishlistComposableKt$WishlistComposable$2$1$1 = new WishlistComposableKt$WishlistComposable$2$1$1(0, wishlistViewModel3, WishlistViewModel.class, "isStoreModeStillValid", "isStoreModeStillValid()Z", 0);
                                            composer2.q(wishlistComposableKt$WishlistComposable$2$1$1);
                                            objX9 = wishlistComposableKt$WishlistComposable$2$1$1;
                                        }
                                        WishlistComposableKt.b(z, (Function0) ((KFunction) objX9), function0, ((WishlistViewState) mutableState3.getF10755b()).f65764j, z2, function15, function13, function8, composer2, 0);
                                    } else {
                                        composer2.D();
                                    }
                                    break;
                                case 1:
                                    Composer composer3 = (Composer) obj;
                                    int iIntValue2 = ((Integer) obj2).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        WishlistViewModel wishlistViewModel4 = wishlistViewModel;
                                        boolean zY5 = composer3.y(wishlistViewModel4);
                                        Object objX10 = composer3.x();
                                        if (zY5 || objX10 == composer$Companion$Empty$5) {
                                            WishlistComposableKt$WishlistComposable$3$1$1 wishlistComposableKt$WishlistComposable$3$1$1 = new WishlistComposableKt$WishlistComposable$3$1$1(0, wishlistViewModel4, WishlistViewModel.class, "isStoreModeStillValid", "isStoreModeStillValid()Z", 0);
                                            composer3.q(wishlistComposableKt$WishlistComposable$3$1$1);
                                            objX10 = wishlistComposableKt$WishlistComposable$3$1$1;
                                        }
                                        WishlistComposableKt.b(z, (Function0) ((KFunction) objX10), function0, ((WishlistViewState) mutableState3.getF10755b()).f65764j, z2, function15, function13, function8, composer3, 0);
                                    } else {
                                        composer3.D();
                                    }
                                    break;
                                case 2:
                                    Composer composer4 = (Composer) obj;
                                    int iIntValue3 = ((Integer) obj2).intValue();
                                    if (composer4.p(iIntValue3 & 1, (iIntValue3 & 3) != 2)) {
                                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                        WishlistViewModel wishlistViewModel5 = wishlistViewModel;
                                        boolean zY6 = composer4.y(wishlistViewModel5);
                                        Object objX11 = composer4.x();
                                        if (zY6 || objX11 == composer$Companion$Empty$5) {
                                            WishlistComposableKt$WishlistComposable$5$1$1 wishlistComposableKt$WishlistComposable$5$1$1 = new WishlistComposableKt$WishlistComposable$5$1$1(0, wishlistViewModel5, WishlistViewModel.class, "isStoreModeStillValid", "isStoreModeStillValid()Z", 0);
                                            composer4.q(wishlistComposableKt$WishlistComposable$5$1$1);
                                            objX11 = wishlistComposableKt$WishlistComposable$5$1$1;
                                        }
                                        WishlistComposableKt.b(z, (Function0) ((KFunction) objX11), function0, ((WishlistViewState) mutableState3.getF10755b()).f65764j, z2, function15, function13, function8, composer4, 0);
                                    } else {
                                        composer4.D();
                                    }
                                    break;
                                default:
                                    Composer composer5 = (Composer) obj;
                                    int iIntValue4 = ((Integer) obj2).intValue();
                                    if (composer5.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                                        OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                                        WishlistViewModel wishlistViewModel6 = wishlistViewModel;
                                        boolean zY7 = composer5.y(wishlistViewModel6);
                                        Object objX12 = composer5.x();
                                        if (zY7 || objX12 == composer$Companion$Empty$5) {
                                            WishlistComposableKt$WishlistComposable$7$1$1 wishlistComposableKt$WishlistComposable$7$1$1 = new WishlistComposableKt$WishlistComposable$7$1$1(0, wishlistViewModel6, WishlistViewModel.class, "isStoreModeStillValid", "isStoreModeStillValid()Z", 0);
                                            composer5.q(wishlistComposableKt$WishlistComposable$7$1$1);
                                            objX12 = wishlistComposableKt$WishlistComposable$7$1$1;
                                        }
                                        WishlistComposableKt.b(z, (Function0) ((KFunction) objX12), function0, ((WishlistViewState) mutableState3.getF10755b()).f65764j, z2, function15, function13, function8, composer5, 0);
                                    } else {
                                        composer5.D();
                                    }
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    }, gapComposerH);
                    boolean zK = (i11 == 4) | ((i8 & 112) == 32) | ((i8 & 1879048192) == 536870912) | gapComposerH.K(mutableStateB);
                    Object objX9 = gapComposerH.x();
                    if (zK) {
                        composer$Companion$Empty$2 = composer$Companion$Empty$4;
                    } else {
                        composer$Companion$Empty$2 = composer$Companion$Empty$4;
                        if (objX9 == composer$Companion$Empty$2) {
                        }
                        int i16 = i8 << 3;
                        function7 = function7;
                        mutableStateB = mutableStateB;
                        composer$Companion$Empty$1 = composer$Companion$Empty$2;
                        i11 = i11;
                        z3 = false;
                        WishlistScreenKt.b(null, snackbarHostState, wishlistViewState, composableLambdaImplB2, z, windowInsets, function2, function3, function4, (Function1) objX9, function5, gapComposerH, ((i8 << 9) & 57344) | 3120 | (3670016 & i16) | (29360128 & i16) | (i16 & 234881024), (i8 >> 24) & 14);
                        gapComposerH = gapComposerH;
                        gapComposerH.Z(false);
                        wishlistViewModel2 = wishlistViewModel;
                    }
                    objX9 = new Function1<SkuIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.wishlist.components.WishlistComposableKt$WishlistComposable$6$1
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            String str = ((SkuIdUiModel) obj).f61764b;
                            str.getClass();
                            boolean z10 = z;
                            Function2 function18 = function6;
                            if (!z10) {
                                function18.invoke(new SkuIdUiModel(str), null);
                            } else if (wishlistViewModel.F()) {
                                function18.invoke(new SkuIdUiModel(str), ((WishlistViewState) mutableStateB.getF10755b()).f65763i);
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX9);
                    int i17 = i8 << 3;
                    function7 = function7;
                    mutableStateB = mutableStateB;
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                    i11 = i11;
                    z3 = false;
                    WishlistScreenKt.b(null, snackbarHostState, wishlistViewState, composableLambdaImplB2, z, windowInsets, function2, function3, function4, (Function1) objX9, function5, gapComposerH, ((i8 << 9) & 57344) | 3120 | (3670016 & i17) | (29360128 & i17) | (i17 & 234881024), (i8 >> 24) & 14);
                    gapComposerH = gapComposerH;
                    gapComposerH.Z(false);
                    wishlistViewModel2 = wishlistViewModel;
                }
                if (lVModalBottomSheetStateF3.a()) {
                    gapComposerH.L(1205605931);
                    gapComposer = gapComposerH;
                    LVModalBottomSheetKt.b(WindowInsetsPadding_androidKt.d(new DTFunctionNameModifier("WishlistComposable")), StringResources_androidKt.c(gapComposerH, R.string.alt_close), null, lVModalBottomSheetStateF3, null, 0L, false, null, ComposableLambdaKt.b(-908640605, new u11(mutableState, function12), gapComposerH), gapComposer, (LVModalBottomSheetState.f48797e << 9) | 100663296, 244);
                    gapComposer.Z(z3);
                } else {
                    gapComposer = gapComposerH;
                    gapComposer.L(1206137550);
                    gapComposer.Z(z3);
                }
                if (((WishlistViewState) mutableStateB.getF10755b()).f65761f && z) {
                    z5 = true;
                } else {
                    z5 = z3;
                }
                AnimatedVisibilityKt.e(z5, null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), EnterExitTransitionKt.h(null, 3), null, ComposableLambdaKt.b(-249681156, new kv0(function7, 7), gapComposer), gapComposer, 200064, 18);
                ContactUsUiModel contactUsUiModel = ((WishlistViewState) mutableStateB.getF10755b()).f65764j;
                if (i11 != 4) {
                    z6 = z3;
                } else {
                    z6 = true;
                }
                i6 = i5;
                if ((i6 & 896) == 256) {
                    z3 = true;
                }
                z7 = z6 | z3;
                objX = gapComposer.x();
                if (!z7 || objX == composer$Companion$Empty$1) {
                    function11 = function9;
                    objX = new ew0(wishlistViewModel2, function11, 1);
                    gapComposer.q(objX);
                } else {
                    function11 = function9;
                }
                int i18 = LVModalBottomSheetState.f48797e;
                ContactUsBottomSheetKt.a(contactUsUiModel, lVModalBottomSheetState, lVModalBottomSheetStateF2, function8, (Function0) objX, gapComposer, (i18 << 6) | (i18 << 3) | ((i6 << 6) & 7168));
            }
            z3 = z4;
            wishlistViewModel2 = wishlistViewModel;
            if (lVModalBottomSheetStateF3.a()) {
                gapComposerH.L(1205605931);
                gapComposer = gapComposerH;
                LVModalBottomSheetKt.b(WindowInsetsPadding_androidKt.d(new DTFunctionNameModifier("WishlistComposable")), StringResources_androidKt.c(gapComposerH, R.string.alt_close), null, lVModalBottomSheetStateF3, null, 0L, false, null, ComposableLambdaKt.b(-908640605, new u11(mutableState, function12), gapComposerH), gapComposer, (LVModalBottomSheetState.f48797e << 9) | 100663296, 244);
                gapComposer.Z(z3);
            } else {
                gapComposer = gapComposerH;
                gapComposer.L(1206137550);
                gapComposer.Z(z3);
            }
            if (((WishlistViewState) mutableStateB.getF10755b()).f65761f) {
                z5 = z3;
            } else {
                z5 = z3;
            }
            AnimatedVisibilityKt.e(z5, null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), EnterExitTransitionKt.h(null, 3), null, ComposableLambdaKt.b(-249681156, new kv0(function7, 7), gapComposer), gapComposer, 200064, 18);
            ContactUsUiModel contactUsUiModel2 = ((WishlistViewState) mutableStateB.getF10755b()).f65764j;
            if (i11 != 4) {
                z6 = z3;
            } else {
                z6 = true;
            }
            i6 = i5;
            if ((i6 & 896) == 256) {
                z3 = true;
            }
            z7 = z6 | z3;
            objX = gapComposer.x();
            if (z7) {
                function11 = function9;
                objX = new ew0(wishlistViewModel2, function11, 1);
                gapComposer.q(objX);
            } else {
                function11 = function9;
                objX = new ew0(wishlistViewModel2, function11, 1);
                gapComposer.q(objX);
            }
            int i19 = LVModalBottomSheetState.f48797e;
            ContactUsBottomSheetKt.a(contactUsUiModel2, lVModalBottomSheetState, lVModalBottomSheetStateF2, function8, (Function0) objX, gapComposer, (i19 << 6) | (i19 << 3) | ((i6 << 6) & 7168));
        } else {
            function11 = function9;
            gapComposer = gapComposerH;
            function7 = function7;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Function0 function18 = function7;
            recomposeScopeImplB0.d = new Function2() { // from class: g71
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    WishlistComposableKt.a(wishlistViewModel, z, z2, function0, function1, function2, function3, function4, function5, function6, function18, function8, function11, (Composer) obj, iA, iA2);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(boolean z, Function0 function0, Function0 function1, ContactUsUiModel contactUsUiModel, boolean z2, Function0 function2, Function0 function3, Function1 function4, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-2063429087);
        int i3 = i2 | (gapComposerH.b(z) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.K(contactUsUiModel) ? 2048 : 1024) | (gapComposerH.b(z2) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function3) ? 1048576 : 524288) | (gapComposerH.y(function4) ? 8388608 : 4194304);
        if (gapComposerH.p(i3 & 1, (4793491 & i3) != 4793490)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-532122772, new kz0(z, contactUsUiModel, function3, function4, z2, function2), gapComposerH);
            if (z2) {
                DTFunctionNameModifier dTFunctionNameModifierI = n00.i(gapComposerH, -2043037678, "WishlistTopBar");
                Object objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new o51(14);
                    gapComposerH.q(objX);
                }
                LVHeaderTopBarKt.a(SemanticsModifierKt.b(dTFunctionNameModifierI, false, (Function1) objX), StringResources_androidKt.c(gapComposerH, R.string.mylv_dashboard_mywishlists), composableLambdaImplB, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, gapComposerH, KyberEngine.KyberPolyBytes, 248);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-2042786423);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.mylv_dashboard_mywishlists);
                Function0 function5 = null;
                if (function1 != null && (!z || ((Boolean) function0.mo47invoke()).booleanValue())) {
                    function5 = function1;
                }
                LVStandardTopBarKt.a(null, null, false, strC, null, null, function5, composableLambdaImplB, null, null, null, gapComposerH, 12582912, 0, 3895);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new zh(z, function0, function1, contactUsUiModel, z2, function2, function3, function4, i2);
        }
    }
}
