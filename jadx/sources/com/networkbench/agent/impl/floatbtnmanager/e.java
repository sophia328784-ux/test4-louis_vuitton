package com.networkbench.agent.impl.floatbtnmanager;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Environment;
import com.networkbench.agent.impl.session.screen.NBSBitmapBean;
import com.networkbench.agent.impl.session.screen.NBSBitmapBeansControl;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.r;
import defpackage.cj;
import defpackage.d21;
import defpackage.r81;
import defpackage.tr;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes2.dex */
public class e {
    public static void a(File file, File file2) throws IOException {
        if (file == null) {
            r81.d("Source must not be null");
            return;
        }
        if (file2 == null) {
            r81.d("Destination must not be null");
            return;
        }
        if (!file.exists()) {
            throw new FileNotFoundException("Source '" + file + "' does not exist");
        }
        if (file.isDirectory()) {
            r81.e("Source '", file, "' exists but is a directory");
            return;
        }
        if (file.getCanonicalPath().equals(file2.getCanonicalPath())) {
            throw new IOException("Source '" + file + "' and destination '" + file2 + "' are the same");
        }
        if (file2.getParentFile() != null && !file2.getParentFile().exists() && !file2.getParentFile().mkdirs()) {
            r81.e("Destination '", file2, "' directory cannot be created");
        } else if (!file2.exists() || file2.canWrite()) {
            b(file, file2);
        } else {
            r81.e("Destination '", file2, "' exists but is read-only");
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x007e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:39:0x007f  */
    /* JADX WARN: Instruction removed from duplicated block: B:39:0x007f, please report this as an issue */
    private static void b(File file, File file2) throws IOException {
        FileOutputStream fileOutputStream;
        FileChannel channel;
        FileChannel channel2;
        long j2;
        if (file2.exists() && file2.isDirectory()) {
            r81.e("Destination '", file2, "' exists but is a directory");
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                fileOutputStream = new FileOutputStream(file2);
                try {
                    channel2 = fileInputStream2.getChannel();
                    try {
                        channel = fileOutputStream.getChannel();
                        try {
                            long size = channel2.size();
                            for (long jTransferFrom = 0; jTransferFrom < size; jTransferFrom += channel.transferFrom(channel2, jTransferFrom, j2)) {
                                j2 = size - jTransferFrom;
                                if (j2 > 52428800) {
                                    j2 = 52428800;
                                }
                            }
                            a(channel);
                            a(fileOutputStream);
                            a(channel2);
                            a(fileInputStream2);
                        } catch (Throwable th) {
                            th = th;
                            fileInputStream = fileInputStream2;
                            try {
                                com.networkbench.agent.impl.c.g.b("doCopyFile has an error : ", th);
                                a(channel);
                                a(fileOutputStream);
                                a(channel2);
                                a(fileInputStream);
                            } catch (Throwable th2) {
                                a(channel);
                                a(fileOutputStream);
                                a(channel2);
                                a(fileInputStream);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        channel = null;
                    }
                } catch (Throwable th4) {
                    th = th4;
                    channel = null;
                    channel2 = channel;
                    fileInputStream = fileInputStream2;
                    com.networkbench.agent.impl.c.g.b("doCopyFile has an error : ", th);
                    a(channel);
                    a(fileOutputStream);
                    a(channel2);
                    a(fileInputStream);
                    if (file.length() == file2.length()) {
                        return;
                    }
                    throw new IOException("Failed to copy full contents from '" + file + "' to '" + file2 + "'");
                }
            } catch (Throwable th5) {
                th = th5;
                fileOutputStream = null;
                channel = null;
            }
        } catch (Throwable th6) {
            th = th6;
            fileOutputStream = null;
            channel = null;
            channel2 = null;
        }
        if (file.length() == file2.length()) {
            return;
        }
        throw new IOException("Failed to copy full contents from '" + file + "' to '" + file2 + "'");
    }

    public static String a(Context context) {
        if (context != null) {
            return context.getFilesDir().getAbsolutePath();
        }
        r81.d("context is null point");
        return null;
    }

    public static void a(String str, Bitmap bitmap) throws Throwable {
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(str);
                try {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream2);
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                } catch (Exception unused) {
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Exception unused3) {
            }
        } catch (Exception unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static void a(File file, String str) {
        try {
            File file2 = new File(b(str));
            if (!file2.exists()) {
                file2.mkdir();
                Logger.debug("DirManager", "newBitmapBean.bitMapPath  mkdir  ");
            }
            a(file, new File(file2, str + ".webp"));
            Logger.debug("DirManager", "bitmapBean testFile : " + new File(a(str)).length());
        } catch (IOException unused) {
        }
    }

    public static String b(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(a(r.u().J()));
        String str2 = File.separator;
        return tr.l(sb, str2, "tingyunScreen", str2, str);
    }

    public static void a(String str, NBSBitmapBean nBSBitmapBean) throws Throwable {
        FileOutputStream fileOutputStream = null;
        try {
            try {
                File file = new File(str);
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(str, System.currentTimeMillis() + ".webp");
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                try {
                    nBSBitmapBean.getImage_data().compress(Bitmap.CompressFormat.WEBP, 100, fileOutputStream2);
                    fileOutputStream2.flush();
                    nBSBitmapBean.setBitMapPath(file2.getPath());
                    nBSBitmapBean.deletBitMap();
                    NBSBitmapBeansControl.getInstance().setLastBean(nBSBitmapBean);
                    ai.a(nBSBitmapBean);
                    fileOutputStream2.close();
                } catch (Exception unused) {
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                } catch (Throwable th) {
                    fileOutputStream = fileOutputStream2;
                    th = th;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception unused2) {
                        }
                    }
                    throw th;
                }
            } catch (Exception unused3) {
            }
        } catch (Exception unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static boolean a() {
        return Environment.getExternalStorageState() != null && Environment.getExternalStorageState().equals("mounted");
    }

    public static String a(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(a(r.u().J()));
        String str2 = File.separator;
        cj.C(sb, str2, "tingyunScreen", str2, str);
        return d21.p(sb, str2, str, ".webp");
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }
}
