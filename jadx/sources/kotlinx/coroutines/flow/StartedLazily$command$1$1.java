package kotlinx.coroutines.flow;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Ref$BooleanRef;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
final class StartedLazily$command$1$1<T> implements FlowCollector {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Ref$BooleanRef f74992b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FlowCollector f74993c;

    public StartedLazily$command$1$1(Ref$BooleanRef ref$BooleanRef, FlowCollector flowCollector) {
        this.f74992b = ref$BooleanRef;
        this.f74993c = flowCollector;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(int i2, Continuation continuation) {
        StartedLazily$command$1$1$emit$1 startedLazily$command$1$1$emit$1;
        if (continuation instanceof StartedLazily$command$1$1$emit$1) {
            startedLazily$command$1$1$emit$1 = (StartedLazily$command$1$1$emit$1) continuation;
            int i3 = startedLazily$command$1$1$emit$1.d;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                startedLazily$command$1$1$emit$1.d = i3 - Integer.MIN_VALUE;
            } else {
                startedLazily$command$1$1$emit$1 = new StartedLazily$command$1$1$emit$1(this, continuation);
            }
        } else {
            startedLazily$command$1$1$emit$1 = new StartedLazily$command$1$1$emit$1(this, continuation);
        }
        Object obj = startedLazily$command$1$1$emit$1.f74994b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i4 = startedLazily$command$1$1$emit$1.d;
        if (i4 == 0) {
            ResultKt.b(obj);
            if (i2 > 0) {
                Ref$BooleanRef ref$BooleanRef = this.f74992b;
                if (!ref$BooleanRef.f71917b) {
                    ref$BooleanRef.f71917b = true;
                    SharingCommand sharingCommand = SharingCommand.START;
                    startedLazily$command$1$1$emit$1.d = 1;
                    if (this.f74993c.emit(sharingCommand, startedLazily$command$1$1$emit$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
            }
            return Unit.f71739a;
        }
        if (i4 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        return Unit.f71739a;
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
        return b(((Number) obj).intValue(), continuation);
    }
}
