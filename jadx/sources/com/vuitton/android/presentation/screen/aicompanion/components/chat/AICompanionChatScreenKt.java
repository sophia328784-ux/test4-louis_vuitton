package com.vuitton.android.presentation.screen.aicompanion.components.chat;

import android.content.ClipboardManager;
import android.content.Context;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.ScaffoldKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatScreenKt;
import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionViewState;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPointKt;
import defpackage.g0;
import defpackage.h0;
import defpackage.o;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AICompanionChatScreenKt {
    public static final void a(final AICompanionViewState aICompanionViewState, final SnackbarHostState snackbarHostState, final Function1 function1, final Function0 function0, final Function1 function2, final Function0 function3, final Function0 function4, final Function0 function5, final Function0 function6, final Function1 function7, final Function2 function8, final Function1 function9, final Function1 function10, final Function1 function11, final Function1 function12, final Function0 function13, Composer composer, final int i2) {
        aICompanionViewState.getClass();
        snackbarHostState.getClass();
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
        GapComposer gapComposerH = composer.h(-319737098);
        int i3 = i2 | (gapComposerH.y(aICompanionViewState) ? 4 : 2) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function0) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function3) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function5) ? 8388608 : 4194304) | (gapComposerH.y(function6) ? 67108864 : 33554432) | (gapComposerH.y(function7) ? PKIFailureInfo.duplicateCertReq : 268435456);
        if (gapComposerH.p(i3 & 1, ((306783379 & i3) == 306783378 && (74899 & ((((((gapComposerH.y(function8) ? (char) 4 : (char) 2) | (gapComposerH.y(function9) ? ' ' : (char) 16)) | (gapComposerH.y(function10) ? (char) 256 : (char) 128)) | (gapComposerH.y(function11) ? (char) 2048 : (char) 1024)) | (gapComposerH.y(function12) ? 16384 : 8192)) | (gapComposerH.y(function13) ? (char) 0 : (char) 0))) == 74898) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new FocusRequester();
                gapComposerH.q(objX);
            }
            FocusRequester focusRequester = (FocusRequester) objX;
            AICompanionTracker aICompanionTracker = (AICompanionTracker) gapComposerH.k(AICompanionTrackerEntryPointKt.f52911a);
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            Object systemService = ((Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b)).getSystemService("clipboard");
            systemService.getClass();
            ClipboardManager clipboardManager = (ClipboardManager) systemService;
            Unit unit = Unit.f71739a;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new AICompanionChatScreenKt$AICompanionChatScreen$1$1(focusRequester, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            boolean zY = gapComposerH.y(aICompanionTracker);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                objX3 = new AICompanionChatScreenKt$AICompanionChatScreen$2$1(aICompanionTracker, null);
                gapComposerH.q(objX3);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX3);
            Modifier modifierO = ModifierExtKt.e(new DTFunctionNameModifier("AICompanionChatScreen"), "aiCompanion_chat_view").o(SizeKt.f5052c);
            Color.f8866b.getClass();
            ScaffoldKt.a(modifierO, ComposableLambdaKt.b(885361850, new o(function13, aICompanionViewState, function4, hapticFeedback, clipboardManager, function3, focusRequester), gapComposerH), null, ComposableLambdaKt.b(1380496188, new g0(snackbarHostState, 0), gapComposerH), null, 0, Color.f8870h, 0L, null, ComposableLambdaKt.b(1187632453, new h0(aICompanionViewState, function5, function7, function8, function9, function10, function11, function12, function2, focusRequester, function6, function0, function1), gapComposerH), gapComposerH, 806882352, 436);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2(snackbarHostState, function1, function0, function2, function3, function4, function5, function6, function7, function8, function9, function10, function11, function12, function13, i2) { // from class: i0

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ SnackbarHostState f69824c;
                public final /* synthetic */ Function1 d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function0 f69825e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function1 f69826f;
                public final /* synthetic */ Function0 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function0 f69827h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ Function0 f69828i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function0 f69829j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function1 f69830k;
                public final /* synthetic */ Function2 l;
                public final /* synthetic */ Function1 m;
                public final /* synthetic */ Function1 n;
                public final /* synthetic */ Function1 o;
                public final /* synthetic */ Function1 p;
                public final /* synthetic */ Function0 q;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(49);
                    AICompanionChatScreenKt.a(this.f69823b, this.f69824c, this.d, this.f69825e, this.f69826f, this.g, this.f69827h, this.f69828i, this.f69829j, this.f69830k, this.l, this.m, this.n, this.o, this.p, this.q, (Composer) obj, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
