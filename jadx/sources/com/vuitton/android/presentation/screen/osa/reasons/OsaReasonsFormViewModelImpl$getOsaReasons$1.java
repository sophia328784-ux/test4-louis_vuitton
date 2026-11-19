package com.vuitton.android.presentation.screen.osa.reasons;

import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModelImpl", f = "OsaReasonsFormViewModelImpl.kt", l = {147, 149, 163}, m = "getOsaReasons", v = 2)
final class OsaReasonsFormViewModelImpl$getOsaReasons$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f60954b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f60955c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ OsaReasonsFormViewModelImpl f60956e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f60957f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaReasonsFormViewModelImpl$getOsaReasons$1(OsaReasonsFormViewModelImpl osaReasonsFormViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f60956e = osaReasonsFormViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f60957f |= Integer.MIN_VALUE;
        return OsaReasonsFormViewModelImpl.yc(this.f60956e, this);
    }
}
