package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.aicompanion.ChatHistory;
import com.vuitton.foundation.model.domain.model.aicompanion.ChatRequest;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/AICompanionRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AICompanionRepository {
    Object a(boolean z, ContinuationImpl continuationImpl);

    Object b(String str, String str2, ContinuationImpl continuationImpl);

    Object c(ChatRequest chatRequest, String str, ContinuationImpl continuationImpl);

    Object d(ChatHistory chatHistory, ContinuationImpl continuationImpl);

    Object e(ContinuationImpl continuationImpl);

    Object f(String str, ContinuationImpl continuationImpl);

    Object g(boolean z);

    Object h(ContinuationImpl continuationImpl);

    Object i(String str, ContinuationImpl continuationImpl);

    Flow j();
}
