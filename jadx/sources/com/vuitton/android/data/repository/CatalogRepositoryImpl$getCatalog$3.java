package com.vuitton.android.data.repository;

import com.vuitton.android.data.datasource.catalog.CatalogLocalDataSource;
import com.vuitton.foundation.model.domain.model.catalog.Catalog;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AdaptedFunctionReference;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class CatalogRepositoryImpl$getCatalog$3 extends AdaptedFunctionReference implements Function1<Continuation<? super Result<? extends Catalog>>, Object>, SuspendFunction {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws Throwable {
        Object failure;
        CatalogLocalDataSource catalogLocalDataSource = (CatalogLocalDataSource) this.receiver;
        int i2 = CatalogRepositoryImpl.p;
        Catalog catalog = catalogLocalDataSource.f43954a;
        if (catalog == null) {
            return null;
        }
        try {
            failure = new Result(catalog);
        } catch (Throwable th) {
            Result.Companion companion = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return new Result(((Result) failure).f71708b);
    }
}
