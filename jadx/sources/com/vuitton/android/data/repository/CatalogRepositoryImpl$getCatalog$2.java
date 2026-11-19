package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.catalog.Catalog;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class CatalogRepositoryImpl$getCatalog$2 extends FunctionReferenceImpl implements Function1<Continuation<? super Result<? extends Catalog>>, Object>, SuspendFunction {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object objP = CatalogRepositoryImpl.p((CatalogRepositoryImpl) this.receiver, (Continuation) obj);
        return objP == CoroutineSingletons.COROUTINE_SUSPENDED ? objP : new Result(objP);
    }
}
