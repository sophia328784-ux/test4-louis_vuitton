package com.canhub.cropper.utils;

import android.content.Context;
import android.net.Uri;
import androidx.core.content.FileProvider;
import defpackage.d21;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.attribute.FileAttribute;
import kotlin.Metadata;
import kotlin.io.ByteStreamsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"cropper_release"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class GetUriForFileKt {
    /* JADX WARN: Code duplicated, block: B:35:0x00a9 A[Catch: Exception -> 0x004e, TryCatch #2 {Exception -> 0x004e, blocks: (B:6:0x001b, B:11:0x0047, B:35:0x00a9, B:37:0x00ae, B:38:0x00b1, B:29:0x009d, B:31:0x00a2), top: B:41:0x001b }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00ae A[Catch: Exception -> 0x004e, TryCatch #2 {Exception -> 0x004e, blocks: (B:6:0x001b, B:11:0x0047, B:35:0x00a9, B:37:0x00ae, B:38:0x00b1, B:29:0x009d, B:31:0x00a2), top: B:41:0x001b }] */
    public static final Uri a(Context context, File file) {
        FileOutputStream fileOutputStream;
        context.getClass();
        file.getClass();
        String strJ = d21.j(context.getPackageName(), ".cropper.fileprovider");
        try {
            Uri uriForFile = FileProvider.getUriForFile(context, strJ, file);
            uriForFile.getClass();
            return uriForFile;
        } catch (Exception e2) {
            try {
                e2.getMessage();
                File file2 = new File(new File(context.getCacheDir(), "CROP_LIB_CACHE"), file.getName());
                FileInputStream fileInputStream = null;
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(file);
                    try {
                        fileOutputStream = new FileOutputStream(file2);
                        try {
                            ByteStreamsKt.a(fileInputStream2, fileOutputStream);
                            Uri uriForFile2 = FileProvider.getUriForFile(context, strJ, file2);
                            uriForFile2.getClass();
                            fileInputStream2.close();
                            fileOutputStream.close();
                            return uriForFile2;
                        } catch (Exception e3) {
                            e = e3;
                            fileInputStream = fileInputStream2;
                            try {
                                e.getMessage();
                                String str = "content://" + strJ + "/files/my_images/";
                                Files.createDirectories(Paths.get(str, new String[0]), new FileAttribute[0]);
                                Uri uri = Uri.parse(str + file.getName());
                                uri.getClass();
                                if (fileInputStream != null) {
                                    fileInputStream.close();
                                }
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                                return uri;
                            } catch (Throwable th) {
                                th = th;
                                if (fileInputStream != null) {
                                    fileInputStream.close();
                                }
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileInputStream = fileInputStream2;
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            if (fileOutputStream != null) {
                                fileOutputStream.close();
                            }
                            throw th;
                        }
                    } catch (Exception e4) {
                        e = e4;
                        fileOutputStream = null;
                    } catch (Throwable th3) {
                        th = th3;
                        fileOutputStream = null;
                    }
                } catch (Exception e5) {
                    e = e5;
                    fileOutputStream = null;
                } catch (Throwable th4) {
                    th = th4;
                    fileOutputStream = null;
                }
            } catch (Exception e6) {
                e6.getMessage();
                Uri uriFromFile = Uri.fromFile(file);
                uriFromFile.getClass();
                return uriFromFile;
            }
        }
    }
}
