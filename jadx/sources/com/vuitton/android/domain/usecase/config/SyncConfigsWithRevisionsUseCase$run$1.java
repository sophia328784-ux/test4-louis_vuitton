package com.vuitton.android.domain.usecase.config;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.config.SyncConfigsWithRevisionsUseCase", f = "SyncConfigsWithRevisionsUseCase.kt", l = {EACTags.LANGUAGE_PREFERENCES, 50, 62}, m = "run", v = 2)
final class SyncConfigsWithRevisionsUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SyncConfigsWithRevisionsUseCase.SyncResult f49733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f49734c;
    public final /* synthetic */ SyncConfigsWithRevisionsUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f49735e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SyncConfigsWithRevisionsUseCase$run$1(SyncConfigsWithRevisionsUseCase syncConfigsWithRevisionsUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = syncConfigsWithRevisionsUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f49734c = obj;
        this.f49735e |= Integer.MIN_VALUE;
        return this.d.b(null, this);
    }
}
