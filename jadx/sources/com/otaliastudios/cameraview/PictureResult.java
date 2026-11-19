package com.otaliastudios.cameraview;

import android.location.Location;
import android.os.Handler;
import com.otaliastudios.cameraview.controls.PictureFormat;
import com.otaliastudios.cameraview.internal.WorkerHandler;
import com.otaliastudios.cameraview.size.Size;
import defpackage.fw;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public class PictureResult {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f38846a;

    public static class Stub {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f38847a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Location f38848b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f38849c;
        public Size d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte[] f38850e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public PictureFormat f38851f;
    }

    public PictureResult(Stub stub) {
        boolean z = stub.f38847a;
        this.f38846a = stub.f38850e;
    }

    public final void a(File file, fw fwVar) {
        CameraLogger cameraLogger = CameraUtils.f38831a;
        WorkerHandler.a("FallbackCameraThread").f39023c.post(new Runnable() { // from class: com.otaliastudios.cameraview.CameraUtils.1
            final /* synthetic */ FileCallback val$callback;
            final /* synthetic */ byte[] val$data;
            final /* synthetic */ File val$file;
            final /* synthetic */ Handler val$ui;

            /* JADX INFO: renamed from: com.otaliastudios.cameraview.CameraUtils$1$1 */
            public class RunnableC01131 implements Runnable {
                final /* synthetic */ File val$result;

                public RunnableC01131() {
                    file = file;
                }

                @Override // java.lang.Runnable
                public void run() {
                    fileCallback.j();
                }
            }

            public AnonymousClass1() {
                bArr = bArr;
                file = file;
                handler = handler;
                fileCallback = fwVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                byte[] bArr = bArr;
                File file2 = file;
                CameraLogger cameraLogger2 = CameraUtils.f38831a;
                if (!file2.exists() || file2.delete()) {
                    try {
                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2));
                        try {
                            bufferedOutputStream.write(bArr);
                            bufferedOutputStream.flush();
                            bufferedOutputStream.close();
                        } catch (Throwable th) {
                            try {
                                bufferedOutputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    } catch (IOException e2) {
                        CameraUtils.f38831a.b(3, "writeToFile:", "could not write file.", e2);
                    }
                } else {
                    file2 = null;
                }
                handler.post(new Runnable() { // from class: com.otaliastudios.cameraview.CameraUtils.1.1
                    final /* synthetic */ File val$result;

                    public RunnableC01131() {
                        file = file2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        fileCallback.j();
                    }
                });
            }
        });
    }
}
