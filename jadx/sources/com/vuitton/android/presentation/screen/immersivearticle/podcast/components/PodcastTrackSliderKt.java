package com.vuitton.android.presentation.screen.immersivearticle.podcast.components;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.interaction.DragInteractionKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.material3.SliderKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.unit.Dp;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt;
import defpackage.a;
import defpackage.ee0;
import defpackage.jo0;
import defpackage.md;
import defpackage.ql0;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.eac.EACTags;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003¨\u0006\u0005²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/unit/Dp;", "trackHeight", "", "isDragged", "isPressed", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PodcastTrackSliderKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float f58900a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float f58901b;

    static {
        Dp.Companion companion = Dp.f11004c;
        f58900a = 6.0f;
        f58901b = 12.0f;
    }

    public static final void a(Modifier modifier, final float f2, final float f3, final boolean z, final Function1 function1, final Function0 function0, final Function1 function2, Composer composer, final int i2, final int i3) {
        int i4;
        Boolean bool;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "PodcastTrackSlider");
        }
        function1.getClass();
        function0.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(2080527527);
        int i5 = i3 & 1;
        if (i5 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2) | i2;
        }
        if ((i2 & 48) == 0) {
            i4 |= gapComposerH.c(f2) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i4 |= gapComposerH.c(f3) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i4 |= gapComposerH.b(z) ? 2048 : 1024;
        }
        if ((196608 & i2) == 0) {
            i4 |= gapComposerH.y(function0) ? 131072 : 65536;
        }
        if (gapComposerH.p(i4 & 1, (599187 & i4) != 599186)) {
            if (i5 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("PodcastTrackSlider");
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = InteractionSourceKt.a();
                gapComposerH.q(objX);
            }
            MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) objX;
            int i6 = i4;
            State stateA = AnimateAsStateKt.a(z ? f58901b : f58900a, AnimationSpecKt.b(0.75f, 200.0f, 4, null), "trackHeight", null, gapComposerH, 432, 8);
            MutableState mutableStateA = DragInteractionKt.a(mutableInteractionSource, gapComposerH);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            final MutableState mutableState = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX3);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX3;
            Boolean bool2 = (Boolean) mutableStateA.getF10755b();
            bool2.getClass();
            Boolean bool3 = (Boolean) mutableState.getF10755b();
            bool3.getClass();
            Boolean boolValueOf = Boolean.valueOf(z);
            boolean zK = gapComposerH.K(mutableStateA) | ((i6 & 7168) == 2048);
            Object objX4 = gapComposerH.x();
            if (zK || objX4 == composer$Companion$Empty$1) {
                bool = boolValueOf;
                objX4 = new PodcastTrackSliderKt$PodcastTrackSlider$1$1(function2, z, mutableStateA, mutableState, null);
                gapComposerH.q(objX4);
            } else {
                bool = boolValueOf;
            }
            int i7 = r14 >> 3;
            EffectsKt.f(bool2, bool3, bool, (Function2) objX4, gapComposerH);
            Unit unit = Unit.f71739a;
            boolean zY = gapComposerH.y(coroutineScope);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                objX5 = new PointerInputEventHandler() { // from class: com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt$PodcastTrackSlider$2$1

                    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt$PodcastTrackSlider$2$1$1, reason: invalid class name */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
                    @DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt$PodcastTrackSlider$2$1$1", f = "PodcastTrackSlider.kt", l = {EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID}, m = "invokeSuspend", v = 2)
                    final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public int f58908c;
                        public /* synthetic */ Object d;

                        /* JADX INFO: renamed from: e, reason: collision with root package name */
                        public final /* synthetic */ CoroutineScope f58909e;

                        /* JADX INFO: renamed from: f, reason: collision with root package name */
                        public final /* synthetic */ MutableState f58910f;
                        public final /* synthetic */ PointerInputScope g;

                        /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt$PodcastTrackSlider$2$1$1$1, reason: invalid class name and collision with other inner class name */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
                        @DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt$PodcastTrackSlider$2$1$1$1", f = "PodcastTrackSlider.kt", l = {EACTags.ANSWER_TO_RESET}, m = "invokeSuspend", v = 2)
                        final class C02851 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public int f58911b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public final /* synthetic */ PointerInputScope f58912c;
                            public final /* synthetic */ MutableState d;

                            /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt$PodcastTrackSlider$2$1$1$1$1, reason: invalid class name and collision with other inner class name */
                            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
                            @DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt$PodcastTrackSlider$2$1$1$1$1", f = "PodcastTrackSlider.kt", l = {83}, m = "invokeSuspend", v = 2)
                            final class C02861 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public int f58913c;
                                public /* synthetic */ Object d;

                                /* JADX INFO: renamed from: e, reason: collision with root package name */
                                public final /* synthetic */ MutableState f58914e;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                public C02861(MutableState mutableState, Continuation continuation) {
                                    super(2, continuation);
                                    this.f58914e = mutableState;
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Continuation create(Object obj, Continuation continuation) {
                                    C02861 c02861 = new C02861(this.f58914e, continuation);
                                    c02861.d = obj;
                                    return c02861;
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    return ((C02861) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                                }

                                /* JADX WARN: Code duplicated, block: B:11:0x0027 A[RETURN] */
                                /* JADX WARN: Code duplicated, block: B:14:0x0032  */
                                /* JADX WARN: Code duplicated, block: B:20:0x0046  */
                                /* JADX WARN: Code duplicated, block: B:25:0x0051 A[SYNTHETIC] */
                                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0025 -> B:12:0x0028). Please report as a decompilation issue!!! */
                                /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                                    jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:14:0x0032
                                    	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                                    	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                                    	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                                    */
                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final java.lang.Object invokeSuspend(java.lang.Object r5) {
                                    /*
                                        r4 = this;
                                        java.lang.Object r0 = r4.d
                                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r0 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r0
                                        kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                                        int r2 = r4.f58913c
                                        r3 = 1
                                        if (r2 == 0) goto L18
                                        if (r2 != r3) goto L11
                                        kotlin.ResultKt.b(r5)
                                        goto L28
                                    L11:
                                        java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                                        defpackage.md.k(r4)
                                        r4 = 0
                                        return r4
                                    L18:
                                        kotlin.ResultKt.b(r5)
                                    L1b:
                                        r4.d = r0
                                        r4.f58913c = r3
                                        androidx.compose.ui.input.pointer.PointerEventPass r5 = androidx.compose.ui.input.pointer.PointerEventPass.Main
                                        java.lang.Object r5 = r0.N0(r5, r4)
                                        if (r5 != r1) goto L28
                                        return r1
                                    L28:
                                        androidx.compose.ui.input.pointer.PointerEvent r5 = (androidx.compose.ui.input.pointer.PointerEvent) r5
                                        java.util.List r5 = r5.f9305a
                                        java.lang.Iterable r5 = (java.lang.Iterable) r5
                                        boolean r2 = r5 instanceof java.util.Collection
                                        if (r2 == 0) goto L3c
                                        r2 = r5
                                        java.util.Collection r2 = (java.util.Collection) r2
                                        boolean r2 = r2.isEmpty()
                                        if (r2 == 0) goto L3c
                                        goto L51
                                    L3c:
                                        java.util.Iterator r5 = r5.iterator()
                                    L40:
                                        boolean r2 = r5.hasNext()
                                        if (r2 == 0) goto L51
                                        java.lang.Object r2 = r5.next()
                                        androidx.compose.ui.input.pointer.PointerInputChange r2 = (androidx.compose.ui.input.pointer.PointerInputChange) r2
                                        boolean r2 = r2.d
                                        if (r2 == 0) goto L40
                                        goto L1b
                                    L51:
                                        float r5 = com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt.f58900a
                                        java.lang.Boolean r5 = java.lang.Boolean.FALSE
                                        androidx.compose.runtime.MutableState r4 = r4.f58914e
                                        r4.setValue(r5)
                                        kotlin.Unit r4 = kotlin.Unit.f71739a
                                        return r4
                                    */
                                    throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.immersivearticle.podcast.components.PodcastTrackSliderKt$PodcastTrackSlider$2$1.AnonymousClass1.C02851.C02861.invokeSuspend(java.lang.Object):java.lang.Object");
                                }
                            }

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public C02851(PointerInputScope pointerInputScope, MutableState mutableState, Continuation continuation) {
                                super(2, continuation);
                                this.f58912c = pointerInputScope;
                                this.d = mutableState;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation create(Object obj, Continuation continuation) {
                                return new C02851(this.f58912c, this.d, continuation);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                return ((C02851) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                int i2 = this.f58911b;
                                if (i2 == 0) {
                                    ResultKt.b(obj);
                                    C02861 c02861 = new C02861(this.d, null);
                                    this.f58911b = 1;
                                    if (this.f58912c.c0(c02861, this) == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                } else {
                                    if (i2 != 1) {
                                        md.k("call to 'resume' before 'invoke' with coroutine");
                                        return null;
                                    }
                                    ResultKt.b(obj);
                                }
                                return Unit.f71739a;
                            }
                        }

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public AnonymousClass1(CoroutineScope coroutineScope, MutableState mutableState, PointerInputScope pointerInputScope, Continuation continuation) {
                            super(2, continuation);
                            this.f58909e = coroutineScope;
                            this.f58910f = mutableState;
                            this.g = pointerInputScope;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation create(Object obj, Continuation continuation) {
                            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f58909e, this.f58910f, this.g, continuation);
                            anonymousClass1.d = obj;
                            return anonymousClass1;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return ((AnonymousClass1) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            AwaitPointerEventScope awaitPointerEventScope = (AwaitPointerEventScope) this.d;
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            int i2 = this.f58908c;
                            if (i2 == 0) {
                                ResultKt.b(obj);
                                PointerEventPass pointerEventPass = PointerEventPass.Initial;
                                this.d = null;
                                this.f58908c = 1;
                                if (TapGestureDetectorKt.b(awaitPointerEventScope, pointerEventPass, this, 1) == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                            } else {
                                if (i2 != 1) {
                                    md.k("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                ResultKt.b(obj);
                            }
                            float f2 = PodcastTrackSliderKt.f58900a;
                            Boolean bool = Boolean.TRUE;
                            MutableState mutableState = this.f58910f;
                            mutableState.setValue(bool);
                            try {
                                BuildersKt.c(this.f58909e, null, null, new C02851(this.g, mutableState, null), 3);
                                return Unit.f71739a;
                            } finally {
                                mutableState.setValue(Boolean.FALSE);
                            }
                        }
                    }

                    @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                    public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                        Object objB = ForEachGestureKt.b(pointerInputScope, new AnonymousClass1(coroutineScope, mutableState, pointerInputScope, null), continuation);
                        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
                    }
                };
                gapComposerH.q(objX5);
            }
            Modifier modifierA = SuspendingPointerInputFilterKt.a(dTFunctionNameModifier, unit, (PointerInputEventHandler) objX5);
            ClosedFloatingPointRange closedFloatingPointRangeH = RangesKt.h(Call.Parameters.DEFAULT_CAMERA_ZOOM, f3);
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = new jo0(function1, 2);
                gapComposerH.q(objX6);
            }
            Function1 function3 = (Function1) objX6;
            boolean z2 = (i6 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072;
            Object objX7 = gapComposerH.x();
            if (z2 || objX7 == composer$Companion$Empty$1) {
                objX7 = new ee0(function0, 22);
                gapComposerH.q(objX7);
            }
            ComposableSingletons$PodcastTrackSliderKt.f58892a.getClass();
            SliderKt.a(f2, function3, modifierA, false, (Function0) objX7, null, mutableInteractionSource, ComposableSingletons$PodcastTrackSliderKt.f58893b, ComposableLambdaKt.b(1451329060, new ql0(stateA, 1), gapComposerH), closedFloatingPointRangeH, gapComposerH, (i7 & 14) | 907542528);
            gapComposerH = gapComposerH;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier2 = dTFunctionNameModifier;
            recomposeScopeImplB0.d = new Function2() { // from class: wo0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    PodcastTrackSliderKt.a(modifier2, f2, f3, z, function1, function0, function2, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }
}
