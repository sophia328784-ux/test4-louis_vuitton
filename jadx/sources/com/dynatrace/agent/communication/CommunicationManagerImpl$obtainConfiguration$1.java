package com.dynatrace.agent.communication;

import com.dynatrace.agent.storage.db.EndPointInfo;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.BERTags;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.CommunicationManagerImpl", f = "CommunicationManagerImpl.kt", l = {BERTags.FLAGS, 223}, m = "obtainConfiguration")
final class CommunicationManagerImpl$obtainConfiguration$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CommunicationManagerImpl f26536b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public EndPointInfo f26537c;
    public ResponseProcessor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f26538e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ CommunicationManagerImpl f26539f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommunicationManagerImpl$obtainConfiguration$1(CommunicationManagerImpl communicationManagerImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f26539f = communicationManagerImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f26538e = obj;
        this.g |= Integer.MIN_VALUE;
        return CommunicationManagerImpl.f(this.f26539f, this);
    }
}
