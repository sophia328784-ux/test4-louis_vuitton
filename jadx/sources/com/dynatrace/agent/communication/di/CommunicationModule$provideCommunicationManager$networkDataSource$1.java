package com.dynatrace.agent.communication.di;

import com.dynatrace.agent.common.time.TimeProvider;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final /* synthetic */ class CommunicationModule$provideCommunicationManager$networkDataSource$1 extends FunctionReferenceImpl implements Function0<Long> {
    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        return Long.valueOf(((TimeProvider) this.receiver).a());
    }
}
