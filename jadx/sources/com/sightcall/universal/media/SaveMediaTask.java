package com.sightcall.universal.media;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import com.sightcall.universal.Universal;
import defpackage.az;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.Utils;
import okio.Okio;
import okio.RealBufferedSink;

/* JADX INFO: loaded from: classes3.dex */
public class SaveMediaTask extends AsyncTask<Void, Void, Media> {
    private static final OldLogger logger = OldLogger.get("SaveMediaTask");
    protected final Bitmap bitmap;
    private final Context context;
    protected final Metadata metadata;

    public SaveMediaTask(Context context, Bitmap bitmap, Metadata metadata) {
        this.context = context;
        this.bitmap = bitmap;
        this.metadata = metadata;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private File writeBitmap() throws Throwable {
        final RealBufferedSink realBufferedSink;
        File fileNewImageFile = MediaStorage.newImageFile(this.context, this.metadata);
        logger.d("writeBitmap(%s)", fileNewImageFile.getAbsolutePath());
        AssetFileDescriptor.AutoCloseInputStream autoCloseInputStream = 0;
        try {
            try {
                realBufferedSink = new RealBufferedSink(Okio.d(fileNewImageFile));
                try {
                    MediaStorage.compress(this.bitmap, this.metadata, new OutputStream() { // from class: okio.RealBufferedSink$outputStream$1
                        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
                        public final void close() throws Throwable {
                            realBufferedSink.close();
                        }

                        @Override // java.io.OutputStream, java.io.Flushable
                        public final void flush() {
                            RealBufferedSink realBufferedSink2 = realBufferedSink;
                            if (realBufferedSink2.d) {
                                return;
                            }
                            realBufferedSink2.flush();
                        }

                        public final String toString() {
                            return realBufferedSink + ".outputStream()";
                        }

                        @Override // java.io.OutputStream
                        public final void write(byte[] bArr, int i2, int i3) throws IOException {
                            bArr.getClass();
                            RealBufferedSink realBufferedSink2 = realBufferedSink;
                            if (realBufferedSink2.d) {
                                az.o("closed");
                            } else {
                                realBufferedSink2.f77441c.write(bArr, i2, i3);
                                realBufferedSink2.X();
                            }
                        }

                        @Override // java.io.OutputStream
                        public final void write(int i2) throws IOException {
                            RealBufferedSink realBufferedSink2 = realBufferedSink;
                            if (!realBufferedSink2.d) {
                                realBufferedSink2.f77441c.m0((byte) i2);
                                realBufferedSink2.X();
                            } else {
                                az.o("closed");
                            }
                        }
                    });
                    Utils.closeSilently(realBufferedSink);
                    return fileNewImageFile;
                } catch (Exception e2) {
                    e = e2;
                    Universal.logger().e(e);
                    Utils.closeSilently(realBufferedSink);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                autoCloseInputStream = "writeBitmap(%s)";
                Utils.closeSilently(autoCloseInputStream);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            realBufferedSink = null;
        } catch (Throwable th2) {
            th = th2;
            Utils.closeSilently(autoCloseInputStream);
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private File writeMetadata() throws Throwable {
        RealBufferedSink realBufferedSink;
        File fileNewMetadataFile = MediaStorage.newMetadataFile(this.context, this.metadata);
        logger.d("writeMetadata(%s)", fileNewMetadataFile.getAbsolutePath());
        AssetFileDescriptor.AutoCloseInputStream autoCloseInputStream = 0;
        try {
            try {
                realBufferedSink = new RealBufferedSink(Okio.d(fileNewMetadataFile));
                try {
                    realBufferedSink.r0(this.metadata.toJson());
                    realBufferedSink.close();
                    Utils.closeSilently(realBufferedSink);
                    return fileNewMetadataFile;
                } catch (Exception e2) {
                    e = e2;
                    Universal.logger().e(e);
                    Utils.closeSilently(realBufferedSink);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                autoCloseInputStream = "writeMetadata(%s)";
                Utils.closeSilently(autoCloseInputStream);
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            realBufferedSink = null;
        } catch (Throwable th2) {
            th = th2;
            Utils.closeSilently(autoCloseInputStream);
            throw th;
        }
    }

    @Override // android.os.AsyncTask
    public Media doInBackground(Void... voidArr) throws Throwable {
        File fileWriteMetadata;
        File fileWriteBitmap = writeBitmap();
        if (fileWriteBitmap == null || (fileWriteMetadata = writeMetadata()) == null) {
            return null;
        }
        return new Media(fileWriteBitmap, fileWriteMetadata);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // android.os.AsyncTask
    public void onPostExecute(Media media) {
        super.onPostExecute(media);
        if (media != null) {
            Rtcc.instance().bus().post(new MediaSavedEvent(media, this.metadata));
        }
    }
}
