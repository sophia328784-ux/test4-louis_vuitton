package com.sightcall.universal.media;

import android.os.AsyncTask;
import android.util.Base64;
import com.sightcall.universal.internal.util.Utils;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
class ParseMediaTask extends AsyncTask<Void, Void, Result> {
    private final Media media;
    private final WeakReference<UploaderService> service;

    public static class Result {
        final String base64;
        final Media media;
        final Metadata metadata;

        public Result(Metadata metadata, String str, Media media) {
            this.metadata = metadata;
            this.base64 = str;
            this.media = media;
        }
    }

    public ParseMediaTask(UploaderService uploaderService, Media media) {
        this.service = new WeakReference<>(uploaderService);
        this.media = media;
    }

    @Override // android.os.AsyncTask
    public Result doInBackground(Void... voidArr) throws Throwable {
        byte[] fileAsByteArray = Utils.readFileAsByteArray(this.media.image());
        Metadata metadataFromJson = Metadata.fromJson(Utils.readFileAsString(this.media.metadata()));
        if (fileAsByteArray != null && metadataFromJson != null) {
            return new Result(metadataFromJson, Base64.encodeToString(fileAsByteArray, 0, fileAsByteArray.length, 0), this.media);
        }
        this.media.delete();
        return null;
    }

    @Override // android.os.AsyncTask
    public void onCancelled(Result result) {
        super.onCancelled(result);
        UploaderService uploaderService = this.service.get();
        if (uploaderService != null) {
            uploaderService.onParseCancel(this.media, result);
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(Result result) {
        super.onPostExecute(result);
        UploaderService uploaderService = this.service.get();
        if (uploaderService != null) {
            Media media = this.media;
            if (result == null) {
                uploaderService.onParseFail(media);
            } else {
                uploaderService.onParseSuccess(media, result);
            }
        }
    }
}
