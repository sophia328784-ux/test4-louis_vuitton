package com.vuitton.android.domain.repository;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/SearchRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SearchRepository {
    Object a(String str, ContinuationImpl continuationImpl);

    Object b(String str, String str2, String str3, int i2, String str4, boolean z, ContinuationImpl continuationImpl);

    Object c(ContinuationImpl continuationImpl);

    Object d(String str, ContinuationImpl continuationImpl);
}
