package com.vuitton.android.data.api.bff.publication;

import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.audioguide.AudioGuideDto;
import com.vuitton.android.data.dto.audioguide.TrackDetailDto;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.GET;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J$\u0010\u0002\u001a\u00020\u00032\b\b\u0001\u0010\u0004\u001a\u00020\u00052\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005H§@¢\u0006\u0002\u0010\u0007J,\u0010\b\u001a\u00020\t2\b\b\u0001\u0010\u0004\u001a\u00020\u00052\b\b\u0001\u0010\n\u001a\u00020\u00052\b\b\u0001\u0010\u0006\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/publication/AudioGuideApi;", "", "getAudioGuide", "Lcom/vuitton/android/data/dto/audioguide/AudioGuideDto;", b.a.f24015b, "", "language", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getTrackDetail", "Lcom/vuitton/android/data/dto/audioguide/TrackDetailDto;", "trackId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AudioGuideApi {
    @GET("audio-guide/{id}")
    Object getAudioGuide(@Path(b.a.f24015b) String str, @Query("language") String str2, Continuation<? super AudioGuideDto> continuation);

    @GET("audio-guide/{id}/tracks/{trackId}")
    Object getTrackDetail(@Path(b.a.f24015b) String str, @Path("trackId") String str2, @Query("language") String str3, Continuation<? super TrackDetailDto> continuation);
}
