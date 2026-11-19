package com.sightcall.universal.media;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.core.content.ContextCompat;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.util.Feature;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.Utils;

/* JADX INFO: loaded from: classes3.dex */
public final class MediaExporter {
    private static volatile MediaExporter instance;
    private static final OldLogger logger = OldLogger.get("MediaExporter");
    private final Context context;
    private File overrideRoot;

    /* JADX INFO: renamed from: com.sightcall.universal.media.MediaExporter$4, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass4 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$media$Metadata$Extension;

        static {
            int[] iArr = new int[Metadata.Extension.values().length];
            $SwitchMap$com$sightcall$universal$media$Metadata$Extension = iArr;
            try {
                iArr[Metadata.Extension.PNG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$media$Metadata$Extension[Metadata.Extension.JPG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private MediaExporter(Context context) {
        this.context = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void executeInBackgroundAfterPermission(BackgroundJob backgroundJob) {
        backgroundJob.execute();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Media export(Media media, Metadata metadata, boolean z) throws Throwable {
        File fileMetadata;
        String str;
        File fileMetadata2;
        if (metadata == null || TextUtils.isEmpty(metadata.pathName)) {
            File exportDirectory = getExportDirectory();
            exportDirectory.mkdirs();
            OldLogger oldLogger = logger;
            oldLogger.d("Exporting image [%s] -> [dir] [%s]", media.image().getAbsolutePath(), exportDirectory.getAbsolutePath());
            File fileMoveImageTo = media.moveImageTo(exportDirectory);
            if (z) {
                oldLogger.d("Exporting metadata [%s] -> [dir] [%s]", media.metadata().getAbsolutePath(), exportDirectory.getAbsolutePath());
                fileMetadata = media.moveMetadataTo(exportDirectory);
            } else {
                fileMetadata = media.metadata();
                fileMetadata.delete();
            }
            return new Media(fileMoveImageTo, fileMetadata);
        }
        File fileRelativeToPictures = relativeToPictures(metadata.pathName);
        File parentFile = fileRelativeToPictures.getParentFile();
        parentFile.mkdirs();
        int i2 = AnonymousClass4.$SwitchMap$com$sightcall$universal$media$Metadata$Extension[metadata.extension().ordinal()];
        if (i2 != 1) {
            str = i2 != 2 ? "" : ".jpg";
        } else {
            str = ".png";
        }
        String str2 = fileRelativeToPictures.getName() + str;
        OldLogger oldLogger2 = logger;
        oldLogger2.d("Exporting image [%s] -> [%s][%s]", media.image().getAbsolutePath(), parentFile.getAbsolutePath(), str2);
        File fileMoveImageTo2 = media.moveImageTo(parentFile, str2);
        if (z) {
            String str3 = fileRelativeToPictures.getName() + ".meta";
            oldLogger2.d("Exporting metadata [%s] -> [%s][%s]", media.metadata().getAbsolutePath(), parentFile.getAbsolutePath(), str3);
            fileMetadata2 = media.moveMetadataTo(parentFile, str3);
        } else {
            fileMetadata2 = media.metadata();
            fileMetadata2.delete();
        }
        return new Media(fileMoveImageTo2, fileMetadata2);
    }

    private File getExportDirectory() {
        File file = this.overrideRoot;
        if (file != null) {
            return file;
        }
        String string = this.context.getString(R.string.universal_feature_media_export_directory);
        return !TextUtils.isEmpty(string) ? relativeToPictures(string) : relativeToPictures(Utils.appName(this.context).replaceAll("[^\\w. ]+", "_"));
    }

    private static boolean hasPermissions(Context context, String... strArr) {
        for (String str : strArr) {
            if (ContextCompat.checkSelfPermission(context, str) != 0) {
                return false;
            }
        }
        return true;
    }

    public static MediaExporter instance(Context context) {
        if (instance == null) {
            synchronized (MediaExporter.class) {
                try {
                    if (instance == null) {
                        instance = new MediaExporter(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return instance;
    }

    public static boolean isExternalStorageReadable() {
        String externalStorageState = Environment.getExternalStorageState();
        return "mounted".equals(externalStorageState) || "mounted_ro".equals(externalStorageState);
    }

    public static boolean isExternalStorageWritable() {
        return "mounted".equals(Environment.getExternalStorageState());
    }

    private boolean isPermissionInManifest(String str) {
        try {
            String[] strArr = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 4096).requestedPermissions;
            if (strArr != null) {
                for (String str2 : strArr) {
                    if (str.equals(str2)) {
                        return true;
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException e2) {
            logger.e(e2);
        }
        logger.e("Missing requested permission in AndroidManifest.xml: " + str);
        return false;
    }

    private static File relativeToPictures(String str) {
        return new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scanFiles(String... strArr) {
        MediaScannerConnection.scanFile(this.context, strArr, null, new MediaScannerConnection.OnScanCompletedListener() { // from class: com.sightcall.universal.media.MediaExporter.3
            @Override // android.media.MediaScannerConnection.OnScanCompletedListener
            public void onScanCompleted(String str, Uri uri) {
                MediaExporter.logger.d("onScanCompleted() called with: path = [" + str + "], uri = [" + uri + "]");
            }
        });
    }

    public void check() {
        AsyncTask.execute(new Runnable() { // from class: com.sightcall.universal.media.MediaExporter.1
            /* JADX WARN: Type inference failed for: r2v0, types: [com.sightcall.universal.media.MediaExporter$1$1] */
            @Override // java.lang.Runnable
            public void run() {
                final List<Media> listExports = Universal.media().exports();
                if (listExports.isEmpty()) {
                    return;
                }
                MediaExporter.this.executeInBackgroundAfterPermission(new BackgroundJob() { // from class: com.sightcall.universal.media.MediaExporter.1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // com.sightcall.universal.media.MediaExporter.BackgroundJob
                    public void doInBackground() throws Throwable {
                        boolean z = MediaExporter.this.context.getResources().getBoolean(R.bool.universal_feature_media_export_meta);
                        boolean z2 = MediaExporter.this.context.getResources().getBoolean(R.bool.universal_feature_media_export_scan);
                        ArrayList arrayList = new ArrayList(listExports.size());
                        for (Media media : listExports) {
                            Metadata metadataFromJson = Metadata.fromJson(com.sightcall.universal.internal.util.Utils.readFileAsString(media.metadata()));
                            try {
                                Media mediaExport = MediaExporter.this.export(media, metadataFromJson, z);
                                Rtcc.instance().bus().post(new MediaExportEvent(mediaExport, metadataFromJson));
                                arrayList.add(mediaExport.image().getAbsolutePath());
                            } catch (IOException e2) {
                                MediaExporter.logger.e(e2);
                            }
                        }
                        if (!z2 || arrayList.isEmpty()) {
                            return;
                        }
                        MediaExporter.this.scanFiles((String[]) arrayList.toArray(new String[0]));
                    }
                });
            }
        });
    }

    @Event
    public final void onMediaSavedEvent(final MediaSavedEvent mediaSavedEvent) {
        String str;
        final Metadata metadata = mediaSavedEvent.metadata();
        if (metadata.storage() == Metadata.Storage.LOCAL && Feature.MEDIA_EXPORT.isEnabled(this.context)) {
            if (!SdkUtilsKt.isAtLeastSdk29()) {
                executeInBackgroundAfterPermission(new BackgroundJob() { // from class: com.sightcall.universal.media.MediaExporter.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // com.sightcall.universal.media.MediaExporter.BackgroundJob
                    public void doInBackground() throws Throwable {
                        boolean z = MediaExporter.this.context.getResources().getBoolean(R.bool.universal_feature_media_export_meta);
                        boolean z2 = MediaExporter.this.context.getResources().getBoolean(R.bool.universal_feature_media_export_scan);
                        try {
                            Media mediaExport = MediaExporter.this.export(mediaSavedEvent.media(), metadata, z);
                            Rtcc.instance().bus().post(new MediaExportEvent(mediaExport, metadata));
                            if (z2) {
                                MediaExporter.this.scanFiles(mediaExport.image().getAbsolutePath());
                            }
                        } catch (IOException e2) {
                            MediaExporter.logger.e(e2);
                        }
                    }
                });
                return;
            }
            ContentResolver contentResolver = this.context.getContentResolver();
            ContentValues contentValues = new ContentValues();
            int i2 = AnonymousClass4.$SwitchMap$com$sightcall$universal$media$Metadata$Extension[metadata.extension().ordinal()];
            if (i2 == 1) {
                contentValues.put("mime_type", "image/png");
                str = ".png";
            } else if (i2 != 2) {
                str = "";
            } else {
                contentValues.put("mime_type", "image/jpeg");
                str = ".jpg";
            }
            contentValues.put("_display_name", metadata.filename + str);
            contentValues.put("relative_path", Environment.DIRECTORY_PICTURES);
            Uri uriInsert = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
            try {
                Objects.requireNonNull(uriInsert);
                OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(uriInsert);
                BitmapFactory.decodeFile(mediaSavedEvent.media().image().getAbsolutePath()).compress(Bitmap.CompressFormat.JPEG, 100, outputStreamOpenOutputStream);
                Objects.requireNonNull(outputStreamOpenOutputStream);
                outputStreamOpenOutputStream.close();
            } catch (FileNotFoundException e2) {
                logger.e(e2);
            } catch (IOException e3) {
                logger.e(e3);
            }
        }
    }

    public void overrideDirectory(File file) {
        this.overrideRoot = file;
    }

    public static abstract class BackgroundJob {
        public /* synthetic */ BackgroundJob(int i2) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void execute() {
            AsyncTask.execute(new Runnable() { // from class: com.sightcall.universal.media.MediaExporter.BackgroundJob.1
                @Override // java.lang.Runnable
                public void run() {
                    BackgroundJob.this.doInBackground();
                }
            });
        }

        public abstract void doInBackground();

        private BackgroundJob() {
        }
    }
}
