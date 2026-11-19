package androidx.camera.core.imagecapture;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Objects;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public abstract class FileUtil {
    public static Uri a(File file, File file2) throws ImageCaptureException {
        if (file2.exists()) {
            file2.delete();
        }
        if (file.renameTo(file2)) {
            return Uri.fromFile(file2);
        }
        throw new ImageCaptureException(1, "Failed to overwrite the file: " + file2.getAbsolutePath(), null);
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0062  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v1 */
    public static Uri b(File file, ImageCapture.OutputFileOptions outputFileOptions) throws Throwable {
        Uri uriInsert;
        ContentResolver contentResolver = outputFileOptions.f1926b;
        Objects.requireNonNull(contentResolver);
        ContentValues contentValues = outputFileOptions.d;
        ContentValues contentValues2 = contentValues != null ? new ContentValues(contentValues) : new ContentValues();
        contentValues2.put("is_pending", (Integer) 1);
        try {
            try {
                uriInsert = contentResolver.insert(outputFileOptions.f1927c, contentValues2);
                try {
                    if (uriInsert == null) {
                        throw new ImageCaptureException(1, "Failed to insert a MediaStore URI.", null);
                    }
                    d(file, uriInsert, contentResolver);
                    ContentValues contentValues3 = new ContentValues();
                    contentValues3.put("is_pending", (Integer) 0);
                    contentResolver.update(uriInsert, contentValues3, null, null);
                    return uriInsert;
                } catch (IOException | SecurityException e2) {
                    e = e2;
                    throw new ImageCaptureException(1, "Failed to write to MediaStore URI: " + uriInsert, e);
                }
            } catch (Throwable th) {
                th = th;
                if (outputFileOptions != 0) {
                    ContentValues contentValues4 = new ContentValues();
                    contentValues4.put("is_pending", (Integer) 0);
                    contentResolver.update(outputFileOptions, contentValues4, null, null);
                }
                throw th;
            }
        } catch (IOException | SecurityException e3) {
            e = e3;
            uriInsert = null;
        } catch (Throwable th2) {
            th = th2;
            outputFileOptions = 0;
            if (outputFileOptions != 0) {
                ContentValues contentValues5 = new ContentValues();
                contentValues5.put("is_pending", (Integer) 0);
                contentResolver.update(outputFileOptions, contentValues5, null, null);
            }
            throw th;
        }
    }

    public static void c(File file, OutputStream outputStream) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(file);
        try {
            byte[] bArr = new byte[1024];
            while (true) {
                int i2 = fileInputStream.read(bArr);
                if (i2 <= 0) {
                    fileInputStream.close();
                    return;
                }
                outputStream.write(bArr, 0, i2);
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static void d(File file, Uri uri, ContentResolver contentResolver) throws IOException {
        OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(uri);
        try {
            if (outputStreamOpenOutputStream != null) {
                c(file, outputStreamOpenOutputStream);
                outputStreamOpenOutputStream.close();
            } else {
                throw new FileNotFoundException(uri + " cannot be resolved.");
            }
        } catch (Throwable th) {
            if (outputStreamOpenOutputStream != null) {
                try {
                    outputStreamOpenOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public static File e(ImageCapture.OutputFileOptions outputFileOptions) {
        try {
            File file = outputFileOptions.f1925a;
            if (file == null) {
                return File.createTempFile("CameraX", ".tmp");
            }
            String parent = file.getParent();
            StringBuilder sb = new StringBuilder("CameraX");
            sb.append(UUID.randomUUID().toString());
            String name = file.getName();
            int iLastIndexOf = name.lastIndexOf(46);
            sb.append(iLastIndexOf >= 0 ? name.substring(iLastIndexOf) : "");
            return new File(parent, sb.toString());
        } catch (IOException e2) {
            throw new ImageCaptureException(1, "Failed to create temp file.", e2);
        }
    }

    public static Uri f(File file, ImageCapture.OutputFileOptions outputFileOptions) {
        Uri uriA = null;
        try {
            try {
                if (outputFileOptions.f1927c == null || outputFileOptions.f1926b == null || outputFileOptions.d == null) {
                    OutputStream outputStream = outputFileOptions.f1928e;
                    if (outputStream != null) {
                        Objects.requireNonNull(outputStream);
                        c(file, outputStream);
                    } else {
                        File file2 = outputFileOptions.f1925a;
                        if (file2 != null) {
                            Objects.requireNonNull(file2);
                            uriA = a(file, file2);
                        }
                    }
                } else {
                    uriA = b(file, outputFileOptions);
                }
                file.delete();
                return uriA;
            } catch (IOException unused) {
                throw new ImageCaptureException(1, "Failed to write to OutputStream.", null);
            }
        } catch (Throwable th) {
            file.delete();
            throw th;
        }
    }
}
