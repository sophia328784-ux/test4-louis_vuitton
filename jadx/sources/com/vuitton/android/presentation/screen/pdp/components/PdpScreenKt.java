package com.vuitton.android.presentation.screen.pdp.components;

import androidx.activity.compose.BackHandlerKt;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.material3.TopAppBarDefaults;
import androidx.compose.material3.TopAppBarScrollBehavior;
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
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVBottomRoundOverlayKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.chat.ChatContactUsUiModel;
import com.vuitton.android.presentation.contact.ContactUsTracker;
import com.vuitton.android.presentation.contact.ContactUsTrackerEntryPointKt;
import com.vuitton.android.presentation.contact.compose.ContactUsMethod;
import com.vuitton.android.presentation.contact.models.ContactUsUiModel;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionTooltipKt;
import com.vuitton.android.presentation.screen.pdp.PdpAddToCartCommonKt;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetType;
import com.vuitton.android.presentation.screen.pdp.components.PdpMainViewKt;
import com.vuitton.android.presentation.screen.pdp.components.PdpScreenKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpBottomAreaKt;
import com.vuitton.android.presentation.screen.pdp.models.PdpFeatureFlags;
import com.vuitton.android.presentation.screen.pdp.models.PdpViewState;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTracker;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.models.tracking.PdpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductAvailabilityUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyLegalConsentUiModel;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceTracker;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a3;
import defpackage.ae0;
import defpackage.dm0;
import defpackage.gi0;
import defpackage.gk;
import defpackage.il;
import defpackage.jm0;
import defpackage.nu;
import defpackage.of0;
import defpackage.sm0;
import defpackage.xg0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KFunction;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.coroutines.flow.Flow;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0002²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/geometry/Rect;", "aiButtonBounds", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpScreenKt {
    public static final void a(final PdpViewState pdpViewState, final ContactUsUiModel contactUsUiModel, final PermissionsUiModel permissionsUiModel, final ReinsuranceUiModel reinsuranceUiModel, final boolean z, final SnackbarHostState snackbarHostState, final PdpBottomSheetType pdpBottomSheetType, final LVModalBottomSheetState lVModalBottomSheetState, final Flow flow, final ImmutableList immutableList, final ImmutableList immutableList2, final Function0 function0, final Function1 function1, final Function0 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function0 function6, final Function0 function7, final Function0 function8, final Function0 function9, final Function1 function10, final Function0 function11, Function0 function12, final Function0 function13, final Function0 function14, final Function0 function15, final Function0 function16, Function0 function17, final Function0 function18, final Function0 function19, final Function0 function20, final Function0 function21, final Function0 function22, final Function0 function23, final Function0 function24, final Function1 function25, final Function0 function26, final Function1 function27, final Function1 function28, final Function1 function29, final Function1 function30, final Function0 function31, final Function1 function32, final Function2 function33, final Function1 function34, final Function2 function35, final Function1 function36, final Function1 function37, final Function3 function38, final Function1 function39, final Flow flow2, final Function0 function40, Composer composer, final int i2, final int i3, final int i4, final int i5, final int i6, final int i7) {
        int i8;
        int i9;
        int i10;
        int i11;
        Function0 function41;
        Function0 function42;
        PdpViewState pdpViewState2;
        GapComposer gapComposer;
        PdpFeatureFlags pdpFeatureFlags;
        Function1 function43;
        boolean z2;
        pdpViewState.getClass();
        PdpFeatureFlags pdpFeatureFlags2 = pdpViewState.f61571i;
        boolean z3 = pdpViewState.m;
        contactUsUiModel.getClass();
        permissionsUiModel.getClass();
        snackbarHostState.getClass();
        lVModalBottomSheetState.getClass();
        flow.getClass();
        immutableList2.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        defpackage.a.D(function4, function5, function6, function7, function8);
        function9.getClass();
        function10.getClass();
        function11.getClass();
        function12.getClass();
        function13.getClass();
        defpackage.a.D(function14, function15, function16, function17, function18);
        defpackage.a.D(function19, function20, function21, function22, function23);
        function24.getClass();
        function25.getClass();
        function26.getClass();
        function27.getClass();
        function28.getClass();
        function29.getClass();
        function30.getClass();
        function31.getClass();
        function32.getClass();
        function33.getClass();
        function34.getClass();
        function35.getClass();
        function36.getClass();
        function37.getClass();
        function38.getClass();
        function39.getClass();
        flow2.getClass();
        function40.getClass();
        GapComposer gapComposerH = composer.h(1033026024);
        if ((i2 & 6) == 0) {
            i8 = (gapComposerH.y(pdpViewState) ? 4 : 2) | i2;
        } else {
            i8 = i2;
        }
        int i12 = i8;
        if ((i2 & 48) == 0) {
            i9 = i12 | ((i2 & 64) == 0 ? gapComposerH.K(contactUsUiModel) : gapComposerH.y(contactUsUiModel) ? 32 : 16);
        } else {
            i9 = i12;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i9 |= gapComposerH.y(permissionsUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i9 |= gapComposerH.y(reinsuranceUiModel) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i9 |= gapComposerH.b(z) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i9 |= gapComposerH.K(snackbarHostState) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i9 |= (i2 & PKIFailureInfo.badSenderNonce) == 0 ? gapComposerH.K(pdpBottomSheetType) : gapComposerH.y(pdpBottomSheetType) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i9 |= (i2 & 16777216) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i9 |= gapComposerH.y(flow) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i9 |= gapComposerH.y(immutableList) ? 536870912 : 268435456;
        }
        int i13 = i3 | (gapComposerH.K(immutableList2) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16);
        if ((i3 & 3072) == 0) {
            i13 |= gapComposerH.y(function2) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i13 |= gapComposerH.y(function3) ? 16384 : 8192;
        }
        int i14 = i13 | (gapComposerH.y(function4) ? 131072 : 65536);
        if ((i3 & 1572864) == 0) {
            i14 |= gapComposerH.y(function5) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i14 |= gapComposerH.y(function6) ? 8388608 : 4194304;
        }
        int i15 = i14 | (gapComposerH.y(function7) ? 67108864 : 33554432) | (gapComposerH.y(function8) ? 536870912 : 268435456);
        int i16 = i4 | (gapComposerH.y(function9) ? 4 : 2) | (gapComposerH.y(function10) ? 32 : 16) | (gapComposerH.y(function11) ? 256 : 128) | (gapComposerH.y(function12) ? 2048 : 1024);
        if ((i4 & 24576) == 0) {
            i16 |= gapComposerH.y(function13) ? 16384 : 8192;
        }
        if ((i4 & ImageMetadata.EDGE_MODE) == 0) {
            i16 |= gapComposerH.y(function14) ? 131072 : 65536;
        }
        if ((i4 & 1572864) == 0) {
            i16 |= gapComposerH.y(function15) ? 1048576 : 524288;
        }
        if ((i4 & 12582912) == 0) {
            i16 |= gapComposerH.y(function16) ? 8388608 : 4194304;
        }
        if ((i4 & 100663296) == 0) {
            i16 |= gapComposerH.y(function17) ? 67108864 : 33554432;
        }
        int i17 = i16 | (gapComposerH.y(function18) ? 536870912 : 268435456);
        int i18 = i5 | (gapComposerH.y(function19) ? 4 : 2);
        if ((i5 & 48) == 0) {
            i18 |= gapComposerH.y(function20) ? 32 : 16;
        }
        if ((i5 & KyberEngine.KyberPolyBytes) == 0) {
            i18 |= gapComposerH.y(function21) ? 256 : 128;
        }
        int i19 = i18 | (gapComposerH.y(function22) ? 2048 : 1024);
        if ((i5 & 24576) == 0) {
            i19 |= gapComposerH.y(function23) ? 16384 : 8192;
        }
        int i20 = i19 | (gapComposerH.y(function24) ? 131072 : 65536);
        if ((i5 & 1572864) == 0) {
            i20 |= gapComposerH.y(function25) ? 1048576 : 524288;
        }
        int i21 = i20 | (gapComposerH.y(function26) ? 8388608 : 4194304);
        if ((i5 & 100663296) == 0) {
            i21 |= gapComposerH.y(function27) ? 67108864 : 33554432;
        }
        if ((i5 & 805306368) == 0) {
            i21 |= gapComposerH.y(function28) ? 536870912 : 268435456;
        }
        int i22 = i21;
        if ((i6 & 6) == 0) {
            i10 = i6 | (gapComposerH.y(function29) ? 4 : 2);
        } else {
            i10 = i6;
        }
        if ((i6 & 48) == 0) {
            i10 |= gapComposerH.y(function30) ? 32 : 16;
        }
        if ((i6 & KyberEngine.KyberPolyBytes) == 0) {
            i10 |= gapComposerH.y(function31) ? 256 : 128;
        }
        if ((i6 & 3072) == 0) {
            i10 |= gapComposerH.y(function32) ? 2048 : 1024;
        }
        if ((i6 & 24576) == 0) {
            i10 |= gapComposerH.y(function33) ? 16384 : 8192;
        }
        if ((i6 & ImageMetadata.EDGE_MODE) == 0) {
            i10 |= gapComposerH.y(function34) ? 131072 : 65536;
        }
        if ((i6 & 1572864) == 0) {
            i10 |= gapComposerH.y(function35) ? 1048576 : 524288;
        }
        if ((i6 & 12582912) == 0) {
            i10 |= gapComposerH.y(function36) ? 8388608 : 4194304;
        }
        if ((i6 & 100663296) == 0) {
            i10 |= gapComposerH.y(function37) ? 67108864 : 33554432;
        }
        if ((i6 & 805306368) == 0) {
            i10 |= gapComposerH.y(function38) ? 536870912 : 268435456;
        }
        if ((i7 & 6) == 0) {
            i11 = i7 | (gapComposerH.y(function39) ? 4 : 2);
        } else {
            i11 = i7;
        }
        if ((i7 & 48) == 0) {
            i11 |= gapComposerH.y(flow2) ? 32 : 16;
        }
        if ((i7 & KyberEngine.KyberPolyBytes) == 0) {
            i11 |= gapComposerH.y(function40) ? 256 : 128;
        }
        if (gapComposerH.p(i9 & 1, ((i9 & 306783379) == 306783378 && (i15 & 306783379) == 306783378 && (i17 & 306783379) == 306783378 && (i22 & 306783379) == 306783378 && (i10 & 306783379) == 306783378 && (i11 & 147) == 146) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final PdpTracker pdpTracker = (PdpTracker) gapComposerH.k(PdpTrackerEntryPointKt.f61588a);
            final ContactUsTracker contactUsTracker = (ContactUsTracker) gapComposerH.k(ContactUsTrackerEntryPointKt.f51125a);
            final ReinsuranceTracker reinsuranceTracker = (ReinsuranceTracker) gapComposerH.k(ReinsuranceTrackerEntryPointKt.f63416a);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                pdpFeatureFlags = pdpFeatureFlags2;
                objX = Boolean.valueOf(pdpFeatureFlags.f61555b && (!z3 || pdpViewState.v == null));
                gapComposerH.q(objX);
            } else {
                pdpFeatureFlags = pdpFeatureFlags2;
            }
            final boolean zBooleanValue = ((Boolean) objX).booleanValue();
            final TopAppBarScrollBehavior topAppBarScrollBehaviorA = TopAppBarDefaults.a(gapComposerH);
            boolean z4 = (pdpViewState.f61569f || z3) ? false : true;
            ProductUiModel productUiModel = pdpViewState.f61566b;
            PdpFeatureFlags pdpFeatureFlags3 = pdpFeatureFlags;
            String str = productUiModel != null ? productUiModel.f61736c : null;
            if (str == null) {
                str = "";
            }
            PermissionsBottomSheet permissionsBottomSheet = permissionsUiModel.f62372a;
            boolean zY = gapComposerH.y(permissionsUiModel);
            Object objX2 = gapComposerH.x();
            if (zY || objX2 == composer$Companion$Empty$1) {
                function43 = function1;
                objX2 = new PdpScreenKt$PdpScreen$1$1(permissionsUiModel, function43, null);
                gapComposerH.q(objX2);
            } else {
                function43 = function1;
            }
            EffectsKt.e(gapComposerH, permissionsBottomSheet, (Function2) objX2);
            Unit unit = Unit.f71739a;
            boolean zY2 = gapComposerH.y(flow);
            Object objX3 = gapComposerH.x();
            if (zY2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new PdpScreenKt$PdpScreen$2$1(flow, function43, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            boolean zY3 = ((i22 & 7168) == 2048) | ((i15 & 112) == 32) | gapComposerH.y(flow2);
            Object objX4 = gapComposerH.x();
            if (zY3 || objX4 == composer$Companion$Empty$1) {
                objX4 = new PdpScreenKt$PdpScreen$3$1(flow2, function0, function22, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX4);
            BackHandlerKt.a(false, function4, gapComposerH, (i15 >> 12) & 112, 1);
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = SnapshotStateKt.g(null);
                gapComposerH.q(objX5);
            }
            final MutableState mutableState = (MutableState) objX5;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PdpScreen");
            FillElement fillElement = SizeKt.f5052c;
            Modifier modifierO = dTFunctionNameModifier.o(fillElement);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function44 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function44);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Modifier modifierA = NestedScrollModifierKt.a(new DTFunctionNameModifier("PdpScreen").o(fillElement), topAppBarScrollBehaviorA.getF6907e(), null);
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1451577890, new gk(str, pdpViewState, function4, topAppBarScrollBehaviorA, contactUsUiModel, contactUsTracker, function43, function27, pdpTracker, function5, function9), gapComposerH);
            final boolean z5 = z4;
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-1970527619, new Function2() { // from class: rm0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Integer) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        boolean z6 = ((SnapshotMutableFloatStateImpl) topAppBarScrollBehaviorA.getF6904a().f7440b).a() < Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        final PdpViewState pdpViewState3 = pdpViewState;
                        boolean z7 = pdpViewState3.f61568e;
                        boolean z8 = pdpViewState3.A;
                        boolean z9 = pdpViewState3.f61571i.n;
                        boolean z10 = pdpViewState3.B;
                        final ContactUsUiModel contactUsUiModel2 = contactUsUiModel;
                        boolean z11 = contactUsUiModel2.f51154a;
                        ProductAvailabilityUiModel productAvailabilityUiModel = pdpViewState3.l;
                        boolean zY4 = composer2.y(pdpViewState3);
                        final Function0 function45 = function11;
                        boolean zK = zY4 | composer2.K(function45);
                        final PdpTracker pdpTracker2 = pdpTracker;
                        boolean zY5 = zK | composer2.y(pdpTracker2);
                        final Function1 function46 = function1;
                        boolean zK2 = zY5 | composer2.K(function46);
                        final Function0 function47 = function31;
                        boolean zK3 = zK2 | composer2.K(function47);
                        boolean z12 = z6;
                        final Function1 function48 = function30;
                        boolean zK4 = zK3 | composer2.K(function48);
                        final Function0 function49 = function7;
                        boolean zK5 = zK4 | composer2.K(function49) | composer2.y(contactUsUiModel2);
                        final Function1 function50 = function27;
                        boolean zK6 = zK5 | composer2.K(function50);
                        final ContactUsTracker contactUsTracker2 = contactUsTracker;
                        boolean zY6 = zK6 | composer2.y(contactUsTracker2);
                        Object objX6 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zY6 || objX6 == composer$Companion$Empty$2) {
                            Function0 function51 = new Function0() { // from class: vm0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    PdpViewState pdpViewState4 = pdpViewState3;
                                    ProductUiModel productUiModel2 = pdpViewState4.f61566b;
                                    if (productUiModel2 != null) {
                                        ProductAvailabilityUiModel productAvailabilityUiModel2 = pdpViewState4.l;
                                        ContactUsUiModel contactUsUiModel3 = contactUsUiModel2;
                                        boolean z13 = contactUsUiModel3.f51154a;
                                        Function0 function52 = function45;
                                        function52.getClass();
                                        Function0 function53 = function49;
                                        function53.getClass();
                                        int i23 = productAvailabilityUiModel2 == null ? -1 : PdpAddToCartCommonKt.WhenMappings.f61090a[productAvailabilityUiModel2.ordinal()];
                                        PdpBottomSheetType.ContactUs contactUs = PdpBottomSheetType.ContactUs.f61374a;
                                        ChatContactUsUiModel.Available available = ChatContactUsUiModel.Available.f50674a;
                                        ContactUsMethod.Chat chat = ContactUsMethod.Chat.f51131a;
                                        PdpTracker pdpTracker3 = pdpTracker2;
                                        Function1 function54 = function46;
                                        Function0 function55 = function47;
                                        Function1 function56 = function50;
                                        ContactUsTracker contactUsTracker3 = contactUsTracker2;
                                        switch (i23) {
                                            case 1:
                                                function52.mo47invoke();
                                                break;
                                            case 2:
                                                pdpTracker3.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.NotifyMeOnProductPageEvent.f61594a, pdpTracker3.f61586b, pdpTracker3.f61587c, pdpTracker3.d));
                                                function54.invoke(new PdpBottomSheetType.BackInStock(pdpViewState4.f61571i.l));
                                                break;
                                            case 3:
                                                if (!z13) {
                                                    pdpTracker3.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnCallForAvailabilityEvent.f61602a, pdpTracker3.f61586b, pdpTracker3.f61587c, pdpTracker3.d));
                                                    function55.mo47invoke();
                                                } else if (!contactUsUiModel3.f51160i) {
                                                    contactUsTracker3.c(Intrinsics.c(contactUsUiModel3.f51159h, available));
                                                    function54.invoke(contactUs);
                                                } else {
                                                    function56.invoke(chat);
                                                }
                                                break;
                                            case 4:
                                                if (!z13) {
                                                    pdpTracker3.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnDisplayNotECommerceInfoEvent.f61617a, pdpTracker3.f61586b, pdpTracker3.f61587c, pdpTracker3.d));
                                                    function55.mo47invoke();
                                                } else if (!contactUsUiModel3.f51160i) {
                                                    contactUsTracker3.c(Intrinsics.c(contactUsUiModel3.f51159h, available));
                                                    function54.invoke(contactUs);
                                                } else {
                                                    function56.invoke(chat);
                                                }
                                                break;
                                            case 5:
                                                pdpTracker3.f61585a.a(PdpTrackingUiModelKt.a(PdpTrackingUiModel.OnGoToWebsiteProductPageEvent.f61627a, pdpTracker3.f61586b, pdpTracker3.f61587c, pdpTracker3.d));
                                                function48.invoke(productUiModel2);
                                                break;
                                            case 6:
                                                function53.mo47invoke();
                                                break;
                                        }
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(function51);
                            objX6 = function51;
                        }
                        Function0 function52 = (Function0) objX6;
                        Object objX7 = composer2.x();
                        if (objX7 == composer$Companion$Empty$2) {
                            objX7 = new c30(25, mutableState);
                            composer2.q(objX7);
                        }
                        PdpBottomAreaKt.a(null, z5, z12, z7, z8, z9, z10, z11, productAvailabilityUiModel, function52, function15, (Function1) objX7, composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(1805489948, new ae0(snackbarHostState, 22), gapComposerH);
            Function3 function45 = new Function3() { // from class: tm0
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    final PdpViewState pdpViewState3;
                    final Function1 function46;
                    Function2 function47;
                    Function2 function48;
                    Composer$Companion$Empty$1 composer$Companion$Empty$2;
                    Function2 function49;
                    PaddingValues paddingValues = (PaddingValues) obj;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    paddingValues.getClass();
                    if ((iIntValue & 6) == 0) {
                        iIntValue |= composer2.K(paddingValues) ? 4 : 2;
                    }
                    if (composer2.p(iIntValue & 1, (iIntValue & 19) != 18)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Modifier modifierH = PaddingKt.h(new DTFunctionNameModifier("PdpScreen$lambda$7$3").o(SizeKt.f5052c), paddingValues);
                        Alignment.f8582a.getClass();
                        BiasAlignment biasAlignment = Alignment.Companion.f8584b;
                        MeasurePolicy measurePolicyD2 = BoxKt.d(biasAlignment, false);
                        int iHashCode2 = Long.hashCode(composer2.getT());
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierH);
                        ComposeUiNode.b0.getClass();
                        Function0 function50 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function50);
                        } else {
                            composer2.o();
                        }
                        Function2 function51 = ComposeUiNode.Companion.f9644f;
                        Updater.c(composer2, measurePolicyD2, function51);
                        Function2 function52 = ComposeUiNode.Companion.f9643e;
                        Updater.c(composer2, persistentCompositionLocalMapN, function52);
                        Integer numValueOf = Integer.valueOf(iHashCode2);
                        Function2 function53 = ComposeUiNode.Companion.g;
                        Updater.c(composer2, numValueOf, function53);
                        Function1 function54 = ComposeUiNode.Companion.f9645h;
                        Updater.b(composer2, function54);
                        Function2 function55 = ComposeUiNode.Companion.d;
                        Updater.c(composer2, modifierC2, function55);
                        String str2 = "PdpScreen$lambda$7$3";
                        PdpViewState pdpViewState4 = pdpViewState;
                        ProductUiModel productUiModel2 = pdpViewState4.f61566b;
                        final PdpTracker pdpTracker2 = pdpTracker;
                        final Function1 function56 = function10;
                        final Function1 function57 = function1;
                        Function1 function58 = function28;
                        Function2 function59 = function33;
                        Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                        if (productUiModel2 == null) {
                            composer2.L(-1477977909);
                            composer2.F();
                            pdpViewState3 = pdpViewState4;
                            composer$Companion$Empty$2 = composer$Companion$Empty$3;
                            function47 = function52;
                            function59 = function59;
                            function46 = function58;
                            function48 = function53;
                            function49 = function51;
                        } else {
                            composer2.L(-1477977908);
                            boolean zY4 = composer2.y(pdpTracker2);
                            Function0 function60 = function2;
                            boolean zK = zY4 | composer2.K(function60);
                            Object objX6 = composer2.x();
                            if (zK || objX6 == composer$Companion$Empty$3) {
                                objX6 = new dm0(pdpTracker2, function60, 4);
                                composer2.q(objX6);
                            }
                            Function0 function61 = (Function0) objX6;
                            boolean zY5 = composer2.y(pdpViewState4) | composer2.y(pdpTracker2) | composer2.K(function57);
                            Object objX7 = composer2.x();
                            if (zY5 || objX7 == composer$Companion$Empty$3) {
                                objX7 = new of0(pdpViewState4, pdpTracker2, function57, 27);
                                composer2.q(objX7);
                            }
                            Function0 function62 = (Function0) objX7;
                            boolean zY6 = composer2.y(pdpTracker2);
                            Function0 function63 = function40;
                            boolean zK2 = zY6 | composer2.K(function63) | composer2.K(function57);
                            pdpViewState3 = pdpViewState4;
                            Object objX8 = composer2.x();
                            if (zK2 || objX8 == composer$Companion$Empty$3) {
                                objX8 = new of0(pdpTracker2, function63, function57, 28);
                                composer2.q(objX8);
                            }
                            Function0 function64 = (Function0) objX8;
                            boolean zY7 = composer2.y(pdpTracker2) | composer2.y(productUiModel2);
                            Function0 function65 = function20;
                            boolean zK3 = zY7 | composer2.K(function65);
                            Object objX9 = composer2.x();
                            if (zK3 || objX9 == composer$Companion$Empty$3) {
                                objX9 = new mm0(pdpTracker2, productUiModel2, function65, 1);
                                composer2.q(objX9);
                            }
                            Function0 function66 = (Function0) objX9;
                            boolean zK4 = composer2.K(function57);
                            ReinsuranceTracker reinsuranceTracker2 = reinsuranceTracker;
                            boolean zY8 = zK4 | composer2.y(reinsuranceTracker2);
                            Object objX10 = composer2.x();
                            if (zY8 || objX10 == composer$Companion$Empty$3) {
                                objX10 = new xg0(function57, reinsuranceTracker2, 16);
                                composer2.q(objX10);
                            }
                            Function1 function67 = (Function1) objX10;
                            boolean zK5 = composer2.K(function57);
                            Object objX11 = composer2.x();
                            if (zK5 || objX11 == composer$Companion$Empty$3) {
                                objX11 = new k0(function57, 26);
                                composer2.q(objX11);
                            }
                            Function1 function68 = (Function1) objX11;
                            boolean zK6 = composer2.K(function57);
                            Object objX12 = composer2.x();
                            if (zK6 || objX12 == composer$Companion$Empty$3) {
                                objX12 = new k0(function57, 27);
                                composer2.q(objX12);
                            }
                            Function1 function69 = (Function1) objX12;
                            boolean zY9 = composer2.y(pdpTracker2) | composer2.K(function57);
                            Object objX13 = composer2.x();
                            if (zY9 || objX13 == composer$Companion$Empty$3) {
                                objX13 = new xg0(pdpTracker2, function57, 17);
                                composer2.q(objX13);
                            }
                            Function1 function70 = (Function1) objX13;
                            boolean zY10 = composer2.y(pdpTracker2) | composer2.K(function57);
                            Object objX14 = composer2.x();
                            if (zY10 || objX14 == composer$Companion$Empty$3) {
                                objX14 = new rg(pdpTracker2, function57, zBooleanValue, 10);
                                composer2.q(objX14);
                            }
                            Function2 function71 = (Function2) objX14;
                            boolean zY11 = composer2.y(pdpTracker2) | composer2.K(function57);
                            Object objX15 = composer2.x();
                            if (zY11 || objX15 == composer$Companion$Empty$3) {
                                objX15 = new wd0((Object) pdpTracker2, function57, 23);
                                composer2.q(objX15);
                            }
                            function46 = function58;
                            function47 = function52;
                            function48 = function53;
                            composer$Companion$Empty$2 = composer$Companion$Empty$3;
                            function49 = function51;
                            str2 = str2;
                            PdpMainViewKt.a(null, pdpViewState3, productUiModel2, reinsuranceUiModel, immutableList, immutableList2, function61, function6, function56, function62, function13, function64, function15, function16, function66, function21, function67, function68, function29, function69, function46, function59, function34, function70, function71, function38, (Function2) objX15, composer2, 0);
                            composer2 = composer2;
                            composer2.F();
                        }
                        if (z5) {
                            DTFunctionNameModifier dTFunctionNameModifierJ = pq0.j(-1473573955, composer2, str2);
                            BiasAlignment biasAlignment2 = Alignment.Companion.f8589i;
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.f4938a;
                            Modifier modifierD = SizeKt.d(boxScopeInstance.g(dTFunctionNameModifierJ, biasAlignment2), 1.0f);
                            Dp.Companion companion = Dp.f11004c;
                            BoxKt.a(ModifierExtKt.e(LVAppDesignKitTheme.d(composer2).m, LVAppDesignKitTheme.d(composer2).m, LVAppDesignKitTheme.d(composer2).m, 2, Color.b(0.06f, LVAppDesignKitTheme.c(composer2).f48361b.u), SizeKt.f(modifierD, 16.0f)), composer2, 0);
                            Modifier modifierG = boxScopeInstance.g(new DTFunctionNameModifier(str2), biasAlignment2);
                            MeasurePolicy measurePolicyD3 = BoxKt.d(biasAlignment, false);
                            int iHashCode3 = Long.hashCode(composer2.getT());
                            PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                            Modifier modifierC3 = ComposedModifierKt.c(composer2, modifierG);
                            if (composer2.getF7976a() == null) {
                                ComposablesKt.b();
                                throw null;
                            }
                            composer2.B();
                            if (composer2.getS()) {
                                composer2.C(function50);
                            } else {
                                composer2.o();
                            }
                            Updater.c(composer2, measurePolicyD3, function49);
                            Updater.c(composer2, persistentCompositionLocalMapN2, function47);
                            cj.s(iHashCode3, composer2, function48, composer2, function54);
                            Updater.c(composer2, modifierC3, function55);
                            LVBottomRoundOverlayKt.a(0, 1, LVAppDesignKitTheme.c(composer2).f48361b.f48374a, composer2, null);
                            composer2.r();
                            composer2.F();
                        } else {
                            composer2.L(-1472670615);
                            composer2.F();
                        }
                        composer2.r();
                        final PdpBottomSheetType pdpBottomSheetType2 = pdpBottomSheetType;
                        if (pdpBottomSheetType2 != null) {
                            composer2.L(-1030492857);
                            Modifier modifierD2 = WindowInsetsPadding_androidKt.d(new DTFunctionNameModifier(str2));
                            String strC = StringResources_androidKt.c(composer2, R.string.alt_close);
                            final Function0 function72 = function0;
                            boolean zK7 = composer2.K(function72) | composer2.y(pdpBottomSheetType2);
                            Function1 function73 = function36;
                            boolean zK8 = zK7 | composer2.K(function73);
                            Object objX16 = composer2.x();
                            if (zK8 || objX16 == composer$Companion$Empty$2) {
                                objX16 = new sm0(1, pdpBottomSheetType2, function73, function72);
                                composer2.q(objX16);
                            }
                            final ContactUsUiModel contactUsUiModel2 = contactUsUiModel;
                            final Function0 function74 = function8;
                            final Function0 function75 = function3;
                            final Function0 function76 = function18;
                            final Function0 function77 = function19;
                            final Function0 function78 = function14;
                            final Function0 function79 = function23;
                            final Function0 function80 = function24;
                            final Function1 function81 = function25;
                            final ContactUsTracker contactUsTracker2 = contactUsTracker;
                            final Function0 function82 = function26;
                            final Function1 function83 = function27;
                            final Function1 function84 = function32;
                            final Function2 function85 = function35;
                            final Function1 function86 = function37;
                            final Function1 function87 = function39;
                            final Function2 function88 = function59;
                            LVModalBottomSheetKt.b(modifierD2, strC, (Function0) objX16, lVModalBottomSheetState, null, 0L, false, null, ComposableLambdaKt.b(2090718212, new Function3() { // from class: com.vuitton.android.presentation.screen.pdp.components.a
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj4, Object obj5, Object obj6) {
                                    Composer$Companion$Empty$1 composer$Companion$Empty$4;
                                    Composer composer3 = (Composer) obj5;
                                    int iIntValue2 = ((Integer) obj6).intValue();
                                    ((ColumnScope) obj4).getClass();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                        PdpViewState pdpViewState5 = pdpViewState3;
                                        InAppDispatch inAppDispatch = pdpViewState5.f61565a;
                                        ProductUiModel productUiModel3 = pdpViewState5.f61566b;
                                        PdpFeatureFlags pdpFeatureFlags4 = pdpViewState5.f61571i;
                                        boolean z6 = pdpFeatureFlags4.g;
                                        boolean z7 = pdpFeatureFlags4.f61558f;
                                        boolean z8 = productUiModel3 != null && productUiModel3.N;
                                        String str3 = pdpViewState5.f61572j.f61549a;
                                        BeautyLegalConsentUiModel beautyLegalConsentUiModel = pdpViewState5.y;
                                        PdpTracker pdpTracker3 = pdpTracker2;
                                        boolean zY12 = composer3.y(pdpTracker3);
                                        Object objX17 = composer3.x();
                                        Composer$Companion$Empty$1 composer$Companion$Empty$5 = Composer.Companion.f7939a;
                                        if (zY12 || objX17 == composer$Companion$Empty$5) {
                                            composer$Companion$Empty$4 = composer$Companion$Empty$5;
                                            PdpScreenKt$PdpScreen$4$4$3$1$1 pdpScreenKt$PdpScreen$4$4$3$1$1 = new PdpScreenKt$PdpScreen$4$4$3$1$1(1, pdpTracker3, PdpTracker.class, "trackCrossSellProductSwipe", "trackCrossSellProductSwipe(I)V", 0);
                                            composer3.q(pdpScreenKt$PdpScreen$4$4$3$1$1);
                                            objX17 = pdpScreenKt$PdpScreen$4$4$3$1$1;
                                        } else {
                                            composer$Companion$Empty$4 = composer$Companion$Empty$5;
                                        }
                                        KFunction kFunction = (KFunction) objX17;
                                        Function0 function89 = function72;
                                        boolean zK9 = composer3.K(function89) | composer3.y(pdpTracker3);
                                        Function0 function90 = function74;
                                        boolean zK10 = zK9 | composer3.K(function90);
                                        Object objX18 = composer3.x();
                                        if (zK10 || objX18 == composer$Companion$Empty$4) {
                                            objX18 = new of0(function89, pdpTracker3, function90, 29);
                                            composer3.q(objX18);
                                        }
                                        Function0 function91 = (Function0) objX18;
                                        boolean zY13 = composer3.y(pdpTracker3);
                                        Function0 function92 = function75;
                                        boolean zK11 = zY13 | composer3.K(function92);
                                        Object objX19 = composer3.x();
                                        if (zK11 || objX19 == composer$Companion$Empty$4) {
                                            objX19 = new dm0(pdpTracker3, function92, 1);
                                            composer3.q(objX19);
                                        }
                                        Function0 function93 = (Function0) objX19;
                                        boolean zK12 = composer3.K(function89);
                                        Function0 function94 = function76;
                                        boolean zK13 = zK12 | composer3.K(function94);
                                        Object objX20 = composer3.x();
                                        if (zK13 || objX20 == composer$Companion$Empty$4) {
                                            objX20 = new il(function89, function94, 9);
                                            composer3.q(objX20);
                                        }
                                        Function0 function95 = (Function0) objX20;
                                        boolean zY14 = composer3.y(pdpViewState5) | composer3.y(pdpTracker3);
                                        Function0 function96 = function78;
                                        boolean zK14 = zY14 | composer3.K(function96);
                                        Object objX21 = composer3.x();
                                        if (zK14 || objX21 == composer$Companion$Empty$4) {
                                            objX21 = new sm0(pdpViewState5, function96, pdpTracker3, 0);
                                            composer3.q(objX21);
                                        }
                                        Function0 function97 = (Function0) objX21;
                                        Function0 function98 = function80;
                                        boolean zK15 = composer3.K(function98) | composer3.K(function89);
                                        Object objX22 = composer3.x();
                                        if (zK15 || objX22 == composer$Companion$Empty$4) {
                                            objX22 = new il(function98, function89, 10);
                                            composer3.q(objX22);
                                        }
                                        Function0 function99 = (Function0) objX22;
                                        ContactUsTracker contactUsTracker3 = contactUsTracker2;
                                        boolean zY15 = composer3.y(contactUsTracker3);
                                        Function1 function100 = function57;
                                        boolean zK16 = zY15 | composer3.K(function100);
                                        Object objX23 = composer3.x();
                                        if (zK16 || objX23 == composer$Companion$Empty$4) {
                                            objX23 = new jm0(contactUsTracker3, function100, 4);
                                            composer3.q(objX23);
                                        }
                                        Function0 function101 = (Function0) objX23;
                                        Function2 function102 = function88;
                                        boolean zK17 = composer3.K(function102) | composer3.K(function89);
                                        Object objX24 = composer3.x();
                                        if (zK17 || objX24 == composer$Companion$Empty$4) {
                                            objX24 = new xg0(function102, function89, 18);
                                            composer3.q(objX24);
                                        }
                                        Function1 function103 = (Function1) objX24;
                                        Function1 function104 = (Function1) kFunction;
                                        boolean zY16 = composer3.y(pdpTracker3) | composer3.K(function89);
                                        Function1 function105 = function46;
                                        boolean zK18 = zY16 | composer3.K(function105);
                                        Object objX25 = composer3.x();
                                        if (zK18 || objX25 == composer$Companion$Empty$4) {
                                            objX25 = new gi0(pdpTracker3, function89, function105, 11);
                                            composer3.q(objX25);
                                        }
                                        Function2 function106 = (Function2) objX25;
                                        Function2 function107 = function85;
                                        boolean zK19 = composer3.K(function107) | composer3.K(function89);
                                        Object objX26 = composer3.x();
                                        if (zK19 || objX26 == composer$Companion$Empty$4) {
                                            objX26 = new nu(function107, function89);
                                            composer3.q(objX26);
                                        }
                                        PdpBottomSheetContentKt.a(productUiModel3, z6, inAppDispatch, contactUsUiModel2, str3, pdpBottomSheetType2, z8, z7, beautyLegalConsentUiModel, function89, function91, function93, function56, function95, function77, function97, function79, function99, function81, function101, function82, function83, function103, function104, function84, function106, (Function2) objX26, function86, function87, composer3, 0);
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2), composer2, (LVModalBottomSheetState.f48797e << 9) | 100663296, 240);
                            composer2.F();
                        } else {
                            composer2.L(-1026135249);
                            composer2.F();
                        }
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            };
            pdpViewState2 = pdpViewState;
            gapComposer = gapComposerH;
            ScaffoldKt.a(modifierA, composableLambdaImplB, composableLambdaImplB2, composableLambdaImplB3, null, 0, 0L, 0L, null, ComposableLambdaKt.b(1358767091, function45, gapComposer), gapComposer, 805309872, 496);
            function42 = function17;
            AnimatedVisibilityKt.e(!z && z3, null, EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3), EnterExitTransitionKt.h(null, 3), null, ComposableLambdaKt.b(-78114230, new a3(function42, 23), gapComposer), gapComposer, 200064, 18);
            if (pdpViewState2.B || !pdpFeatureFlags3.n) {
                function41 = function12;
                gapComposer.L(233410272);
                gapComposer.Z(false);
            } else {
                gapComposer.L(-1655046754);
                Rect rect = (Rect) mutableState.getF10755b();
                if (rect == null) {
                    gapComposer.L(233158179);
                    z2 = false;
                    gapComposer.Z(false);
                    function41 = function12;
                } else {
                    z2 = false;
                    gapComposer.L(233158180);
                    function41 = function12;
                    AICompanionTooltipKt.a(rect, function41, function41, gapComposer, ((i17 >> 6) & 112) | ((i17 >> 3) & 896));
                    gapComposer.Z(false);
                }
                gapComposer.Z(z2);
            }
            gapComposer.Z(true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            function41 = function12;
            function42 = function17;
            pdpViewState2 = pdpViewState;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Function0 function46 = function41;
            final PdpViewState pdpViewState3 = pdpViewState2;
            final Function0 function47 = function42;
            recomposeScopeImplB0.d = new Function2() { // from class: um0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    int iA3 = RecomposeScopeImplKt.a(i4);
                    int iA4 = RecomposeScopeImplKt.a(i5);
                    int iA5 = RecomposeScopeImplKt.a(i6);
                    int iA6 = RecomposeScopeImplKt.a(i7);
                    PdpScreenKt.a(pdpViewState3, contactUsUiModel, permissionsUiModel, reinsuranceUiModel, z, snackbarHostState, pdpBottomSheetType, lVModalBottomSheetState, flow, immutableList, immutableList2, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function46, function13, function14, function15, function16, function47, function18, function19, function20, function21, function22, function23, function24, function25, function26, function27, function28, function29, function30, function31, function32, function33, function34, function35, function36, function37, function38, function39, flow2, function40, (Composer) obj, iA, iA2, iA3, iA4, iA5, iA6);
                    return Unit.f71739a;
                }
            };
        }
    }
}
