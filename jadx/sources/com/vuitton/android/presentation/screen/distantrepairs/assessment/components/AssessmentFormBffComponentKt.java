package com.vuitton.android.presentation.screen.distantrepairs.assessment.components;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.ui.Modifier;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.distantrepairs.models.AssessmentBffViewState;
import defpackage.f3;
import defpackage.g9;
import defpackage.t;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AssessmentFormBffComponentKt {
    public static final void a(AssessmentBffViewState assessmentBffViewState, CoroutineScope coroutineScope, Function1 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, Function0 function0, Function0 function6, Function0 function7, LVModalBottomSheetState lVModalBottomSheetState, Composer composer, int i2, int i3) {
        GapComposer gapComposer;
        assessmentBffViewState.getClass();
        coroutineScope.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function0.getClass();
        function6.getClass();
        function7.getClass();
        lVModalBottomSheetState.getClass();
        GapComposer gapComposerH = composer.h(884602973);
        int i4 = i2 | (gapComposerH.y(assessmentBffViewState) ? 4 : 2) | (gapComposerH.y(coroutineScope) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024) | (gapComposerH.y(function3) ? 16384 : 8192) | (gapComposerH.y(function4) ? 131072 : 65536) | (gapComposerH.y(function5) ? 1048576 : 524288) | (gapComposerH.y(function0) ? 8388608 : 4194304) | (gapComposerH.y(function6) ? 67108864 : 33554432) | (gapComposerH.y(function7) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i5 = i3 | ((i3 & 8) == 0 ? gapComposerH.K(lVModalBottomSheetState) : gapComposerH.y(lVModalBottomSheetState) ? 4 : 2);
        if (gapComposerH.p(i4 & 1, ((i4 & 306783379) == 306783378 && (i5 & 3) == 2) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("AssessmentFormBffComponent"), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            boolean zY = gapComposerH.y(assessmentBffViewState) | ((i4 & 896) == 256) | ((29360128 & i4) == 8388608) | ((i5 & 14) == 4 || ((i5 & 8) != 0 && gapComposerH.y(lVModalBottomSheetState))) | ((1879048192 & i4) == 536870912) | ((458752 & i4) == 131072) | ((234881024 & i4) == 67108864) | ((3670016 & i4) == 1048576) | gapComposerH.y(coroutineScope) | gapComposerH.K(lazyListStateA) | ((i4 & 7168) == 2048) | ((i4 & 57344) == 16384);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                g9 g9Var = new g9(assessmentBffViewState, function1, function0, lVModalBottomSheetState, function7, function4, function6, function5, coroutineScope, lazyListStateA, function2, function3);
                gapComposerH.q(g9Var);
                objX = g9Var;
            }
            gapComposer = gapComposerH;
            LazyDslKt.a(modifierK, lazyListStateA, null, null, null, null, false, null, (Function1) objX, gapComposer, 0, 508);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new f3(assessmentBffViewState, coroutineScope, function1, function2, function3, function4, function5, function0, function6, function7, lVModalBottomSheetState, i2, i3);
        }
    }

    public static final void b(Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-1343955571);
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            SpacerKt.a(gapComposerH, SizeKt.f(new DTFunctionNameModifier("AssessmentSpacer"), LVAppDesignKitTheme.l(gapComposerH).f48416e));
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new t(i2, 8);
        }
    }
}
