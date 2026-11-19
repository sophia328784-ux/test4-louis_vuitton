package com.vuitton.android.data.api.bff.publication;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.config.AppConfigDto;
import com.vuitton.android.data.dto.config.version.ConfigsVersionDto;
import com.vuitton.android.data.dto.connectivity.sync.ConnectedObjectsConfigDto;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Path;
import retrofit2.http.Url;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002H§@¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\b\u001a\u00020\u00072\b\b\u0001\u0010\u0006\u001a\u00020\u0005H§@¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\r\u001a\u00020\f2\b\b\u0001\u0010\u000b\u001a\u00020\nH§@¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/publication/ConfigurationApi;", "", "Lcom/vuitton/android/data/dto/config/version/ConfigsVersionDto;", "getConfigsVersion", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", "revision", "Lcom/vuitton/android/data/dto/config/AppConfigDto;", "getAppConfig", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "Lcom/vuitton/android/data/dto/connectivity/sync/ConnectedObjectsConfigDto;", "getConnectedObjectsConfig", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ConfigurationApi {
    @GET("lv-app-configuration/{revision}")
    Object getAppConfig(@Path("revision") long j2, Continuation<? super AppConfigDto> continuation);

    @GET("lv-app-configuration/metadata")
    Object getConfigsVersion(Continuation<? super ConfigsVersionDto> continuation);

    @GET
    Object getConnectedObjectsConfig(@Url String str, Continuation<? super ConnectedObjectsConfigDto> continuation);
}
