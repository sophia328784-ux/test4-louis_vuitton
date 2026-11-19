package com.sightcall.universal.ar;

import com.sightcall.universal.api.ApiCallback;
import com.sightcall.universal.api.JsonApi;

/* JADX INFO: loaded from: classes3.dex */
public interface ArPictureUploadCallback {

    public static class Error extends ApiCallback<JsonApi.Wrapper<ArPictureUpload>> {
    }

    public static class Success extends ApiCallback<JsonApi.Wrapper<ArPictureUpload>> {
        final ArPictureUpload upload;

        public Success(ApiCallback.Holder<JsonApi.Wrapper<ArPictureUpload>> holder, ArPictureUpload arPictureUpload) {
            super(holder);
            this.upload = arPictureUpload;
        }

        public ArPictureUpload upload() {
            return this.upload;
        }
    }

    void onUploadPictureError(Error error);

    void onUploadPictureSuccess(Success success);
}
