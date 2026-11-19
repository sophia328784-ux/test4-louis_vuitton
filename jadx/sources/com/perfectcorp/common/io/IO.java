package com.perfectcorp.common.io;

import android.text.TextUtils;
import com.perfectcorp.common.utility.Log;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public abstract class IO {
    public static void a(Closeable... closeableArr) {
        Iterator it = Arrays.asList(closeableArr).iterator();
        while (it.hasNext()) {
            b((Closeable) it.next());
        }
    }

    public static boolean b(Closeable closeable) {
        if (closeable == null) {
            return true;
        }
        try {
            closeable.close();
            return true;
        } catch (Throwable th) {
            Log.e("IO", "closeNoThrow", th);
            return false;
        }
    }

    public static void c(InputStream inputStream, a aVar) throws IOException {
        byte[] bArr = new byte[8192];
        while (true) {
            int i2 = inputStream.read(bArr, 0, 8192);
            if (i2 < 0) {
                return;
            } else {
                aVar.write(bArr, 0, i2);
            }
        }
    }

    public static String d(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        return str.endsWith("/") ? str : str.concat("/");
    }
}
