package com.vuitton.android.core.events;

import com.vuitton.foundation.logger.Logger;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/core/events/LVEventSender;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Lcom/vuitton/foundation/logger/Logger;)V", "Companion", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LVEventSender {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f43510a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final SharedFlowImpl f43511b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SharedFlow f43512c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/core/events/LVEventSender$Companion;", "", "", "TAG", "Ljava/lang/String;", "core"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public LVEventSender(Logger logger) {
        logger.getClass();
        this.f43510a = logger;
        SharedFlowImpl sharedFlowImplB = SharedFlowKt.b(0, 0, null, 7);
        this.f43511b = sharedFlowImplB;
        this.f43512c = FlowKt.a(sharedFlowImplB);
    }

    public final Object a(AppEvent appEvent, Continuation continuation) throws Throwable {
        Objects.toString(appEvent);
        this.f43510a.getClass();
        Object objEmit = this.f43511b.emit(appEvent, continuation);
        return objEmit == CoroutineSingletons.COROUTINE_SUSPENDED ? objEmit : Unit.f71739a;
    }
}
