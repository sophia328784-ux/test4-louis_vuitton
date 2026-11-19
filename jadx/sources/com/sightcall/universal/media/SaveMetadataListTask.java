package com.sightcall.universal.media;

import android.content.Context;
import android.os.AsyncTask;
import com.sightcall.universal.Universal;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.Utils;
import okio.Okio;
import okio.RealBufferedSink;

/* JADX INFO: loaded from: classes3.dex */
public class SaveMetadataListTask extends AsyncTask<Void, Void, List<Metadata>> {
    private static final OldLogger logger = OldLogger.get("SaveMetadataListTask");
    private final Context context;
    private final List<Metadata> metadatas;

    public SaveMetadataListTask(Context context, List<Metadata> list) {
        this.context = context;
        this.metadatas = list;
    }

    private boolean writeMetadata(Metadata metadata) throws Throwable {
        File fileNewMetadataFile = MediaStorage.newMetadataFile(this.context, metadata);
        if (fileNewMetadataFile.exists()) {
            fileNewMetadataFile.delete();
        }
        logger.d("writeMetadata(%s)", fileNewMetadataFile.getAbsolutePath());
        RealBufferedSink realBufferedSink = null;
        try {
            try {
                RealBufferedSink realBufferedSink2 = new RealBufferedSink(Okio.d(fileNewMetadataFile));
                try {
                    realBufferedSink2.r0(metadata.toJson());
                    realBufferedSink2.close();
                    Utils.closeSilently(realBufferedSink2);
                    return true;
                } catch (Exception e2) {
                    e = e2;
                    realBufferedSink = realBufferedSink2;
                    Universal.logger().e(e);
                    Utils.closeSilently(realBufferedSink);
                    return false;
                } catch (Throwable th) {
                    th = th;
                    realBufferedSink = realBufferedSink2;
                    Utils.closeSilently(realBufferedSink);
                    throw th;
                }
            } catch (Exception e3) {
                e = e3;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // android.os.AsyncTask
    public List<Metadata> doInBackground(Void... voidArr) {
        ArrayList arrayList = new ArrayList();
        for (Metadata metadata : this.metadatas) {
            if (writeMetadata(metadata)) {
                arrayList.add(metadata);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.AsyncTask
    public void onPostExecute(List<Metadata> list) {
        super.onPostExecute(list);
    }
}
