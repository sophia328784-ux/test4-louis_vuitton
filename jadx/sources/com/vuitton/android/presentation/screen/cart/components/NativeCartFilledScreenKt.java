package com.vuitton.android.presentation.screen.cart.components;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$SpaceBetween$1;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.CollectionItemInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVBottomRoundOverlayKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.presentation.screen.cart.GenericNotification;
import com.vuitton.android.presentation.screen.cart.components.ComposableSingletons$NativeCartFilledScreenKt;
import com.vuitton.android.presentation.screen.cart.components.NativeCartFilledScreenKt;
import com.vuitton.android.presentation.screen.cart.components.giftmessage.PerfumeSamplesCardKt;
import com.vuitton.android.presentation.screen.cart.components.sections.NativeCartItemKt;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartUiModel;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.screen.cart.models.PerfumeSampleState;
import com.vuitton.android.presentation.screen.cart.models.PerfumeSampleUiModel;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModelImpl;
import com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceUiModel;
import defpackage.be0;
import defpackage.pp;
import defpackage.rv;
import defpackage.tr;
import defpackage.ud;
import defpackage.uv;
import defpackage.x8;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeCartFilledScreenKt {
    public static final void a(Modifier modifier, String str, String str2, Composer composer, int i2) {
        GapComposer gapComposer;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "NativeCartCardHeader");
        }
        GapComposer gapComposerH = composer.h(1222650283);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(str) ? 32 : 16) | (gapComposerH.K(str2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = new be0(6);
                gapComposerH.q(objX);
            }
            Modifier modifierB = SemanticsModifierKt.b(modifierE, true, (Function1) objX);
            Arrangement$SpaceBetween$1 arrangement$SpaceBetween$1 = Arrangement.g;
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(arrangement$SpaceBetween$1, Alignment.Companion.l, gapComposerH, 54);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, rowMeasurePolicyA, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            TextKt.c(str, null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, (i3 >> 3) & 14, 0, 131066);
            gapComposer = gapComposerH;
            if (str2 != null) {
                gapComposer.L(-1789886188);
                TextKt.c(str2, null, LVAppDesignKitTheme.c(gapComposer).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposer).l, gapComposer, (i3 >> 6) & 14, 0, 131066);
                gapComposer = gapComposer;
                gapComposer.Z(false);
            } else {
                gapComposer.L(-1789692717);
                gapComposer.Z(false);
            }
            gapComposer.Z(true);
        } else {
            modifierE = modifierE;
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new rv(i2, 25, modifierE, str, str2);
        }
    }

    public static final void b(Modifier modifier, final NativeCartViewState nativeCartViewState, final ReinsuranceUiModel reinsuranceUiModel, final ReinsuranceViewModelImpl.ReinsuranceState reinsuranceState, final Function1 function1, final Function0 function0, final Function0 function2, final Function0 function3, final Function0 function4, final Function1 function5, final Function0 function6, final Function2 function7, final Function1 function8, final Function3 function9, final Function1 function10, final Function1 function11, final Function1 function12, final Function1 function13, final Function1 function14, Composer composer, final int i2, final int i3, final int i4) {
        int i5;
        ReinsuranceUiModel reinsuranceUiModel2;
        ReinsuranceViewModelImpl.ReinsuranceState reinsuranceState2;
        int i6;
        final Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "NativeCartFilledScreen");
        }
        nativeCartViewState.getClass();
        reinsuranceState.getClass();
        function1.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        function12.getClass();
        function13.getClass();
        function14.getClass();
        GapComposer gapComposerH = composer.h(947108064);
        int i7 = i4 & 1;
        if (i7 != 0) {
            i5 = i2 | 6;
        } else {
            i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        }
        int i8 = i5 | (gapComposerH.y(nativeCartViewState) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            reinsuranceUiModel2 = reinsuranceUiModel;
            i8 |= gapComposerH.y(reinsuranceUiModel2) ? 256 : 128;
        } else {
            reinsuranceUiModel2 = reinsuranceUiModel;
        }
        if ((i2 & 3072) == 0) {
            reinsuranceState2 = reinsuranceState;
            i8 |= gapComposerH.K(reinsuranceState2) ? 2048 : 1024;
        } else {
            reinsuranceState2 = reinsuranceState;
        }
        if ((i2 & 24576) == 0) {
            i8 |= gapComposerH.y(function1) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i8 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i8 |= gapComposerH.y(function2) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i8 |= gapComposerH.y(function3) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i8 |= gapComposerH.y(function4) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i8 |= gapComposerH.y(function5) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i6 = i3 | (gapComposerH.y(function6) ? 4 : 2);
        } else {
            i6 = i3;
        }
        if ((i3 & 48) == 0) {
            i6 |= gapComposerH.y(function7) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.y(function8) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i6 |= gapComposerH.y(function9) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i6 |= gapComposerH.y(function10) ? 16384 : 8192;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i6 |= gapComposerH.y(function11) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i6 |= gapComposerH.y(function12) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i6 |= gapComposerH.y(function13) ? 8388608 : 4194304;
        }
        if ((i3 & 100663296) == 0) {
            i6 |= gapComposerH.y(function14) ? 67108864 : 33554432;
        }
        if (gapComposerH.p(i8 & 1, ((i8 & 306783379) == 306783378 && (i6 & 38347923) == 38347922) ? false : true)) {
            Modifier dTFunctionNameModifier = i7 != 0 ? new DTFunctionNameModifier("NativeCartFilledScreen") : modifierE;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = BackgroundKt.b(dTFunctionNameModifier.o(SizeKt.f5052c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, RectangleShapeKt.f8913a);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function15 = ComposeUiNode.Companion.f9641b;
            Modifier modifier3 = dTFunctionNameModifier;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function15);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            c(null, nativeCartViewState, reinsuranceUiModel2, reinsuranceState2, function1, function0, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, gapComposerH, i8 & 2147483632, i6 & 268435454);
            gapComposerH = gapComposerH;
            LVBottomRoundOverlayKt.a(0, 2, 0L, gapComposerH, BoxScopeInstance.f4938a.g(tr.d("NativeCartFilledScreen", 1.0f), Alignment.Companion.f8589i));
            gapComposerH.Z(true);
            modifier2 = modifier3;
        } else {
            gapComposerH.D();
            modifier2 = modifierE;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: ze0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    NativeCartFilledScreenKt.b(modifier2, nativeCartViewState, reinsuranceUiModel, reinsuranceState, function1, function0, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, (Composer) obj, iA, iA2, i4);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v12, types: [androidx.compose.runtime.Composer] */
    /* JADX WARN: Type inference failed for: r16v20 */
    /* JADX WARN: Type inference failed for: r16v21 */
    /* JADX WARN: Type inference failed for: r16v7, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r16v8, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r2v34, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v2, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object, java.util.List] */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r6v1, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    public static final void c(Modifier modifier, final NativeCartViewState nativeCartViewState, final ReinsuranceUiModel reinsuranceUiModel, final ReinsuranceViewModelImpl.ReinsuranceState reinsuranceState, Function1 function1, final Function0 function0, final Function0 function2, final Function0 function3, final Function0 function4, final Function1 function5, final Function0 function6, final Function2 function7, final Function1 function8, final Function3 function9, final Function1 function10, final Function1 function11, final Function1 function12, final Function1 function13, final Function1 function14, Composer composer, int i2, int i3) {
        Function1 function15;
        int i4;
        Modifier modifier2;
        ?? r16;
        ?? arrayList;
        ?? r1;
        List list;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "NativeCartMainView");
        }
        ?? H = composer.h(-2112740144);
        int i5 = i2 | 6;
        if ((i2 & 48) == 0) {
            i5 |= H.y(nativeCartViewState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= H.y(reinsuranceUiModel) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i5 |= H.K(reinsuranceState) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            function15 = function1;
            i5 |= H.y(function15) ? 16384 : 8192;
        } else {
            function15 = function1;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i5 |= H.y(function0) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i5 |= H.y(function2) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i5 |= H.y(function3) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i5 |= H.y(function4) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i5 |= H.y(function5) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i4 = i3 | (H.y(function6) ? 4 : 2);
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= H.y(function7) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= H.y(function8) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= H.y(function9) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i4 |= H.y(function10) ? 16384 : 8192;
        }
        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
            i4 |= H.y(function11) ? 131072 : 65536;
        }
        if ((i3 & 1572864) == 0) {
            i4 |= H.y(function12) ? 1048576 : 524288;
        }
        if ((i3 & 12582912) == 0) {
            i4 |= H.y(function13) ? 8388608 : 4194304;
        }
        if ((i3 & 100663296) == 0) {
            i4 |= H.y(function14) ? 67108864 : 33554432;
        }
        int i6 = i4;
        if (H.p(i5 & 1, ((i5 & 306783379) == 306783378 && (38347923 & i6) == 38347922) ? false : true)) {
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("NativeCartMainView");
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            CartUiModel cartUiModel = nativeCartViewState.f55204a;
            if (cartUiModel == null || (list = cartUiModel.f55183c) == null) {
                arrayList = EmptyList.f71768b;
            } else {
                arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    Iterator it2 = it;
                    CartItemUiModel cartItemUiModel = (CartItemUiModel) next;
                    if (!cartItemUiModel.q || cartItemUiModel.r) {
                        arrayList.add(next);
                    }
                    it = it2;
                }
            }
            final float f2 = LVAppDesignKitTheme.l(H).f48417f;
            final Context context = (Context) H.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierB = BackgroundKt.b(dTFunctionNameModifier.o(SizeKt.f5052c), LVAppDesignKitTheme.c(H).f48361b.f48375b, RectangleShapeKt.f8913a);
            boolean zY = H.y(arrayList);
            Object objX = H.x();
            Object obj = Composer.Companion.f7939a;
            if (zY || objX == obj) {
                objX = new ud(arrayList, 13);
                H.q(objX);
            }
            Modifier modifierB2 = SemanticsModifierKt.b(modifierB, false, (Function1) objX);
            boolean zY2 = H.y(nativeCartViewState) | H.y(context) | H.c(f2) | ((i6 & 7168) == 2048) | H.y(arrayList) | ((i6 & 57344) == 16384) | ((i6 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i6 & 3670016) == 1048576) | ((i6 & 29360128) == 8388608) | ((i6 & 112) == 32) | ((i5 & 57344) == 16384) | ((i5 & 234881024) == 67108864) | ((1879048192 & i5) == 536870912) | ((i5 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) | ((i5 & 3670016) == 1048576) | ((i6 & 14) == 4) | H.y(reinsuranceUiModel) | ((i6 & 234881024) == 67108864) | ((i5 & 29360128) == 8388608) | ((i5 & 7168) == 2048) | ((i6 & 896) == 256);
            Object objX2 = H.x();
            if (zY2 || objX2 == obj) {
                final ?? r2 = arrayList;
                final Function1 function16 = function15;
                Function1 function17 = new Function1() { // from class: af0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        String str;
                        int i7;
                        LazyListScope lazyListScope = (LazyListScope) obj2;
                        lazyListScope.getClass();
                        ComposableSingletons$NativeCartFilledScreenKt.f54991a.getClass();
                        LazyListScope.f(lazyListScope, null, ComposableSingletons$NativeCartFilledScreenKt.f54992b, 3);
                        final NativeCartViewState nativeCartViewState2 = nativeCartViewState;
                        ArrayList arrayList2 = nativeCartViewState2.f55211j;
                        arrayList2.getClass();
                        GenericNotification genericNotification = (GenericNotification) CollectionsKt.firstOrNull(CollectionsKt.o0(arrayList2, new Comparator() { // from class: com.vuitton.android.presentation.screen.cart.NativeCartNotificationKt$sortByPriority$$inlined$sortedBy$1
                            @Override // java.util.Comparator
                            public final int compare(Object obj3, Object obj4) {
                                return Integer.valueOf(((GenericNotification) obj3).getPriority()).compareTo(Integer.valueOf(((GenericNotification) obj4).getPriority()));
                            }
                        }));
                        final float f3 = f2;
                        final Function3 function18 = function9;
                        if (genericNotification != null) {
                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-910403102, true, new tk(genericNotification, context, f3, function18, 2)), 3);
                        }
                        final n50 n50Var = new n50(18);
                        final List list2 = r2;
                        int size = list2.size();
                        Function1<Integer, Object> function19 = new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.cart.components.NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                int iIntValue = ((Number) obj3).intValue();
                                return n50Var.invoke(Integer.valueOf(iIntValue), list2.get(iIntValue));
                            }
                        };
                        Function1<Integer, Object> function20 = new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.cart.components.NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$2
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj3) {
                                list2.get(((Number) obj3).intValue());
                                return null;
                            }
                        };
                        final Function1 function21 = function10;
                        final Function1 function22 = function11;
                        final Function1 function23 = function12;
                        final Function1 function24 = function13;
                        final Function2 function25 = function7;
                        final Function1 function26 = function16;
                        lazyListScope.h(size, function19, function20, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.cart.components.NativeCartFilledScreenKt$NativeCartMainView$lambda$2$0$$inlined$itemsIndexed$default$3
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj3, Object obj4, Object obj5, Object obj6) {
                                int i8;
                                LazyItemScope lazyItemScope = (LazyItemScope) obj3;
                                final int iIntValue = ((Number) obj4).intValue();
                                Composer composer2 = (Composer) obj5;
                                int iIntValue2 = ((Number) obj6).intValue();
                                if ((iIntValue2 & 6) == 0) {
                                    i8 = (composer2.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                                } else {
                                    i8 = iIntValue2;
                                }
                                if ((iIntValue2 & 48) == 0) {
                                    i8 |= composer2.d(iIntValue) ? 32 : 16;
                                }
                                boolean z = true;
                                if (composer2.p(i8 & 1, (i8 & 147) != 146)) {
                                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                    CartItemUiModel cartItemUiModel2 = (CartItemUiModel) list2.get(iIntValue);
                                    composer2.L(-826622234);
                                    Modifier modifierB3 = ModifierExtKt.b(PaddingKt.k(Modifier.Companion.f8607b, f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), iIntValue != 0, NativeCartFilledScreenKt$NativeCartMainView$2$1$3$1.f55034b, composer2, 0);
                                    if ((((i8 & 112) ^ 48) <= 32 || !composer2.d(iIntValue)) && (i8 & 48) != 32) {
                                        z = false;
                                    }
                                    Object objX3 = composer2.x();
                                    if (z || objX3 == Composer.Companion.f7939a) {
                                        objX3 = new Function1<SemanticsPropertyReceiver, Unit>() { // from class: com.vuitton.android.presentation.screen.cart.components.NativeCartFilledScreenKt$NativeCartMainView$2$1$3$2$1
                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object invoke(Object obj7) {
                                                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj7;
                                                semanticsPropertyReceiver.getClass();
                                                SemanticsPropertiesKt.g(semanticsPropertyReceiver, new CollectionItemInfo(iIntValue, 1, 0, 1));
                                                return Unit.f71739a;
                                            }
                                        };
                                        composer2.q(objX3);
                                    }
                                    Modifier modifierB4 = SemanticsModifierKt.b(modifierB3, false, (Function1) objX3);
                                    String str2 = cartItemUiModel2.f55151j;
                                    NativeCartViewState nativeCartViewState3 = nativeCartViewState2;
                                    String str3 = nativeCartViewState3.f55206c;
                                    if (str3 == null) {
                                        str3 = null;
                                    }
                                    NativeCartItemKt.a(modifierB4, cartItemUiModel2, Intrinsics.c(str2, str3), nativeCartViewState3.f55210i.f55202b, function21, function22, function23, function24, function25, function26, function18, composer2, 0);
                                    composer2.F();
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }));
                        boolean zIsEmpty = nativeCartViewState2.f55212k.isEmpty();
                        final boolean z = !zIsEmpty;
                        if (zIsEmpty) {
                            str = null;
                            i7 = 3;
                        } else {
                            str = null;
                            i7 = 3;
                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(130332160, true, new td(f3, 4)), 3);
                            final Function0 function27 = function4;
                            final Function1 function28 = function5;
                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(2036613495, true, new Function3() { // from class: bf0
                                @Override // kotlin.jvm.functions.Function3
                                public final Object A(Object obj3, Object obj4, Object obj5) {
                                    Composer composer2 = (Composer) obj4;
                                    int iIntValue = ((Integer) obj5).intValue();
                                    ((LazyItemScope) obj3).getClass();
                                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                        Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("NativeCartMainView$lambda$2$0$4"), f3, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                        Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
                                        Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(composer2).f48416e);
                                        Alignment.f8582a.getClass();
                                        ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, composer2, 0);
                                        int iHashCode = Long.hashCode(composer2.getT());
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierK);
                                        ComposeUiNode.b0.getClass();
                                        Function0 function29 = ComposeUiNode.Companion.f9641b;
                                        if (composer2.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer2.B();
                                        if (composer2.getS()) {
                                            composer2.C(function29);
                                        } else {
                                            composer2.o();
                                        }
                                        Updater.c(composer2, columnMeasurePolicyA, ComposeUiNode.Companion.f9644f);
                                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                        Updater.c(composer2, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                        Updater.b(composer2, ComposeUiNode.Companion.f9645h);
                                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                                        if (z) {
                                            Modifier modifierH = pq0.h(1.0f, 394177536, composer2, "NativeCartMainView$lambda$2$0$4");
                                            List list3 = nativeCartViewState2.f55212k;
                                            ArrayList arrayList3 = new ArrayList();
                                            for (Object obj6 : list3) {
                                                if (((PerfumeSampleUiModel) obj6).f55217f == PerfumeSampleState.SELECTED) {
                                                    arrayList3.add(obj6);
                                                }
                                            }
                                            PerfumeSamplesCardKt.a(modifierH, arrayList3, function27, function28, composer2, 6);
                                            composer2.F();
                                        } else {
                                            composer2.L(394566741);
                                            composer2.F();
                                        }
                                        composer2.r();
                                        OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    } else {
                                        composer2.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }), 3);
                        }
                        LazyListScope.f(lazyListScope, str, new ComposableLambdaImpl(-196562980, true, new td(f3, i7)), i7);
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(888794845, true, new we0(f3, nativeCartViewState2, function0, function2, reinsuranceUiModel, function14, function3, function6)), 3);
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1974152670, true, new xe0(nativeCartViewState2, 0)), 3);
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1235456801, true, new g1(function8, function18, reinsuranceState, 25)), 3);
                        return Unit.f71739a;
                    }
                };
                ?? r3 = H;
                r3.q(function17);
                objX2 = function17;
                r1 = r3;
            } else {
                r1 = H;
            }
            ?? r17 = r1;
            LazyDslKt.a(modifierB2, null, null, null, null, null, false, null, (Function1) objX2, r17, 0, 510);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            modifier2 = dTFunctionNameModifier;
            r16 = r17;
        } else {
            ?? r18 = H;
            r18.D();
            modifier2 = modifierE;
            r16 = r18;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = r16.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new x8(modifier2, nativeCartViewState, reinsuranceUiModel, reinsuranceState, function1, function0, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, function14, i2, i3);
        }
    }

    public static final void d(Modifier modifier, NativeCartViewState nativeCartViewState, Function3 function3, Function0 function0, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "NativeCartStickyBottomView");
        }
        modifierE.getClass();
        nativeCartViewState.getClass();
        function3.getClass();
        function0.getClass();
        GapComposer gapComposerH = composer.h(1494587315);
        int i3 = i2 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.y(nativeCartViewState) ? 32 : 16) | (gapComposerH.y(function3) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierB = BackgroundKt.b(modifierE, LVAppDesignKitTheme.c(gapComposerH).f48361b.u, RectangleShapeKt.f8913a);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48447b;
            Modifier modifierE2 = com.vuitton.android.designkit.ui.common.ModifierExtKt.e(PaddingKt.l(BoxScopeInstance.f4938a.g(tr.d("NativeCartStickyBottomView", 1.0f), Alignment.Companion.f8587f), LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).f48416e, LVAppDesignKitTheme.l(gapComposerH).f48417f, LVAppDesignKitTheme.l(gapComposerH).d), "cart_proceedToCheckout_button");
            String strC = StringResources_androidKt.c(gapComposerH, R.string.shoppingcart_proceedtocheckout);
            boolean z = !nativeCartViewState.d;
            boolean zY = gapComposerH.y(nativeCartViewState) | ((i3 & 896) == 256) | ((i3 & 7168) == 2048);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new pp(nativeCartViewState, function3, function0, 26);
                gapComposerH.q(objX);
            }
            LVButtonKt.b(0, 376, gapComposerH, modifierE2, configurationButton, null, null, strC, (Function0) objX, false, z, false);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new uv((Object) modifierE, (Object) nativeCartViewState, (Object) function3, function0, i2, 10);
        }
    }
}
