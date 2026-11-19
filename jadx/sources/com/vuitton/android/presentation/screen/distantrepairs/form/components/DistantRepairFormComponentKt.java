package com.vuitton.android.presentation.screen.distantrepairs.form.components;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.ComposableSingletons$DistantRepairFormComponentKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairFormViewState;
import defpackage.ru;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class DistantRepairFormComponentKt {
    public static final void a(final DistantRepairFormViewState distantRepairFormViewState, final CoroutineScope coroutineScope, final Function0 function0, Function1 function1, final Function1 function2, final Function1 function3, final Function3 function4, final Function1 function5, final Function1 function6, final Function1 function7, final Function0 function8, final Function0 function9, final Function0 function10, final Function1 function11, final Function2 function12, Composer composer, int i2, int i3) {
        Function1 function13;
        int i4;
        GapComposer gapComposer;
        distantRepairFormViewState.getClass();
        coroutineScope.getClass();
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
        function10.getClass();
        function11.getClass();
        function12.getClass();
        GapComposer gapComposerH = composer.h(1773672138);
        int i5 = (gapComposerH.y(distantRepairFormViewState) ? 4 : 2) | i2 | (gapComposerH.y(coroutineScope) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i5 |= gapComposerH.y(function0) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            function13 = function1;
            i5 |= gapComposerH.y(function13) ? 2048 : 1024;
        } else {
            function13 = function1;
        }
        if ((i2 & 24576) == 0) {
            i5 |= gapComposerH.y(function2) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i5 |= gapComposerH.y(function3) ? 131072 : 65536;
        }
        if ((i2 & 1572864) == 0) {
            i5 |= gapComposerH.y(function4) ? 1048576 : 524288;
        }
        if ((i2 & 12582912) == 0) {
            i5 |= gapComposerH.y(function5) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i5 |= gapComposerH.y(function6) ? 67108864 : 33554432;
        }
        if ((i2 & 805306368) == 0) {
            i5 |= gapComposerH.y(function7) ? PKIFailureInfo.duplicateCertReq : 268435456;
        }
        if ((i3 & 6) == 0) {
            i4 = i3 | (gapComposerH.y(function8) ? 4 : 2);
        } else {
            i4 = i3;
        }
        if ((i3 & 48) == 0) {
            i4 |= gapComposerH.y(function9) ? 32 : 16;
        }
        if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.y(function10) ? 256 : 128;
        }
        if ((i3 & 3072) == 0) {
            i4 |= gapComposerH.y(function11) ? 2048 : 1024;
        }
        if ((i3 & 24576) == 0) {
            i4 |= gapComposerH.y(function12) ? 16384 : 8192;
        }
        int i6 = i4;
        if (gapComposerH.p(i5 & 1, ((i5 & 306783379) == 306783378 && (i6 & 9363) == 9362) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("DistantRepairFormComponent"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            boolean zY = ((i6 & 112) == 32) | gapComposerH.y(distantRepairFormViewState) | ((i5 & 896) == 256) | ((i5 & 7168) == 2048) | ((458752 & i5) == 131072) | ((i5 & 57344) == 16384) | gapComposerH.y(coroutineScope) | gapComposerH.K(lazyListStateA) | ((3670016 & i5) == 1048576) | ((i6 & 896) == 256) | ((i6 & 7168) == 2048) | ((57344 & i6) == 16384) | ((29360128 & i5) == 8388608) | ((234881024 & i5) == 67108864) | ((i5 & 1879048192) == 536870912) | ((i6 & 14) == 4);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                final Function1 function14 = function13;
                Function1 function15 = new Function1() { // from class: qu
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        LazyListScope lazyListScope = (LazyListScope) obj;
                        lazyListScope.getClass();
                        ComposableSingletons$DistantRepairFormComponentKt.f57212a.getClass();
                        LazyListScope.f(lazyListScope, null, ComposableSingletons$DistantRepairFormComponentKt.f57213b, 3);
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1721645526, true, new a3(function9, 10)), 3);
                        DistantRepairFormViewState distantRepairFormViewState2 = distantRepairFormViewState;
                        Function0 function16 = function0;
                        Function1 function17 = function14;
                        Function1 function18 = function3;
                        Function1 function19 = function2;
                        CoroutineScope coroutineScope2 = coroutineScope;
                        LazyListState lazyListState = lazyListStateA;
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-343434537, true, new w0(distantRepairFormViewState2, function16, function17, function18, function19, coroutineScope2, lazyListState)), 3);
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1886452696, true, new sp(distantRepairFormViewState2, function4, function17, function19, coroutineScope2, lazyListState, function10, function11, function12)), 3);
                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-178627367, true, new w0(distantRepairFormViewState2, function17, function5, function6, function7, function19, function8)), 3);
                        return Unit.f71739a;
                    }
                };
                lazyListStateA = lazyListStateA;
                gapComposer = gapComposerH;
                gapComposer.q(function15);
                objX = function15;
            } else {
                gapComposer = gapComposerH;
            }
            LazyDslKt.a(modifierK, lazyListStateA, null, null, null, null, false, null, (Function1) objX, gapComposer, 0, 508);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new ru(distantRepairFormViewState, coroutineScope, function0, function1, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, i2, i3);
        }
    }
}
