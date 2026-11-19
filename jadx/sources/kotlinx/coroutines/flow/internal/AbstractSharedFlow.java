package kotlinx.coroutines.flow.internal;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b \u0018\u0000*\f\b\u0000\u0010\u0002*\u0006\u0012\u0002\b\u00030\u00012\u00060\u0003j\u0002`\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;", "Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;", "S", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "<init>", "()V", "kotlinx-coroutines-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class AbstractSharedFlow<S extends AbstractSharedFlowSlot<?>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public AbstractSharedFlowSlot[] f75024b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f75025c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public SubscriptionCountStateFlow f75026e;

    public final StateFlow c() {
        SubscriptionCountStateFlow subscriptionCountStateFlow;
        synchronized (this) {
            subscriptionCountStateFlow = this.f75026e;
            if (subscriptionCountStateFlow == null) {
                subscriptionCountStateFlow = new SubscriptionCountStateFlow(this.f75025c);
                this.f75026e = subscriptionCountStateFlow;
            }
        }
        return subscriptionCountStateFlow;
    }

    public final AbstractSharedFlowSlot g() {
        AbstractSharedFlowSlot abstractSharedFlowSlotH;
        SubscriptionCountStateFlow subscriptionCountStateFlow;
        synchronized (this) {
            try {
                AbstractSharedFlowSlot[] abstractSharedFlowSlotArrK = this.f75024b;
                if (abstractSharedFlowSlotArrK == null) {
                    abstractSharedFlowSlotArrK = k();
                    this.f75024b = abstractSharedFlowSlotArrK;
                } else if (this.f75025c >= abstractSharedFlowSlotArrK.length) {
                    Object[] objArrCopyOf = Arrays.copyOf(abstractSharedFlowSlotArrK, abstractSharedFlowSlotArrK.length * 2);
                    this.f75024b = (AbstractSharedFlowSlot[]) objArrCopyOf;
                    abstractSharedFlowSlotArrK = (AbstractSharedFlowSlot[]) objArrCopyOf;
                }
                int i2 = this.d;
                do {
                    abstractSharedFlowSlotH = abstractSharedFlowSlotArrK[i2];
                    if (abstractSharedFlowSlotH == null) {
                        abstractSharedFlowSlotH = h();
                        abstractSharedFlowSlotArrK[i2] = abstractSharedFlowSlotH;
                    }
                    i2++;
                    if (i2 >= abstractSharedFlowSlotArrK.length) {
                        i2 = 0;
                    }
                } while (!abstractSharedFlowSlotH.a(this));
                this.d = i2;
                this.f75025c++;
                subscriptionCountStateFlow = this.f75026e;
            } catch (Throwable th) {
                throw th;
            }
        }
        if (subscriptionCountStateFlow != null) {
            subscriptionCountStateFlow.z(1);
        }
        return abstractSharedFlowSlotH;
    }

    public abstract AbstractSharedFlowSlot h();

    public abstract AbstractSharedFlowSlot[] k();

    public final void l(AbstractSharedFlowSlot abstractSharedFlowSlot) {
        SubscriptionCountStateFlow subscriptionCountStateFlow;
        int i2;
        Continuation[] continuationArrB;
        synchronized (this) {
            try {
                int i3 = this.f75025c - 1;
                this.f75025c = i3;
                subscriptionCountStateFlow = this.f75026e;
                if (i3 == 0) {
                    this.d = 0;
                }
                abstractSharedFlowSlot.getClass();
                continuationArrB = abstractSharedFlowSlot.b(this);
            } catch (Throwable th) {
                throw th;
            }
        }
        for (Continuation continuation : continuationArrB) {
            if (continuation != null) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Unit.f71739a);
            }
        }
        if (subscriptionCountStateFlow != null) {
            subscriptionCountStateFlow.z(-1);
        }
    }
}
