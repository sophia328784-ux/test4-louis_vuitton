package com.dynatrace.agent.util;

import defpackage.ss;
import kotlin.Metadata;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/dynatrace/agent/util/CoroutineHandler;", "", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "<init>", "(Lkotlinx/coroutines/CoroutineScope;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class CoroutineHandler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineScope f27198a;

    public CoroutineHandler(CoroutineScope coroutineScope) {
        coroutineScope.getClass();
        this.f27198a = coroutineScope;
    }

    public final Job a(ss ssVar) {
        return BuildersKt.c(this.f27198a, null, null, new CoroutineHandler$launchWithDelay$1(ssVar, null), 3);
    }
}
