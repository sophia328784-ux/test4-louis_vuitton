package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import com.vuitton.foundation.model.domain.model.product.universal.CustomizationId;
import com.vuitton.foundation.model.domain.model.product.vto.BeautyProductType;
import com.vuitton.foundation.model.domain.model.product.vto.ShadeFinderRequest;
import com.vuitton.foundation.model.domain.model.producttiny.RelatedProductAlgorithm;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/ProductRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ProductRepository {
    Object a(String str);

    Object b(String str, RelatedProductAlgorithm relatedProductAlgorithm, ContinuationImpl continuationImpl);

    Object c(ShadeFinderRequest shadeFinderRequest, ContinuationImpl continuationImpl);

    CustomizationId d(String str);

    Object e(String str, CustomizationId customizationId);

    Object f(String str, String str2, AuthToken authToken, ContinuationImpl continuationImpl);

    Object g(ArrayList arrayList, ContinuationImpl continuationImpl);

    Object h(List list, ContinuationImpl continuationImpl);

    Object i(BeautyProductType beautyProductType, ContinuationImpl continuationImpl);

    Object j(String str, ContinuationImpl continuationImpl);

    Object k(String str, String str2, ContinuationImpl continuationImpl);
}
