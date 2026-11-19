package com.vuitton.android.presentation.screen.aicompanion.components.chat;

import android.content.res.Configuration;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.AndroidMenu_androidKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpOffset;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.compose.AnimateLottieCompositionAsStateKt;
import com.airbnb.lottie.compose.LottieAnimatable;
import com.airbnb.lottie.compose.LottieAnimationKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.airbnb.lottie.compose.LottieDynamicProperties;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.components.LoadingExtKt;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.presentation.common.editorial.components.carouselm.CarouselMKt;
import com.vuitton.android.presentation.common.editorial.components.productcarousel.ProductCarouselKt;
import com.vuitton.android.presentation.common.editorial.models.EditorialModuleUiModel;
import com.vuitton.android.presentation.compose.StringExtKt;
import com.vuitton.android.presentation.compose.components.TextWithTypingAnimationKt;
import com.vuitton.android.presentation.screen.aicompanion.components.chat.AICompanionChatMessagesKt;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatMessageSectionUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.ChatMessageUiModel;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTracker;
import com.vuitton.android.presentation.screen.aicompanion.models.tracking.AICompanionTrackerEntryPointKt;
import com.vuitton.android.presentation.tracking.GA4Tracker;
import com.vuitton.android.presentation.tracking.GA4TrackerEntryPointKt;
import defpackage.a0;
import defpackage.b0;
import defpackage.cj;
import defpackage.d0;
import defpackage.d21;
import defpackage.f0;
import defpackage.n00;
import defpackage.pq0;
import defpackage.q;
import defpackage.t;
import defpackage.tr;
import defpackage.u;
import defpackage.v;
import defpackage.w;
import defpackage.x;
import defpackage.y;
import defpackage.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003¨\u0006\u0005²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"", "previousMessageCount", "", "showContextMenu", "isTypingAnimationDone", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AICompanionChatMessagesKt {
    public static final void a(Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(1793031142);
        int i4 = 0;
        if (gapComposerH.p(i2 & 1, i2 != 0)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LottieCompositionResultImpl lottieCompositionResultImplH = n00.h(LVAppDesignKitTheme.a(gapComposerH).I, gapComposerH, 0);
            LottieAnimatable lottieAnimatableA = AnimateLottieCompositionAsStateKt.a(lottieCompositionResultImplH.getF10755b(), false, null, Integer.MAX_VALUE, gapComposerH, 958);
            LottieDynamicProperties lottieDynamicPropertiesB = LoadingExtKt.b(false, gapComposerH);
            Modifier modifierK = PaddingKt.k(tr.d("AICompanionChatLoadingMessage", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b);
            Alignment.f8582a.getClass();
            RowMeasurePolicy rowMeasurePolicyA = RowKt.a(spacedAlignedF, Alignment.Companion.l, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierK);
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
            Modifier modifierO = SizeKt.o(tr.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "AICompanionChatLoadingMessage"), LVAppDesignKitTheme.d(gapComposerH).m);
            LottieComposition f10755b = lottieCompositionResultImplH.getF10755b();
            boolean zK = gapComposerH.K(lottieAnimatableA);
            Object objX = gapComposerH.x();
            if (zK || objX == Composer.Companion.f7939a) {
                objX = new x(lottieAnimatableA, i4);
                gapComposerH.q(objX);
            }
            LottieAnimationKt.b(f10755b, (Function0) objX, modifierO, false, false, false, false, null, false, lottieDynamicPropertiesB, null, null, false, false, null, null, false, gapComposerH, 1073741824, 0, 130552);
            TextKt.c(StringResources_androidKt.c(gapComposerH, R.string.companion_loading_message), n00.g("AICompanionChatLoadingMessage", "aiCompanion_loadingMessage_text"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).m, gapComposerH, 0, 0, 131064);
            gapComposerH = gapComposerH;
            i3 = 1;
            gapComposerH.Z(true);
        } else {
            i3 = 1;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new t(i2, i3);
        }
    }

    public static final void b(Modifier modifier, List list, boolean z, Function1 function1, Function2 function2, Function1 function3, Function1 function4, Function1 function5, Function1 function6, Composer composer, int i2, int i3) {
        int i4;
        Function2 function7;
        Function1 function8;
        Function1 function9;
        GapComposer gapComposer;
        Modifier modifier2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "AICompanionChatMessages");
        }
        list.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        GapComposer gapComposerH = composer.h(35377829);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        }
        int i6 = i4 | (gapComposerH.y(list) ? 32 : 16);
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i6 |= gapComposerH.b(z) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i6 |= gapComposerH.y(function1) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            function7 = function2;
            i6 |= gapComposerH.y(function7) ? 16384 : 8192;
        } else {
            function7 = function2;
        }
        if ((196608 & i2) == 0) {
            function8 = function3;
            i6 |= gapComposerH.y(function8) ? 131072 : 65536;
        } else {
            function8 = function3;
        }
        if ((1572864 & i2) == 0) {
            function9 = function4;
            i6 |= gapComposerH.y(function9) ? 1048576 : 524288;
        } else {
            function9 = function4;
        }
        if ((i2 & 12582912) == 0) {
            i6 |= gapComposerH.y(function5) ? 8388608 : 4194304;
        }
        if ((i2 & 100663296) == 0) {
            i6 |= gapComposerH.y(function6) ? 67108864 : 33554432;
        }
        Modifier modifier3 = modifierE;
        if (gapComposerH.p(i6 & 1, (i6 & 38347923) != 38347922)) {
            Modifier dTFunctionNameModifier = i5 != 0 ? new DTFunctionNameModifier("AICompanionChatMessages") : modifier3;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            WindowInsetsHolder.y.getClass();
            Boolean bool = (Boolean) ((SnapshotMutableStateImpl) WindowInsetsHolder.Companion.c(gapComposerH).f5076c.d).getF10755b();
            boolean zBooleanValue = bool.booleanValue();
            int size = list.size() + (z ? 1 : 0);
            Integer numValueOf = Integer.valueOf(list.size());
            boolean zD = gapComposerH.d(size) | gapComposerH.K(lazyListStateA);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zD || objX == composer$Companion$Empty$1) {
                objX = new AICompanionChatMessagesKt$AICompanionChatMessages$1$1(size, lazyListStateA, null);
                gapComposerH.q(objX);
            }
            EffectsKt.e(gapComposerH, numValueOf, (Function2) objX);
            boolean zB = gapComposerH.b(zBooleanValue) | gapComposerH.d(size) | gapComposerH.K(lazyListStateA);
            Object objX2 = gapComposerH.x();
            if (zB || objX2 == composer$Companion$Empty$1) {
                objX2 = new AICompanionChatMessagesKt$AICompanionChatMessages$2$1(zBooleanValue, size, lazyListStateA, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, bool, (Function2) objX2);
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotIntStateKt.a(0);
                gapComposerH.q(objX3);
            }
            MutableIntState mutableIntState = (MutableIntState) objX3;
            Integer numValueOf2 = Integer.valueOf(list.size());
            boolean zY = gapComposerH.y(list) | gapComposerH.y(hapticFeedback);
            Object objX4 = gapComposerH.x();
            if (zY || objX4 == composer$Companion$Empty$1) {
                objX4 = new AICompanionChatMessagesKt$AICompanionChatMessages$3$1(list, hapticFeedback, mutableIntState, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, numValueOf2, (Function2) objX4);
            float f2 = ((Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a)).screenHeightDp;
            Dp.Companion companion = Dp.f11004c;
            Modifier modifierE2 = ModifierExtKt.e(dTFunctionNameModifier, "aiCompanion_messageList_view");
            PaddingValuesImpl paddingValuesImplE = PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, f2 * 0.2f, 5);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f);
            boolean zY2 = gapComposerH.y(list) | ((458752 & i6) == 131072) | ((3670016 & i6) == 1048576) | ((i6 & 7168) == 2048) | ((57344 & i6) == 16384) | ((234881024 & i6) == 67108864) | ((29360128 & i6) == 8388608) | ((i6 & 896) == 256);
            Object objX5 = gapComposerH.x();
            if (zY2 || objX5 == composer$Companion$Empty$1) {
                a0 a0Var = new a0(list, z, function8, function9, function1, function7, function6, function5);
                gapComposerH.q(a0Var);
                objX5 = a0Var;
            }
            gapComposer = gapComposerH;
            LazyDslKt.a(modifierE2, lazyListStateA, paddingValuesImplE, spacedAlignedF, null, null, false, null, (Function1) objX5, gapComposer, 0, 488);
            modifier2 = dTFunctionNameModifier;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            modifier2 = modifier3;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b0(modifier2, list, z, function1, function2, function3, function4, function5, function6, i2, i3);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r13v10 */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r14v1, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r14v10, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r14v12, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r14v16, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r14v17, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r14v18, types: [androidx.compose.runtime.Composer] */
    /* JADX WARN: Type inference failed for: r14v20, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r14v21 */
    /* JADX WARN: Type inference failed for: r14v22 */
    /* JADX WARN: Type inference failed for: r14v23 */
    /* JADX WARN: Type inference failed for: r14v24 */
    /* JADX WARN: Type inference failed for: r14v25 */
    /* JADX WARN: Type inference failed for: r14v26 */
    /* JADX WARN: Type inference failed for: r14v27 */
    /* JADX WARN: Type inference failed for: r14v28 */
    /* JADX WARN: Type inference failed for: r14v29 */
    /* JADX WARN: Type inference failed for: r14v7, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r14v8, types: [androidx.compose.runtime.Composer, androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r14v9, types: [androidx.compose.runtime.GapComposer] */
    /* JADX WARN: Type inference failed for: r1v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [boolean] */
    /* JADX WARN: Type inference failed for: r1v9 */
    public static final void c(ChatMessageUiModel chatMessageUiModel, Function1 function1, Function2 function2, Function1 function3, Function1 function4, Composer composer, int i2) {
        ?? r14;
        String str;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MutableState mutableState;
        ?? r1;
        ?? r15;
        ?? r2;
        int i3;
        ?? r16;
        Object obj;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        int i4;
        char c2;
        boolean z;
        ChatMessageUiModel chatMessageUiModel2 = chatMessageUiModel;
        Function1 function5 = function3;
        GapComposer gapComposerH = composer.h(-300606462);
        Applier applier = gapComposerH.f7976a;
        int i5 = i2 | (gapComposerH.y(chatMessageUiModel2) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128) | (gapComposerH.y(function5) ? 2048 : 1024) | (gapComposerH.y(function4) ? 16384 : 8192);
        if (gapComposerH.p(i5 & 1, (i5 & 9363) != 9362)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            AICompanionTracker aICompanionTracker = (AICompanionTracker) gapComposerH.k(AICompanionTrackerEntryPointKt.f52911a);
            GA4Tracker gA4Tracker = (GA4Tracker) gapComposerH.k(GA4TrackerEntryPointKt.f65812a);
            String str2 = chatMessageUiModel2.f52903a;
            boolean z2 = chatMessageUiModel2.f52907f;
            boolean zK = gapComposerH.K(str2);
            Object objX = gapComposerH.x();
            boolean z3 = z2;
            Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$3) {
                objX = SnapshotStateKt.g(Boolean.valueOf(z3));
                gapComposerH.q(objX);
            }
            Composer$Companion$Empty$1 composer$Companion$Empty$4 = composer$Companion$Empty$3;
            String str3 = "AgentMessage";
            Modifier modifierD = SizeKt.d(ModifierExtKt.e(new DTFunctionNameModifier("AgentMessage"), "aiCompanion_agentMessage_text"), 1.0f);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8586e, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            MutableState mutableState2 = (MutableState) objX;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function6 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function6);
            Function2 function7 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function8 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function8);
            Function1 function9 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function9);
            Function2 function10 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function10);
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48417f);
            AICompanionTracker aICompanionTracker2 = aICompanionTracker;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("AgentMessage");
            GA4Tracker gA4Tracker2 = gA4Tracker;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA, function6);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function7);
            cj.t(iHashCode2, gapComposerH, function8, gapComposerH, function9);
            Updater.c(gapComposerH, modifierC2, function10);
            gapComposerH.L(-330554705);
            Iterator it = chatMessageUiModel2.d.iterator();
            ?? r13 = gapComposerH;
            while (it.hasNext()) {
                ChatMessageSectionUiModel chatMessageSectionUiModel = (ChatMessageSectionUiModel) it.next();
                if (chatMessageSectionUiModel instanceof ChatMessageSectionUiModel.SimpleText) {
                    r13.L(-1860589079);
                    if (z3) {
                        ?? r17 = r13;
                        mutableState = mutableState2;
                        str = str3;
                        c2 = ' ';
                        TextKt.d(StringExtKt.b(((ChatMessageSectionUiModel.SimpleText) chatMessageSectionUiModel).f52902a), PaddingKt.k(n00.i(r13, -1860531791, str3), LVAppDesignKitTheme.l(r13).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2), LVAppDesignKitTheme.c(r13).f48361b.f48382k, 0L, 0L, null, 0L, 0, false, 0, 0, null, null, LVAppDesignKitTheme.n(r13).f48429j, r17, 0, 0, 262136);
                        ?? r18 = r17;
                        r18.Z(false);
                        aICompanionTracker2 = aICompanionTracker2;
                        z = false;
                        composer$Companion$Empty$1 = composer$Companion$Empty$4;
                        r15 = r18;
                    } else {
                        str = str3;
                        ?? r19 = r13;
                        Composer$Companion$Empty$1 composer$Companion$Empty$5 = composer$Companion$Empty$4;
                        MutableState mutableState3 = mutableState2;
                        AICompanionTracker aICompanionTracker3 = aICompanionTracker2;
                        Modifier modifierK = PaddingKt.k(n00.i(r19, -1860091963, str), LVAppDesignKitTheme.l(r19).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                        String str4 = ((ChatMessageSectionUiModel.SimpleText) chatMessageSectionUiModel).f52902a;
                        TextStyle textStyle = LVAppDesignKitTheme.n(r19).f48429j;
                        long j2 = LVAppDesignKitTheme.c(r19).f48361b.f48382k;
                        boolean zK2 = ((i5 & 57344) == 16384) | r19.K(mutableState3) | r19.y(chatMessageUiModel2);
                        Object objX2 = r19.x();
                        if (zK2) {
                            composer$Companion$Empty$2 = composer$Companion$Empty$5;
                        } else {
                            composer$Companion$Empty$2 = composer$Companion$Empty$5;
                            if (objX2 != composer$Companion$Empty$2) {
                                i4 = 2;
                            }
                            mutableState = mutableState3;
                            aICompanionTracker2 = aICompanionTracker3;
                            composer$Companion$Empty$1 = composer$Companion$Empty$2;
                            c2 = ' ';
                            TextWithTypingAnimationKt.a(modifierK, str4, textStyle, j2, null, 0L, 0L, (Function0) objX2, r19, 0);
                            ?? r110 = r19;
                            z = false;
                            r110.Z(false);
                            r15 = r110;
                        }
                        i4 = 2;
                        objX2 = new q(function4, chatMessageUiModel2, mutableState3, i4);
                        r19.q(objX2);
                        mutableState = mutableState3;
                        aICompanionTracker2 = aICompanionTracker3;
                        composer$Companion$Empty$1 = composer$Companion$Empty$2;
                        c2 = ' ';
                        TextWithTypingAnimationKt.a(modifierK, str4, textStyle, j2, null, 0L, 0L, (Function0) objX2, r19, 0);
                        ?? r111 = r19;
                        z = false;
                        r111.Z(false);
                        r15 = r111;
                    }
                    r15.Z(z);
                } else {
                    it = it;
                    str = str3;
                    ?? r112 = r13;
                    z3 = z3;
                    composer$Companion$Empty$1 = composer$Companion$Empty$4;
                    mutableState = mutableState2;
                    aICompanionTracker2 = aICompanionTracker2;
                    GA4Tracker gA4Tracker3 = gA4Tracker2;
                    if (!(chatMessageSectionUiModel instanceof ChatMessageSectionUiModel.EditorialSection)) {
                        throw d21.u(r112, -475659756, false);
                    }
                    r112.L(-1859242222);
                    if (((Boolean) mutableState.getF10755b()).booleanValue()) {
                        r112.L(-1859163947);
                        ChatMessageSectionUiModel.EditorialSection editorialSection = (ChatMessageSectionUiModel.EditorialSection) chatMessageSectionUiModel;
                        EditorialModuleUiModel editorialModuleUiModel = editorialSection.f52901a;
                        if (editorialModuleUiModel instanceof EditorialModuleUiModel.ProductCarouselUiModel) {
                            r112.L(-1859082851);
                            Unit unit = Unit.f71739a;
                            boolean zK3 = r112.K(chatMessageSectionUiModel) | r112.y(gA4Tracker3);
                            Object objX3 = r112.x();
                            if (zK3 || objX3 == composer$Companion$Empty$1) {
                                obj = null;
                                objX3 = new AICompanionChatMessagesKt$AgentMessage$1$1$1$2$1(gA4Tracker3, editorialSection, null);
                                r112.q(objX3);
                            } else {
                                obj = null;
                            }
                            EffectsKt.e(r112, unit, (Function2) objX3);
                            Modifier modifierD2 = SizeKt.d(new DTFunctionNameModifier(str), 1.0f);
                            EditorialModuleUiModel.ProductCarouselUiModel productCarouselUiModel = (EditorialModuleUiModel.ProductCarouselUiModel) editorialModuleUiModel;
                            float f2 = LVAppDesignKitTheme.l(r112).f48416e;
                            boolean zY = ((i5 & 112) == 32) | r112.y(gA4Tracker3);
                            Object objX4 = r112.x();
                            if (zY || objX4 == composer$Companion$Empty$1) {
                                objX4 = new f0(function1, gA4Tracker3, 0);
                                r112.q(objX4);
                            }
                            gA4Tracker2 = gA4Tracker3;
                            ProductCarouselKt.a(modifierD2, productCarouselUiModel, null, f2, 0.7f, (Function2) objX4, function2, r112, ((i5 << 12) & 3670016) | 24582);
                            ?? r113 = r112;
                            r113.Z(false);
                            r2 = 0;
                            r16 = r113;
                        } else {
                            gA4Tracker2 = gA4Tracker3;
                            if (editorialModuleUiModel instanceof EditorialModuleUiModel.CarouselMUiModel) {
                                r112.L(-1856727874);
                                EditorialModuleUiModel.CarouselMUiModel carouselMUiModel = (EditorialModuleUiModel.CarouselMUiModel) editorialModuleUiModel;
                                String str5 = carouselMUiModel.f50826b;
                                List list = carouselMUiModel.f50827c;
                                LVColorScheme lVColorScheme = LVColorScheme.DEFAULT;
                                boolean zK4 = r112.K(chatMessageSectionUiModel) | ((i5 & 7168) == 2048) | r112.y(aICompanionTracker2);
                                Object objX5 = r112.x();
                                if (zK4 || objX5 == composer$Companion$Empty$1) {
                                    i3 = 0;
                                    objX5 = new u(function3, aICompanionTracker2, editorialSection, i3);
                                    r112.q(objX5);
                                } else {
                                    i3 = 0;
                                }
                                Function2 function11 = (Function2) objX5;
                                Object objX6 = r112.x();
                                if (objX6 == composer$Companion$Empty$1) {
                                    objX6 = new v(i3);
                                    r112.q(objX6);
                                }
                                ?? r3 = i3;
                                CarouselMKt.a(null, str5, list, lVColorScheme, false, true, function11, (Function0) objX6, r112, 12782592, 17);
                                r112.Z(r3);
                                r2 = r3;
                                r16 = r112;
                            } else {
                                r2 = 0;
                                r112.L(-1855938800);
                                r112.Z(false);
                                r16 = r112;
                            }
                        }
                        r16.Z(r2);
                        r1 = r2;
                        r15 = r16;
                    } else {
                        gA4Tracker2 = gA4Tracker3;
                        aICompanionTracker2 = aICompanionTracker2;
                        r1 = 0;
                        r112.L(-1855771772);
                        r112.Z(false);
                        r15 = r112;
                    }
                    r15.Z(r1);
                }
                chatMessageUiModel2 = chatMessageUiModel;
                composer$Companion$Empty$4 = composer$Companion$Empty$1;
                str3 = str;
                r13 = r15;
                mutableState2 = mutableState;
                it = it;
                z3 = z3;
            }
            function5 = function3;
            ?? r114 = r13;
            pq0.x(r114, false, true, true);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            r14 = r114;
        } else {
            GapComposer gapComposer = gapComposerH;
            gapComposer.D();
            r14 = gapComposer;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = r14.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new w((Object) chatMessageUiModel, (Object) function1, function2, (Function) function5, (Function) function4, i2, 0);
        }
    }

    public static final void d(ChatMessageUiModel chatMessageUiModel, Function0 function0, Function0 function1, Function0 function2, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(1529665304);
        int i3 = i2 | (gapComposerH.y(chatMessageUiModel) ? 4 : 2) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        int i4 = 0;
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            String str = chatMessageUiModel.f52906e;
            float f2 = LVAppDesignKitTheme.d(gapComposerH).F;
            float f3 = LVAppDesignKitTheme.l(gapComposerH).f48417f;
            Modifier modifierD = tr.d("MessageContextMenu", 1.0f);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.g, false);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
            ComposeUiNode.b0.getClass();
            Function0 function3 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function3);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            float f4 = f2 - f3;
            Dp.Companion companion = Dp.f11004c;
            long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(f4)) << 32) | (((long) Float.floatToRawIntBits(Call.Parameters.DEFAULT_CAMERA_ZOOM)) & BodyPartID.bodyIdMax);
            int i5 = DpOffset.f11007b;
            AndroidMenu_androidKt.a(true, function0, BackgroundKt.b(SizeKt.s(new DTFunctionNameModifier("MessageContextMenu"), LVAppDesignKitTheme.d(gapComposerH).F), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48375b, LVAppDesignKitTheme.j(gapComposerH).d), jFloatToRawIntBits, null, null, LVAppDesignKitTheme.j(gapComposerH).d, 0L, Call.Parameters.DEFAULT_CAMERA_ZOOM, ComposableLambdaKt.b(-695775027, new y(str, function1, function2, i4), gapComposerH), gapComposerH, 54, 1968);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z((Object) chatMessageUiModel, (Object) function0, (Object) function1, (Object) function2, i2, 0);
        }
    }

    public static final void e(final ChatMessageUiModel chatMessageUiModel, final Function1 function1, final Function1 function2, Composer composer, final int i2) {
        RecomposeScopeImpl recomposeScopeImplB0;
        Function2 function3;
        Object obj;
        final String str;
        MutableState mutableState;
        Object obj2;
        boolean z;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        GapComposer gapComposerH = composer.h(422398683);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.y(chatMessageUiModel) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.y(function2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            HapticFeedback hapticFeedback = (HapticFeedback) gapComposerH.k(CompositionLocalsKt.l);
            AICompanionTracker aICompanionTracker = (AICompanionTracker) gapComposerH.k(AICompanionTrackerEntryPointKt.f52911a);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                obj = objX;
                MutableState mutableStateG = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(mutableStateG);
                obj = mutableStateG;
            }
            obj = objX;
            MutableState mutableState2 = (MutableState) obj;
            List list = chatMessageUiModel.d;
            ArrayList arrayList = new ArrayList();
            for (Object obj7 : list) {
                if (obj7 instanceof ChatMessageSectionUiModel.SimpleText) {
                    arrayList.add(obj7);
                }
            }
            ChatMessageSectionUiModel.SimpleText simpleText = (ChatMessageSectionUiModel.SimpleText) CollectionsKt.firstOrNull(arrayList);
            if (simpleText == null || (str = simpleText.f52902a) == null) {
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 == null) {
                    return;
                }
                final int i4 = 0;
                function3 = new Function2(chatMessageUiModel, function1, function2, i2, i4) { // from class: c0

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ int f21006b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public final /* synthetic */ ChatMessageUiModel f21007c;
                    public final /* synthetic */ Function1 d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ Function1 f21008e;

                    {
                        this.f21006b = i4;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj8, Object obj9) {
                        int i5 = this.f21006b;
                        Function1 function4 = this.f21008e;
                        Function1 function5 = this.d;
                        ChatMessageUiModel chatMessageUiModel2 = this.f21007c;
                        Composer composer2 = (Composer) obj8;
                        ((Integer) obj9).getClass();
                        switch (i5) {
                            case 0:
                                AICompanionChatMessagesKt.e(chatMessageUiModel2, function5, function4, composer2, RecomposeScopeImplKt.a(1));
                                break;
                            default:
                                AICompanionChatMessagesKt.e(chatMessageUiModel2, function5, function4, composer2, RecomposeScopeImplKt.a(1));
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
            } else {
                Modifier modifierD = tr.d("UserMessage", 1.0f);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.g, false);
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierD);
                ComposeUiNode.b0.getClass();
                Function0 function0 = ComposeUiNode.Companion.f9641b;
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Function2 function4 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD, function4);
                Function2 function5 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function5);
                Integer numValueOf = Integer.valueOf(iHashCode);
                Function2 function6 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function6);
                Function1 function7 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function7);
                Function2 function8 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function8);
                BiasAlignment.Horizontal horizontal = Alignment.Companion.p;
                Modifier modifierM = PaddingKt.m(new DTFunctionNameModifier("UserMessage"), LVAppDesignKitTheme.l(gapComposerH).f48420j, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 10);
                ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, horizontal, gapComposerH, 48);
                int iHashCode2 = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
                Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierM);
                if (applier == null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, columnMeasurePolicyA, function4);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, function5);
                cj.t(iHashCode2, gapComposerH, function6, gapComposerH, function7);
                Modifier modifierB = BackgroundKt.b(ClipKt.a(PaddingKt.m(n00.f(gapComposerH, modifierC2, function8, "UserMessage", "aiCompanion_userMessage_text"), LVAppDesignKitTheme.l(gapComposerH).f48420j, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), LVAppDesignKitTheme.j(gapComposerH).d), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48377e, LVAppDesignKitTheme.j(gapComposerH).d);
                boolean zY = gapComposerH.y(hapticFeedback) | gapComposerH.y(aICompanionTracker);
                Object objX2 = gapComposerH.x();
                if (zY || objX2 == composer$Companion$Empty$1) {
                    mutableState = mutableState2;
                    q qVar = new q(hapticFeedback, aICompanionTracker, mutableState);
                    gapComposerH.q(qVar);
                    obj2 = qVar;
                } else {
                    mutableState = mutableState2;
                    obj2 = objX2;
                }
                Function0 function9 = (Function0) obj2;
                Object objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    z = true;
                    v vVar = new v(1);
                    gapComposerH.q(vVar);
                    obj3 = vVar;
                } else {
                    z = true;
                    obj3 = objX3;
                }
                final MutableState mutableState3 = mutableState;
                final int i5 = 0;
                boolean z2 = z;
                TextKt.c(str, PaddingKt.i(ClickableKt.f(modifierB, function9, (Function0) obj3), LVAppDesignKitTheme.l(gapComposerH).f48416e), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48429j, gapComposerH, 0, 0, 131064);
                if (((Boolean) mutableState3.getF10755b()).booleanValue()) {
                    gapComposerH.L(1477262138);
                    Object objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        obj4 = objX4;
                        d0 d0Var = new d0(0, mutableState3);
                        gapComposerH.q(d0Var);
                        obj4 = d0Var;
                    }
                    obj4 = objX4;
                    Function0 function10 = (Function0) obj4;
                    boolean z3 = (gapComposerH.K(str) ? 1 : 0) | ((i3 & 112) == 32 ? z2 ? 1 : 0 : false);
                    Object objX5 = gapComposerH.x();
                    if (z3 != 0 || objX5 == composer$Companion$Empty$1) {
                        Function0 function11 = new Function0() { // from class: e0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i6 = i5;
                                MutableState mutableState4 = mutableState3;
                                String str2 = str;
                                Function1 function12 = function1;
                                switch (i6) {
                                    case 0:
                                        function12.invoke(str2);
                                        mutableState4.setValue(Boolean.FALSE);
                                        break;
                                    default:
                                        function12.invoke(str2);
                                        mutableState4.setValue(Boolean.FALSE);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(function11);
                        obj5 = function11;
                    } else {
                        obj5 = objX5;
                    }
                    Function0 function12 = (Function0) obj5;
                    boolean z4 = ((i3 & 896) == 256 ? z2 ? 1 : 0 : false) | (gapComposerH.K(str) ? 1 : 0);
                    Object objX6 = gapComposerH.x();
                    if (z4 != 0 || objX6 == composer$Companion$Empty$1) {
                        final int i6 = z2 ? 1 : 0;
                        Function0 function13 = new Function0() { // from class: e0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i7 = i6;
                                MutableState mutableState4 = mutableState3;
                                String str2 = str;
                                Function1 function14 = function2;
                                switch (i7) {
                                    case 0:
                                        function14.invoke(str2);
                                        mutableState4.setValue(Boolean.FALSE);
                                        break;
                                    default:
                                        function14.invoke(str2);
                                        mutableState4.setValue(Boolean.FALSE);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposerH.q(function13);
                        obj6 = function13;
                    } else {
                        obj6 = objX6;
                    }
                    d(chatMessageUiModel, function10, function12, (Function0) obj6, gapComposerH, (i3 & 14) | 48);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(1477709003);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(z2);
                gapComposerH.Z(z2);
            }
            recomposeScopeImplB0.d = function3;
        }
        gapComposerH.D();
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final int i7 = 1;
            function3 = new Function2(chatMessageUiModel, function1, function2, i2, i7) { // from class: c0

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f21006b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ ChatMessageUiModel f21007c;
                public final /* synthetic */ Function1 d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ Function1 f21008e;

                {
                    this.f21006b = i7;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj8, Object obj9) {
                    int i8 = this.f21006b;
                    Function1 function14 = this.f21008e;
                    Function1 function15 = this.d;
                    ChatMessageUiModel chatMessageUiModel2 = this.f21007c;
                    Composer composer2 = (Composer) obj8;
                    ((Integer) obj9).getClass();
                    switch (i8) {
                        case 0:
                            AICompanionChatMessagesKt.e(chatMessageUiModel2, function15, function14, composer2, RecomposeScopeImplKt.a(1));
                            break;
                        default:
                            AICompanionChatMessagesKt.e(chatMessageUiModel2, function15, function14, composer2, RecomposeScopeImplKt.a(1));
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            recomposeScopeImplB0.d = function3;
        }
    }
}
