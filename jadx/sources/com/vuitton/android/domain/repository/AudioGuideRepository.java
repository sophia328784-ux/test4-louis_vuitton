package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.audioguide.AudioGuideAccessData;
import com.vuitton.foundation.model.domain.model.common.ResultStrategyLazy;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/AudioGuideRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AudioGuideRepository {
    Object a(String str, String str2, ContinuationImpl continuationImpl);

    Object b(ContinuationImpl continuationImpl);

    ResultStrategyLazy c(String str, String str2, String str3);

    Object d(AudioGuideAccessData audioGuideAccessData, ContinuationImpl continuationImpl);

    Object e(String str, ContinuationImpl continuationImpl);

    Object f();

    Object g(ContinuationImpl continuationImpl);

    Object h(ContinuationImpl continuationImpl);
}
