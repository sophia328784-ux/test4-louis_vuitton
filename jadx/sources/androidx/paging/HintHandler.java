package androidx.paging;

import defpackage.md;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"}, d2 = {"Landroidx/paging/HintHandler;", "", "<init>", "()V", "HintFlow", "State", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class HintHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final State f18618a = new State(this);

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/paging/HintHandler$HintFlow;", "", "<init>", "(Landroidx/paging/HintHandler;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class HintFlow {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ViewportHint f18619a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SharedFlowImpl f18620b = SharedFlowKt.b(1, 0, BufferOverflow.DROP_OLDEST, 2);

        public HintFlow(HintHandler hintHandler) {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/paging/HintHandler$State;", "", "<init>", "(Landroidx/paging/HintHandler;)V", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public final class State {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HintFlow f18621a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HintFlow f18622b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ViewportHint.Access f18623c;
        public final ReentrantLock d = new ReentrantLock();

        public State(HintHandler hintHandler) {
            this.f18621a = new HintFlow(hintHandler);
            this.f18622b = new HintFlow(hintHandler);
        }

        public final void a(ViewportHint.Access access, Function2 function2) {
            ReentrantLock reentrantLock = this.d;
            try {
                reentrantLock.lock();
                if (access != null) {
                    this.f18623c = access;
                }
                function2.invoke(this.f18621a, this.f18622b);
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18624a;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.PREPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.APPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f18624a = iArr;
        }
    }

    public final SharedFlowImpl a(LoadType loadType) {
        loadType.getClass();
        int i2 = WhenMappings.f18624a[loadType.ordinal()];
        State state = this.f18618a;
        if (i2 == 1) {
            return state.f18621a.f18620b;
        }
        if (i2 == 2) {
            return state.f18622b.f18620b;
        }
        md.n("invalid load type for hints");
        return null;
    }
}
