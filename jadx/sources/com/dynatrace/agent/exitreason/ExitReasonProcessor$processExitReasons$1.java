package com.dynatrace.agent.exitreason;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.exitreason.ExitReasonProcessor", f = "ExitReasonProcessor.kt", l = {142, 170}, m = "processExitReasons")
final class ExitReasonProcessor$processExitReasons$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ExitReasonProcessor f26813b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f26814c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f26815e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ExitReasonProcessor f26816f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExitReasonProcessor$processExitReasons$1(ExitReasonProcessor exitReasonProcessor, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f26816f = exitReasonProcessor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f26815e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f26816f.b(null, null, this);
    }
}
