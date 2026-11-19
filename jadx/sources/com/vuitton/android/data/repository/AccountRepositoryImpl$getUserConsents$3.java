package com.vuitton.android.data.repository;

import com.vuitton.android.data.datasource.consents.UserConsentsLocalDataSource;
import com.vuitton.foundation.model.domain.model.account.consent.UserConsents;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.AdaptedFunctionReference;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final /* synthetic */ class AccountRepositoryImpl$getUserConsents$3 extends AdaptedFunctionReference implements Function1<Continuation<? super Result<? extends UserConsents>>, Object>, SuspendFunction {
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((UserConsentsLocalDataSource) this.receiver).a();
    }
}
