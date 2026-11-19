package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import android.content.Context;
import android.content.res.Configuration;
import androidx.compose.animation.AnimationModifierKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.SnackbarHostState;
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
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.orders.components.returns.legacy.LoadingAnimationKt;
import com.vuitton.android.presentation.screen.pdp.bottomsheet.BackInStockBottomSheetKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.tutorial.TutorialBottomSheetContentKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyAddToCartUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyBottomSheet;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TutorialState;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import defpackage.c1;
import defpackage.cj;
import defpackage.he;
import defpackage.ie;
import defpackage.je;
import defpackage.k;
import defpackage.ke;
import defpackage.l0;
import defpackage.le;
import defpackage.n00;
import defpackage.o8;
import defpackage.pq0;
import defpackage.u5;
import java.util.Collection;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\n²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u00048\nX\u008a\u0084\u0002²\u0006\f\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002²\u0006\u0010\u0010\t\u001a\u0004\u0018\u00010\b8\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyVtoViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;", "permissionsState", "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyBottomSheet;", "bottomSheet", "", "dualSeparatorPercentage", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "itemToNotify", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class BeautyVtoComposableKt {
    public static final void a(BeautyVtoViewModel beautyVtoViewModel, final PermissionsViewModel permissionsViewModel, Function0 function0, Function0 function1, Function1 function2, Function0 function3, Function0 function4, Function0 function5, Function0 function6, Function1 function7, Function0 function8, final Function1 function9, Composer composer, int i2) {
        Function1 function10;
        GapComposer gapComposer;
        int i3;
        final BeautyVtoViewModel beautyVtoViewModel2;
        BeautyVtoViewModel beautyVtoViewModel3 = beautyVtoViewModel;
        beautyVtoViewModel3.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        GapComposer gapComposerH = composer.h(51487018);
        int i4 = i2 | (gapComposerH.K(beautyVtoViewModel3) ? 4 : 2) | (gapComposerH.K(permissionsViewModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304) | (gapComposerH.y(function6) ? 67108864 : 33554432) | (gapComposerH.y(function7) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i5 = (gapComposerH.y(function8) ? 4 : 2) | (gapComposerH.y(function9) ? 32 : 16);
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final MutableState mutableStateB = SnapshotStateKt.b(beautyVtoViewModel3.getK0(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(permissionsViewModel.getU(), gapComposerH);
            final MutableState mutableStateB3 = SnapshotStateKt.b(beautyVtoViewModel3.e(), gapComposerH);
            MutableState mutableStateB4 = SnapshotStateKt.b(beautyVtoViewModel3.g2(), gapComposerH);
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState = (SnackbarHostState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(null);
                gapComposerH.q(objX2);
            }
            final MutableState mutableState = (MutableState) objX2;
            Unit unit = Unit.f71739a;
            int i6 = i4 & 14;
            boolean zY = (i6 == 4) | gapComposerH.y(hapticFeedback) | gapComposerH.y(context) | ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i4 & 3670016) == 1048576) | gapComposerH.K(mutableStateB);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                i3 = 32;
                BeautyVtoComposableKt$BeautyVtoComposable$1$1 beautyVtoComposableKt$BeautyVtoComposable$1$1 = new BeautyVtoComposableKt$BeautyVtoComposable$1$1(beautyVtoViewModel, hapticFeedback, snackbarHostState, context, function3, function4, mutableStateB, null);
                beautyVtoViewModel3 = beautyVtoViewModel;
                context = context;
                gapComposerH.q(beautyVtoComposableKt$BeautyVtoComposable$1$1);
                objX3 = beautyVtoComposableKt$BeautyVtoComposable$1$1;
            } else {
                i3 = 32;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            PermissionsBottomSheet permissionsBottomSheet = ((PermissionsUiModel) mutableStateB2.getF10755b()).f62372a;
            boolean zK = gapComposerH.K(mutableStateB2) | (i6 == 4);
            Object objX4 = gapComposerH.x();
            if (zK || objX4 == composer$Companion$Empty$1) {
                objX4 = new BeautyVtoComposableKt$BeautyVtoComposable$2$1(beautyVtoViewModel3, mutableStateB2, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, permissionsBottomSheet, (Function2) objX4);
            boolean z = (i6 == 4) | ((i4 & 112) == i3);
            Object objX5 = gapComposerH.x();
            if (z || objX5 == composer$Companion$Empty$1) {
                objX5 = new BeautyVtoComposableKt$BeautyVtoComposable$3$1(permissionsViewModel, beautyVtoViewModel3, r29, null);
                gapComposerH.q(objX5);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX5);
            BeautyVtoViewState beautyVtoViewState = (BeautyVtoViewState) mutableStateB.getF10755b();
            float fFloatValue = ((Number) mutableStateB4.getF10755b()).floatValue();
            boolean z2 = i6 == 4;
            Object objX6 = gapComposerH.x();
            if (z2 || objX6 == composer$Companion$Empty$1) {
                objX6 = new BeautyVtoComposableKt$BeautyVtoComposable$4$1(1, beautyVtoViewModel3, BeautyVtoViewModel.class, "onTryOnProductSelected", "onTryOnProductSelected(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)V", 0);
                gapComposerH.q(objX6);
            }
            KFunction kFunction = (KFunction) objX6;
            boolean z3 = i6 == 4;
            Object objX7 = gapComposerH.x();
            if (z3 || objX7 == composer$Companion$Empty$1) {
                objX7 = new BeautyVtoComposableKt$BeautyVtoComposable$5$1(1, beautyVtoViewModel, BeautyVtoViewModel.class, "onTryOnStackingProductClick", "onTryOnStackingProductClick(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)V", 0);
                gapComposerH.q(objX7);
            }
            KFunction kFunction2 = (KFunction) objX7;
            boolean z4 = i6 == 4;
            Object objX8 = gapComposerH.x();
            if (z4 || objX8 == composer$Companion$Empty$1) {
                objX8 = new BeautyVtoComposableKt$BeautyVtoComposable$6$1(1, beautyVtoViewModel, BeautyVtoViewModel.class, "onComparedProductClick", "onComparedProductClick(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;)V", 0);
                gapComposerH.q(objX8);
            }
            KFunction kFunction3 = (KFunction) objX8;
            boolean z5 = i6 == 4;
            Object objX9 = gapComposerH.x();
            if (z5 || objX9 == composer$Companion$Empty$1) {
                objX9 = new BeautyVtoComposableKt$BeautyVtoComposable$7$1(1, beautyVtoViewModel, BeautyVtoViewModel.class, "onLookClick", "onLookClick(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/LookUiModel;)V", 0);
                gapComposerH.q(objX9);
            }
            KFunction kFunction4 = (KFunction) objX9;
            boolean z6 = i6 == 4;
            Object objX10 = gapComposerH.x();
            if (z6 || objX10 == composer$Companion$Empty$1) {
                objX10 = new BeautyVtoComposableKt$BeautyVtoComposable$8$1(0, beautyVtoViewModel, BeautyVtoViewModel.class, "openTutorial", "openTutorial()V", 0);
                gapComposerH.q(objX10);
            }
            KFunction kFunction5 = (KFunction) objX10;
            boolean z7 = i6 == 4;
            Object objX11 = gapComposerH.x();
            if (z7 || objX11 == composer$Companion$Empty$1) {
                objX11 = new BeautyVtoComposableKt$BeautyVtoComposable$9$1(0, beautyVtoViewModel, BeautyVtoViewModel.class, "trackLookSelectorClicked", "trackLookSelectorClicked()V", 0);
                gapComposerH.q(objX11);
            }
            KFunction kFunction6 = (KFunction) objX11;
            boolean z8 = i6 == 4;
            Object objX12 = gapComposerH.x();
            if (z8 || objX12 == composer$Companion$Empty$1) {
                objX12 = new BeautyVtoComposableKt$BeautyVtoComposable$10$1(0, beautyVtoViewModel, BeautyVtoViewModel.class, "trackOnSelectDualColorClicked", "trackOnSelectDualColorClicked()V", 0);
                gapComposerH.q(objX12);
            }
            KFunction kFunction7 = (KFunction) objX12;
            boolean z9 = i6 == 4;
            Object objX13 = gapComposerH.x();
            if (z9 || objX13 == composer$Companion$Empty$1) {
                beautyVtoViewModel2 = beautyVtoViewModel;
                objX13 = new BeautyVtoComposableKt$BeautyVtoComposable$11$1(0, beautyVtoViewModel2, BeautyVtoViewModel.class, "trackColorSliderSwipe", "trackColorSliderSwipe()V", 0);
                gapComposerH.q(objX13);
            } else {
                beautyVtoViewModel2 = beautyVtoViewModel;
            }
            KFunction kFunction8 = (KFunction) objX13;
            boolean z10 = ((i4 & 896) == 256) | (i6 == 4);
            Object objX14 = gapComposerH.x();
            if (z10 || objX14 == composer$Companion$Empty$1) {
                objX14 = new l0((Object) beautyVtoViewModel2, function0, 24);
                gapComposerH.q(objX14);
            }
            Function0 function11 = (Function0) objX14;
            boolean zK2 = ((i4 & 57344) == 16384) | gapComposerH.K(mutableStateB);
            Object objX15 = gapComposerH.x();
            if (zK2 || objX15 == composer$Companion$Empty$1) {
                objX15 = new o8(function2, mutableStateB, 2);
                gapComposerH.q(objX15);
            }
            Function0 function12 = (Function0) objX15;
            Function1 function13 = (Function1) kFunction;
            Function1 function14 = (Function1) kFunction2;
            Function1 function15 = (Function1) kFunction3;
            boolean z11 = ((1879048192 & i4) == 536870912) | (i6 == 4);
            Object objX16 = gapComposerH.x();
            if (z11 || objX16 == composer$Companion$Empty$1) {
                function10 = function7;
                objX16 = new k(function10, beautyVtoViewModel2, 12);
                gapComposerH.q(objX16);
            } else {
                function10 = function7;
            }
            BeautyVtoScreenKt.a(beautyVtoViewState, snackbarHostState, fFloatValue, function11, function1, function12, function8, function5, function6, function13, function14, function15, (Function1) objX16, (Function1) kFunction4, (Function0) kFunction5, (Function0) kFunction6, (Function0) kFunction7, (Function0) kFunction8, gapComposerH, ((i4 << 3) & 57344) | 48 | ((i5 << 18) & 3670016) | (i4 & 29360128) | (i4 & 234881024));
            gapComposer = gapComposerH;
            if (((BeautyBottomSheet) mutableStateB3.getF10755b()) != null) {
                gapComposer.L(550696803);
                Object objX17 = gapComposer.x();
                if (objX17 == composer$Companion$Empty$1) {
                    objX17 = new u5(27);
                    gapComposer.q(objX17);
                }
                LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(48, 5, gapComposer, (Function1) objX17);
                float f2 = ((Configuration) gapComposer.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
                Dp.Companion companion = Dp.f11004c;
                final float f3 = f2 * 0.85f;
                String strC = StringResources_androidKt.c(gapComposer, R.string.alt_close);
                WindowInsets windowInsetsB = WindowInsetsKt.b(0, 7);
                boolean z12 = i6 == 4;
                Object objX18 = gapComposer.x();
                if (z12 || objX18 == composer$Companion$Empty$1) {
                    objX18 = new ke(beautyVtoViewModel2, 0);
                    gapComposer.q(objX18);
                }
                Function0 function16 = (Function0) objX18;
                final Context context2 = context;
                LVModalBottomSheetKt.b(null, strC, function16, lVModalBottomSheetStateF, windowInsetsB, 0L, false, null, ComposableLambdaKt.b(134746809, new Function3() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.b
                    /* JADX WARN: Code duplicated, block: B:53:0x01d1  */
                    /* JADX WARN: Code duplicated, block: B:57:0x01e9  */
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        boolean zY2;
                        Object objX19;
                        boolean zY3;
                        Object objX20;
                        Composer composer2 = (Composer) obj2;
                        int iIntValue = ((Integer) obj3).intValue();
                        ((ColumnScope) obj).getClass();
                        if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            Modifier modifierB = WindowInsetsPadding_androidKt.b(AnimationModifierKt.b(new DTFunctionNameModifier("BeautyVtoComposable$lambda$24"), null, 3));
                            float f4 = f3;
                            Modifier modifierH = SizeKt.h(modifierB, Call.Parameters.DEFAULT_CAMERA_ZOOM, f4, 1);
                            Alignment.f8582a.getClass();
                            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            int iHashCode = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                            Modifier modifierC = ComposedModifierKt.c(composer2, modifierH);
                            ComposeUiNode.b0.getClass();
                            Function0 function17 = ComposeUiNode.Companion.f9641b;
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function17);
                            } else {
                                composer2.o();
                            }
                            Function2 function18 = ComposeUiNode.Companion.f9644f;
                            Updater.c(composer2, measurePolicyD, function18);
                            Function2 function19 = ComposeUiNode.Companion.f9643e;
                            Updater.c(composer2, persistentCompositionLocalMapN, function19);
                            Integer numValueOf = Integer.valueOf(iHashCode);
                            Function2 function20 = ComposeUiNode.Companion.g;
                            Updater.c(composer2, numValueOf, function20);
                            Function1 function21 = ComposeUiNode.Companion.f9645h;
                            Updater.b(composer2, function21);
                            Function2 function22 = ComposeUiNode.Companion.d;
                            Updater.c(composer2, modifierC, function22);
                            MutableState mutableState2 = mutableStateB3;
                            BeautyBottomSheet beautyBottomSheet = (BeautyBottomSheet) mutableState2.getF10755b();
                            if (beautyBottomSheet instanceof BeautyBottomSheet.Loading) {
                                Modifier modifierD = SizeKt.d(PaddingKt.m(pq0.j(879089201, composer2, "BeautyVtoComposable$lambda$24"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).l, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).m, 5), 1.0f);
                                MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8587f, false);
                                int iHashCode2 = Long.hashCode(composer2.getT());
                                PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                                Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierD);
                                if (composer2.getF7976a() == null) {
                                    ComposablesKt.b();
                                    throw null;
                                }
                                composer2.B();
                                if (composer2.getS()) {
                                    composer2.C(function17);
                                } else {
                                    composer2.o();
                                }
                                Updater.c(composer2, measurePolicyD2, function18);
                                Updater.c(composer2, persistentCompositionLocalMapN2, function19);
                                cj.s(iHashCode2, composer2, function20, composer2, function21);
                                Updater.c(composer2, modifierC2, function22);
                                LoadingAnimationKt.a(composer2, 0);
                                composer2.r();
                                composer2.F();
                            } else {
                                boolean z13 = beautyBottomSheet instanceof BeautyBottomSheet.AddToCartMultiple;
                                final BeautyVtoViewModel beautyVtoViewModel4 = beautyVtoViewModel2;
                                MutableState mutableState3 = mutableStateB;
                                Context context3 = context2;
                                Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                if (z13) {
                                    composer2.L(879801302);
                                    BeautyBottomSheet beautyBottomSheet2 = (BeautyBottomSheet) mutableState2.getF10755b();
                                    beautyBottomSheet2.getClass();
                                    List list = ((BeautyBottomSheet.AddToCartMultiple) beautyBottomSheet2).f62130a;
                                    List list2 = list;
                                    if ((list2 instanceof Collection) && list2.isEmpty()) {
                                        composer2.L(881197790);
                                        zY2 = composer2.y(beautyVtoViewModel4);
                                        objX19 = composer2.x();
                                        if (zY2) {
                                            objX19 = new c1(beautyVtoViewModel4, 20);
                                            composer2.q(objX19);
                                        } else {
                                            objX19 = new c1(beautyVtoViewModel4, 20);
                                            composer2.q(objX19);
                                        }
                                        Function1 function23 = (Function1) objX19;
                                        zY3 = composer2.y(beautyVtoViewModel4);
                                        objX20 = composer2.x();
                                        if (zY3) {
                                            BeautyVtoComposableKt$BeautyVtoComposable$16$1$6$1 beautyVtoComposableKt$BeautyVtoComposable$16$1$6$1 = new BeautyVtoComposableKt$BeautyVtoComposable$16$1$6$1(2, beautyVtoViewModel4, BeautyVtoViewModel.class, "trackSelectProductMultipleAddToCart", "trackSelectProductMultipleAddToCart-C1oCpJM(Ljava/lang/String;Z)V", 0);
                                            composer2.q(beautyVtoComposableKt$BeautyVtoComposable$16$1$6$1);
                                            objX20 = beautyVtoComposableKt$BeautyVtoComposable$16$1$6$1;
                                        } else {
                                            BeautyVtoComposableKt$BeautyVtoComposable$16$1$6$1 beautyVtoComposableKt$BeautyVtoComposable$16$1$6$2 = new BeautyVtoComposableKt$BeautyVtoComposable$16$1$6$1(2, beautyVtoViewModel4, BeautyVtoViewModel.class, "trackSelectProductMultipleAddToCart", "trackSelectProductMultipleAddToCart-C1oCpJM(Ljava/lang/String;Z)V", 0);
                                            composer2.q(beautyVtoComposableKt$BeautyVtoComposable$16$1$6$2);
                                            objX20 = beautyVtoComposableKt$BeautyVtoComposable$16$1$6$2;
                                        }
                                        BeautyAddToCartBottomSheetContentKt.b(list, function23, (Function2) ((KFunction) objX20), composer2, 0);
                                        composer2.F();
                                    } else {
                                        Iterator it = list2.iterator();
                                        while (true) {
                                            if (!it.hasNext()) {
                                                composer2.L(881197790);
                                                zY2 = composer2.y(beautyVtoViewModel4);
                                                objX19 = composer2.x();
                                                if (zY2 || objX19 == composer$Companion$Empty$2) {
                                                    objX19 = new c1(beautyVtoViewModel4, 20);
                                                    composer2.q(objX19);
                                                }
                                                Function1 function24 = (Function1) objX19;
                                                zY3 = composer2.y(beautyVtoViewModel4);
                                                objX20 = composer2.x();
                                                if (zY3 || objX20 == composer$Companion$Empty$2) {
                                                    BeautyVtoComposableKt$BeautyVtoComposable$16$1$6$1 beautyVtoComposableKt$BeautyVtoComposable$16$1$6$3 = new BeautyVtoComposableKt$BeautyVtoComposable$16$1$6$1(2, beautyVtoViewModel4, BeautyVtoViewModel.class, "trackSelectProductMultipleAddToCart", "trackSelectProductMultipleAddToCart-C1oCpJM(Ljava/lang/String;Z)V", 0);
                                                    composer2.q(beautyVtoComposableKt$BeautyVtoComposable$16$1$6$3);
                                                    objX20 = beautyVtoComposableKt$BeautyVtoComposable$16$1$6$3;
                                                }
                                                BeautyAddToCartBottomSheetContentKt.b(list, function24, (Function2) ((KFunction) objX20), composer2, 0);
                                                composer2.F();
                                            } else if (!((BeautyAddToCartUiModel) it.next()).f62129f) {
                                                composer2.L(879996292);
                                                boolean z14 = ((BeautyVtoViewState) mutableState3.getF10755b()).u.d;
                                                boolean zY4 = composer2.y(beautyVtoViewModel4);
                                                Object objX21 = composer2.x();
                                                if (zY4 || objX21 == composer$Companion$Empty$2) {
                                                    objX21 = new Function1<SkuIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoComposableKt$BeautyVtoComposable$16$1$2$1
                                                        @Override // kotlin.jvm.functions.Function1
                                                        public final Object invoke(Object obj4) {
                                                            String str = ((SkuIdUiModel) obj4).f61764b;
                                                            str.getClass();
                                                            BeautyVtoViewModel beautyVtoViewModel5 = beautyVtoViewModel4;
                                                            beautyVtoViewModel5.ta(null, false);
                                                            beautyVtoViewModel5.y6(CollectionsKt.O(new SkuIdUiModel(str)));
                                                            return Unit.f71739a;
                                                        }
                                                    };
                                                    composer2.q(objX21);
                                                }
                                                Function1 function25 = (Function1) objX21;
                                                boolean zY5 = composer2.y(beautyVtoViewModel4) | composer2.K(mutableState3);
                                                Object objX22 = composer2.x();
                                                if (zY5 || objX22 == composer$Companion$Empty$2) {
                                                    objX22 = new k(beautyVtoViewModel4, mutableState3, 13);
                                                    composer2.q(objX22);
                                                }
                                                Function1 function26 = (Function1) objX22;
                                                boolean zY6 = composer2.y(context3) | composer2.K(mutableState3);
                                                Object objX23 = composer2.x();
                                                if (zY6 || objX23 == composer$Companion$Empty$2) {
                                                    objX23 = new l0(context3, mutableState3, 25);
                                                    composer2.q(objX23);
                                                }
                                                BeautyAddToCartBottomSheetContentKt.c(list, z14, function25, function26, (Function0) objX23, composer2, 0);
                                                composer2.F();
                                            }
                                        }
                                    }
                                    composer2.F();
                                } else {
                                    boolean z15 = beautyBottomSheet instanceof BeautyBottomSheet.BackInStock;
                                    PermissionsViewModel permissionsViewModel2 = permissionsViewModel;
                                    if (z15) {
                                        composer2.L(881824207);
                                        BeautyBottomSheet beautyBottomSheet3 = (BeautyBottomSheet) mutableState2.getF10755b();
                                        beautyBottomSheet3.getClass();
                                        BeautyAddToCartUiModel beautyAddToCartUiModel = ((BeautyBottomSheet.BackInStock) beautyBottomSheet3).f62131a;
                                        BeautyBottomSheet beautyBottomSheet4 = (BeautyBottomSheet) mutableState2.getF10755b();
                                        beautyBottomSheet4.getClass();
                                        boolean z16 = ((BeautyBottomSheet.BackInStock) beautyBottomSheet4).f62132b;
                                        String strC2 = StringResources_androidKt.c(composer2, R.string.multiple_add_to_cart_notify_me_button);
                                        String str = beautyAddToCartUiModel.f62125a;
                                        String str2 = beautyAddToCartUiModel.f62126b;
                                        String str3 = beautyAddToCartUiModel.f62127c;
                                        String str4 = beautyAddToCartUiModel.d;
                                        boolean zK3 = composer2.K(beautyAddToCartUiModel) | composer2.y(permissionsViewModel2);
                                        Object objX24 = composer2.x();
                                        if (zK3 || objX24 == composer$Companion$Empty$2) {
                                            objX24 = new he(beautyAddToCartUiModel, permissionsViewModel2, mutableState, 0);
                                            composer2.q(objX24);
                                        }
                                        BackInStockBottomSheetKt.a(null, strC2, str, str2, str4, str3, z16, (Function0) objX24, composer2, 0, 1);
                                        composer2.F();
                                    } else if (beautyBottomSheet instanceof BeautyBottomSheet.Permissions) {
                                        composer2.L(882884004);
                                        BeautyBottomSheet beautyBottomSheet5 = (BeautyBottomSheet) mutableState2.getF10755b();
                                        beautyBottomSheet5.getClass();
                                        PermissionsBottomSheet permissionsBottomSheet2 = ((BeautyBottomSheet.Permissions) beautyBottomSheet5).f62134a;
                                        String strA = StringResourceUiModelKt.a(permissionsBottomSheet2.f62363a, context3);
                                        String strA2 = StringResourceUiModelKt.a(permissionsBottomSheet2.f62364b, context3);
                                        String strA3 = StringResourceUiModelKt.a(permissionsBottomSheet2.d, context3);
                                        StringResourceUiModel.ResId resId = permissionsBottomSheet2.f62365c;
                                        String strA4 = resId != null ? StringResourceUiModelKt.a(resId, context3) : null;
                                        boolean zY7 = composer2.y(permissionsViewModel2) | composer2.y(permissionsBottomSheet2) | composer2.y(context3);
                                        Object objX25 = composer2.x();
                                        if (zY7 || objX25 == composer$Companion$Empty$2) {
                                            objX25 = new ie(permissionsViewModel2, permissionsBottomSheet2, context3, 0);
                                            composer2.q(objX25);
                                        }
                                        Function0 function27 = (Function0) objX25;
                                        boolean zY8 = composer2.y(context3);
                                        Object objX26 = composer2.x();
                                        if (zY8 || objX26 == composer$Companion$Empty$2) {
                                            objX26 = new je(context3, 0);
                                            composer2.q(objX26);
                                        }
                                        LVModalBottomSheetKt.a(null, null, strA, null, null, strA2, null, strA3, null, false, null, function27, null, false, null, null, strA4, false, (Function0) objX26, composer2, 0, 0, 391003);
                                        composer2 = composer2;
                                        composer2.F();
                                    } else if (beautyBottomSheet instanceof BeautyBottomSheet.Tutorial) {
                                        composer2.L(884365959);
                                        TutorialState tutorialState = ((BeautyVtoViewState) mutableState3.getF10755b()).v;
                                        boolean z17 = ((BeautyVtoViewState) mutableState3.getF10755b()).w;
                                        boolean z18 = ((BeautyVtoViewState) mutableState3.getF10755b()).x;
                                        final Function1 function28 = function9;
                                        boolean zK4 = composer2.K(function28) | composer2.y(beautyVtoViewModel4);
                                        Object objX27 = composer2.x();
                                        if (zK4 || objX27 == composer$Companion$Empty$2) {
                                            objX27 = new Function1<SkuIdUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoComposableKt$BeautyVtoComposable$16$1$10$1
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object invoke(Object obj4) {
                                                    String str5 = ((SkuIdUiModel) obj4).f61764b;
                                                    str5.getClass();
                                                    function28.invoke(new SkuIdUiModel(str5));
                                                    beautyVtoViewModel4.u9(str5);
                                                    return Unit.f71739a;
                                                }
                                            };
                                            composer2.q(objX27);
                                        }
                                        Function1 function29 = (Function1) objX27;
                                        boolean zY9 = composer2.y(beautyVtoViewModel4);
                                        Object objX28 = composer2.x();
                                        if (zY9 || objX28 == composer$Companion$Empty$2) {
                                            BeautyVtoComposableKt$BeautyVtoComposable$16$1$11$1 beautyVtoComposableKt$BeautyVtoComposable$16$1$11$1 = new BeautyVtoComposableKt$BeautyVtoComposable$16$1$11$1(0, beautyVtoViewModel4, BeautyVtoViewModel.class, "trackVtoHowToApplyScreen", "trackVtoHowToApplyScreen()V", 0);
                                            composer2.q(beautyVtoComposableKt$BeautyVtoComposable$16$1$11$1);
                                            objX28 = beautyVtoComposableKt$BeautyVtoComposable$16$1$11$1;
                                        }
                                        Function0 function30 = (Function0) ((KFunction) objX28);
                                        boolean zY10 = composer2.y(beautyVtoViewModel4);
                                        Object objX29 = composer2.x();
                                        if (zY10 || objX29 == composer$Companion$Empty$2) {
                                            BeautyVtoComposableKt$BeautyVtoComposable$16$1$12$1 beautyVtoComposableKt$BeautyVtoComposable$16$1$12$1 = new BeautyVtoComposableKt$BeautyVtoComposable$16$1$12$1(1, beautyVtoViewModel4, BeautyVtoViewModel.class, "trackVtoHowToApplyScroll", "trackVtoHowToApplyScroll(I)V", 0);
                                            composer2.q(beautyVtoComposableKt$BeautyVtoComposable$16$1$12$1);
                                            objX29 = beautyVtoComposableKt$BeautyVtoComposable$16$1$12$1;
                                        }
                                        Function1 function31 = (Function1) ((KFunction) objX29);
                                        boolean zY11 = composer2.y(beautyVtoViewModel4);
                                        Object objX30 = composer2.x();
                                        if (zY11 || objX30 == composer$Companion$Empty$2) {
                                            BeautyVtoComposableKt$BeautyVtoComposable$16$1$13$1 beautyVtoComposableKt$BeautyVtoComposable$16$1$13$1 = new BeautyVtoComposableKt$BeautyVtoComposable$16$1$13$1(0, beautyVtoViewModel4, BeautyVtoViewModel.class, "trackRecommendedSwipe", "trackRecommendedSwipe()V", 0);
                                            composer2.q(beautyVtoComposableKt$BeautyVtoComposable$16$1$13$1);
                                            objX30 = beautyVtoComposableKt$BeautyVtoComposable$16$1$13$1;
                                        }
                                        TutorialBottomSheetContentKt.a(tutorialState, f4, z17, z18, function29, function30, function31, (Function0) ((KFunction) objX30), composer2, 0);
                                        composer2.F();
                                    } else {
                                        composer2.L(885301508);
                                        composer2.F();
                                    }
                                }
                            }
                            composer2.r();
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }, gapComposer), gapComposer, (LVModalBottomSheetState.f48797e << 9) | 100663296, 225);
                gapComposer.Z(false);
            } else {
                gapComposer.L(557820696);
                gapComposer.Z(false);
            }
        } else {
            function10 = function7;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new le(beautyVtoViewModel, permissionsViewModel, function0, function1, function2, function3, function4, function5, function6, function10, function8, function9, i2);
        }
    }
}
