package androidx.room;

import defpackage.md;
import defpackage.os;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/room/ObservedTableVersions;", "", "", "size", "<init>", "(I)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ObservedTableVersions {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableStateFlow f19444a;

    public ObservedTableVersions(int i2) {
        this.f19444a = StateFlowKt.a(new int[i2]);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final CoroutineSingletons a(FlowCollector flowCollector, ContinuationImpl continuationImpl) {
        ObservedTableVersions$collect$1 observedTableVersions$collect$1;
        if (continuationImpl instanceof ObservedTableVersions$collect$1) {
            observedTableVersions$collect$1 = (ObservedTableVersions$collect$1) continuationImpl;
            int i2 = observedTableVersions$collect$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                observedTableVersions$collect$1.d = i2 - Integer.MIN_VALUE;
            } else {
                observedTableVersions$collect$1 = new ObservedTableVersions$collect$1(this, continuationImpl);
            }
        } else {
            observedTableVersions$collect$1 = new ObservedTableVersions$collect$1(this, continuationImpl);
        }
        Object obj = observedTableVersions$collect$1.f19445b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = observedTableVersions$collect$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            observedTableVersions$collect$1.d = 1;
            if (this.f19444a.f(flowCollector, observedTableVersions$collect$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        os.d();
        return null;
    }
}
