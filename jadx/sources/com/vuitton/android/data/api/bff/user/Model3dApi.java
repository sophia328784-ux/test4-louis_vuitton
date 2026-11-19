package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.model3dasset.Model3dAssetDto;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.Response;
import retrofit2.http.GET;
import retrofit2.http.Path;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u0007H§@¢\u0006\u0004\b\b\u0010\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/Model3dApi;", "", "get3dIdAsset", "Lretrofit2/Response;", "", "Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetDto;", "sku", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "get3dIdAsset-hd8RJmg", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface Model3dApi {
    @GET("assets-3d/{sku}")
    /* JADX INFO: renamed from: get3dIdAsset-hd8RJmg, reason: not valid java name */
    Object m84get3dIdAssethd8RJmg(@Path("sku") String str, Continuation<? super Response<List<Model3dAssetDto>>> continuation);
}
