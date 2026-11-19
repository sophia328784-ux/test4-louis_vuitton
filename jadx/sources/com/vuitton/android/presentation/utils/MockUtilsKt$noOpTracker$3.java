package com.vuitton.android.presentation.utils;

import com.vuitton.android.domain.repository.InAppDispatchRepository;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/utils/MockUtilsKt$noOpTracker$3", "Lcom/vuitton/android/domain/repository/InAppDispatchRepository;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MockUtilsKt$noOpTracker$3 implements InAppDispatchRepository {
    @Override // com.vuitton.android.domain.repository.InAppDispatchRepository
    public final Object a(String str, ContinuationImpl continuationImpl) {
        throw new UnsupportedOperationException();
    }

    @Override // com.vuitton.android.domain.repository.InAppDispatchRepository
    public final InAppDispatch b() {
        throw new UnsupportedOperationException();
    }

    @Override // com.vuitton.android.domain.repository.InAppDispatchRepository
    public final Object c(List list, Continuation continuation) {
        return null;
    }

    @Override // com.vuitton.android.domain.repository.InAppDispatchRepository
    public final Object d(InAppDispatch inAppDispatch, Continuation continuation) {
        throw new UnsupportedOperationException();
    }

    @Override // com.vuitton.android.domain.repository.InAppDispatchRepository
    public final Object e(Continuation continuation) {
        throw new UnsupportedOperationException();
    }
}
