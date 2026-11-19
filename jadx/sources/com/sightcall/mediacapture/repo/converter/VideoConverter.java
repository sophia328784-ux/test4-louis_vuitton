package com.sightcall.mediacapture.repo.converter;

import com.appsflyer.sdk_base.referrer.Payload;
import com.sightcall.mediacapture.repo.MediaCaptureError;
import com.sightcall.mediacapture.repo.entities.MediaRepo;
import com.sightcall.pratik.Result;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001J2\u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00032\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH¦@¢\u0006\u0002\u0010\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/sightcall/mediacapture/repo/converter/VideoConverter;", "", "process", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;", "Lcom/sightcall/mediacapture/repo/MediaCaptureError;", Payload.SOURCE, "maxSize", "", "targetString", "", "(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lib_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface VideoConverter {
    Object process(MediaRepo mediaRepo, int i2, String str, Continuation<? super Result<MediaRepo, MediaCaptureError>> continuation);
}
