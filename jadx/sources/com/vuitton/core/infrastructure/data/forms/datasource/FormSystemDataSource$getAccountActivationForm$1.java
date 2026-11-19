package com.vuitton.core.infrastructure.data.forms.datasource;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.core.infrastructure.data.forms.datasource.FormSystemDataSource", f = "FormSystemDataSource.kt", l = {87}, m = "getAccountActivationForm-qJBbalk", v = 2)
final class FormSystemDataSource$getAccountActivationForm$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FormSystemDataSource f65940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f65941c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ FormSystemDataSource f65942e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f65943f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FormSystemDataSource$getAccountActivationForm$1(FormSystemDataSource formSystemDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f65942e = formSystemDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f65943f |= Integer.MIN_VALUE;
        Object objD = this.f65942e.d(null, this);
        return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : new Result(objD);
    }
}
