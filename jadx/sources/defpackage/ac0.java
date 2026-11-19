package defpackage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.BoringLayout;
import android.text.Layout;
import android.text.TextPaint;
import com.perfectcorp.common.utility.Log;
import com.perfectcorp.perfectlib.MakeupCam;
import com.perfectcorp.perfectlib.developermode.WatermarkBlender;
import com.perfectcorp.perfectlib.makeupcam.camera.LiveMakeupCtrl;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ac0 implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f477a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MakeupCam.PictureCallback f478b;

    public /* synthetic */ ac0(MakeupCam.PictureCallback pictureCallback, int i2) {
        this.f477a = i2;
        this.f478b = pictureCallback;
    }

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        int i2 = this.f477a;
        MakeupCam.PictureCallback pictureCallback = this.f478b;
        switch (i2) {
            case 0:
                Throwable th = (Throwable) obj;
                Log.e("MakeupCam", "takePicture failed", th);
                pictureCallback.onFailure(th);
                break;
            case 1:
                LiveMakeupCtrl.a aVar = (LiveMakeupCtrl.a) obj;
                Log.g(3, "MakeupCam", "takePictureByBuffer success");
                pictureCallback.onPictureTaken(aVar.f40723a, aVar.f40724b);
                break;
            case 2:
                Throwable th2 = (Throwable) obj;
                Log.e("MakeupCam", "takePictureByBuffer failed", th2);
                pictureCallback.onFailure(th2);
                break;
            default:
                LiveMakeupCtrl.a aVar2 = (LiveMakeupCtrl.a) obj;
                Log.g(3, "MakeupCam", "takePicture success");
                Bitmap bitmap = aVar2.f40724b;
                if (WatermarkBlender.f40116a) {
                    float fMin = ((Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.63f) * 30.0f) / 256.0f;
                    TextPaint textPaint = new TextPaint();
                    textPaint.setAntiAlias(true);
                    textPaint.setDither(true);
                    textPaint.setFilterBitmap(true);
                    textPaint.setLinearText(true);
                    textPaint.setSubpixelText(true);
                    textPaint.setStrokeJoin(Paint.Join.BEVEL);
                    textPaint.setColor(-40093);
                    textPaint.setShadowLayer(4.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1);
                    textPaint.setTypeface(Typeface.SANS_SERIF);
                    textPaint.setTextSize(fMin);
                    BoringLayout.Metrics metricsIsBoring = BoringLayout.isBoring("DEVELOPER MODE", textPaint);
                    BoringLayout boringLayoutMake = BoringLayout.make("DEVELOPER MODE", textPaint, 0, Layout.Alignment.ALIGN_NORMAL, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, metricsIsBoring, false);
                    float width = (bitmap.getWidth() - metricsIsBoring.width) * 0.5f;
                    float height = bitmap.getHeight() * 0.15f;
                    Canvas canvas = new Canvas(bitmap);
                    canvas.translate(width, height);
                    boringLayoutMake.draw(canvas);
                    canvas.setBitmap(null);
                }
                pictureCallback.onPictureTaken(aVar2.f40723a, aVar2.f40724b);
                break;
        }
    }
}
