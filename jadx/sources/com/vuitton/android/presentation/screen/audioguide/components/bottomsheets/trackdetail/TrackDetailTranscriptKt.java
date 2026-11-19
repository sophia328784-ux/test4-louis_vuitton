package com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsetsKt;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.components.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.ComposableSingletons$TrackDetailTranscriptKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.TrackDetailTranscriptKt;
import com.vuitton.android.presentation.screen.audioguide.models.TrackDetailUiModel;
import defpackage.pq0;
import defpackage.tr;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"", "lastScrolledCueIndex", "Landroidx/compose/ui/graphics/Color;", "animatedColor", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class TrackDetailTranscriptKt {
    public static final void a(final List list, final long j2, final long j3, final long j4, Composer composer, final int i2) {
        GapComposer gapComposer;
        int iNextIndex;
        list.getClass();
        GapComposer gapComposerH = composer.h(1314162938);
        int i3 = i2 | (gapComposerH.y(list) ? 4 : 2);
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.e(j2) ? 32 : 16;
        }
        int i4 = i3 | (gapComposerH.e(j3) ? 256 : 128) | (gapComposerH.e(j4) ? 2048 : 1024);
        if (gapComposerH.p(i4 & 1, (i4 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LazyListState lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
            float f5031b = WindowInsetsKt.e(WindowInsets_androidKt.b(gapComposerH), gapComposerH).getF5031b() + LVAppDesignKitTheme.l(gapComposerH).f48420j;
            Dp.Companion companion = Dp.f11004c;
            ListIterator listIterator = list.listIterator(list.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    iNextIndex = -1;
                    break;
                } else if (j2 >= ((TrackDetailUiModel.CueUiModel) listIterator.previous()).f53234a) {
                    iNextIndex = listIterator.nextIndex();
                    break;
                }
            }
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotIntStateKt.a(-1);
                gapComposerH.q(objX);
            }
            MutableIntState mutableIntState = (MutableIntState) objX;
            Integer numValueOf = Integer.valueOf(iNextIndex);
            boolean zD = gapComposerH.d(iNextIndex) | gapComposerH.K(lazyListStateA);
            Object objX2 = gapComposerH.x();
            if (zD || objX2 == composer$Companion$Empty$1) {
                objX2 = new TrackDetailTranscriptKt$TrackDetailTranscript$1$1(iNextIndex, lazyListStateA, mutableIntState, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, numValueOf, (Function2) objX2);
            Modifier modifierC = ModifierExtKt.c(PaddingKt.m(AspectRatioKt.a(SizeKt.d(new DTFunctionNameModifier("TrackDetailTranscript-9z6LAg8"), 1.0f), 0.6666667f, false), Call.Parameters.DEFAULT_CAMERA_ZOOM, f5031b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13), null, null, new Dp(LVAppDesignKitTheme.d(gapComposerH).f48383a), new Dp(120.0f), null, null, new Dp(120.0f), new Dp(LVAppDesignKitTheme.d(gapComposerH).f48383a), false, 307);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, modifierC);
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
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Modifier modifierK = PaddingKt.k(tr.e(gapComposerH, modifierC2, ComposeUiNode.Companion.d, "TrackDetailTranscript-9z6LAg8").o(SizeKt.f5052c), LVAppDesignKitTheme.l(gapComposerH).f48417f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            boolean zY = gapComposerH.y(list) | gapComposerH.d(iNextIndex) | ((i4 & 896) == 256) | ((i4 & 7168) == 2048);
            Object objX3 = gapComposerH.x();
            if (zY || objX3 == composer$Companion$Empty$1) {
                final int i5 = iNextIndex;
                Function1 function1 = new Function1() { // from class: n41
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        LazyListScope lazyListScope = (LazyListScope) obj;
                        lazyListScope.getClass();
                        ComposableSingletons$TrackDetailTranscriptKt.f53104a.getClass();
                        LazyListScope.f(lazyListScope, null, ComposableSingletons$TrackDetailTranscriptKt.f53105b, 3);
                        final e31 e31Var = new e31(9);
                        final List list2 = list;
                        int size = list2.size();
                        Function1<Integer, Object> function2 = new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                int iIntValue = ((Number) obj2).intValue();
                                return e31Var.invoke(Integer.valueOf(iIntValue), list2.get(iIntValue));
                            }
                        };
                        Function1<Integer, Object> function3 = new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$2
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                list2.get(((Number) obj2).intValue());
                                return null;
                            }
                        };
                        final int i6 = i5;
                        final long j5 = j3;
                        final long j6 = j4;
                        lazyListScope.h(size, function2, function3, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.trackdetail.TrackDetailTranscriptKt$TrackDetailTranscript_9z6LAg8$lambda$5$0$0$$inlined$itemsIndexed$default$3
                            @Override // kotlin.jvm.functions.Function4
                            public final Object g(Object obj2, Object obj3, Object obj4, Object obj5) {
                                int i7;
                                LazyItemScope lazyItemScope = (LazyItemScope) obj2;
                                int iIntValue = ((Number) obj3).intValue();
                                Composer composer2 = (Composer) obj4;
                                int iIntValue2 = ((Number) obj5).intValue();
                                if ((iIntValue2 & 6) == 0) {
                                    i7 = (composer2.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                                } else {
                                    i7 = iIntValue2;
                                }
                                if ((iIntValue2 & 48) == 0) {
                                    i7 |= composer2.d(iIntValue) ? 32 : 16;
                                }
                                if (composer2.p(i7 & 1, (i7 & 147) != 146)) {
                                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                    TrackDetailUiModel.CueUiModel cueUiModel = (TrackDetailUiModel.CueUiModel) list2.get(iIntValue);
                                    composer2.L(143493390);
                                    State stateB = SingleValueAnimationKt.b(iIntValue == i6 ? j5 : j6, AnimationSpecKt.c(300, 0, null, 6), pq0.k(iIntValue, "cueColor_"), composer2, 48, 8);
                                    Modifier modifierK2 = PaddingKt.k(SizeKt.d(Modifier.Companion.f8607b, 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer2).f48417f, 1);
                                    String str = cueUiModel.f53236c;
                                    TextStyle textStyle = LVAppDesignKitTheme.n(composer2).d;
                                    FontWeight.f10727c.getClass();
                                    TextStyle textStyleA = TextStyle.a(textStyle, 0L, 0L, FontWeight.f10731i, null, 0L, null, 0, 0, 0L, null, null, 16777211);
                                    long j7 = ((Color) stateB.getF10755b()).f8872a;
                                    TextAlign.f10959b.getClass();
                                    TextKt.c(str, modifierK2, j7, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, textStyleA, composer2, 0, 0, 130040);
                                    composer2.F();
                                } else {
                                    composer2.D();
                                }
                                return Unit.f71739a;
                            }
                        }));
                        LazyListScope.f(lazyListScope, null, ComposableSingletons$TrackDetailTranscriptKt.f53106c, 3);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(function1);
                objX3 = function1;
            }
            LazyDslKt.a(modifierK, lazyListStateA, null, null, horizontal, null, false, null, (Function1) objX3, gapComposerH, ImageMetadata.EDGE_MODE, 476);
            gapComposer = gapComposerH;
            gapComposer.Z(true);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: o41
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    TrackDetailTranscriptKt.a(list, j2, j3, j4, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1));
                    return Unit.f71739a;
                }
            };
        }
    }
}
