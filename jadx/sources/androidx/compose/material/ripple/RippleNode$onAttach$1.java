package androidx.compose.material.ripple;

import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.ui.node.DrawModifierNodeKt;
import defpackage.md;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlowImpl;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material.ripple.RippleNode$onAttach$1", f = "Ripple.kt", l = {364}, m = "invokeSuspend", v = 1)
final class RippleNode$onAttach$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6534b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f6535c;
    public final /* synthetic */ RippleNode d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RippleNode$onAttach$1(RippleNode rippleNode, Continuation continuation) {
        super(2, continuation);
        this.d = rippleNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        RippleNode$onAttach$1 rippleNode$onAttach$1 = new RippleNode$onAttach$1(this.d, continuation);
        rippleNode$onAttach$1.f6535c = obj;
        return rippleNode$onAttach$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RippleNode$onAttach$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f6534b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final CoroutineScope coroutineScope = (CoroutineScope) this.f6535c;
            final RippleNode rippleNode = this.d;
            SharedFlowImpl f4891a = rippleNode.p.getF4891a();
            FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.material.ripple.RippleNode$onAttach$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    float f2;
                    Interaction interaction = (Interaction) obj2;
                    boolean z = interaction instanceof PressInteraction;
                    RippleNode rippleNode2 = rippleNode;
                    if (!z) {
                        StateLayer stateLayer = rippleNode2.u;
                        if (stateLayer == null) {
                            stateLayer = new StateLayer(rippleNode2.q, rippleNode2.t);
                            DrawModifierNodeKt.a(rippleNode2);
                            rippleNode2.u = stateLayer;
                        }
                        ArrayList arrayList = stateLayer.d;
                        if (interaction instanceof HoverInteraction.Enter) {
                            arrayList.add(interaction);
                        } else if (interaction instanceof HoverInteraction.Exit) {
                            arrayList.remove(((HoverInteraction.Exit) interaction).f4890a);
                        } else if (interaction instanceof FocusInteraction.Focus) {
                            arrayList.add(interaction);
                        } else if (interaction instanceof FocusInteraction.Unfocus) {
                            arrayList.remove(((FocusInteraction.Unfocus) interaction).f4885a);
                        } else if (interaction instanceof DragInteraction.Start) {
                            arrayList.add(interaction);
                        } else if (interaction instanceof DragInteraction.Stop) {
                            arrayList.remove(((DragInteraction.Stop) interaction).f4880a);
                        } else if (interaction instanceof DragInteraction.Cancel) {
                            arrayList.remove(((DragInteraction.Cancel) interaction).f4879a);
                        }
                        Interaction interaction2 = (Interaction) CollectionsKt.N(arrayList);
                        if (!Intrinsics.c(stateLayer.f6541e, interaction2)) {
                            CoroutineScope coroutineScope2 = coroutineScope;
                            if (interaction2 != null) {
                                RippleAlpha rippleAlpha = (RippleAlpha) stateLayer.f6539b.mo47invoke();
                                boolean z2 = interaction2 instanceof HoverInteraction.Enter;
                                if (z2) {
                                    f2 = rippleAlpha.f6520c;
                                } else if (interaction2 instanceof FocusInteraction.Focus) {
                                    f2 = rippleAlpha.f6519b;
                                } else {
                                    f2 = interaction2 instanceof DragInteraction.Start ? rippleAlpha.f6518a : Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                }
                                TweenSpec tweenSpec = RippleKt.f6533a;
                                if (!z2 && ((interaction2 instanceof FocusInteraction.Focus) || (interaction2 instanceof DragInteraction.Start))) {
                                    TweenSpec tweenSpec2 = new TweenSpec(45, 0, EasingKt.d, 2, null);
                                    tweenSpec = tweenSpec2;
                                }
                                BuildersKt.c(coroutineScope2, null, null, new StateLayer$handleInteraction$1(stateLayer, f2, tweenSpec, null), 3);
                            } else {
                                Interaction interaction3 = stateLayer.f6541e;
                                TweenSpec tweenSpec3 = RippleKt.f6533a;
                                if (!(interaction3 instanceof HoverInteraction.Enter) && !(interaction3 instanceof FocusInteraction.Focus) && (interaction3 instanceof DragInteraction.Start)) {
                                    tweenSpec3 = new TweenSpec(150, 0, EasingKt.d, 2, null);
                                }
                                BuildersKt.c(coroutineScope2, null, null, new StateLayer$handleInteraction$2(stateLayer, tweenSpec3, null), 3);
                            }
                            stateLayer.f6541e = interaction2;
                        }
                    } else if (rippleNode2.x) {
                        rippleNode2.j2((PressInteraction) interaction);
                    } else {
                        rippleNode2.y.g(interaction);
                    }
                    return Unit.f71739a;
                }
            };
            this.f6534b = 1;
            f4891a.getClass();
            if (SharedFlowImpl.o(f4891a, flowCollector, this) == coroutineSingletons) {
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
