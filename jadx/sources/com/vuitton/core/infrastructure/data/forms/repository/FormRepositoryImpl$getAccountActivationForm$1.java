package com.vuitton.core.infrastructure.data.forms.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.core.infrastructure.data.forms.repository.FormRepositoryImpl", f = "FormRepositoryImpl.kt", l = {37}, m = "getAccountActivationForm-qJBbalk", v = 2)
final class FormRepositoryImpl$getAccountActivationForm$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f66150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FormRepositoryImpl f66151c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FormRepositoryImpl$getAccountActivationForm$1(FormRepositoryImpl formRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f66151c = formRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f66150b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objD = this.f66151c.d(null, this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
