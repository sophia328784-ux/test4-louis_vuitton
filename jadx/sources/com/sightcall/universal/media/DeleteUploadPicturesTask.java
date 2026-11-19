package com.sightcall.universal.media;

import android.content.Context;
import android.os.AsyncTask;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class DeleteUploadPicturesTask extends AsyncTask<Void, Void, List<String>> {
    private final Callback callback;
    private final Context context;
    private final List<String> files;

    public interface Callback {
        void postDelete(List<String> list);
    }

    public DeleteUploadPicturesTask(Context context, List<String> list, Callback callback) {
        this.context = context;
        this.files = list;
        this.callback = callback;
    }

    @Override // android.os.AsyncTask
    public List<String> doInBackground(Void... voidArr) {
        LinkedList linkedList = new LinkedList();
        for (String str : this.files) {
            if (MediaStorage.deleteUploadsStartingWith(this.context, str).size() == 2) {
                linkedList.add(str);
            }
        }
        return linkedList;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(List<String> list) {
        super.onPostExecute(list);
        this.callback.postDelete(list);
    }
}
