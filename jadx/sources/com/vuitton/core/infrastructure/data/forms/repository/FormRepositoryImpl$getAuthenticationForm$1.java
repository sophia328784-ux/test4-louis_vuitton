package com.vuitton.core.infrastructure.data.forms.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.core.infrastructure.data.forms.repository.FormRepositoryImpl", f = "FormRepositoryImpl.kt", l = {28}, m = "getAuthenticationForm-qJBbalk", v = 2)
final class FormRepositoryImpl$getAuthenticationForm$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f66152b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FormRepositoryImpl f66153c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FormRepositoryImpl$getAuthenticationForm$1(FormRepositoryImpl formRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f66153c = formRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f66152b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objF = this.f66153c.f(null, this);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : new Result(objF);
    }
}
