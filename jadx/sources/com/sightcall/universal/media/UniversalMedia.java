package com.sightcall.universal.media;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Parcelable;
import androidx.core.content.FileProvider;
import com.sightcall.universal.internal.UniversalFileProvider;
import com.sightcall.universal.util.Feature;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.rtccloud.sdk.Rtcc;

/* JADX INFO: loaded from: classes3.dex */
public class UniversalMedia {
    private final Context context;

    public UniversalMedia(Context context) {
        this.context = context.getApplicationContext();
        if (Feature.MEDIA_EXPORT.isEnabled(context)) {
            Rtcc.instance().bus().register(MediaExporter.instance(context));
        }
    }

    public MediaExporter exporter() {
        return MediaExporter.instance(this.context);
    }

    public List<Media> exports() {
        return MediaStorage.listMedia(MediaStorage.getExportDirectory(this.context));
    }

    public List<Media> failures() {
        return MediaStorage.listMedia(MediaStorage.getFailureDirectory(this.context));
    }

    public void invalidate() {
        new Thread(new Runnable() { // from class: com.sightcall.universal.media.UniversalMedia.2
            @Override // java.lang.Runnable
            public void run() {
                MediaStorage.deleteRecursively(MediaStorage.getRootDirectory(UniversalMedia.this.context));
            }
        }).start();
    }

    public List<Media> locals() {
        return MediaStorage.listMedia(MediaStorage.getLocalDirectory(this.context));
    }

    public Intent share(Media... mediaArr) {
        String authority = UniversalFileProvider.getAuthority(this.context);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(mediaArr.length);
        Intent intent = new Intent("android.intent.action.SEND_MULTIPLE");
        intent.setType("image/*");
        intent.addFlags(268435459);
        for (Media media : mediaArr) {
            Uri uriForFile = FileProvider.getUriForFile(this.context, authority, media.image());
            UniversalFileProvider.grantReadWritePermission(this.context, intent, uriForFile);
            arrayList.add(uriForFile);
        }
        intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
        List<ResolveInfo> listQueryIntentActivities = this.context.getPackageManager().queryIntentActivities(intent, 65536);
        if (listQueryIntentActivities.isEmpty()) {
            return null;
        }
        Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
        while (it.hasNext()) {
            String str = it.next().activityInfo.packageName;
            Iterator<? extends Parcelable> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                this.context.grantUriPermission(str, (Uri) it2.next(), 3);
            }
        }
        return intent;
    }

    public void triggerExport() {
        exporter().check();
    }

    public void triggerUpload() {
        AsyncTask.execute(new Runnable() { // from class: com.sightcall.universal.media.UniversalMedia.1
            @Override // java.lang.Runnable
            public void run() {
                if (MediaStorage.hasUploadMedia(UniversalMedia.this.context)) {
                    UploaderService.start(UniversalMedia.this.context);
                }
            }
        });
    }

    public List<Media> uploads() {
        return MediaStorage.listMedia(MediaStorage.getUploadDirectory(this.context));
    }

    public Intent view(Media media) {
        File fileImage = media.image();
        if (!fileImage.exists()) {
            return null;
        }
        Uri uriForFile = FileProvider.getUriForFile(this.context, UniversalFileProvider.getAuthority(this.context), fileImage);
        Intent intent = new Intent("android.intent.action.VIEW", uriForFile);
        intent.addFlags(3);
        UniversalFileProvider.grantReadWritePermission(this.context, intent, uriForFile);
        List<ResolveInfo> listQueryIntentActivities = this.context.getPackageManager().queryIntentActivities(intent, 65536);
        if (listQueryIntentActivities.isEmpty()) {
            return null;
        }
        Iterator<ResolveInfo> it = listQueryIntentActivities.iterator();
        while (it.hasNext()) {
            this.context.grantUriPermission(it.next().activityInfo.packageName, uriForFile, 3);
        }
        return intent;
    }
}
