package com.vuitton.android.data.api.bff.publication;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.applink.ContributionLinkFromAppLinkDto;
import com.vuitton.android.data.applink.ExcludedAppLinksDto;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u000e\u0010\u0002\u001a\u00020\u0003H§@¢\u0006\u0002\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\bH§@¢\u0006\u0002\u0010\t¨\u0006\nÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/publication/AppLinkApi;", "", "getAppLinkExclusions", "Lcom/vuitton/android/data/applink/ExcludedAppLinksDto;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getContributionLinkFromAppLink", "Lcom/vuitton/android/data/applink/ContributionLinkFromAppLinkDto;", ConfigurationName.DOWNLOAD_PLUGIN_URL, "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AppLinkApi {
    @GET("universal-links-exclusion")
    Object getAppLinkExclusions(Continuation<? super ExcludedAppLinksDto> continuation);

    @GET("universal-links")
    Object getContributionLinkFromAppLink(@Query(ConfigurationName.DOWNLOAD_PLUGIN_URL) String str, Continuation<? super ContributionLinkFromAppLinkDto> continuation);
}
