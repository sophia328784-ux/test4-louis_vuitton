package com.linkplay.medialib;

import android.content.Context;
import android.os.Environment;
import defpackage.n00;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class FileUtils {
    private static final String ImagePathDirectDir = "LazyList";
    private static File cacheDir;

    /* JADX INFO: renamed from: me, reason: collision with root package name */
    private static FileUtils f36296me;
    private Context context;

    private FileUtils(Context context) {
        this.context = context;
        if (Environment.getExternalStorageState().equals("mounted")) {
            cacheDir = new File(Environment.getExternalStorageDirectory(), ImagePathDirectDir);
        } else {
            cacheDir = context.getCacheDir();
        }
        if (cacheDir.exists()) {
            return;
        }
        cacheDir.mkdirs();
    }

    public static void deleteFile(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
                return;
            }
            if (file.isDirectory()) {
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                    file.delete();
                    return;
                }
                for (File file2 : fileArrListFiles) {
                    deleteFile(file2);
                }
                file.delete();
            }
        }
    }

    public static FileUtils getInstance(Context context) {
        if (f36296me == null) {
            f36296me = new FileUtils(context);
        }
        return f36296me;
    }

    private final String getRootCacheDir() {
        String str = getSDDirt() + "/wifiaudio";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdir();
        }
        return str;
    }

    public void clear() {
        File[] fileArrListFiles = cacheDir.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            file.delete();
        }
    }

    public void deleteCacheDir() {
        deleteFile(new File(getRootCacheDir()));
    }

    public String getCacheDir() {
        String strR = n00.r(getRootCacheDir(), "/wfcache", new StringBuilder());
        File file = new File(strR);
        if (!file.exists()) {
            file.mkdir();
        }
        return strR;
    }

    public String getCacheMusicSourceDir() {
        String strR = n00.r(getRootCacheDir(), "/wf_source", new StringBuilder());
        File file = new File(strR);
        if (!file.exists()) {
            file.mkdir();
        }
        return strR;
    }

    public File getFile(String str) {
        File file = new File(cacheDir, String.valueOf(str.hashCode()));
        if (file.exists()) {
            return file;
        }
        return null;
    }

    public String getSDDirt() {
        File externalStorageDirectory = Environment.getExternalStorageState().equals("mounted") ? Environment.getExternalStorageDirectory() : null;
        if (externalStorageDirectory == null) {
            externalStorageDirectory = this.context.getApplicationContext().getCacheDir();
        }
        return externalStorageDirectory.getAbsolutePath();
    }

    public String getSDFilePath(String str) {
        File file = new File(cacheDir, String.valueOf(str.hashCode()));
        return !file.exists() ? "" : file.getAbsolutePath();
    }

    public void saveFile(String str) {
        String strValueOf = String.valueOf(str.hashCode());
        try {
            FileInputStream fileInputStream = new FileInputStream(str);
            FileOutputStream fileOutputStream = new FileOutputStream(cacheDir + File.separator + strValueOf);
            byte[] bArr = new byte[1001];
            while (true) {
                int i2 = fileInputStream.read(bArr);
                if (i2 == -1) {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    fileInputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, i2);
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }
}
