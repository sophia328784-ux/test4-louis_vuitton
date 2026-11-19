package com.sightcall.universal.media.offline;

import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.webkit.MimeTypeMap;
import androidx.core.content.FileProvider;
import com.linkplay.medialib.FinalDataUtil;
import com.linkplay.medialib.server.HttpServer;
import com.sightcall.pratik.logs.Logger;
import defpackage.o60;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.util.Comparator;
import net.rtccloud.sdk.Call;
import okhttp3.ResponseBody;

/* JADX INFO: loaded from: classes3.dex */
public class FileUtils {
    public static final String AUTHORITY = "YOUR_AUTHORITY.provider";
    private static final boolean DEBUG = false;
    public static final String DOCUMENTS_DIR = "documents";
    public static final String HIDDEN_PREFIX = ".";
    public static Comparator<File> sComparator = new Comparator<File>() { // from class: com.sightcall.universal.media.offline.FileUtils.1
        @Override // java.util.Comparator
        public int compare(File file, File file2) {
            return file.getName().toLowerCase().compareTo(file2.getName().toLowerCase());
        }
    };
    public static FileFilter sFileFilter = new FileFilter() { // from class: com.sightcall.universal.media.offline.FileUtils.2
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return file.isFile() && !file.getName().startsWith(FileUtils.HIDDEN_PREFIX);
        }
    };
    public static FileFilter sDirFilter = new FileFilter() { // from class: com.sightcall.universal.media.offline.FileUtils.3
        @Override // java.io.FileFilter
        public boolean accept(File file) {
            return file.isDirectory() && !file.getName().startsWith(FileUtils.HIDDEN_PREFIX);
        }
    };

    private FileUtils() {
    }

    public static Intent createGetContentIntent() {
        Intent intent = new Intent("android.intent.action.GET_CONTENT");
        intent.setType("*/*");
        intent.addCategory("android.intent.category.OPENABLE");
        return intent;
    }

    public static File createTempImageFile(Context context, String str) throws IOException {
        return File.createTempFile(str, ".jpg", new File(context.getCacheDir(), DOCUMENTS_DIR));
    }

    public static File generateFileName(String str, File file) {
        String strSubstring;
        if (str == null) {
            return null;
        }
        File file2 = new File(file, str);
        if (file2.exists()) {
            int iLastIndexOf = str.lastIndexOf(46);
            int i2 = 0;
            if (iLastIndexOf > 0) {
                String strSubstring2 = str.substring(0, iLastIndexOf);
                strSubstring = str.substring(iLastIndexOf);
                str = strSubstring2;
            } else {
                strSubstring = "";
            }
            while (file2.exists()) {
                i2++;
                file2 = new File(file, str + '(' + i2 + ')' + strSubstring);
            }
        }
        try {
            if (!file2.createNewFile()) {
                return null;
            }
            logDir(file);
            return file2;
        } catch (IOException e2) {
            Logger.INSTANCE.w("Something went wrong while creating a new file", e2);
            return null;
        }
    }

    public static String getDataColumn(Context context, Uri uri, String str, String[] strArr) throws Throwable {
        Throwable th;
        Cursor cursorQuery;
        Cursor cursor = null;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, str, strArr, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                        cursorQuery.close();
                        return string;
                    }
                } catch (Exception unused) {
                    if (cursorQuery != null) {
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    cursor = cursorQuery;
                    if (cursor == null) {
                        throw th;
                    }
                    cursor.close();
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Exception unused2) {
            cursorQuery = null;
        } catch (Throwable th3) {
            th = th3;
        }
        return null;
    }

    public static File getDocumentCacheDir(Context context) {
        File file = new File(context.getCacheDir(), DOCUMENTS_DIR);
        if (!file.exists()) {
            file.mkdirs();
        }
        logDir(context.getCacheDir());
        logDir(file);
        return file;
    }

    public static File getDownloadsDir() {
        return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
    }

    public static String getExtension(String str) {
        if (str == null) {
            return null;
        }
        int iLastIndexOf = str.lastIndexOf(HIDDEN_PREFIX);
        return iLastIndexOf >= 0 ? str.substring(iLastIndexOf) : "";
    }

    public static File getFile(Context context, Uri uri) {
        String path;
        if (uri == null || (path = getPath(context, uri)) == null || !isLocal(path)) {
            return null;
        }
        return new File(path);
    }

    public static String getFileName(Context context, Uri uri) throws Throwable {
        if (context.getContentResolver().getType(uri) == null) {
            String path = getPath(context, uri);
            return path == null ? getName(uri.toString()) : new File(path).getName();
        }
        Cursor cursorQuery = context.getContentResolver().query(uri, null, null, null, null);
        if (cursorQuery == null) {
            return null;
        }
        int columnIndex = cursorQuery.getColumnIndex("_display_name");
        cursorQuery.moveToFirst();
        String string = cursorQuery.getString(columnIndex);
        cursorQuery.close();
        return string;
    }

    private static String getLocalPath(Context context, Uri uri) throws Throwable {
        Uri uri2 = null;
        if (DocumentsContract.isDocumentUri(context, uri)) {
            if (isLocalStorageDocument(uri)) {
                return DocumentsContract.getDocumentId(uri);
            }
            if (isExternalStorageDocument(uri)) {
                String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
                String str = strArrSplit[0];
                if ("primary".equalsIgnoreCase(str)) {
                    return Environment.getExternalStorageDirectory() + "/" + strArrSplit[1];
                }
                if ("home".equalsIgnoreCase(str)) {
                    return Environment.getExternalStorageDirectory() + "/documents/" + strArrSplit[1];
                }
            } else {
                if (isDownloadsDocument(uri)) {
                    String documentId = DocumentsContract.getDocumentId(uri);
                    if (documentId != null && documentId.startsWith("raw:")) {
                        return documentId.substring(4);
                    }
                    String[] strArr = {"content://downloads/public_downloads", "content://downloads/my_downloads"};
                    for (int i2 = 0; i2 < 2; i2++) {
                        try {
                            String dataColumn = getDataColumn(context, ContentUris.withAppendedId(Uri.parse(strArr[i2]), Long.valueOf(documentId).longValue()), null, null);
                            if (dataColumn != null) {
                                return dataColumn;
                            }
                        } catch (Exception unused) {
                        }
                    }
                    File fileGenerateFileName = generateFileName(getFileName(context, uri), getDocumentCacheDir(context));
                    if (fileGenerateFileName == null) {
                        return null;
                    }
                    String absolutePath = fileGenerateFileName.getAbsolutePath();
                    saveFileFromUri(context, uri, absolutePath);
                    return absolutePath;
                }
                if (isMediaDocument(uri)) {
                    String[] strArrSplit2 = DocumentsContract.getDocumentId(uri).split(":");
                    String str2 = strArrSplit2[0];
                    if ("image".equals(str2)) {
                        uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                    } else if ("video".equals(str2)) {
                        uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                    } else if ("audio".equals(str2)) {
                        uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                    }
                    return getDataColumn(context, uri2, "_id=?", new String[]{strArrSplit2[1]});
                }
            }
        } else {
            if ("content".equalsIgnoreCase(uri.getScheme())) {
                return isGooglePhotosUri(uri) ? uri.getLastPathSegment() : getDataColumn(context, uri, null, null);
            }
            if ("file".equalsIgnoreCase(uri.getScheme())) {
                return uri.getPath();
            }
        }
        return null;
    }

    public static String getMimeType(File file) {
        String extension = getExtension(file.getName());
        return extension.length() > 0 ? MimeTypeMap.getSingleton().getMimeTypeFromExtension(extension.substring(1)) : "application/octet-stream";
    }

    public static String getName(String str) {
        if (str == null) {
            return null;
        }
        return str.substring(str.lastIndexOf(47) + 1);
    }

    public static String getPath(Context context, Uri uri) throws Throwable {
        String localPath = getLocalPath(context, uri);
        return localPath != null ? localPath : uri.toString();
    }

    public static File getPathWithoutFilename(File file) {
        if (file == null) {
            return null;
        }
        if (file.isDirectory()) {
            return file;
        }
        String name = file.getName();
        String absolutePath = file.getAbsolutePath();
        String strSubstring = absolutePath.substring(0, absolutePath.length() - name.length());
        if (strSubstring.endsWith("/")) {
            strSubstring = o60.g(1, 0, strSubstring);
        }
        return new File(strSubstring);
    }

    public static String getReadableFileSize(int i2) {
        float f2;
        DecimalFormat decimalFormat = new DecimalFormat("###.#");
        String str = " KB";
        if (i2 > 1024) {
            f2 = i2 / 1024;
            if (f2 > 1024.0f) {
                f2 /= 1024.0f;
                if (f2 > 1024.0f) {
                    f2 /= 1024.0f;
                    str = " GB";
                } else {
                    str = " MB";
                }
            }
        } else {
            f2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        return decimalFormat.format(f2) + str;
    }

    public static Uri getUri(File file) {
        if (file != null) {
            return Uri.fromFile(file);
        }
        return null;
    }

    public static Intent getViewIntent(Context context, File file) {
        Uri uriForFile = FileProvider.getUriForFile(context, AUTHORITY, file);
        Intent intent = new Intent("android.intent.action.VIEW");
        String string = file.toString();
        if (string.contains(".doc") || string.contains(".docx")) {
            intent.setDataAndType(uriForFile, "application/msword");
        } else if (string.contains(".pdf")) {
            intent.setDataAndType(uriForFile, "application/pdf");
        } else if (string.contains(".ppt") || string.contains(".pptx")) {
            intent.setDataAndType(uriForFile, "application/vnd.ms-powerpoint");
        } else if (string.contains(".xls") || string.contains(".xlsx")) {
            intent.setDataAndType(uriForFile, "application/vnd.ms-excel");
        } else if (string.contains(".zip") || string.contains(".rar")) {
            intent.setDataAndType(uriForFile, "application/x-wav");
        } else if (string.contains(".rtf")) {
            intent.setDataAndType(uriForFile, "application/rtf");
        } else if (string.contains(".wav") || string.contains(".mp3")) {
            intent.setDataAndType(uriForFile, "audio/x-wav");
        } else if (string.contains(".gif")) {
            intent.setDataAndType(uriForFile, "image/gif");
        } else if (string.contains(".jpg") || string.contains(".jpeg") || string.contains(".png")) {
            intent.setDataAndType(uriForFile, "image/jpeg");
        } else if (string.contains(".txt")) {
            intent.setDataAndType(uriForFile, HttpServer.MIME_PLAINTEXT);
        } else if (string.contains(".3gp") || string.contains(".mpg") || string.contains(".mpeg") || string.contains(".mpe") || string.contains(".mp4") || string.contains(".avi")) {
            intent.setDataAndType(uriForFile, "video/*");
        } else {
            intent.setDataAndType(uriForFile, "*/*");
        }
        intent.addFlags(268435456);
        intent.addFlags(1);
        intent.addFlags(2);
        return intent;
    }

    public static boolean isDownloadsDocument(Uri uri) {
        return "com.android.providers.downloads.documents".equals(uri.getAuthority());
    }

    public static boolean isExternalStorageDocument(Uri uri) {
        return "com.android.externalstorage.documents".equals(uri.getAuthority());
    }

    public static boolean isGooglePhotosUri(Uri uri) {
        return "com.google.android.apps.photos.content".equals(uri.getAuthority());
    }

    public static boolean isLocal(String str) {
        return (str == null || str.startsWith(FinalDataUtil.HTTP_HEAD) || str.startsWith("https://")) ? false : true;
    }

    public static boolean isLocalStorageDocument(Uri uri) {
        return AUTHORITY.equals(uri.getAuthority());
    }

    public static boolean isMediaDocument(Uri uri) {
        return "com.android.providers.media.documents".equals(uri.getAuthority());
    }

    public static boolean isMediaUri(Uri uri) {
        return "media".equalsIgnoreCase(uri.getAuthority());
    }

    private static void logDir(File file) {
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0036 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static byte[] readBytesFromFile(String str) throws Throwable {
        FileInputStream fileInputStream;
        IOException e2;
        byte[] bArr;
        FileInputStream fileInputStream2 = null;
        try {
            try {
                File file = new File(str);
                bArr = new byte[(int) file.length()];
                try {
                    fileInputStream = new FileInputStream(file);
                    try {
                        try {
                            try {
                                fileInputStream.read(bArr);
                            } catch (IOException e3) {
                                e2 = e3;
                                e2.printStackTrace();
                                if (fileInputStream != null) {
                                }
                                return bArr;
                            }
                            fileInputStream.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                        return bArr;
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream2 = fileInputStream;
                        if (fileInputStream2 != null) {
                            try {
                                fileInputStream2.close();
                            } catch (IOException e5) {
                                e5.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e6) {
                    fileInputStream = null;
                    e2 = e6;
                }
            } catch (IOException e7) {
                fileInputStream = null;
                e2 = e7;
                bArr = null;
            }
        } catch (Throwable th2) {
            th = th2;
            if (fileInputStream2 != null) {
                fileInputStream2.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0059 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:38:0x005b A[Catch: IOException -> 0x0057, TRY_LEAVE, TryCatch #3 {IOException -> 0x0057, blocks: (B:34:0x0053, B:38:0x005b), top: B:44:0x0053 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x0053 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static void saveFileFromUri(Context context, Uri uri, String str) throws Throwable {
        BufferedOutputStream bufferedOutputStream;
        InputStream inputStream = null;
        try {
            try {
                InputStream inputStreamOpenInputStream = context.getContentResolver().openInputStream(uri);
                try {
                    bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(str, false));
                    try {
                        byte[] bArr = new byte[1024];
                        inputStreamOpenInputStream.read(bArr);
                        do {
                            bufferedOutputStream.write(bArr);
                        } while (inputStreamOpenInputStream.read(bArr) != -1);
                        inputStreamOpenInputStream.close();
                        bufferedOutputStream.close();
                    } catch (IOException e2) {
                        e = e2;
                        inputStream = inputStreamOpenInputStream;
                        try {
                            e.printStackTrace();
                            if (inputStream != null) {
                                inputStream.close();
                            }
                            if (bufferedOutputStream != null) {
                                bufferedOutputStream.close();
                            }
                        } catch (Throwable th) {
                            th = th;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                    if (bufferedOutputStream != null) {
                                        bufferedOutputStream.close();
                                    }
                                } catch (IOException e3) {
                                    e3.printStackTrace();
                                    throw th;
                                }
                            } else if (bufferedOutputStream != null) {
                                bufferedOutputStream.close();
                            }
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream = inputStreamOpenInputStream;
                        if (inputStream != null) {
                            inputStream.close();
                            if (bufferedOutputStream != null) {
                                bufferedOutputStream.close();
                            }
                        } else if (bufferedOutputStream != null) {
                            bufferedOutputStream.close();
                        }
                        throw th;
                    }
                } catch (IOException e4) {
                    e = e4;
                    bufferedOutputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    bufferedOutputStream = null;
                }
            } catch (IOException e5) {
                e5.printStackTrace();
            }
        } catch (IOException e6) {
            e = e6;
            bufferedOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            bufferedOutputStream = null;
        }
    }

    public static File writeResponseBodyToDisk(ResponseBody responseBody, String str) throws Throwable {
        InputStream inputStreamByteStream;
        FileOutputStream fileOutputStream;
        try {
            File file = new File(str);
            try {
                byte[] bArr = new byte[4096];
                inputStreamByteStream = responseBody.byteStream();
                try {
                    fileOutputStream = new FileOutputStream(file);
                    while (true) {
                        try {
                            int i2 = inputStreamByteStream.read(bArr);
                            if (i2 == -1) {
                                fileOutputStream.flush();
                                inputStreamByteStream.close();
                                fileOutputStream.close();
                                return file;
                            }
                            fileOutputStream.write(bArr, 0, i2);
                        } catch (IOException unused) {
                            if (inputStreamByteStream != null) {
                                inputStreamByteStream.close();
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            return null;
                        } catch (Throwable th) {
                            th = th;
                            if (inputStreamByteStream != null) {
                                inputStreamByteStream.close();
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            throw th;
                        }
                    }
                } catch (IOException unused2) {
                    fileOutputStream = null;
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = null;
                }
            } catch (IOException unused3) {
                inputStreamByteStream = null;
                fileOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                inputStreamByteStream = null;
                fileOutputStream = null;
            }
        } catch (IOException unused4) {
        }
    }

    public static String getMimeType(Context context, Uri uri) {
        return getMimeType(new File(getPath(context, uri)));
    }

    public static String getMimeType(Context context, String str) {
        String type = context.getContentResolver().getType(Uri.parse(str));
        return type == null ? "application/octet-stream" : type;
    }
}
