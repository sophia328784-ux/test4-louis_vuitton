package com.dynatrace.agent.communication.preprocessing;

import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.dynatrace.agent.communication.preprocessing.DispatchableDataProvider", f = "DispatchableDataProvider.kt", l = {46, EACTags.DISPLAY_IMAGE, EACTags.CERTIFICATION_AUTHORITY_PUBLIC_KEY, 92}, m = "selectData")
final class DispatchableDataProvider$selectData$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public DispatchableDataProvider f26675b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f26676c;
    public List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List f26677e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f26678f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public /* synthetic */ Object f26679h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ DispatchableDataProvider f26680i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f26681j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DispatchableDataProvider$selectData$1(DispatchableDataProvider dispatchableDataProvider, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f26680i = dispatchableDataProvider;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f26679h = obj;
        this.f26681j |= Integer.MIN_VALUE;
        return this.f26680i.c(0L, this);
    }
}
