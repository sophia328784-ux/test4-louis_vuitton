package com.google.firebase.messaging;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import com.dynatrace.android.callback.Callback;
import com.google.android.gms.tasks.Task;
import defpackage.a61;
import defpackage.az;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.util.Objects;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes2.dex */
public class ImageDownload implements Closeable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final URL f35264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile Future f35265c;
    public Task d;

    public ImageDownload(URL url) {
        this.f35264b = url;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f35265c.cancel(true);
    }

    public final Bitmap h() throws IOException {
        boolean zIsLoggable = Log.isLoggable("FirebaseMessaging", 4);
        URL url = this.f35264b;
        if (zIsLoggable) {
            Objects.toString(url);
        }
        URLConnection uRLConnectionOpenConnection = url.openConnection();
        Callback.C(uRLConnectionOpenConnection);
        if (Callback.c(uRLConnectionOpenConnection) > 1048576) {
            az.o("Content-Length exceeds max size of 1048576");
            return null;
        }
        InputStream inputStreamH = Callback.h(uRLConnectionOpenConnection);
        try {
            byte[] bArrB = ByteStreams.b(new ByteStreams.LimitedInputStream(inputStreamH));
            if (inputStreamH != null) {
                inputStreamH.close();
            }
            if (Log.isLoggable("FirebaseMessaging", 2)) {
                Objects.toString(url);
            }
            if (bArrB.length > 1048576) {
                az.o("Image exceeds max size of 1048576");
                return null;
            }
            Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrB, 0, bArrB.length);
            if (bitmapDecodeByteArray == null) {
                a61.n(url, "Failed to decode image: ");
                return null;
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Objects.toString(url);
            }
            return bitmapDecodeByteArray;
        } catch (Throwable th) {
            if (inputStreamH != null) {
                try {
                    inputStreamH.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }
}
