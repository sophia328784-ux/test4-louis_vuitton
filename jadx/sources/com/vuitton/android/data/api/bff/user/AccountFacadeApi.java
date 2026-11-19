package com.vuitton.android.data.api.bff.user;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.profile.legacy.ShortUserAccountDto;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Query;
import retrofit2.http.Url;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u00052\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005H§@¢\u0006\u0002\u0010\u0007¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/AccountFacadeApi;", "", "checkAccountUser", "Lcom/vuitton/android/data/dto/profile/legacy/ShortUserAccountDto;", ConfigurationName.DOWNLOAD_PLUGIN_URL, "", "dispatchRegionCodeIso31661Alpha2", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AccountFacadeApi {
    @GET
    Object checkAccountUser(@Url String str, @Query("dispatchCountry") String str2, Continuation<? super ShortUserAccountDto> continuation);
}
