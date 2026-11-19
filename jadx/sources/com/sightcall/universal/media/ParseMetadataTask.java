package com.sightcall.universal.media;

import android.os.AsyncTask;
import com.sightcall.universal.internal.util.Utils;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class ParseMetadataTask extends AsyncTask<Void, Void, List<Metadata>> {
    private final List<Media> medias;
    private final WeakReference<UploaderService> service;

    public ParseMetadataTask(UploaderService uploaderService, List<Media> list) {
        this.service = new WeakReference<>(uploaderService);
        this.medias = list;
    }

    @Override // android.os.AsyncTask
    public List<Metadata> doInBackground(Void... voidArr) {
        ArrayList arrayList = new ArrayList();
        for (Media media : this.medias) {
            Metadata metadataFromJson = Metadata.fromJson(Utils.readFileAsString(media.metadata()));
            if (metadataFromJson == null) {
                media.delete();
            } else {
                arrayList.add(metadataFromJson);
            }
        }
        return arrayList;
    }

    @Override // android.os.AsyncTask
    public void onCancelled(List<Metadata> list) {
        super.onCancelled(list);
        UploaderService uploaderService = this.service.get();
        if (uploaderService != null) {
            uploaderService.onParseMetadataCancel(list);
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(List<Metadata> list) {
        super.onPostExecute(list);
        UploaderService uploaderService = this.service.get();
        if (uploaderService != null) {
            if (list == null) {
                uploaderService.onParseMetadataFail();
            } else {
                uploaderService.onParseMetadataSuccess(list);
            }
        }
    }
}
