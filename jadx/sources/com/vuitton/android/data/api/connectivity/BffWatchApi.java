package com.vuitton.android.data.api.connectivity;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.connectivity.watch.RenameWatchDto;
import com.vuitton.android.data.dto.connectivity.watch.WatchDto;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.PATCH;
import retrofit2.http.Path;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H§@¢\u0006\u0002\u0010\u0005J(\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0001\u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\fH§@¢\u0006\u0002\u0010\r¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/connectivity/BffWatchApi;", "", "getWatches", "", "Lcom/vuitton/android/data/dto/connectivity/watch/WatchDto;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "renameWatch", "Lretrofit2/Response;", "", "watchId", "", "newName", "Lcom/vuitton/android/data/dto/connectivity/watch/RenameWatchDto;", "(Ljava/lang/String;Lcom/vuitton/android/data/dto/connectivity/watch/RenameWatchDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface BffWatchApi {
    @GET("watches")
    Object getWatches(Continuation<? super List<WatchDto>> continuation);

    @PATCH("watch/{watchId}")
    Object renameWatch(@Path("watchId") String str, @Body RenameWatchDto renameWatchDto, Continuation<? super Response<Unit>> continuation);
}
