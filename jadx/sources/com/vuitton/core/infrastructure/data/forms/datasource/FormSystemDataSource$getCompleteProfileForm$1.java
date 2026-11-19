package com.vuitton.core.infrastructure.data.forms.datasource;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.core.infrastructure.data.forms.datasource.FormSystemDataSource", f = "FormSystemDataSource.kt", l = {87}, m = "getCompleteProfileForm-qJBbalk", v = 2)
final class FormSystemDataSource$getCompleteProfileForm$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public FormSystemDataSource f65964b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f65965c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ FormSystemDataSource f65966e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f65967f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FormSystemDataSource$getCompleteProfileForm$1(FormSystemDataSource formSystemDataSource, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f65966e = formSystemDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.d = obj;
        this.f65967f |= Integer.MIN_VALUE;
        Object objH = this.f65966e.h(null, this);
        return objH == CoroutineSingletons.COROUTINE_SUSPENDED ? objH : new Result(objH);
    }
}
