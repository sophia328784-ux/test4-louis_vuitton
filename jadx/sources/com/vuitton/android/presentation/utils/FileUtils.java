package com.vuitton.android.presentation.utils;

import android.content.Context;
import android.net.Uri;
import androidx.fragment.app.FragmentActivity;
import defpackage.o60;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import kotlin.Metadata;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/utils/FileUtils;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class FileUtils {
    public static void a(FragmentActivity fragmentActivity, Uri uri, File file) throws IOException {
        fragmentActivity.getClass();
        FileOutputStream fileOutputStream = new FileOutputStream(file.getAbsolutePath());
        try {
            InputStream inputStreamOpenInputStream = fragmentActivity.getContentResolver().openInputStream(uri);
            if (inputStreamOpenInputStream != null) {
                try {
                    fileOutputStream.write(ByteStreamsKt.b(inputStreamOpenInputStream));
                    inputStreamOpenInputStream.close();
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.a(inputStreamOpenInputStream, th);
                        throw th2;
                    }
                }
            }
            fileOutputStream.close();
        } catch (Throwable th3) {
            try {
                throw th3;
            } catch (Throwable th4) {
                CloseableKt.a(fileOutputStream, th3);
                throw th4;
            }
        }
    }

    public static File b(Context context) {
        context.getClass();
        return new File(context.getFilesDir(), o60.i(System.currentTimeMillis(), "distant_repairs_", ".jpg"));
    }
}
