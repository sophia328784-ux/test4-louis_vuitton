package androidx.work.impl.constraints.controllers;

import androidx.work.Logger;
import androidx.work.impl.constraints.ConstraintListener;
import androidx.work.impl.constraints.ConstraintsState;
import androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker;
import androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTrackerKt;
import androidx.work.impl.constraints.trackers.ConstraintTracker;
import androidx.work.impl.constraints.trackers.ConstraintTrackerKt;
import defpackage.l0;
import defpackage.md;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ChannelCoroutine;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;", "Landroidx/work/impl/constraints/ConstraintsState;"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.work.impl.constraints.controllers.BaseConstraintController$track$1", f = "ContraintControllers.kt", l = {62}, m = "invokeSuspend")
final class BaseConstraintController$track$1 extends SuspendLambda implements Function2<ProducerScope<? super ConstraintsState>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f20451b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f20452c;
    public final /* synthetic */ BaseConstraintController d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseConstraintController$track$1(BaseConstraintController baseConstraintController, Continuation continuation) {
        super(2, continuation);
        this.d = baseConstraintController;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        BaseConstraintController$track$1 baseConstraintController$track$1 = new BaseConstraintController$track$1(this.d, continuation);
        baseConstraintController$track$1.f20452c = obj;
        return baseConstraintController$track$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BaseConstraintController$track$1) create((ProducerScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f20451b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final ProducerScope producerScope = (ProducerScope) this.f20452c;
            final BaseConstraintController baseConstraintController = this.d;
            ConstraintListener<Object> constraintListener = new ConstraintListener<Object>() { // from class: androidx.work.impl.constraints.controllers.BaseConstraintController$track$1$listener$1
                @Override // androidx.work.impl.constraints.ConstraintListener
                public final void a(Object obj2) {
                    BaseConstraintController baseConstraintController2 = baseConstraintController;
                    ((ChannelCoroutine) producerScope.j()).b(baseConstraintController2.d(obj2) ? new ConstraintsState.ConstraintsNotMet(baseConstraintController2.getF20457b()) : ConstraintsState.ConstraintsMet.f20419a);
                }
            };
            ConstraintTracker constraintTracker = baseConstraintController.f20450a;
            constraintTracker.getClass();
            synchronized (constraintTracker.f20465c) {
                try {
                    if (constraintTracker.d.add(constraintListener)) {
                        if (constraintTracker.d.size() == 1) {
                            constraintTracker.f20466e = constraintTracker.a();
                            Logger loggerA = Logger.a();
                            int i3 = ConstraintTrackerKt.f20467a;
                            Objects.toString(constraintTracker.f20466e);
                            loggerA.getClass();
                            BroadcastReceiverConstraintTracker broadcastReceiverConstraintTracker = (BroadcastReceiverConstraintTracker) constraintTracker;
                            Logger loggerA2 = Logger.a();
                            int i4 = BroadcastReceiverConstraintTrackerKt.f20462a;
                            broadcastReceiverConstraintTracker.getClass().getSimpleName().concat(": registering receiver");
                            loggerA2.getClass();
                            broadcastReceiverConstraintTracker.f20464b.registerReceiver(broadcastReceiverConstraintTracker.f20460f, broadcastReceiverConstraintTracker.c());
                        }
                        constraintListener.a(constraintTracker.f20466e);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            l0 l0Var = new l0(this.d, constraintListener, 19);
            this.f20451b = 1;
            if (ProduceKt.a(producerScope, l0Var, this) == coroutineSingletons) {
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
