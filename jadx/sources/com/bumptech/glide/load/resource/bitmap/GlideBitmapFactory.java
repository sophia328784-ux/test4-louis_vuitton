package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Gainmap;
import android.graphics.Paint;
import android.os.Build;
import android.util.Log;
import com.bumptech.glide.util.GlideSuppliers;
import com.bumptech.glide.util.Preconditions;
import defpackage.az;
import java.io.IOException;
import java.io.InputStream;
import net.rtccloud.sdk.Call;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes2.dex */
public abstract class GlideBitmapFactory {

    public static final class GainmapCopier {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ColorMatrixColorFilter f24786a = new ColorMatrixColorFilter(new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 255.0f});
    }

    public static final class GainmapDecoderWorkaroundStateCalculator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final GlideSuppliers.GlideSupplier f24787a = GlideSuppliers.a(new az(15));
    }

    public static Bitmap a(InputStream inputStream, BitmapFactory.Options options, ImageReader imageReader) throws Throwable {
        boolean zB;
        int i2 = Build.VERSION.SDK_INT;
        Bitmap bitmap = null;
        if (i2 == 34) {
            GlideSuppliers.GlideSupplier glideSupplier = GainmapDecoderWorkaroundStateCalculator.f24787a;
            if ((i2 == 34 && options.inPreferredConfig == Bitmap.Config.HARDWARE) ? ((Boolean) GainmapDecoderWorkaroundStateCalculator.f24787a.get()).booleanValue() : false) {
                try {
                    zB = imageReader.b();
                    Log.isLoggable("GlideBitmapFactory", 2);
                } catch (IOException unused) {
                    Log.isLoggable("GlideBitmapFactory", 2);
                    zB = false;
                }
                if (zB) {
                    Bitmap.Config config = options.inPreferredConfig;
                    Bitmap.Config config2 = Bitmap.Config.HARDWARE;
                    Preconditions.a(config == config2, "");
                    options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                    try {
                        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStream, null, options);
                        if (bitmapDecodeStream == null) {
                            if (bitmapDecodeStream != null) {
                                bitmapDecodeStream.recycle();
                            }
                            options.inPreferredConfig = config2;
                            return null;
                        }
                        try {
                            Bitmap bitmapB = b(bitmapDecodeStream);
                            bitmapDecodeStream.recycle();
                            options.inPreferredConfig = config2;
                            return bitmapB;
                        } catch (Throwable th) {
                            th = th;
                            bitmap = bitmapDecodeStream;
                            if (bitmap != null) {
                                bitmap.recycle();
                            }
                            options.inPreferredConfig = Bitmap.Config.HARDWARE;
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
            }
        }
        return BitmapFactory.decodeStream(inputStream, null, options);
    }

    public static Bitmap b(Bitmap bitmap) {
        Gainmap gainmap = bitmap.getGainmap();
        if (gainmap != null) {
            Bitmap.Config config = gainmap.getGainmapContents().getConfig();
            Bitmap.Config config2 = Bitmap.Config.ALPHA_8;
            if (config == config2) {
                ColorMatrixColorFilter colorMatrixColorFilter = GainmapCopier.f24786a;
                Bitmap gainmapContents = gainmap.getGainmapContents();
                if (gainmapContents.getConfig() == config2) {
                    Preconditions.a(gainmapContents.getConfig() == config2, "");
                    Bitmap bitmapCreateBitmap = Bitmap.createBitmap(gainmapContents.getWidth(), gainmapContents.getHeight(), Bitmap.Config.ARGB_8888);
                    Canvas canvas = new Canvas(bitmapCreateBitmap);
                    Paint paint = new Paint();
                    paint.setColorFilter(GainmapCopier.f24786a);
                    canvas.drawBitmap(gainmapContents, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, paint);
                    canvas.setBitmap(null);
                    Gainmap gainmap2 = new Gainmap(bitmapCreateBitmap);
                    float[] ratioMin = gainmap.getRatioMin();
                    gainmap2.setRatioMin(ratioMin[0], ratioMin[1], ratioMin[2]);
                    float[] ratioMax = gainmap.getRatioMax();
                    gainmap2.setRatioMax(ratioMax[0], ratioMax[1], ratioMax[2]);
                    float[] gamma = gainmap.getGamma();
                    gainmap2.setGamma(gamma[0], gamma[1], gamma[2]);
                    float[] epsilonSdr = gainmap.getEpsilonSdr();
                    gainmap2.setEpsilonSdr(epsilonSdr[0], epsilonSdr[1], epsilonSdr[2]);
                    float[] epsilonHdr = gainmap.getEpsilonHdr();
                    gainmap2.setEpsilonHdr(epsilonHdr[0], epsilonHdr[1], epsilonHdr[2]);
                    gainmap2.setDisplayRatioForFullHdr(gainmap.getDisplayRatioForFullHdr());
                    gainmap2.setMinDisplayRatioForHdrTransition(gainmap.getMinDisplayRatioForHdrTransition());
                    gainmap = gainmap2;
                }
                bitmap.setGainmap(gainmap);
            }
        }
        return bitmap.copy(Bitmap.Config.HARDWARE, false);
    }
}
