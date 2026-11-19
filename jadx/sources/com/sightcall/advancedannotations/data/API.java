package com.sightcall.advancedannotations.data;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import io.reactivex.rxjava3.core.Single;
import kotlin.Metadata;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.Url;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b`\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u0006H'¨\u0006\u0007À\u0006\u0003"}, d2 = {"Lcom/sightcall/advancedannotations/data/API;", "", "fetchSettings", "Lio/reactivex/rxjava3/core/Single;", "Lcom/sightcall/advancedannotations/data/AnnotationSettingsEntity;", ConfigurationName.DOWNLOAD_PLUGIN_URL, "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface API {
    @Headers({"Content-Type:application/json"})
    @GET
    Single<AnnotationSettingsEntity> fetchSettings(@Url String url);
}
