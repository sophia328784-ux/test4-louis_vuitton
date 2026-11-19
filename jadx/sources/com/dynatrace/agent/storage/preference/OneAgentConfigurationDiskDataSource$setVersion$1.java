package com.dynatrace.agent.storage.preference;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.storage.preference.OneAgentConfigurationDiskDataSource", f = "OneAgentConfigurationDiskDataSource.kt", l = {36}, m = "setVersion")
final class OneAgentConfigurationDiskDataSource$setVersion$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f27004b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f27005c;
    public final /* synthetic */ OneAgentConfigurationDiskDataSource d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f27006e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OneAgentConfigurationDiskDataSource$setVersion$1(OneAgentConfigurationDiskDataSource oneAgentConfigurationDiskDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = oneAgentConfigurationDiskDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f27005c = obj;
        this.f27006e |= Integer.MIN_VALUE;
        return this.d.b(null, this);
    }
}
