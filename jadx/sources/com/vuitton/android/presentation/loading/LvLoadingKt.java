package com.vuitton.android.presentation.loading;

import androidx.activity.compose.BackHandlerKt;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
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
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.constraintlayout.compose.ConstrainScope;
import androidx.constraintlayout.compose.ConstrainedLayoutReference;
import androidx.constraintlayout.compose.ConstraintLayoutBaseScope;
import androidx.constraintlayout.compose.ConstraintLayoutScope;
import androidx.constraintlayout.compose.ConstraintSetForInlineDsl;
import androidx.constraintlayout.compose.HorizontalAnchorable;
import androidx.constraintlayout.compose.Measurer2;
import androidx.constraintlayout.compose.ToolingUtilsKt;
import androidx.constraintlayout.compose.VerticalAnchorable;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.AnimateLottieCompositionAsStateKt;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieAnimationState;
import com.airbnb.lottie.compose.LottieCompositionResult;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.airbnb.lottie.compose.LottieDynamicProperties;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.LoadingExtKt;
import com.vuitton.android.designkit.components.components.LVFlowerLoaderStyle;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationIconButton;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.loading.LoadingMode;
import com.vuitton.android.presentation.loading.LvLoadingKt;
import defpackage.a;
import defpackage.fa0;
import defpackage.n00;
import defpackage.ov;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005¨\u0006\u000b²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u0004\u0018\u00010\u00048\nX\u008a\u0084\u0002²\u0006\f\u0010\u0007\u001a\u00020\u00068\nX\u008a\u0084\u0002²\u0006\f\u0010\b\u001a\u00020\u00068\nX\u008a\u0084\u0002²\u0006\u000e\u0010\t\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\n\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "previousIsVisible", "isBackgroundVisible", "isContentVisible", "Lcom/airbnb/lottie/LottieComposition;", "composition", "", "progress", "alphaContent", "displayWaitingMessage", "displayBackButton", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class LvLoadingKt {
    public static final void a(Modifier modifier, final LoadingMode loadingMode, final boolean z, final boolean z2, final long j2, final Function0 function0, Composer composer, final int i2) {
        Object lvLoadingKt$LvLoading$1$1;
        LVModalBottomSheetState lVModalBottomSheetState;
        long j3;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "LvLoading");
        }
        final Modifier modifier2 = modifierE;
        function0.getClass();
        GapComposer gapComposerH = composer.h(504877585);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.d(loadingMode == null ? -1 : loadingMode.ordinal()) ? 32 : 16) | (gapComposerH.b(z) ? 256 : 128) | (gapComposerH.b(z2) ? 2048 : 1024) | (gapComposerH.e(j2) ? 16384 : 8192) | (gapComposerH.y(function0) ? 131072 : 65536);
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final LottieCompositionResultImpl lottieCompositionResultImplH = n00.h(LVAppDesignKitTheme.a(gapComposerH).p, gapComposerH, 0);
            LoadingMode loadingMode2 = LoadingMode.DarkMode;
            final LottieDynamicProperties lottieDynamicPropertiesA = LoadingExtKt.a(loadingMode == loadingMode2 ? LVFlowerLoaderStyle.DARK_BACKGROUND : LVFlowerLoaderStyle.LIGHT_BACKGROUND, gapComposerH);
            final LottieAnimatable lottieAnimatableA = AnimateLottieCompositionAsStateKt.a(lottieCompositionResultImplH.getF10755b(), true, null, Integer.MAX_VALUE, gapComposerH, 952);
            final State stateB = AnimateAsStateKt.b(z ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM, AnimationSpecKt.c(300, 0, null, 6), null, gapComposerH, 48, 28);
            LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            final MutableState mutableState = (MutableState) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            final MutableState mutableState2 = (MutableState) objX2;
            Boolean boolValueOf = Boolean.valueOf(z2);
            boolean zY = ((i3 & 7168) == 2048) | gapComposerH.y(lVModalBottomSheetStateF) | ((57344 & i3) == 16384);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                lVModalBottomSheetState = lVModalBottomSheetStateF;
                lvLoadingKt$LvLoading$1$1 = new LvLoadingKt$LvLoading$1$1(z2, lVModalBottomSheetState, j2, mutableState, mutableState2, null);
                gapComposerH.q(lvLoadingKt$LvLoading$1$1);
            } else {
                lVModalBottomSheetState = lVModalBottomSheetStateF;
                lvLoadingKt$LvLoading$1$1 = objX3;
            }
            int i4 = i3 >> 9;
            EffectsKt.e(gapComposerH, boolValueOf, (Function2) lvLoadingKt$LvLoading$1$1);
            Modifier modifierO = new DTFunctionNameModifier("LvLoading").o(SizeKt.f5052c);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierO);
            ComposeUiNode.b0.getClass();
            Function0 function1 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function1);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            if (loadingMode == loadingMode2) {
                gapComposerH.L(-1615543018);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.u;
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1615452405);
                j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a;
                gapComposerH.Z(false);
            }
            Modifier modifierB = BackgroundKt.b(modifier2, j3, RectangleShapeKt.f8913a);
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new fa0(8);
                gapComposerH.q(objX4);
            }
            Modifier modifierD = ClickableKt.d(modifierB, false, null, null, (Function0) objX4, 14);
            gapComposerH.L(-1003410150);
            gapComposerH.L(212064437);
            gapComposerH.Z(false);
            Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new Measurer2(density);
                gapComposerH.q(objX5);
            }
            final Measurer2 measurer2 = (Measurer2) objX5;
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = new ConstraintLayoutScope();
                gapComposerH.q(objX6);
            }
            final ConstraintLayoutScope constraintLayoutScope = (ConstraintLayoutScope) objX6;
            Object objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX7);
            }
            final MutableState mutableState3 = (MutableState) objX7;
            Object objX8 = gapComposerH.x();
            if (objX8 == composer$Companion$Empty$1) {
                objX8 = new ConstraintSetForInlineDsl(constraintLayoutScope);
                gapComposerH.q(objX8);
            }
            final ConstraintSetForInlineDsl constraintSetForInlineDsl = (ConstraintSetForInlineDsl) objX8;
            Object objX9 = gapComposerH.x();
            if (objX9 == composer$Companion$Empty$1) {
                objX9 = SnapshotStateKt.f(Unit.f71739a, SnapshotStateKt.h());
                gapComposerH.q(objX9);
            }
            final MutableState mutableState4 = (MutableState) objX9;
            boolean zY2 = gapComposerH.y(measurer2);
            final int i5 = 257;
            boolean zD = zY2 | gapComposerH.d(257);
            Object objX10 = gapComposerH.x();
            if (zD || objX10 == composer$Companion$Empty$1) {
                objX10 = new MeasurePolicy() { // from class: com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$2
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, final List list, long j4) {
                        final LinkedHashMap linkedHashMap = new LinkedHashMap();
                        mutableState4.getF10755b();
                        long jF = measurer2.f(j4, measureScope.getF9421c(), constraintSetForInlineDsl, list, linkedHashMap, i5);
                        mutableState3.getF10755b();
                        IntSize.Companion companion = IntSize.f11020b;
                        int i6 = (int) (jF >> 32);
                        int i7 = (int) (jF & BodyPartID.bodyIdMax);
                        final Measurer2 measurer3 = measurer2;
                        return measureScope.V0(i6, i7, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$2.1
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                List list2 = list;
                                Map map = linkedHashMap;
                                measurer3.e((Placeable.PlacementScope) obj, list2, map);
                                return Unit.f71739a;
                            }
                        });
                    }
                };
                gapComposerH.q(objX10);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) objX10;
            Object objX11 = gapComposerH.x();
            if (objX11 == composer$Companion$Empty$1) {
                objX11 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$3
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        MutableState mutableState5 = mutableState3;
                        mutableState5.setValue(Boolean.valueOf(!((Boolean) mutableState5.getF10755b()).booleanValue()));
                        constraintSetForInlineDsl.f11256e = true;
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX11);
            }
            final Function0 function2 = (Function0) objX11;
            boolean zY3 = gapComposerH.y(measurer2);
            Object objX12 = gapComposerH.x();
            if (zY3 || objX12 == composer$Companion$Empty$1) {
                objX12 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$4
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        ToolingUtilsKt.a((SemanticsPropertyReceiver) obj, measurer2);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX12);
            }
            LayoutKt.a(SemanticsModifierKt.b(modifierD, false, (Function1) objX12), ComposableLambdaKt.b(1200550679, new Function2<Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$lambda$10$$inlined$ConstraintLayout$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    long j4;
                    Composer composer2 = (Composer) obj;
                    if ((((Number) obj2).intValue() & 3) == 2 && composer2.i()) {
                        composer2.D();
                    } else {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        Unit unit = Unit.f71739a;
                        mutableState4.setValue(unit);
                        ConstraintLayoutScope constraintLayoutScope2 = constraintLayoutScope;
                        constraintLayoutScope2.getClass();
                        constraintLayoutScope2.d();
                        composer2.L(1607586160);
                        final Function0 function3 = function0;
                        boolean zK = composer2.K(function3);
                        Object objX13 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                        if (zK || objX13 == composer$Companion$Empty$2) {
                            objX13 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$2$2$1$1
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    function3.mo47invoke();
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX13);
                        }
                        BackHandlerKt.a(false, (Function0) objX13, composer2, 0, 1);
                        if (loadingMode == LoadingMode.DarkMode) {
                            composer2.L(1607685111);
                            j4 = LVAppDesignKitTheme.c(composer2).f48361b.u;
                            composer2.F();
                        } else {
                            composer2.L(1607783660);
                            j4 = LVAppDesignKitTheme.c(composer2).f48361b.f48374a;
                            composer2.F();
                        }
                        Modifier modifierB2 = BackgroundKt.b(modifier2, j4, RectangleShapeKt.f8913a);
                        Object objX14 = composer2.x();
                        if (objX14 == composer$Companion$Empty$2) {
                            objX14 = LvLoadingKt$LvLoading$2$2$2$1.f51721b;
                            composer2.q(objX14);
                        }
                        Modifier modifierD2 = ClickableKt.d(modifierB2, false, null, null, (Function0) objX14, 14);
                        composer2.L(-1003410150);
                        composer2.L(212064437);
                        composer2.F();
                        Density density2 = (Density) composer2.k(CompositionLocalsKt.f10031h);
                        Object objX15 = composer2.x();
                        if (objX15 == composer$Companion$Empty$2) {
                            objX15 = new Measurer2(density2);
                            composer2.q(objX15);
                        }
                        final Measurer2 measurer3 = (Measurer2) objX15;
                        Object objX16 = composer2.x();
                        if (objX16 == composer$Companion$Empty$2) {
                            objX16 = new ConstraintLayoutScope();
                            composer2.q(objX16);
                        }
                        final ConstraintLayoutScope constraintLayoutScope3 = (ConstraintLayoutScope) objX16;
                        Object objX17 = composer2.x();
                        if (objX17 == composer$Companion$Empty$2) {
                            objX17 = SnapshotStateKt.g(Boolean.FALSE);
                            composer2.q(objX17);
                        }
                        final MutableState mutableState5 = (MutableState) objX17;
                        Object objX18 = composer2.x();
                        if (objX18 == composer$Companion$Empty$2) {
                            objX18 = new ConstraintSetForInlineDsl(constraintLayoutScope3);
                            composer2.q(objX18);
                        }
                        final ConstraintSetForInlineDsl constraintSetForInlineDsl2 = (ConstraintSetForInlineDsl) objX18;
                        Object objX19 = composer2.x();
                        if (objX19 == composer$Companion$Empty$2) {
                            objX19 = SnapshotStateKt.f(unit, SnapshotStateKt.h());
                            composer2.q(objX19);
                        }
                        final MutableState mutableState6 = (MutableState) objX19;
                        final int i6 = 257;
                        boolean zY4 = composer2.y(measurer3) | composer2.d(257);
                        Object objX20 = composer2.x();
                        if (zY4 || objX20 == composer$Companion$Empty$2) {
                            MeasurePolicy measurePolicy2 = new MeasurePolicy() { // from class: com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$2
                                @Override // androidx.compose.ui.layout.MeasurePolicy
                                /* JADX INFO: renamed from: measure-3p2s80s */
                                public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, final List list, long j5) {
                                    final LinkedHashMap linkedHashMap = new LinkedHashMap();
                                    mutableState6.getF10755b();
                                    long jF = measurer3.f(j5, measureScope.getF9421c(), constraintSetForInlineDsl2, list, linkedHashMap, i6);
                                    mutableState5.getF10755b();
                                    IntSize.Companion companion = IntSize.f11020b;
                                    int i7 = (int) (jF >> 32);
                                    int i8 = (int) (jF & BodyPartID.bodyIdMax);
                                    final Measurer2 measurer4 = measurer3;
                                    return measureScope.V0(i7, i8, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$2.1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj3) {
                                            List list2 = list;
                                            Map map = linkedHashMap;
                                            measurer4.e((Placeable.PlacementScope) obj3, list2, map);
                                            return Unit.f71739a;
                                        }
                                    });
                                }
                            };
                            composer2.q(measurePolicy2);
                            objX20 = measurePolicy2;
                        }
                        MeasurePolicy measurePolicy3 = (MeasurePolicy) objX20;
                        Object objX21 = composer2.x();
                        if (objX21 == composer$Companion$Empty$2) {
                            objX21 = new Function0<Unit>() { // from class: com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$3
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(0);
                                }

                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    MutableState mutableState7 = mutableState5;
                                    mutableState7.setValue(Boolean.valueOf(!((Boolean) mutableState7.getF10755b()).booleanValue()));
                                    constraintSetForInlineDsl2.f11256e = true;
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX21);
                        }
                        final Function0 function4 = (Function0) objX21;
                        boolean zY5 = composer2.y(measurer3);
                        Object objX22 = composer2.x();
                        if (zY5 || objX22 == composer$Companion$Empty$2) {
                            objX22 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$4
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj3) {
                                    ToolingUtilsKt.a((SemanticsPropertyReceiver) obj3, measurer3);
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX22);
                        }
                        Modifier modifierB3 = SemanticsModifierKt.b(modifierD2, false, (Function1) objX22);
                        final MutableState mutableState7 = mutableState2;
                        final Function0 function5 = function0;
                        final LottieAnimationState lottieAnimationState = lottieAnimatableA;
                        final LottieDynamicProperties lottieDynamicProperties = lottieDynamicPropertiesA;
                        final State state = stateB;
                        final LottieCompositionResult lottieCompositionResult = lottieCompositionResultImplH;
                        final MutableState mutableState8 = mutableState;
                        final LoadingMode loadingMode3 = loadingMode;
                        LayoutKt.a(modifierB3, ComposableLambdaKt.b(1200550679, new Function2<Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$lambda$10$1$$inlined$ConstraintLayout$5
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj3, Object obj4) {
                                Composer composer3 = (Composer) obj3;
                                if ((((Number) obj4).intValue() & 3) == 2 && composer3.i()) {
                                    composer3.D();
                                } else {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    mutableState6.setValue(Unit.f71739a);
                                    ConstraintLayoutScope constraintLayoutScope4 = constraintLayoutScope3;
                                    constraintLayoutScope4.getClass();
                                    constraintLayoutScope4.d();
                                    composer3.L(1567305591);
                                    ConstraintLayoutScope constraintLayoutScope5 = ConstraintLayoutScope.this;
                                    final ConstrainedLayoutReference constrainedLayoutReferenceB = constraintLayoutScope5.b();
                                    ConstrainedLayoutReference constrainedLayoutReferenceB2 = constraintLayoutScope5.b();
                                    ConstrainedLayoutReference constrainedLayoutReferenceB3 = constraintLayoutScope5.b();
                                    Object objX23 = composer3.x();
                                    Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                                    if (objX23 == composer$Companion$Empty$3) {
                                        objX23 = LvLoadingKt$LvLoading$2$2$3$1$1.f51722b;
                                        composer3.q(objX23);
                                    }
                                    Modifier modifierO2 = SizeKt.o(ConstraintLayoutScope.a(constrainedLayoutReferenceB, (Function1) objX23), LVAppDesignKitTheme.d(composer3).o);
                                    Alignment.f8582a.getClass();
                                    MeasurePolicy measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                                    int iHashCode2 = Long.hashCode(composer3.getT());
                                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                                    Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierO2);
                                    ComposeUiNode.b0.getClass();
                                    Function0 function6 = ComposeUiNode.Companion.f9641b;
                                    if (composer3.getF7976a() == null) {
                                        ComposablesKt.b();
                                        throw null;
                                    }
                                    composer3.B();
                                    if (composer3.getS()) {
                                        composer3.C(function6);
                                    } else {
                                        composer3.o();
                                    }
                                    Updater.c(composer3, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                                    Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                    Updater.c(composer3, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                    Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                                    Updater.c(composer3, modifierC2, ComposeUiNode.Companion.d);
                                    final State state2 = state;
                                    Modifier modifierA = AlphaKt.a(Modifier.Companion.f8607b, ((Number) state2.getF10755b()).floatValue());
                                    LottieComposition lottieComposition = (LottieComposition) lottieCompositionResult.getF10755b();
                                    final LottieAnimationState lottieAnimationState2 = lottieAnimationState;
                                    boolean zK2 = composer3.K(lottieAnimationState2);
                                    Object objX24 = composer3.x();
                                    if (zK2 || objX24 == composer$Companion$Empty$3) {
                                        objX24 = new Function0<Float>() { // from class: com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$2$2$3$2$1$1
                                            @Override // kotlin.jvm.functions.Function0
                                            /* JADX INFO: renamed from: invoke */
                                            public final Object mo47invoke() {
                                                return Float.valueOf(((Number) lottieAnimationState2.getF10755b()).floatValue());
                                            }
                                        };
                                        composer3.q(objX24);
                                    }
                                    LottieAnimationKt.b(lottieComposition, (Function0) objX24, modifierA, false, false, false, false, null, false, lottieDynamicProperties, null, null, false, false, null, null, false, composer3, 1073741824, 0, 130552);
                                    composer3.r();
                                    final float f2 = LVAppDesignKitTheme.l(composer3).f48420j;
                                    final float f3 = LVAppDesignKitTheme.l(composer3).f48419i;
                                    boolean zBooleanValue = ((Boolean) mutableState8.getF10755b()).booleanValue();
                                    EnterTransition enterTransitionF = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                    ExitTransition exitTransitionH = EnterExitTransitionKt.h(null, 3);
                                    boolean zK3 = composer3.K(constrainedLayoutReferenceB) | composer3.c(f2) | composer3.c(f3);
                                    Object objX25 = composer3.x();
                                    if (zK3 || objX25 == composer$Companion$Empty$3) {
                                        objX25 = new Function1<ConstrainScope, Unit>() { // from class: com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$2$2$3$3$1
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj5) {
                                                ConstrainScope constrainScope = (ConstrainScope) obj5;
                                                constrainScope.getClass();
                                                HorizontalAnchorable.a(constrainScope.f11225e, constrainedLayoutReferenceB.f11237f, f2, 4);
                                                ConstrainedLayoutReference constrainedLayoutReference = constrainScope.f11224c;
                                                ConstraintLayoutBaseScope.VerticalAnchor verticalAnchor = constrainedLayoutReference.f11235c;
                                                ConstraintLayoutBaseScope.VerticalAnchor verticalAnchor2 = constrainedLayoutReference.f11236e;
                                                float f4 = f3;
                                                ConstrainScope.a(constrainScope, verticalAnchor, verticalAnchor2, f4, f4, 112);
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer3.q(objX25);
                                    }
                                    Modifier modifierA2 = ConstraintLayoutScope.a(constrainedLayoutReferenceB2, (Function1) objX25);
                                    final LoadingMode loadingMode4 = loadingMode3;
                                    AnimatedVisibilityKt.e(zBooleanValue, modifierA2, enterTransitionF, exitTransitionH, null, ComposableLambdaKt.b(-402477667, new Function3<AnimatedVisibilityScope, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$2$2$3$4
                                        @Override // kotlin.jvm.functions.Function3
                                        public final Object A(Object obj5, Object obj6, Object obj7) {
                                            long j5;
                                            Composer composer4 = (Composer) obj6;
                                            ((Number) obj7).intValue();
                                            ((AnimatedVisibilityScope) obj5).getClass();
                                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                            Modifier modifierA3 = AlphaKt.a(Modifier.Companion.f8607b, ((Number) state2.getF10755b()).floatValue());
                                            String strC = StringResources_androidKt.c(composer4, R.string.loader_waiting_message);
                                            TextStyle textStyle = LVAppDesignKitTheme.n(composer4).f48429j;
                                            if (loadingMode4 == LoadingMode.DarkMode) {
                                                composer4.L(1336938002);
                                                j5 = LVAppDesignKitTheme.c(composer4).f48361b.m;
                                                composer4.F();
                                            } else {
                                                composer4.L(1337057848);
                                                j5 = LVAppDesignKitTheme.c(composer4).f48361b.f48382k;
                                                composer4.F();
                                            }
                                            TextKt.c(strC, modifierA3, 0L, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, TextStyle.a(textStyle, j5, 0L, null, null, 0L, null, 0, 0, 0L, null, null, 16777214), composer4, 0, 0, 131068);
                                            return Unit.f71739a;
                                        }
                                    }, composer3), composer3, 200064, 16);
                                    final float f4 = LVAppDesignKitTheme.l(composer3).l;
                                    final float f5 = LVAppDesignKitTheme.l(composer3).f48416e;
                                    boolean zC = composer3.c(f4) | composer3.c(f5);
                                    Object objX26 = composer3.x();
                                    if (zC || objX26 == composer$Companion$Empty$3) {
                                        objX26 = new Function1<ConstrainScope, Unit>() { // from class: com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$2$2$3$5$1
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj5) {
                                                ConstrainScope constrainScope = (ConstrainScope) obj5;
                                                constrainScope.getClass();
                                                HorizontalAnchorable horizontalAnchorable = constrainScope.f11225e;
                                                ConstrainedLayoutReference constrainedLayoutReference = constrainScope.f11224c;
                                                HorizontalAnchorable.a(horizontalAnchorable, constrainedLayoutReference.d, f4, 4);
                                                VerticalAnchorable.a(constrainScope.d, constrainedLayoutReference.f11235c, f5, 4);
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer3.q(objX26);
                                    }
                                    Modifier modifierA3 = ConstraintLayoutScope.a(constrainedLayoutReferenceB3, (Function1) objX26);
                                    boolean zBooleanValue2 = ((Boolean) mutableState7.getF10755b()).booleanValue();
                                    EnterTransition enterTransitionF2 = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3);
                                    ExitTransition exitTransitionH2 = EnterExitTransitionKt.h(null, 3);
                                    final Function0 function7 = function5;
                                    AnimatedVisibilityKt.e(zBooleanValue2, modifierA3, enterTransitionF2, exitTransitionH2, null, ComposableLambdaKt.b(1677683604, new Function3<AnimatedVisibilityScope, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$2$2$3$6
                                        @Override // kotlin.jvm.functions.Function3
                                        public final Object A(Object obj5, Object obj6, Object obj7) {
                                            int i7;
                                            ConfigurationIconButton configurationIconButton;
                                            Composer composer4 = (Composer) obj6;
                                            ((Number) obj7).intValue();
                                            ((AnimatedVisibilityScope) obj5).getClass();
                                            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                            if (composer4.k(CompositionLocalsKt.n) == LayoutDirection.Ltr) {
                                                composer4.L(-662084871);
                                                i7 = LVAppDesignKitTheme.g(composer4).H;
                                                composer4.F();
                                            } else {
                                                composer4.L(-661994568);
                                                i7 = LVAppDesignKitTheme.g(composer4).I;
                                                composer4.F();
                                            }
                                            int i8 = i7;
                                            Modifier modifierA4 = AlphaKt.a(Modifier.Companion.f8607b, ((Number) state2.getF10755b()).floatValue());
                                            if (loadingMode4 == LoadingMode.DarkMode) {
                                                composer4.L(-661728185);
                                                configurationIconButton = LVAppDesignKitTheme.f(composer4).d;
                                                composer4.F();
                                            } else {
                                                composer4.L(-661620305);
                                                configurationIconButton = LVAppDesignKitTheme.f(composer4).f48477a;
                                                composer4.F();
                                            }
                                            LVIconButtonKt.b(modifierA4, configurationIconButton, i8, null, null, false, 0, false, false, function7, composer4, 0, 0, 1016);
                                            return Unit.f71739a;
                                        }
                                    }, composer3), composer3, 200064, 16);
                                    composer3.F();
                                }
                                return Unit.f71739a;
                            }
                        }, composer2), measurePolicy3, composer2, 48);
                        composer2.F();
                        composer2.F();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), measurePolicy, gapComposerH, 48);
            gapComposerH.Z(false);
            if (lVModalBottomSheetState.a()) {
                gapComposerH.L(-1610847324);
                String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_close);
                ComposableSingletons$LvLoadingKt.f51713a.getClass();
                LVModalBottomSheetKt.b(null, strC, function0, lVModalBottomSheetState, null, 0L, false, null, ComposableSingletons$LvLoadingKt.f51715c, gapComposerH, (i4 & 896) | 100663296 | (LVModalBottomSheetState.f48797e << 9), 241);
                gapComposerH = gapComposerH;
                gapComposerH.Z(false);
            } else {
                gapComposerH = gapComposerH;
                gapComposerH.L(-1610123381);
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(loadingMode, z, z2, j2, function0, i2) { // from class: eb0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ LoadingMode f68821c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f68822e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ long f68823f;
                public final /* synthetic */ Function0 g;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    LvLoadingKt.a(this.f68820b, this.f68821c, this.d, this.f68822e, this.f68823f, this.g, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:46:0x007d  */
    /* JADX WARN: Code duplicated, block: B:48:0x0085  */
    /* JADX WARN: Code duplicated, block: B:49:0x0088  */
    /* JADX WARN: Code duplicated, block: B:51:0x008c  */
    /* JADX WARN: Code duplicated, block: B:54:0x0099  */
    /* JADX WARN: Code duplicated, block: B:55:0x009b  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:59:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:71:0x00db  */
    /* JADX WARN: Code duplicated, block: B:75:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:79:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:83:0x015a  */
    /* JADX WARN: Code duplicated, block: B:86:0x016a  */
    /* JADX WARN: Code duplicated, block: B:88:? A[RETURN, SYNTHETIC] */
    public static final void b(Modifier modifier, final boolean z, LoadingMode loadingMode, boolean z2, long j2, final Function0 function0, Composer composer, final int i2, final int i3) {
        int i4;
        boolean z3;
        int i5;
        Function0 function1;
        boolean z4;
        GapComposer gapComposer;
        final LoadingMode loadingMode2;
        final boolean z5;
        final long j3;
        RecomposeScopeImpl recomposeScopeImplB0;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MutableState mutableState;
        Object objX2;
        MutableState mutableState2;
        Object objX3;
        final MutableState mutableState3;
        boolean z6;
        MutableState mutableState4;
        Object lvLoadingKt$LvLoadingWithEnterExitAnimation$1$1;
        int i6;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "LvLoadingWithEnterExitAnimation");
        }
        final Modifier modifier2 = modifierE;
        function0.getClass();
        GapComposer gapComposerH = composer.h(-629913179);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(modifier2) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.b(z) ? 32 : 16;
        }
        int i7 = i3 & 4;
        if (i7 != 0) {
            i4 |= KyberEngine.KyberPolyBytes;
        } else if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.d(loadingMode == null ? -1 : loadingMode.ordinal()) ? 256 : 128;
        }
        int i8 = i3 & 8;
        if (i8 == 0) {
            if ((i2 & 3072) == 0) {
                z3 = z2;
                i4 |= gapComposerH.b(z3) ? 2048 : 1024;
            }
            i5 = i4 | 24576;
            if ((196608 & i2) == 0) {
                function1 = function0;
                if (gapComposerH.y(function1)) {
                    i6 = 131072;
                } else {
                    i6 = 65536;
                }
                i5 |= i6;
            } else {
                function1 = function0;
            }
            if ((74899 & i5) != 74898) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i5 & 1, z4)) {
                if (i7 != 0) {
                    loadingMode2 = LoadingMode.DarkMode;
                } else {
                    loadingMode2 = loadingMode;
                }
                if (i8 != 0) {
                    z3 = false;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(null);
                    gapComposerH.q(objX);
                }
                mutableState = (MutableState) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = SnapshotStateKt.g(Boolean.valueOf(z));
                    gapComposerH.q(objX2);
                }
                mutableState2 = (MutableState) objX2;
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = SnapshotStateKt.g(Boolean.valueOf(z));
                    gapComposerH.q(objX3);
                }
                mutableState3 = (MutableState) objX3;
                Boolean boolValueOf = Boolean.valueOf(z);
                z6 = (i5 & 112) == 32;
                Object objX4 = gapComposerH.x();
                if (!z6 || objX4 == composer$Companion$Empty$1) {
                    mutableState4 = mutableState2;
                    lvLoadingKt$LvLoadingWithEnterExitAnimation$1$1 = new LvLoadingKt$LvLoadingWithEnterExitAnimation$1$1(z, mutableState, mutableState4, mutableState3, null);
                    gapComposerH.q(lvLoadingKt$LvLoadingWithEnterExitAnimation$1$1);
                } else {
                    mutableState4 = mutableState2;
                    lvLoadingKt$LvLoadingWithEnterExitAnimation$1$1 = objX4;
                }
                EffectsKt.e(gapComposerH, boolValueOf, (Function2) lvLoadingKt$LvLoadingWithEnterExitAnimation$1$1);
                boolean zBooleanValue = ((Boolean) mutableState4.getF10755b()).booleanValue();
                ov ovVar = EasingKt.d;
                final long j4 = 10000;
                final LoadingMode loadingMode3 = loadingMode2;
                final boolean z7 = z3;
                final Function0 function2 = function1;
                gapComposer = gapComposerH;
                AnimatedVisibilityKt.e(zBooleanValue, null, EnterExitTransitionKt.f(AnimationSpecKt.c(500, r13, ovVar, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), EnterExitTransitionKt.h(AnimationSpecKt.c(500, 0, ovVar, 2), 2), null, ComposableLambdaKt.b(-1754099587, new Function3() { // from class: cb0
                    @Override // kotlin.jvm.functions.Function3
                    public final Object A(Object obj, Object obj2, Object obj3) {
                        AnimatedVisibilityScope animatedVisibilityScope = (AnimatedVisibilityScope) obj;
                        Composer composer2 = (Composer) obj2;
                        ((Integer) obj3).getClass();
                        Modifier modifierE2 = modifier2;
                        if (modifierE2 != null) {
                            modifierE2 = a.e(modifierE2, "LvLoadingWithEnterExitAnimation$lambda$10");
                        }
                        animatedVisibilityScope.getClass();
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        LvLoadingKt.a(modifierE2, loadingMode3, ((Boolean) mutableState3.getF10755b()).booleanValue(), z7, j4, function2, composer2, 0);
                        return Unit.f71739a;
                    }
                }, gapComposerH), gapComposer, ImageMetadata.EDGE_MODE, 18);
                z5 = z3;
                j3 = 10000;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                loadingMode2 = loadingMode;
                z5 = z3;
                j3 = j2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: db0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        LvLoadingKt.b(modifier2, z, loadingMode2, z5, j3, function0, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= 3072;
        z3 = z2;
        i5 = i4 | 24576;
        if ((196608 & i2) == 0) {
            function1 = function0;
            if (gapComposerH.y(function1)) {
                i6 = 131072;
            } else {
                i6 = 65536;
            }
            i5 |= i6;
        } else {
            function1 = function0;
        }
        if ((74899 & i5) != 74898) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (gapComposerH.p(i5 & 1, z4)) {
            if (i7 != 0) {
                loadingMode2 = LoadingMode.DarkMode;
            } else {
                loadingMode2 = loadingMode;
            }
            if (i8 != 0) {
                z3 = false;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(null);
                gapComposerH.q(objX);
            }
            mutableState = (MutableState) objX;
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.valueOf(z));
                gapComposerH.q(objX2);
            }
            mutableState2 = (MutableState) objX2;
            objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(Boolean.valueOf(z));
                gapComposerH.q(objX3);
            }
            mutableState3 = (MutableState) objX3;
            Boolean boolValueOf2 = Boolean.valueOf(z);
            if ((i5 & 112) == 32) {
            }
            Object objX5 = gapComposerH.x();
            if (z6) {
                mutableState4 = mutableState2;
                lvLoadingKt$LvLoadingWithEnterExitAnimation$1$1 = new LvLoadingKt$LvLoadingWithEnterExitAnimation$1$1(z, mutableState, mutableState4, mutableState3, null);
                gapComposerH.q(lvLoadingKt$LvLoadingWithEnterExitAnimation$1$1);
            } else {
                mutableState4 = mutableState2;
                lvLoadingKt$LvLoadingWithEnterExitAnimation$1$1 = new LvLoadingKt$LvLoadingWithEnterExitAnimation$1$1(z, mutableState, mutableState4, mutableState3, null);
                gapComposerH.q(lvLoadingKt$LvLoadingWithEnterExitAnimation$1$1);
            }
            EffectsKt.e(gapComposerH, boolValueOf2, (Function2) lvLoadingKt$LvLoadingWithEnterExitAnimation$1$1);
            boolean zBooleanValue2 = ((Boolean) mutableState4.getF10755b()).booleanValue();
            ov ovVar2 = EasingKt.d;
            final long j5 = 10000;
            final LoadingMode loadingMode4 = loadingMode2;
            final boolean z8 = z3;
            final Function0 function3 = function1;
            gapComposer = gapComposerH;
            AnimatedVisibilityKt.e(zBooleanValue2, null, EnterExitTransitionKt.f(AnimationSpecKt.c(500, r13, ovVar2, 2), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), EnterExitTransitionKt.h(AnimationSpecKt.c(500, 0, ovVar2, 2), 2), null, ComposableLambdaKt.b(-1754099587, new Function3() { // from class: cb0
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnimatedVisibilityScope animatedVisibilityScope = (AnimatedVisibilityScope) obj;
                    Composer composer2 = (Composer) obj2;
                    ((Integer) obj3).getClass();
                    Modifier modifierE2 = modifier2;
                    if (modifierE2 != null) {
                        modifierE2 = a.e(modifierE2, "LvLoadingWithEnterExitAnimation$lambda$10");
                    }
                    animatedVisibilityScope.getClass();
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    LvLoadingKt.a(modifierE2, loadingMode4, ((Boolean) mutableState3.getF10755b()).booleanValue(), z8, j5, function3, composer2, 0);
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, ImageMetadata.EDGE_MODE, 18);
            z5 = z3;
            j3 = 10000;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            loadingMode2 = loadingMode;
            z5 = z3;
            j3 = j2;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: db0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    LvLoadingKt.b(modifier2, z, loadingMode2, z5, j3, function0, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }
}
