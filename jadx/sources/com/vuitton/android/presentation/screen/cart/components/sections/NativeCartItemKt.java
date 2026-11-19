package com.vuitton.android.presentation.screen.cart.components.sections;

import android.content.Context;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Top$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
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
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.components.LVSwipeToRevealKt;
import com.vuitton.android.designkit.components.components.SwipeAction;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVDisclaimerKt;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.cart.components.NativeCartComponentsKt;
import com.vuitton.android.presentation.screen.cart.components.sections.NativeCartItemKt;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.CustomizationCardState;
import com.vuitton.android.presentation.screen.pdp.components.subcomponents.CustomizationConfigurationCardKt;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductDisclaimerUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.h40;
import defpackage.k60;
import defpackage.kc;
import defpackage.n00;
import defpackage.t30;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeCartItemKt {
    public static final void a(Modifier modifier, final CartItemUiModel cartItemUiModel, final boolean z, final boolean z2, final Function1 function1, final Function1 function2, final Function1 function3, final Function1 function4, final Function2 function5, final Function1 function6, final Function3 function7, Composer composer, final int i2) {
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "NativeCartItem");
        }
        final Modifier modifier2 = modifierE;
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        GapComposer gapComposerH = composer.h(-147643301);
        int i3 = i2 | (gapComposerH.K(modifier2) ? 4 : 2) | (gapComposerH.y(cartItemUiModel) ? 32 : 16) | KyberEngine.KyberPolyBytes | (gapComposerH.b(z) ? 2048 : 1024) | (gapComposerH.b(z2) ? 16384 : 8192) | (gapComposerH.y(function1) ? 131072 : 65536) | (gapComposerH.y(function2) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304) | (gapComposerH.y(function4) ? 67108864 : 33554432) | (gapComposerH.y(function5) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, ((306783379 & i3) == 306783378 && (((gapComposerH.y(function6) ? (char) 4 : (char) 2) | (gapComposerH.y(function7) ? ' ' : (char) 16)) & 19) == 18) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = 500;
                gapComposerH.q(objX);
            }
            int iIntValue = ((Number) objX).intValue();
            boolean z3 = gapComposerH.k(CompositionLocalsKt.n) == LayoutDirection.Rtl;
            boolean z4 = !cartItemUiModel.w && cartItemUiModel.D;
            MutableState mutableStateL = SnapshotStateKt.l(Boolean.valueOf(cartItemUiModel.x), gapComposerH);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = Double.valueOf(1.5d);
                gapComposerH.q(objX2);
            }
            double dDoubleValue = ((Number) objX2).doubleValue();
            boolean zBooleanValue = ((Boolean) mutableStateL.getF10755b()).booleanValue();
            final boolean z5 = z4;
            TweenSpec tweenSpecC = AnimationSpecKt.c(iIntValue, 0, null, 6);
            boolean zB = gapComposerH.b(z3);
            Object objX3 = gapComposerH.x();
            if (zB || objX3 == composer$Companion$Empty$1) {
                objX3 = new h40(z3, dDoubleValue, 1);
                gapComposerH.q(objX3);
            }
            EnterTransition enterTransitionB = EnterExitTransitionKt.o((Function1) objX3, tweenSpecC).b(EnterExitTransitionKt.f(AnimationSpecKt.c(iIntValue, 0, null, 6), Call.Parameters.DEFAULT_CAMERA_ZOOM, 2));
            TweenSpec tweenSpecC2 = AnimationSpecKt.c(iIntValue, 0, null, 6);
            boolean zB2 = gapComposerH.b(z3);
            Object objX4 = gapComposerH.x();
            if (zB2 || objX4 == composer$Companion$Empty$1) {
                objX4 = new h40(z3, dDoubleValue, 2);
                gapComposerH.q(objX4);
            }
            modifier2 = modifier2;
            gapComposer = gapComposerH;
            AnimatedVisibilityKt.e(zBooleanValue, null, enterTransitionB, EnterExitTransitionKt.s((Function1) objX4, tweenSpecC2).b(EnterExitTransitionKt.h(AnimationSpecKt.c(iIntValue, 0, null, 6), 2)), null, ComposableLambdaKt.b(1745735987, new Function3() { // from class: cf0
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    AnimatedVisibilityScope animatedVisibilityScope = (AnimatedVisibilityScope) obj;
                    Composer composer2 = (Composer) obj2;
                    ((Integer) obj3).getClass();
                    Modifier modifierE2 = modifier2;
                    if (modifierE2 != null) {
                        modifierE2 = a.e(modifierE2, "NativeCartItem$lambda$4");
                    }
                    animatedVisibilityScope.getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    String strC = StringResources_androidKt.c(composer2, R.string.save);
                    String strC2 = StringResources_androidKt.c(composer2, R.string.global_remove);
                    composer2.L(-1679921694);
                    ListBuilder listBuilderV = CollectionsKt.v();
                    final CartItemUiModel cartItemUiModel2 = cartItemUiModel;
                    boolean z6 = z5;
                    Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                    if (z6) {
                        composer2.L(-2108264072);
                        int i4 = LVAppDesignKitTheme.g(composer2).U;
                        long j2 = LVAppDesignKitTheme.c(composer2).f48361b.u;
                        Function1 function8 = function4;
                        boolean zK = composer2.K(function8) | composer2.y(cartItemUiModel2);
                        Object objX5 = composer2.x();
                        if (zK || objX5 == composer$Companion$Empty$2) {
                            objX5 = new re0(function8, cartItemUiModel2, 1);
                            composer2.q(objX5);
                        }
                        listBuilderV.add(new SwipeAction(i4, strC, j2, (Function0) objX5, null));
                        composer2.F();
                    } else {
                        composer2.L(-2107876789);
                        composer2.F();
                    }
                    int i5 = LVAppDesignKitTheme.g(composer2).q;
                    long j3 = LVAppDesignKitTheme.c(composer2).f48361b.x;
                    Function1 function9 = function3;
                    boolean zK2 = composer2.K(function9) | composer2.y(cartItemUiModel2);
                    Object objX6 = composer2.x();
                    if (zK2 || objX6 == composer$Companion$Empty$2) {
                        objX6 = new re0(function9, cartItemUiModel2, 2);
                        composer2.q(objX6);
                    }
                    listBuilderV.add(new SwipeAction(i5, strC2, j3, (Function0) objX6, null));
                    ListBuilder listBuilderR = CollectionsKt.r(listBuilderV);
                    composer2.F();
                    final Function1 function10 = function1;
                    boolean zK3 = composer2.K(function10) | composer2.y(cartItemUiModel2);
                    Object objX7 = composer2.x();
                    if (zK3 || objX7 == composer$Companion$Empty$2) {
                        objX7 = new re0(function10, cartItemUiModel2, 3);
                        composer2.q(objX7);
                    }
                    Function0 function0 = (Function0) objX7;
                    final Function1 function11 = function2;
                    boolean zK4 = composer2.K(function11) | composer2.y(cartItemUiModel2);
                    Object objX8 = composer2.x();
                    if (zK4 || objX8 == composer$Companion$Empty$2) {
                        objX8 = new re0(function11, cartItemUiModel2, 4);
                        composer2.q(objX8);
                    }
                    Function0 function12 = (Function0) objX8;
                    final boolean z7 = z2;
                    final boolean z8 = z;
                    final Function2 function13 = function5;
                    final Function1 function14 = function6;
                    final Function3 function15 = function7;
                    LVSwipeToRevealKt.a(modifierE2, listBuilderR, z8, function0, function12, ComposableLambdaKt.b(1496024082, new Function3() { // from class: ef0
                        @Override // kotlin.jvm.functions.Function3
                        public final Object A(Object obj4, Object obj5, Object obj6) {
                            CartItemUiModel cartItemUiModel3;
                            Modifier modifierE3 = (Modifier) obj4;
                            Composer composer3 = (Composer) obj5;
                            int iIntValue2 = ((Integer) obj6).intValue();
                            if (modifierE3 != null) {
                                modifierE3 = a.e(modifierE3, "NativeCartItem$lambda$4$3");
                            }
                            Modifier modifier3 = modifierE3;
                            modifier3.getClass();
                            if ((iIntValue2 & 6) == 0) {
                                iIntValue2 |= composer3.K(modifier3) ? 4 : 2;
                            }
                            if (composer3.p(iIntValue2 & 1, (iIntValue2 & 19) != 18)) {
                                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                boolean z9 = z8;
                                boolean zB3 = composer3.b(z9);
                                Function1 function16 = function11;
                                boolean zK5 = zB3 | composer3.K(function16);
                                CartItemUiModel cartItemUiModel4 = cartItemUiModel2;
                                boolean zY = zK5 | composer3.y(cartItemUiModel4);
                                Function1 function17 = function10;
                                boolean zK6 = zY | composer3.K(function17);
                                Object objX9 = composer3.x();
                                if (zK6 || objX9 == Composer.Companion.f7939a) {
                                    cartItemUiModel3 = cartItemUiModel4;
                                    nd ndVar = new nd(z9, function16, cartItemUiModel3, function17, 3);
                                    composer3.q(ndVar);
                                    objX9 = ndVar;
                                } else {
                                    cartItemUiModel3 = cartItemUiModel4;
                                }
                                NativeCartItemKt.b(null, modifier3, cartItemUiModel3, z7, (Function0) objX9, function13, function14, function15, composer3, (iIntValue2 << 3) & 112);
                            } else {
                                composer3.D();
                            }
                            return Unit.f71739a;
                        }
                    }, composer2), composer2, ImageMetadata.EDGE_MODE, 0);
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposer, ImageMetadata.EDGE_MODE, 18);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(cartItemUiModel, z, z2, function1, function2, function3, function4, function5, function6, function7, i2) { // from class: df0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ CartItemUiModel f68567c;
                public final /* synthetic */ boolean d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f68568e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function1 f68569f;
                public final /* synthetic */ Function1 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function1 f68570h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function1 f68571i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function2 f68572j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function1 f68573k;
                public final /* synthetic */ Function3 l;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(1);
                    NativeCartItemKt.a(this.f68566b, this.f68567c, this.d, this.f68568e, this.f68569f, this.g, this.f68570h, this.f68571i, this.f68572j, this.f68573k, this.l, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [kotlin.jvm.functions.Function0] */
    /* JADX WARN: Type inference failed for: r17v2 */
    public static final void b(Modifier modifier, Modifier modifier2, CartItemUiModel cartItemUiModel, boolean z, Function0 function0, Function2 function2, Function1 function1, Function3 function3, Composer composer, int i2) {
        Modifier modifier3;
        Function0 function4;
        Function1 function5;
        GapComposer gapComposer;
        boolean z2;
        Function2 function6;
        Function2 function7;
        Function1 function8;
        boolean z3;
        Throwable th;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean z4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "NativeCartItemCard");
        }
        function0.getClass();
        function2.getClass();
        function1.getClass();
        function3.getClass();
        GapComposer gapComposerH = composer.h(-1390628100);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | 6;
        if ((i2 & 48) == 0) {
            modifier3 = modifier2;
            i3 |= gapComposerH.K(modifier3) ? 32 : 16;
        } else {
            modifier3 = modifier2;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(cartItemUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(null) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            function4 = function0;
            i3 |= gapComposerH.y(function4) ? 131072 : 65536;
        } else {
            function4 = function0;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            function5 = function1;
            i3 |= gapComposerH.y(function5) ? 8388608 : 4194304;
        } else {
            function5 = function1;
        }
        if ((100663296 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 67108864 : 33554432;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (i4 & 38347923) != 38347922)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("NativeCartItemCard");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(ClipKt.a(dTFunctionNameModifier, LVAppDesignKitTheme.j(gapComposerH).f48410b), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Arrangement$Top$1 arrangement$Top$1 = Arrangement.f4920c;
            Alignment.f8582a.getClass();
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(arrangement$Top$1, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
            ComposeUiNode.b0.getClass();
            Function0 function9 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function9);
            } else {
                gapComposerH.o();
            }
            Function2 function10 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function10);
            Function2 function11 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function11);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function12 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function12);
            Function1 function13 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function13);
            Function2 function14 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function14);
            NativeCartComponentsKt.a(modifier3, cartItemUiModel, function4, function5, gapComposerH, ((i4 >> 9) & 896) | ((i4 >> 3) & 126) | ((i4 >> 12) & 7168));
            boolean z5 = cartItemUiModel.p;
            ProductDisclaimerUiModel productDisclaimerUiModel = cartItemUiModel.A;
            if (cartItemUiModel.B != null) {
                SpacerKt.a(gapComposerH, SizeKt.f(n00.i(gapComposerH, 1308973600, "NativeCartItemCard"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
                th = null;
                z3 = false;
                function7 = function11;
                function8 = function13;
                CustomizationConfigurationCardKt.a(SizeKt.d(new DTFunctionNameModifier("NativeCartItemCard"), 1.0f), cartItemUiModel.B, new CustomizationCardState.Expand(false), null, null, gapComposerH, 6, 24);
                gapComposer = gapComposerH;
                gapComposer.Z(false);
            } else {
                function7 = function11;
                function8 = function13;
                z3 = false;
                th = null;
                gapComposer = gapComposerH;
                gapComposer.L(1309308028);
                gapComposer.Z(false);
            }
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (z5 == 0) {
                SpacerKt.a(gapComposer, SizeKt.f(n00.i(gapComposer, 1309399509, "NativeCartItemCard"), LVAppDesignKitTheme.l(gapComposer).f48416e));
                GapComposer gapComposer2 = gapComposer;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                LVDisclaimerKt.a(SizeKt.d(new DTFunctionNameModifier("NativeCartItemCard"), 1.0f), StringResources_androidKt.c(gapComposer, R.string.shoppingcart_outofstock), null, 0L, StringResources_androidKt.c(gapComposer, R.string.global_remove), function0, gapComposer2, (i4 & ImageMetadata.JPEG_GPS_COORDINATES) | 6, 12);
                gapComposer = gapComposer2;
                gapComposer.Z(z3);
            } else if (productDisclaimerUiModel != null) {
                StringResourceUiModel stringResourceUiModel = productDisclaimerUiModel.d;
                StringResourceUiModel stringResourceUiModel2 = productDisclaimerUiModel.f61730c;
                SpacerKt.a(gapComposer, SizeKt.f(n00.i(gapComposer, 1309865997, "NativeCartItemCard"), LVAppDesignKitTheme.l(gapComposer).f48416e));
                Modifier modifierD = SizeKt.d(new DTFunctionNameModifier("NativeCartItemCard"), 1.0f);
                String strA = StringResourceUiModelKt.a(productDisclaimerUiModel.f61729b, context);
                ?? C = (StringResourceUiModelKt.b(stringResourceUiModel2) && StringResourceUiModelKt.b(stringResourceUiModel)) ? th : StringResources_androidKt.c(gapComposer, R.string.gdpr_read_more);
                boolean zY = ((i4 & 234881024) == 67108864) | gapComposer.y(cartItemUiModel);
                Object objX = gapComposer.x();
                if (zY || objX == composer$Companion$Empty$2) {
                    objX = new t30(function3, cartItemUiModel, 17);
                    gapComposer.q(objX);
                }
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                GapComposer gapComposer3 = gapComposer;
                LVDisclaimerKt.a(modifierD, strA, null, 0L, C, (StringResourceUiModelKt.b(stringResourceUiModel2) && StringResourceUiModelKt.b(stringResourceUiModel)) ? th : (Function0) objX, gapComposer3, 6, 12);
                gapComposer = gapComposer3;
                gapComposer.Z(false);
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                gapComposer.L(1310474620);
                gapComposer.Z(z3);
            }
            if (z5) {
                SpacerKt.a(gapComposer, SizeKt.f(n00.i(gapComposer, 1310599550, "NativeCartItemCard"), LVAppDesignKitTheme.l(gapComposer).f48417f));
                Modifier modifierD2 = SizeKt.d(new DTFunctionNameModifier("NativeCartItemCard"), 1.0f);
                RowMeasurePolicy rowMeasurePolicyA = RowKt.a(Arrangement.g, Alignment.Companion.l, gapComposer, 54);
                int iHashCode2 = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposer.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposer, modifierD2);
                if (applier == 0) {
                    ComposablesKt.b();
                    throw th;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(function9);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, rowMeasurePolicyA, r24);
                Updater.c(gapComposer, persistentCompositionLocalMapU2, function7);
                cj.t(iHashCode2, gapComposer, r23, gapComposer, function8);
                DTFunctionNameModifier dTFunctionNameModifierE = tr.e(gapComposer, modifierC2, function14, "NativeCartItemCard");
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode3 = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU3 = gapComposer.U();
                Modifier modifierC3 = ComposedModifierKt.c(gapComposer, dTFunctionNameModifierE);
                if (applier == null) {
                    ComposablesKt.b();
                    throw th;
                }
                gapComposer.B();
                if (gapComposer.S) {
                    gapComposer.C(r20);
                } else {
                    gapComposer.o();
                }
                Updater.c(gapComposer, measurePolicyD, function10);
                Updater.c(gapComposer, persistentCompositionLocalMapU3, function7);
                cj.t(iHashCode3, gapComposer, function12, gapComposer, function8);
                Updater.c(gapComposer, modifierC3, function14);
                if (cartItemUiModel.C) {
                    gapComposer.L(358144348);
                    int i5 = cartItemUiModel.d;
                    boolean zY2 = gapComposer.y(cartItemUiModel) | ((i4 & 3670016) == 1048576);
                    Object objX2 = gapComposer.x();
                    if (zY2 || objX2 == composer$Companion$Empty$1) {
                        function6 = function2;
                        objX2 = new k60(function6, cartItemUiModel, 18);
                        gapComposer.q(objX2);
                    } else {
                        function6 = function2;
                    }
                    z4 = false;
                    NativeCartComponentsKt.c(i5, 0, gapComposer, (Function1) objX2);
                    gapComposer.Z(false);
                } else {
                    function6 = function2;
                    z4 = false;
                    gapComposer.L(358386520);
                    gapComposer.Z(false);
                }
                gapComposer.Z(true);
                z2 = z;
                NativeCartComponentsKt.b(cartItemUiModel.f55145b, z2, gapComposer, (i4 >> 6) & 112);
                gapComposer.Z(true);
                gapComposer.L(1311940796);
                gapComposer.Z(z4);
                gapComposer.Z(z4);
            } else {
                z2 = z;
                function6 = function2;
                gapComposer.L(1311950716);
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
            modifierE = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            z2 = z;
            function6 = function2;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kc(modifierE, modifier2, cartItemUiModel, z2, function0, function6, function1, function3, i2);
        }
    }
}
