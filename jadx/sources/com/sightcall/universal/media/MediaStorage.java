package com.sightcall.universal.media;

import android.content.Context;
import android.graphics.Bitmap;
import com.sightcall.universal.util.Feature;
import defpackage.d21;
import java.io.File;
import java.io.FilenameFilter;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes3.dex */
public final class MediaStorage {
    private static final String EXPORT_DIR = "universal/pictures/exports/";
    private static final char EXTENSION_SEPARATOR = '.';
    private static final String FAILURE_DIR = "universal/pictures/failures/";
    static final String FILE_EXTENSION_IMAGE_JPG = ".jpg";
    static final String FILE_EXTENSION_IMAGE_PNG = ".png";
    static final String FILE_EXTENSION_METADATA = ".meta";
    private static final FilenameFilter FILTER_FILES_IMAGES = new FilenameFilter() { // from class: com.sightcall.universal.media.MediaStorage.1
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            String lowerCase = str.toLowerCase(Locale.US);
            return lowerCase.endsWith(MediaStorage.FILE_EXTENSION_IMAGE_PNG) || lowerCase.endsWith(MediaStorage.FILE_EXTENSION_IMAGE_JPG);
        }
    };
    private static final String LOCAL_DIR = "universal/pictures/locals/";
    private static final String ROOT_DIR = "universal/pictures/";
    private static final String UPLOAD_DIR = "universal/pictures/uploads/";

    /* JADX INFO: renamed from: com.sightcall.universal.media.MediaStorage$3, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass3 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$media$Metadata$Extension;
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$media$Metadata$Storage;

        static {
            int[] iArr = new int[Metadata.Extension.values().length];
            $SwitchMap$com$sightcall$universal$media$Metadata$Extension = iArr;
            try {
                iArr[Metadata.Extension.JPG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$media$Metadata$Extension[Metadata.Extension.PNG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Metadata.Storage.values().length];
            $SwitchMap$com$sightcall$universal$media$Metadata$Storage = iArr2;
            try {
                iArr2[Metadata.Storage.CLOUD.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sightcall$universal$media$Metadata$Storage[Metadata.Storage.LOCAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private MediaStorage() {
        throw new AssertionError();
    }

    public static void compress(Bitmap bitmap, Metadata metadata, OutputStream outputStream) {
        bitmap.compress(AnonymousClass3.$SwitchMap$com$sightcall$universal$media$Metadata$Extension[metadata.extension().ordinal()] != 1 ? Bitmap.CompressFormat.PNG : Bitmap.CompressFormat.JPEG, 100, outputStream);
    }

    public static boolean deleteRecursively(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                if (!deleteRecursively(file2)) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    public static List<String> deleteUploadsStartingWith(Context context, final String str) {
        File[] fileArrListFiles = getUploadDirectory(context).listFiles(new FilenameFilter() { // from class: com.sightcall.universal.media.MediaStorage.2
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str2) {
                return str2.startsWith(str);
            }
        });
        ArrayList arrayList = new ArrayList();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                if (file.delete()) {
                    arrayList.add(file.getName());
                }
            }
        }
        return arrayList;
    }

    private static File getDirectory(Context context, String str) {
        File file = new File(context.getFilesDir(), str);
        file.mkdirs();
        return file;
    }

    public static File getExportDirectory(Context context) {
        return getDirectory(context, EXPORT_DIR);
    }

    public static File getFailureDirectory(Context context) {
        return getDirectory(context, FAILURE_DIR);
    }

    public static File getLocalDirectory(Context context) {
        return getDirectory(context, LOCAL_DIR);
    }

    private static String getMetaFilenameFromImage(File file) {
        String name = file.getName();
        int iLastIndexOf = name.lastIndexOf(46);
        return iLastIndexOf > 0 ? name.substring(0, iLastIndexOf).concat(FILE_EXTENSION_METADATA) : name.concat(FILE_EXTENSION_METADATA);
    }

    public static File getRootDirectory(Context context) {
        return getDirectory(context, ROOT_DIR);
    }

    private static File getStorageDirectory(Context context, Metadata metadata) {
        if (AnonymousClass3.$SwitchMap$com$sightcall$universal$media$Metadata$Storage[metadata.storage().ordinal()] != 1) {
            return Feature.MEDIA_EXPORT.isEnabled(context) ? getExportDirectory(context) : getLocalDirectory(context);
        }
        return getUploadDirectory(context);
    }

    public static File getUploadDirectory(Context context) {
        return getDirectory(context, UPLOAD_DIR);
    }

    public static boolean hasExportMedia(Context context) {
        return hasMedia(getExportDirectory(context));
    }

    public static boolean hasFailureMedia(Context context) {
        return hasMedia(getFailureDirectory(context));
    }

    public static boolean hasLocalMedia(Context context) {
        return hasMedia(getLocalDirectory(context));
    }

    private static boolean hasMedia(File file) {
        File[] fileArrListFiles = file.listFiles(FILTER_FILES_IMAGES);
        return fileArrListFiles != null && fileArrListFiles.length > 0;
    }

    public static boolean hasUploadMedia(Context context) {
        return hasMedia(getUploadDirectory(context));
    }

    public static List<Media> listMedia(File file) {
        File[] fileArrListFiles = file.listFiles(FILTER_FILES_IMAGES);
        if (fileArrListFiles == null || fileArrListFiles.length == 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList(fileArrListFiles.length);
        for (File file2 : fileArrListFiles) {
            arrayList.add(new Media(file2, new File(file, getMetaFilenameFromImage(file2))));
        }
        return arrayList;
    }

    public static File newImageFile(Context context, Metadata metadata) {
        File storageDirectory = getStorageDirectory(context, metadata);
        String strValueOf = metadata.filename;
        if (strValueOf == null) {
            strValueOf = String.valueOf(metadata.timestamp);
        }
        return new File(storageDirectory, AnonymousClass3.$SwitchMap$com$sightcall$universal$media$Metadata$Extension[metadata.extension().ordinal()] != 1 ? d21.j(strValueOf, FILE_EXTENSION_IMAGE_PNG) : d21.j(strValueOf, FILE_EXTENSION_IMAGE_JPG));
    }

    public static File newMetadataFile(Context context, Metadata metadata) {
        String strValueOf = metadata.filename;
        if (strValueOf == null) {
            strValueOf = String.valueOf(metadata.timestamp);
        }
        return new File(getStorageDirectory(context, metadata), d21.j(strValueOf, FILE_EXTENSION_METADATA));
    }
}
