package androidx.compose.foundation.gestures;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.m5;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.AnchoredDraggableState$anchoredDrag$2", f = "AnchoredDraggable.kt", l = {1159}, m = "invokeSuspend", v = 1)
final class AnchoredDraggableState$anchoredDrag$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f4406b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AnchoredDraggableState f4407c;
    public final /* synthetic */ Function3 d;

    /* JADX INFO: renamed from: androidx.compose.foundation.gestures.AnchoredDraggableState$anchoredDrag$2$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0004H\n"}, d2 = {"<anonymous>", "", "T", "latestAnchors", "Landroidx/compose/foundation/gestures/DraggableAnchors;"}, k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.AnchoredDraggableState$anchoredDrag$2$2", f = "AnchoredDraggable.kt", l = {1160}, m = "invokeSuspend", v = 1)
    final class AnonymousClass2 extends SuspendLambda implements Function2<DraggableAnchors<Object>, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f4408b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f4409c;
        public final /* synthetic */ Function3 d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ AnchoredDraggableState f4410e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(AnchoredDraggableState anchoredDraggableState, Continuation continuation, Function3 function3) {
            super(2, continuation);
            this.d = function3;
            this.f4410e = anchoredDraggableState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.f4410e, continuation, this.d);
            anonymousClass2.f4409c = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((DraggableAnchors) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f4408b;
            if (i2 == 0) {
                ResultKt.b(obj);
                DraggableAnchors draggableAnchors = (DraggableAnchors) this.f4409c;
                AnchoredDraggableState$anchoredDragScope$1 anchoredDraggableState$anchoredDragScope$1 = this.f4410e.o;
                this.f4408b = 1;
                if (this.d.A(anchoredDraggableState$anchoredDragScope$1, draggableAnchors, this) == coroutineSingletons) {
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
    public AnchoredDraggableState$anchoredDrag$2(AnchoredDraggableState anchoredDraggableState, Continuation continuation, Function3 function3) {
        super(1, continuation);
        this.f4407c = anchoredDraggableState;
        this.d = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new AnchoredDraggableState$anchoredDrag$2(this.f4407c, continuation, this.d);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((AnchoredDraggableState$anchoredDrag$2) create((Continuation) obj)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f4406b;
        AnchoredDraggableState anchoredDraggableState = this.f4407c;
        if (i2 == 0) {
            ResultKt.b(obj);
            m5 m5Var = new m5(anchoredDraggableState, 2);
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(anchoredDraggableState, null, this.d);
            this.f4406b = 1;
            if (AnchoredDraggableKt.d(m5Var, anonymousClass2, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        DraggableAnchors draggableAnchorsB = anchoredDraggableState.b();
        MutableFloatState mutableFloatState = anchoredDraggableState.f4404j;
        Object objB = draggableAnchorsB.b(((SnapshotMutableFloatStateImpl) mutableFloatState).a());
        if (objB != null) {
            if (Math.abs(((SnapshotMutableFloatStateImpl) mutableFloatState).a() - anchoredDraggableState.b().c(objB)) < 0.5f && ((Boolean) anchoredDraggableState.f4397a.invoke(objB)).booleanValue()) {
                ((SnapshotMutableStateImpl) anchoredDraggableState.f4402h).setValue(objB);
                anchoredDraggableState.f(objB);
            }
        }
        return Unit.f71739a;
    }
}
