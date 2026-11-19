package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.PathInterpolator;
import androidx.compose.runtime.MutableState;
import com.google.android.filament.utils.Float4;
import com.google.android.filament.utils.Mat4;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import defpackage.za0;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$7$1", f = "Lv3dCardViewerComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$7$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Lv3dCardViewerHelper f58558b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f58559c;
    public final /* synthetic */ MutableState d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$7$1(Lv3dCardViewerHelper lv3dCardViewerHelper, Function0 function0, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f58558b = lv3dCardViewerHelper;
        this.f58559c = function0;
        this.d = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$7$1(this.f58558b, this.f58559c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$7$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        Lv3dCardViewerUiModel lv3dCardViewerUiModel = Lv3dCardViewerComposableKt.f58553a;
        if (((Boolean) this.d.getF10755b()).booleanValue()) {
            final Lv3dCardViewerHelper lv3dCardViewerHelper = this.f58558b;
            ValueAnimator valueAnimator = lv3dCardViewerHelper.P;
            Iterator it = Lv3dCardViewerHelperKt.f58575b.iterator();
            while (it.hasNext()) {
                lv3dCardViewerHelper.r.f58520h.b(((Number) it.next()).intValue());
            }
            valueAnimator.setDuration(HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD);
            valueAnimator.setInterpolator(new PathInterpolator(0.1666f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f));
            valueAnimator.setObjectValues(Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM), Float.valueOf(90.0f));
            valueAnimator.addUpdateListener(new za0(lv3dCardViewerHelper.b(lv3dCardViewerHelper.H).a(), lv3dCardViewerHelper));
            valueAnimator.addListener(new Animator.AnimatorListener() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerHelper$startAnimation$$inlined$doOnEnd$1
                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationCancel(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationEnd(Animator animator) {
                    final Lv3dCardViewerHelper lv3dCardViewerHelper2 = lv3dCardViewerHelper;
                    if (lv3dCardViewerHelper2.L != null && lv3dCardViewerHelper2.M != null) {
                        ViewExtKt.d(lv3dCardViewerHelper2.f58503a, new Function1<View, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerHelper$startAnimation$3$1
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                ((View) obj2).getClass();
                                final Lv3dCardViewerHelper lv3dCardViewerHelper3 = lv3dCardViewerHelper2;
                                if (!lv3dCardViewerHelper3.Q.isRunning() && !lv3dCardViewerHelper3.N) {
                                    if (!lv3dCardViewerHelper3.R) {
                                        lv3dCardViewerHelper3.R = true;
                                        lv3dCardViewerHelper3.B.mo47invoke();
                                    }
                                    ValueAnimator valueAnimator2 = lv3dCardViewerHelper3.Q;
                                    valueAnimator2.setDuration(HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD);
                                    Float fValueOf = Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                    valueAnimator2.setInterpolator(new PathInterpolator(0.1666f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f));
                                    valueAnimator2.setObjectValues(fValueOf, Float.valueOf(180.0f));
                                    valueAnimator2.addUpdateListener(new za0(lv3dCardViewerHelper3, lv3dCardViewerHelper3.b(lv3dCardViewerHelper3.H).a(), 3));
                                    ValueAnimator valueAnimator3 = new ValueAnimator();
                                    valueAnimator3.setDuration(500L);
                                    valueAnimator3.setInterpolator(new PathInterpolator(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f));
                                    valueAnimator3.setObjectValues(fValueOf, Float.valueOf(1.0f));
                                    lv3dCardViewerHelper3.N = true;
                                    valueAnimator3.addUpdateListener(new za0(lv3dCardViewerHelper3, lv3dCardViewerHelper3.b(lv3dCardViewerHelper3.G).a(), 0));
                                    valueAnimator3.start();
                                    valueAnimator2.addListener(new Animator.AnimatorListener() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerHelper$flipAnimation$$inlined$doOnEnd$1
                                        @Override // android.animation.Animator.AnimatorListener
                                        public final void onAnimationCancel(Animator animator2) {
                                        }

                                        @Override // android.animation.Animator.AnimatorListener
                                        public final void onAnimationEnd(Animator animator2) {
                                            final Lv3dCardViewerHelper lv3dCardViewerHelper4 = lv3dCardViewerHelper3;
                                            lv3dCardViewerHelper4.getClass();
                                            ValueAnimator valueAnimator4 = new ValueAnimator();
                                            valueAnimator4.setDuration(500L);
                                            valueAnimator4.setInterpolator(new PathInterpolator(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f));
                                            valueAnimator4.setObjectValues(Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM), Float.valueOf(1.0f));
                                            Mat4.f28664e.getClass();
                                            valueAnimator4.addUpdateListener(new za0(lv3dCardViewerHelper4, new Mat4((Float4) null, (Float4) null, (Float4) null, (Float4) null, 15, (DefaultConstructorMarker) null).a(), 1));
                                            valueAnimator4.addListener(new Animator.AnimatorListener() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerHelper$applyGyroAnimation$$inlined$doOnEnd$1
                                                @Override // android.animation.Animator.AnimatorListener
                                                public final void onAnimationCancel(Animator animator3) {
                                                }

                                                @Override // android.animation.Animator.AnimatorListener
                                                public final void onAnimationEnd(Animator animator3) {
                                                    lv3dCardViewerHelper4.N = false;
                                                }

                                                @Override // android.animation.Animator.AnimatorListener
                                                public final void onAnimationRepeat(Animator animator3) {
                                                }

                                                @Override // android.animation.Animator.AnimatorListener
                                                public final void onAnimationStart(Animator animator3) {
                                                }
                                            });
                                            valueAnimator4.start();
                                        }

                                        @Override // android.animation.Animator.AnimatorListener
                                        public final void onAnimationRepeat(Animator animator2) {
                                        }

                                        @Override // android.animation.Animator.AnimatorListener
                                        public final void onAnimationStart(Animator animator2) {
                                        }
                                    });
                                    valueAnimator2.start();
                                }
                                return Unit.f71739a;
                            }
                        });
                    }
                    lv3dCardViewerHelper2.N = false;
                    lv3dCardViewerHelper2.z.invoke(Boolean.TRUE);
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationRepeat(Animator animator) {
                }

                @Override // android.animation.Animator.AnimatorListener
                public final void onAnimationStart(Animator animator) {
                }
            });
            Mat4 mat4B = lv3dCardViewerHelper.b(lv3dCardViewerHelper.n);
            mat4B.f28666b.d = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            lv3dCardViewerHelper.d(lv3dCardViewerHelper.n, mat4B);
            valueAnimator.start();
            this.f58559c.mo47invoke();
        }
        return Unit.f71739a;
    }
}
