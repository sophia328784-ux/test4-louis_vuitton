package com.sightcall.universal.media;

import android.os.Handler;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Agent;
import com.sightcall.universal.api.Apis;
import com.sightcall.universal.api.Environment;
import com.sightcall.universal.api.Headers;
import com.sightcall.universal.api.HttpLoggingInterceptor;
import com.sightcall.universal.media.mapper.MetadataMappersKt;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.Random;
import java.util.UUID;
import net.rtccloud.sdk.util.OldLogger;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import okhttp3.RequestBody$Companion$asRequestBody$1;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
class UploaderClient {
    private static final OldLogger log = OldLogger.get("UploaderClient");

    public interface UploadCallback {
        void onMediaUploadError();

        void onMediaUploadFailure();

        void onMediaUploadSuccess();
    }

    public static class UploaderCallback implements UploadCallback {
        private final Media media;
        private final Metadata metadata;
        private final Random random = new Random();
        private final WeakReference<UploaderService> service;

        public UploaderCallback(UploaderService uploaderService, Media media, Metadata metadata) {
            this.service = new WeakReference<>(uploaderService);
            this.media = media;
            this.metadata = metadata;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$replayRequest$0(UploaderCallback uploaderCallback) {
            UploaderClient.upload(this.metadata, this.media, uploaderCallback);
        }

        private void replayRequest(UploaderCallback uploaderCallback) {
            new Handler().postDelayed(new a(this, uploaderCallback, 1), this.random.nextInt(10000) + 1);
        }

        @Override // com.sightcall.universal.media.UploaderClient.UploadCallback
        public void onMediaUploadError() {
            Universal.logger().e("Error to upload: " + this.media);
            this.media.delete();
            UploaderService uploaderService = this.service.get();
            if (uploaderService != null) {
                uploaderService.onUploadError(this.media, this.metadata);
            }
        }

        @Override // com.sightcall.universal.media.UploaderClient.UploadCallback
        public void onMediaUploadFailure() {
            Universal.logger().e("Failed to upload: " + this.media);
            if (this.metadata.uploadUrl() != null) {
                replayRequest(this);
                return;
            }
            UploaderService uploaderService = this.service.get();
            if (uploaderService != null) {
                uploaderService.onUploadFailure(this.media, this.metadata);
            }
        }

        @Override // com.sightcall.universal.media.UploaderClient.UploadCallback
        public void onMediaUploadSuccess() {
            this.media.delete();
            UploaderService uploaderService = this.service.get();
            if (uploaderService != null) {
                uploaderService.onUploadSuccess(this.media, this.metadata);
            }
        }
    }

    private static UploaderApi get(Environment environment) {
        return (UploaderApi) Apis.get(UploaderApi.class, environment);
    }

    public static void upload(Metadata metadata, Media media, final UploadCallback uploadCallback) {
        log.d("upload()");
        if (Apis.loggingInterceptor().getLevel() == HttpLoggingInterceptor.Level.BODY) {
            Universal.logger().i(String.valueOf(metadata));
        }
        if (metadata.reference == null) {
            uploadCallback.onMediaUploadError();
            return;
        }
        Agent agent = Universal.agent().get();
        Environment environmentWith = (agent == null || agent.token() == null) ? Environment.with(metadata.environment()) : agent.environment();
        MultipartBody.Builder builder = new MultipartBody.Builder();
        builder.c(MultipartBody.f76939i);
        builder.a("name", UUID.randomUUID().toString());
        builder.a("metadata", MetadataMappersKt.toMedaDataFormat(metadata));
        File fileImage = media.image();
        MediaType.f76933e.getClass();
        MediaType mediaTypeA = MediaType.Companion.a("image/jpeg");
        RequestBody.f76978a.getClass();
        fileImage.getClass();
        RequestBody$Companion$asRequestBody$1 requestBody$Companion$asRequestBody$1 = new RequestBody$Companion$asRequestBody$1(mediaTypeA, fileImage);
        MultipartBody.Part.f76948c.getClass();
        builder.f76947c.add(MultipartBody.Part.Companion.b("file", "blob", requestBody$Companion$asRequestBody$1));
        get(environmentWith).uploadPictures(metadata.uploadUrl(), Headers.Authorization.Bearer.with(metadata.uploadToken()), builder.b()).p(new Callback<Void>() { // from class: com.sightcall.universal.media.UploaderClient.1
            @Override // retrofit2.Callback
            public void onFailure(Call<Void> call, Throwable th) {
                UploaderClient.log.e("onFailure()", th);
                uploadCallback.onMediaUploadFailure();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<Void> call, Response<Void> response) {
                okhttp3.Response response2 = response.f79449a;
                if (response2.r) {
                    UploaderClient.log.d("onResponse()");
                    uploadCallback.onMediaUploadSuccess();
                    return;
                }
                UploaderClient.log.e("onResponse() " + response2.f76986e + " " + response2.d);
                uploadCallback.onMediaUploadFailure();
            }
        });
    }
}
