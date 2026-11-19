package com.vuitton.android.data.repository;

import androidx.lifecycle.FlowLiveDataConversions;
import androidx.work.WorkInfo;
import com.vuitton.foundation.model.domain.model.spotlight.WorkInfoResult;
import com.vuitton.foundation.model.domain.model.spotlight.WorkInfoResultState;
import defpackage.md;
import defpackage.tg0;
import defpackage.v40;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.internal.ChannelFlowOperatorImpl;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00030\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResult;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.SpotlightRepositoryImpl$listenPreCache$1", f = "SpotlightRepositoryImpl.kt", l = {EACTags.CARD_SEQUENCE_NUMBER}, m = "invokeSuspend", v = 2)
final class SpotlightRepositoryImpl$listenPreCache$1 extends SuspendLambda implements Function2<FlowCollector<? super WorkInfoResult>, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f48032b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f48033c;
    public final /* synthetic */ SpotlightRepositoryImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ UUID f48034e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SpotlightRepositoryImpl$listenPreCache$1(SpotlightRepositoryImpl spotlightRepositoryImpl, UUID uuid, Continuation continuation) {
        super(2, continuation);
        this.d = spotlightRepositoryImpl;
        this.f48034e = uuid;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        SpotlightRepositoryImpl$listenPreCache$1 spotlightRepositoryImpl$listenPreCache$1 = new SpotlightRepositoryImpl$listenPreCache$1(this.d, this.f48034e, continuation);
        spotlightRepositoryImpl$listenPreCache$1.f48033c = obj;
        return spotlightRepositoryImpl$listenPreCache$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SpotlightRepositoryImpl$listenPreCache$1) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        FlowCollector flowCollector = (FlowCollector) this.f48033c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f48032b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SpotlightRepositoryImpl spotlightRepositoryImpl = this.d;
            Flow flowA = FlowLiveDataConversions.a(spotlightRepositoryImpl.f48027b.c(this.f48034e));
            DefaultIoScheduler f43530b = spotlightRepositoryImpl.f48028c.getF43530b();
            if (f43530b.get(Job.Key.f74677b) != null) {
                tg0.n(f43530b, "Flow context cannot contain job in it. Had ");
                flowA = null;
            } else if (!f43530b.equals(EmptyCoroutineContext.f71840b)) {
                if (flowA instanceof FusibleFlow) {
                    flowA = FusibleFlow.b((FusibleFlow) flowA, f43530b, 0, null, 6);
                } else {
                    flowA = new ChannelFlowOperatorImpl(flowA, f43530b, 0, null, 12, null);
                }
            }
            FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 flowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1 = new FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1(FlowKt.k(flowA));
            FlowCollector flowCollector2 = new FlowCollector(spotlightRepositoryImpl) { // from class: com.vuitton.android.data.repository.SpotlightRepositoryImpl$listenPreCache$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    WorkInfoResultState workInfoResultState;
                    WorkInfo workInfo = (WorkInfo) obj2;
                    UUID uuid = workInfo.f20269a;
                    switch (SpotlightRepositoryImpl.WhenMappings.f48029a[workInfo.f20270b.ordinal()]) {
                        case 1:
                            workInfoResultState = WorkInfoResultState.ENQUEUED;
                            break;
                        case 2:
                            workInfoResultState = WorkInfoResultState.RUNNING;
                            break;
                        case 3:
                            workInfoResultState = WorkInfoResultState.SUCCEEDED;
                            break;
                        case 4:
                            workInfoResultState = WorkInfoResultState.FAILED;
                            break;
                        case 5:
                            workInfoResultState = WorkInfoResultState.BLOCKED;
                            break;
                        case 6:
                            workInfoResultState = WorkInfoResultState.CANCELLED;
                            break;
                        default:
                            v40.g();
                            return null;
                    }
                    Object objEmit = this.f48035b.emit(new WorkInfoResult(uuid, workInfoResultState), continuation);
                    return objEmit == CoroutineSingletons.COROUTINE_SUSPENDED ? objEmit : Unit.f71739a;
                }
            };
            this.f48033c = null;
            this.f48032b = 1;
            if (flowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1.f(flowCollector2, this) == coroutineSingletons) {
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
