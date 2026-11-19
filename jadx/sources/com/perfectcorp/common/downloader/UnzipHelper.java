package com.perfectcorp.common.downloader;

import com.perfectcorp.common.io.IO;
import com.perfectcorp.common.utility.FileUtils;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.Futures;
import com.perfectcorp.thirdparty.com.google.common.util.concurrent.ListenableFuture;
import defpackage.a61;
import defpackage.md;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes3.dex */
public abstract class UnzipHelper {
    public static void a(ZipInputStream zipInputStream, File file) throws Throwable {
        long j2 = 104857600;
        int i2 = 0;
        while (true) {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            if (nextEntry == null) {
                return;
            }
            File file2 = new File(file, nextEntry.getName());
            String canonicalPath = file2.getCanonicalPath();
            if (!canonicalPath.startsWith(file.getCanonicalPath())) {
                throw new SecurityException("zip file contains unsafe unzipping patterns, dstFile canonicalPath=".concat(canonicalPath));
            }
            if (nextEntry.isDirectory()) {
                file2.mkdirs();
            } else {
                File parentFile = file2.getParentFile();
                if (!parentFile.isDirectory() && !parentFile.mkdirs()) {
                    a61.n(parentFile, "mkdirs() failed at ");
                    return;
                }
                long crc = nextEntry.getCrc();
                com.perfectcorp.common.io.a aVar = null;
                try {
                    com.perfectcorp.common.io.a aVar2 = new com.perfectcorp.common.io.a(file2);
                    if (crc != -1) {
                        try {
                            t tVar = new t();
                            tVar.f39257a = crc;
                            aVar2.f39268f = tVar;
                        } catch (Throwable th) {
                            th = th;
                            aVar = aVar2;
                            IO.b(new u(zipInputStream));
                            if (aVar != null) {
                                aVar.close();
                            }
                            throw th;
                        }
                    }
                    byte[] bArr = new byte[8192];
                    long j3 = 0;
                    while (true) {
                        int i3 = zipInputStream.read(bArr, 0, 8192);
                        if (i3 == -1) {
                            aVar2.f39267e = true;
                            IO.b(new u(zipInputStream));
                            aVar2.close();
                            j2 -= j3;
                            i2++;
                            if (i2 <= 1024) {
                                break;
                            }
                            md.k("Too many files to unzip.");
                            return;
                        }
                        j3 += (long) i3;
                        if (j3 > j2) {
                            throw new IllegalStateException("File being unzipped is too big.");
                        }
                        aVar2.write(bArr, 0, i3);
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }
    }

    public static ListenableFuture b(ListenableFuture listenableFuture, File file, Executor executor) {
        v vVar = new v();
        vVar.f39259b = file;
        return Futures.h(listenableFuture, vVar, executor);
    }

    public static void c(File file, File file2) {
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                d(fileInputStream2, file2);
                IO.b(fileInputStream2);
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                try {
                    throw th;
                } catch (Throwable th2) {
                    IO.b(fileInputStream);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public static void d(InputStream inputStream, File file) {
        ZipInputStream zipInputStream;
        Throwable th;
        BufferedInputStream bufferedInputStream;
        File file2 = new File(file.getAbsolutePath() + "_temp");
        file2.mkdirs();
        File file3 = new File(file2, ".nomedia");
        if (!file3.exists()) {
            try {
                if (!file3.createNewFile()) {
                    throw new IOException("createNewFile() failed.");
                }
            } catch (Throwable th2) {
                Log.i("UnzipHelper", "Failed to create file " + file3.getAbsolutePath(), th2);
            }
        }
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                zipInputStream = new ZipInputStream(bufferedInputStream);
                try {
                    a(zipInputStream, file2);
                    if (file2.renameTo(file)) {
                        IO.a(zipInputStream, bufferedInputStream, inputStream);
                        return;
                    }
                    throw new IOException("Can't rename src=\"" + file2 + "\" to dst=\"" + file + "\"");
                } catch (Throwable th3) {
                    th = th3;
                    try {
                        FileUtils.c(file2);
                        FileUtils.c(file);
                        throw th;
                    } catch (Throwable th4) {
                        IO.a(zipInputStream, bufferedInputStream, inputStream);
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                zipInputStream = null;
                th = th5;
            }
        } catch (Throwable th6) {
            zipInputStream = null;
            th = th6;
            bufferedInputStream = null;
        }
    }
}
