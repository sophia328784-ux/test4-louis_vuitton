package com.vuitton.android.data.api.bff.user;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.dto.aicompanion.ChatRequestDto;
import com.vuitton.android.data.dto.aicompanion.ChatResponseDto;
import com.vuitton.android.data.dto.aicompanion.ChatSessionDto;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\b\u0001\u0010\u0007\u001a\u00020\bH§@¢\u0006\u0002\u0010\tJ\u0018\u0010\n\u001a\u00020\u000b2\b\b\u0001\u0010\u0004\u001a\u00020\u0005H§@¢\u0006\u0002\u0010\f¨\u0006\rÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/android/data/api/bff/user/AICompanionApi;", "", "postChatMessage", "Lcom/vuitton/android/data/dto/aicompanion/ChatResponseDto;", "sessionId", "", "appInstanceId", "chatBody", "Lcom/vuitton/android/data/dto/aicompanion/ChatRequestDto;", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/aicompanion/ChatRequestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getChatSessionById", "Lcom/vuitton/android/data/dto/aicompanion/ChatSessionDto;", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AICompanionApi {
    @GET("companion/session")
    Object getChatSessionById(@Header("Companion-Session-Id") String str, Continuation<? super ChatSessionDto> continuation);

    @POST("companion/chat")
    Object postChatMessage(@Header("Companion-Session-Id") String str, @Header("visitorId") String str2, @Body ChatRequestDto chatRequestDto, Continuation<? super ChatResponseDto> continuation);
}
