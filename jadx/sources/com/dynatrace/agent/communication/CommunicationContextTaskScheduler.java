package com.dynatrace.agent.communication;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/dynatrace/agent/communication/CommunicationContextTaskScheduler;", "", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlin/time/Duration;", "schedulingTime", "<init>", "(Lkotlinx/coroutines/CoroutineScope;JLkotlin/jvm/internal/DefaultConstructorMarker;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CommunicationContextTaskScheduler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineScope f26515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f26516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Job f26517c;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ CommunicationContextTaskScheduler(CoroutineScope coroutineScope, long j2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 2) != 0) {
            Duration.Companion companion = Duration.INSTANCE;
            j2 = DurationKt.g(5, DurationUnit.MINUTES);
        }
        this(coroutineScope, j2, null);
    }

    public CommunicationContextTaskScheduler(CoroutineScope coroutineScope, long j2, DefaultConstructorMarker defaultConstructorMarker) {
        coroutineScope.getClass();
        this.f26515a = coroutineScope;
        this.f26516b = j2;
    }
}
