package com.perfectcorp.common.utility;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FileUtils {
    public static void a(File file, File file2) throws IOException {
        if (!file.isDirectory()) {
            b(new FileInputStream(file), new FileOutputStream(file2));
            return;
        }
        if (!file2.exists()) {
            file2.mkdir();
        }
        for (String str : file.list()) {
            a(new File(file, str), new File(file2, str));
        }
    }

    public static void b(InputStream inputStream, FileOutputStream fileOutputStream) throws IOException {
        try {
            byte[] bArr = new byte[4096];
            while (true) {
                int i2 = inputStream.read(bArr);
                if (i2 <= 0) {
                    inputStream.close();
                    fileOutputStream.close();
                    return;
                }
                fileOutputStream.write(bArr, 0, i2);
            }
        } catch (Throwable th) {
            inputStream.close();
            fileOutputStream.close();
            throw th;
        }
    }

    public static boolean c(File file) {
        boolean z;
        File[] fileArrListFiles;
        try {
            Objects.requireNonNull(file, "fileOrDirectory == null");
            if (!file.isDirectory() || (fileArrListFiles = file.listFiles()) == null) {
                z = true;
            } else {
                z = true;
                for (File file2 : fileArrListFiles) {
                    z = c(file2) && z;
                }
            }
            return file.delete() && z;
        } catch (Throwable th) {
            Log.e("FileUtils", "[deleteRecursive] failed.", th);
            return false;
        }
    }

    public static long d(File file) {
        long length;
        long j2 = 0;
        if (file == null) {
            return 0L;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2 == null || !file2.isDirectory()) {
                    if (file2 != null && file2.isFile()) {
                        length = file2.length();
                    }
                } else {
                    length = d(file2);
                }
                j2 = length + j2;
            }
        }
        return j2;
    }

    public static String e(InputStream inputStream) {
        StringBuilder sb = new StringBuilder();
        try {
            try {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "UTF-8"));
                while (true) {
                    try {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        sb.append(line);
                        return sb.toString();
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                    Log.e("FileUtils", "[readText] failed.", e);
                }
                bufferedReader.close();
                if (inputStream != null) {
                    inputStream.close();
                }
            } catch (Throwable th3) {
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                }
                throw th3;
            }
        } catch (IOException e2) {
            Log.e("FileUtils", "[readText] failed.", e2);
        }
        return sb.toString();
    }
}
