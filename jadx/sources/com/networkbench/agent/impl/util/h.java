package com.networkbench.agent.impl.util;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f38378a = "FileOperations";

    public static void a(byte[] bArr, String str) {
        FileOutputStream fileOutputStream = null;
        try {
            Logger.debug(f38378a, "writeByteToFile:" + bArr.length + ", filePath:" + str);
            File file = new File(str);
            if (!file.getParentFile().exists()) {
                file.getParentFile().mkdirs();
            }
            if (!file.exists()) {
                file.createNewFile();
            }
            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
            try {
                fileOutputStream2.write(bArr);
                a(fileOutputStream2);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = fileOutputStream2;
                try {
                    Logger.error(f38378a, "writeByteToFile failed:", th);
                } finally {
                    a(fileOutputStream);
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static String b(File file) throws Throwable {
        InputStreamReader inputStreamReader;
        if (file == null || !file.exists()) {
            StringBuilder sb = new StringBuilder("file is not exist, path is ");
            sb.append(file == null ? "" : file.getAbsolutePath());
            Logger.debug(f38378a, sb.toString());
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                inputStreamReader = new InputStreamReader(fileInputStream2);
                while (true) {
                    try {
                        int i2 = inputStreamReader.read();
                        if (i2 == -1) {
                            break;
                        }
                        sb2.append((char) i2);
                    } catch (Exception unused) {
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        if (inputStreamReader != null) {
                        }
                        return sb2.toString();
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        if (inputStreamReader != null) {
                            inputStreamReader.close();
                        }
                        throw th;
                    }
                }
                fileInputStream2.close();
            } catch (Exception unused2) {
                inputStreamReader = null;
            } catch (Throwable th2) {
                th = th2;
                inputStreamReader = null;
            }
        } catch (Exception unused3) {
            inputStreamReader = null;
        } catch (Throwable th3) {
            th = th3;
            inputStreamReader = null;
        }
        inputStreamReader.close();
        return sb2.toString();
    }

    public static byte[] c(File file) {
        ByteArrayOutputStream byteArrayOutputStream;
        FileInputStream fileInputStream;
        byte[] byteArray = null;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr = new byte[2048];
                    while (true) {
                        int i2 = fileInputStream.read(bArr);
                        if (i2 == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, i2);
                    }
                    byteArray = byteArrayOutputStream.toByteArray();
                } catch (Throwable th) {
                    th = th;
                    try {
                        Logger.error(f38378a, "readFileByte failed:", th);
                    } finally {
                        a(fileInputStream);
                        a(byteArrayOutputStream);
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = null;
            }
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
            fileInputStream = null;
        }
        return byteArray;
    }

    public static void a(File file) {
        if (!file.getAbsolutePath().contains("filepath")) {
            b.a(false);
            return;
        }
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                a(file2);
            }
        }
        file.delete();
    }

    private static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
                Logger.error(f38378a, "closeStream failed:", th);
            }
        }
    }
}
