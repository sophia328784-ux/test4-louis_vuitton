package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.place.AutocompleteContext;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/PlaceRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PlaceRepository {
    Object a(String str, String str2, String str3, AutocompleteContext autocompleteContext, ContinuationImpl continuationImpl);

    Object b(String str, AutocompleteContext autocompleteContext, ContinuationImpl continuationImpl);

    Object c(double d, double d2, ContinuationImpl continuationImpl);

    Object d(String str, ContinuationImpl continuationImpl);

    Object e(String str, String str2, ContinuationImpl continuationImpl);

    Object f(String str, String str2, ContinuationImpl continuationImpl);
}
