package com.vuitton.android.presentation.screen.pdp.components.subcomponents;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ScaleKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.Density;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionButtonKt;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionButtonVariant;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPointKt;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.PdpBottomAreaKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductAvailabilityUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductAvailabilityUiModelKt$WhenMappings;
import defpackage.cj;
import defpackage.j;
import defpackage.k0;
import defpackage.na;
import defpackage.o60;
import defpackage.s60;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PdpBottomAreaKt {
    public static final void a(Modifier modifier, final boolean z, final boolean z2, final boolean z3, final boolean z4, final boolean z5, final boolean z6, final boolean z7, final ProductAvailabilityUiModel productAvailabilityUiModel, final Function0 function0, final Function0 function1, final Function1 function2, Composer composer, final int i2) {
        GapComposer gapComposer;
        final Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PdpBottomArea");
        }
        GapComposer gapComposerC = defpackage.a.c(function0, function1, composer, -1855857898);
        int i3 = i2 | 6 | (gapComposerC.b(z) ? 32 : 16) | (gapComposerC.b(z2) ? 256 : 128) | (gapComposerC.b(z3) ? 2048 : 1024) | (gapComposerC.b(z4) ? 16384 : 8192) | (gapComposerC.b(z5) ? 131072 : 65536) | (gapComposerC.b(z6) ? 1048576 : 524288) | (gapComposerC.b(z7) ? 8388608 : 4194304) | (gapComposerC.d(productAvailabilityUiModel == null ? -1 : productAvailabilityUiModel.ordinal()) ? 67108864 : 33554432) | (gapComposerC.y(function0) ? PKIFailureInfo.duplicateCertReq : 268435456);
        Modifier modifier3 = modifierE;
        if (gapComposerC.p(i3 & 1, ((306783379 & i3) == 306783378 && (((gapComposerC.y(function1) ? (char) 4 : (char) 2) | '0') & 19) == 18) ? false : true)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("PdpBottomArea");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final AICompanionTracker aICompanionTracker = (AICompanionTracker) gapComposerC.k(AICompanionTrackerEntryPointKt.f52911a);
            Density density = (Density) gapComposerC.k(CompositionLocalsKt.f10031h);
            Object objX = gapComposerC.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerC.q(objX);
            }
            final MutableState mutableState = (MutableState) objX;
            boolean zK = gapComposerC.K(density);
            Object objX2 = gapComposerC.x();
            if (zK || objX2 == composer$Companion$Empty$1) {
                objX2 = new s60(density, 2);
                gapComposerC.q(objX2);
            }
            EnterTransition enterTransitionR = EnterExitTransitionKt.r((Function1) objX2);
            Alignment.f8582a.getClass();
            gapComposer = gapComposerC;
            AnimatedVisibilityKt.e(z, dTFunctionNameModifier, enterTransitionR.b(EnterExitTransitionKt.d(null, Alignment.Companion.f8591k, null, 13)).b(EnterExitTransitionKt.f(null, 0.3f, 1)), EnterExitTransitionKt.v(3, null).b(EnterExitTransitionKt.n(null, null, null, 15)).b(EnterExitTransitionKt.h(null, 3)), null, ComposableLambdaKt.b(-926054930, new Function3() { // from class: com.vuitton.android.presentation.screen.pdp.components.subcomponents.a
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    String strK;
                    int i4;
                    Animatable animatable;
                    Composer composer2 = (Composer) obj2;
                    ((Integer) obj3).getClass();
                    ((AnimatedVisibilityScope) obj).getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Modifier modifierI = PaddingKt.i(WindowInsetsPadding_androidKt.b(BackgroundKt.b(new DTFunctionNameModifier("PdpBottomArea$lambda$3"), LVAppDesignKitTheme.c(composer2).f48361b.f48374a, RectangleShapeKt.f8913a)), LVAppDesignKitTheme.l(composer2).f48416e);
                    Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                    Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer2).f48415c);
                    Alignment.f8582a.getClass();
                    RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.f8591k, composer2, 0);
                    int iHashCode = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                    Modifier modifierC = ComposedModifierKt.c(composer2, modifierI);
                    ComposeUiNode.b0.getClass();
                    Function0 function3 = ComposeUiNode.Companion.f9641b;
                    Integer numValueOf = null;
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
                    Updater.c(composer2, rowMeasurePolicyA, function4);
                    Function2 function5 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer2, persistentCompositionLocalMapN, function5);
                    Integer numValueOf2 = Integer.valueOf(iHashCode);
                    Function2 function6 = ComposeUiNode.Companion.g;
                    Updater.c(composer2, numValueOf2, function6);
                    Function1 function7 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer2, function7);
                    Function2 function8 = ComposeUiNode.Companion.d;
                    Updater.c(composer2, modifierC, function8);
                    Modifier modifierB = cj.b("PdpBottomArea$lambda$3", RowScopeInstance.f5040a, 1.0f, true);
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode2 = Long.hashCode(composer2.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer2.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer2, modifierB);
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
                    Updater.c(composer2, measurePolicyD, function4);
                    Updater.c(composer2, persistentCompositionLocalMapN2, function5);
                    cj.s(iHashCode2, composer2, function6, composer2, function7);
                    Updater.c(composer2, modifierC2, function8);
                    boolean z8 = z3;
                    if (z8) {
                        composer2.L(-267982210);
                        composer2.F();
                        strK = null;
                    } else {
                        ProductAvailabilityUiModel productAvailabilityUiModel2 = ProductAvailabilityUiModel.CallForAvailability;
                        ProductAvailabilityUiModel productAvailabilityUiModel3 = productAvailabilityUiModel;
                        if ((productAvailabilityUiModel3 == productAvailabilityUiModel2 || productAvailabilityUiModel3 == ProductAvailabilityUiModel.DisplayNotECommerceInfo) && z7) {
                            strK = o60.k(composer2, -267640032, R.string.product_page_cta_ask_for_availability, composer2);
                        } else {
                            composer2.L(-267528618);
                            if (productAvailabilityUiModel3 == null) {
                                composer2.L(-267488164);
                                composer2.F();
                                strK = null;
                            } else {
                                composer2.L(-267488163);
                                switch (ProductAvailabilityUiModelKt$WhenMappings.f61724a[productAvailabilityUiModel3.ordinal()]) {
                                    case 1:
                                        i4 = R.string.product_detail_add_to_card;
                                        break;
                                    case 2:
                                        i4 = R.string.back_in_stock_cta_notify_me;
                                        break;
                                    case 3:
                                        i4 = R.string.product_detail_call_for_availability;
                                        break;
                                    case 4:
                                        i4 = R.string.product_detail_call_for_inquiry;
                                        break;
                                    case 5:
                                        i4 = R.string.buy_on_website;
                                        break;
                                    case 6:
                                        i4 = R.string.product_showroom_add_to_cart;
                                        break;
                                    default:
                                        v40.g();
                                        return null;
                                }
                                strK = StringResources_androidKt.c(composer2, i4);
                                composer2.F();
                            }
                            if (strK == null) {
                                strK = "";
                            }
                            composer2.F();
                        }
                    }
                    ConfigurationButton configurationButton = LVAppDesignKitTheme.b(composer2).f48446a;
                    String str = strK != null ? strK : "";
                    Modifier modifierE2 = ModifierExtKt.e(SizeKt.d(new DTFunctionNameModifier("PdpBottomArea$lambda$3"), 1.0f), "pdp_mainBottomAction_button");
                    if (z8) {
                        composer2.L(-266913330);
                        int i5 = LVAppDesignKitTheme.a(composer2).y;
                        composer2.F();
                        numValueOf = Integer.valueOf(i5);
                    } else {
                        composer2.L(-266817354);
                        composer2.F();
                    }
                    Integer num = numValueOf;
                    Function0 function9 = function0;
                    boolean zK2 = composer2.K(function9);
                    Object objX3 = composer2.x();
                    MutableState mutableState2 = mutableState;
                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                    if (zK2 || objX3 == composer$Companion$Empty$2) {
                        objX3 = new na(mutableState2, function9);
                        composer2.q(objX3);
                    }
                    LVButtonKt.b(ImageMetadata.EDGE_MODE, 456, composer2, modifierE2, configurationButton, null, num, str, (Function0) objX3, true, false, false);
                    composer2.r();
                    if (z5) {
                        composer2.L(-1436628342);
                        Object objX4 = composer2.x();
                        if (objX4 == composer$Companion$Empty$2) {
                            objX4 = AnimatableKt.a(1.0f);
                            composer2.q(objX4);
                        }
                        Animatable animatable2 = (Animatable) objX4;
                        boolean z9 = z2;
                        Boolean boolValueOf = Boolean.valueOf(z9);
                        boolean zB = composer2.b(z9);
                        boolean z10 = z4;
                        boolean zB2 = zB | composer2.b(z10) | composer2.y(animatable2);
                        Object objX5 = composer2.x();
                        if (zB2 || objX5 == composer$Companion$Empty$2) {
                            animatable = animatable2;
                            objX5 = new PdpBottomAreaKt$PdpBottomArea$3$1$2$1(z9, z10, mutableState2, animatable, null);
                            composer2.q(objX5);
                        } else {
                            animatable = animatable2;
                        }
                        EffectsKt.e(composer2, boolValueOf, (Function2) objX5);
                        DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("PdpBottomArea$lambda$3");
                        float fFloatValue = ((Number) animatable.d()).floatValue();
                        Modifier modifierA = ScaleKt.a(dTFunctionNameModifier2, fFloatValue, fFloatValue);
                        Function1 function10 = function2;
                        boolean zK3 = composer2.K(function10);
                        Object objX6 = composer2.x();
                        if (zK3 || objX6 == composer$Companion$Empty$2) {
                            objX6 = new k0(function10, 24);
                            composer2.q(objX6);
                        }
                        Modifier modifierA2 = OnGloballyPositionedModifierKt.a(modifierA, (Function1) objX6);
                        AICompanionButtonVariant aICompanionButtonVariant = !z6 ? AICompanionButtonVariant.INVERT : AICompanionButtonVariant.DEFAULT;
                        AICompanionTracker aICompanionTracker2 = aICompanionTracker;
                        boolean zY = composer2.y(aICompanionTracker2);
                        Function0 function11 = function1;
                        boolean zK4 = zY | composer2.K(function11);
                        Object objX7 = composer2.x();
                        if (zK4 || objX7 == composer$Companion$Empty$2) {
                            objX7 = new j(aICompanionTracker2, function11, 4);
                            composer2.q(objX7);
                        }
                        AICompanionButtonKt.a(modifierA2, aICompanionButtonVariant, (Function0) objX7, composer2, 0, 0);
                        composer2 = composer2;
                        composer2.F();
                    } else {
                        composer2.L(-1434808208);
                        composer2.F();
                    }
                    composer2.r();
                    return Unit.f71739a;
                }
            }, gapComposerC), gapComposer, ((i3 >> 3) & 14) | 199728, 16);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerC;
            gapComposer.D();
            modifier2 = modifier3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(z, z2, z3, z4, z5, z6, z7, productAvailabilityUiModel, function0, function1, function2, i2) { // from class: cm0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ boolean f21185c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f21186e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ boolean f21187f;
                public final /* synthetic */ boolean g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ boolean f21188h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ boolean f21189i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ ProductAvailabilityUiModel f21190j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function0 f21191k;
                public final /* synthetic */ Function0 l;
                public final /* synthetic */ Function1 m;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    PdpBottomAreaKt.a(this.f21184b, this.f21185c, this.d, this.f21186e, this.f21187f, this.g, this.f21188h, this.f21189i, this.f21190j, this.f21191k, this.l, this.m, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
