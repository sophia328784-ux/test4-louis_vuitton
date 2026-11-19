package com.airbnb.lottie.model.layer;

import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.text.TextUtils;
import android.util.Base64;
import com.airbnb.lottie.ImageAssetDelegate;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieImageAsset;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.DropShadowKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.manager.ImageAssetManager;
import com.airbnb.lottie.parser.DropShadowEffect;
import com.airbnb.lottie.utils.DropShadow;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.OffscreenLayer;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.io.IOException;
import java.util.HashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ImageLayer extends BaseLayer {
    public final LPaint C;
    public final Rect D;
    public final Rect E;
    public final RectF F;
    public final LottieImageAsset G;
    public ValueCallbackKeyframeAnimation H;
    public ValueCallbackKeyframeAnimation I;
    public final DropShadowKeyframeAnimation J;
    public OffscreenLayer K;
    public OffscreenLayer.ComposeOp L;

    public ImageLayer(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        this.C = new LPaint(3);
        this.D = new Rect();
        this.E = new Rect();
        this.F = new RectF();
        String str = layer.g;
        LottieComposition lottieComposition = lottieDrawable.f21758b;
        this.G = lottieComposition == null ? null : (LottieImageAsset) ((HashMap) lottieComposition.c()).get(str);
        DropShadowEffect dropShadowEffect = this.p.x;
        if (dropShadowEffect != null) {
            this.J = new DropShadowKeyframeAnimation(this, this, dropShadowEffect);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    public final void f(RectF rectF, Matrix matrix, boolean z) {
        Bitmap bitmapS;
        super.f(rectF, matrix, z);
        LottieImageAsset lottieImageAsset = this.G;
        if (lottieImageAsset != null) {
            int i2 = lottieImageAsset.f21768b;
            int i3 = lottieImageAsset.f21767a;
            float fC = Utils.c();
            if (this.o.m || (bitmapS = s()) == null) {
                rectF.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, i3 * fC, i2 * fC);
            } else {
                rectF.set(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, bitmapS.getWidth() * fC, bitmapS.getHeight() * fC);
            }
            this.n.mapRect(rectF);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.KeyPathElement
    public final void g(LottieValueCallback lottieValueCallback, Object obj) {
        super.g(lottieValueCallback, obj);
        if (obj == LottieProperty.I) {
            if (lottieValueCallback == null) {
                this.H = null;
                return;
            } else {
                this.H = new ValueCallbackKeyframeAnimation(lottieValueCallback);
                return;
            }
        }
        if (obj == LottieProperty.L) {
            if (lottieValueCallback == null) {
                this.I = null;
                return;
            } else {
                this.I = new ValueCallbackKeyframeAnimation(lottieValueCallback);
                return;
            }
        }
        DropShadowKeyframeAnimation dropShadowKeyframeAnimation = this.J;
        if (obj == 5 && dropShadowKeyframeAnimation != null) {
            dropShadowKeyframeAnimation.f21896c.k(lottieValueCallback);
            return;
        }
        if (obj == LottieProperty.E && dropShadowKeyframeAnimation != null) {
            dropShadowKeyframeAnimation.c(lottieValueCallback);
            return;
        }
        if (obj == LottieProperty.F && dropShadowKeyframeAnimation != null) {
            dropShadowKeyframeAnimation.f21897e.k(lottieValueCallback);
            return;
        }
        if (obj == LottieProperty.G && dropShadowKeyframeAnimation != null) {
            dropShadowKeyframeAnimation.f21898f.k(lottieValueCallback);
        } else {
            if (obj != LottieProperty.H || dropShadowKeyframeAnimation == null) {
                return;
            }
            dropShadowKeyframeAnimation.g.k(lottieValueCallback);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    public final void k(Canvas canvas, Matrix matrix, int i2, DropShadow dropShadow) {
        LottieImageAsset lottieImageAsset;
        Bitmap bitmapS = s();
        if (bitmapS == null || bitmapS.isRecycled() || (lottieImageAsset = this.G) == null) {
            return;
        }
        float fC = Utils.c();
        LPaint lPaint = this.C;
        lPaint.setAlpha(i2);
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.H;
        if (valueCallbackKeyframeAnimation != null) {
            lPaint.setColorFilter((ColorFilter) valueCallbackKeyframeAnimation.f());
        }
        DropShadowKeyframeAnimation dropShadowKeyframeAnimation = this.J;
        if (dropShadowKeyframeAnimation != null) {
            dropShadow = dropShadowKeyframeAnimation.b(matrix, i2);
        }
        int width = bitmapS.getWidth();
        int height = bitmapS.getHeight();
        Rect rect = this.D;
        rect.set(0, 0, width, height);
        boolean z = this.o.m;
        Rect rect2 = this.E;
        if (z) {
            rect2.set(0, 0, (int) (lottieImageAsset.f21767a * fC), (int) (lottieImageAsset.f21768b * fC));
        } else {
            rect2.set(0, 0, (int) (bitmapS.getWidth() * fC), (int) (bitmapS.getHeight() * fC));
        }
        boolean z2 = dropShadow != null;
        if (z2) {
            if (this.K == null) {
                this.K = new OffscreenLayer();
            }
            if (this.L == null) {
                this.L = new OffscreenLayer.ComposeOp();
            }
            OffscreenLayer.ComposeOp composeOp = this.L;
            composeOp.f22309a = 255;
            composeOp.f22310b = null;
            dropShadow.getClass();
            DropShadow dropShadow2 = new DropShadow(dropShadow);
            composeOp.f22310b = dropShadow2;
            dropShadow2.b(i2);
            float f2 = rect2.left;
            float f3 = rect2.top;
            float f4 = rect2.right;
            float f5 = rect2.bottom;
            RectF rectF = this.F;
            rectF.set(f2, f3, f4, f5);
            matrix.mapRect(rectF);
            canvas = this.K.e(canvas, rectF, this.L);
        }
        canvas.save();
        canvas.concat(matrix);
        canvas.drawBitmap(bitmapS, rect, rect2, lPaint);
        if (z2) {
            this.K.c();
            if (this.K.f22301c == OffscreenLayer.RenderStrategy.RENDER_NODE) {
                return;
            }
        }
        canvas.restore();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x002e  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c3  */
    public final Bitmap s() {
        Bitmap bitmapD;
        Bitmap bitmap;
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.I;
        if (valueCallbackKeyframeAnimation != null && (bitmap = (Bitmap) valueCallbackKeyframeAnimation.f()) != null) {
            return bitmap;
        }
        String str = this.p.g;
        LottieDrawable lottieDrawable = this.o;
        ImageAssetManager imageAssetManager = lottieDrawable.f21763i;
        if (imageAssetManager != null) {
            Context contextH = lottieDrawable.h();
            Context context = imageAssetManager.f22057a;
            if (contextH != null) {
                if (context instanceof Application) {
                    contextH = contextH.getApplicationContext();
                }
                if (contextH != context) {
                    lottieDrawable.f21763i = null;
                }
            } else if (context != null) {
                lottieDrawable.f21763i = null;
            }
        }
        if (lottieDrawable.f21763i == null) {
            lottieDrawable.f21763i = new ImageAssetManager(lottieDrawable.getCallback(), null, null, lottieDrawable.f21758b.c());
        }
        ImageAssetManager imageAssetManager2 = lottieDrawable.f21763i;
        if (imageAssetManager2 != null) {
            String str2 = imageAssetManager2.f22058b;
            LottieImageAsset lottieImageAsset = (LottieImageAsset) imageAssetManager2.d.get(str);
            if (lottieImageAsset == null) {
                bitmapD = null;
            } else {
                int i2 = lottieImageAsset.f21768b;
                int i3 = lottieImageAsset.f21767a;
                bitmapD = lottieImageAsset.f21771f;
                if (bitmapD == null) {
                    ImageAssetDelegate imageAssetDelegate = imageAssetManager2.f22059c;
                    if (imageAssetDelegate != null) {
                        bitmapD = imageAssetDelegate.a();
                        if (bitmapD != null) {
                            imageAssetManager2.a(bitmapD, str);
                        }
                    } else {
                        Context context2 = imageAssetManager2.f22057a;
                        if (context2 == null) {
                            bitmapD = null;
                        } else {
                            String str3 = lottieImageAsset.d;
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inScaled = true;
                            options.inDensity = 160;
                            if (!str3.startsWith("data:") || str3.indexOf("base64,") <= 0) {
                                try {
                                    if (TextUtils.isEmpty(str2)) {
                                        throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
                                    }
                                    try {
                                        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(context2.getAssets().open(str2 + str3), null, options);
                                        if (bitmapDecodeStream == null) {
                                            Logger.a("Decoded image `" + str + "` is null.");
                                            bitmapD = null;
                                        } else {
                                            bitmapD = Utils.d(bitmapDecodeStream, i3, i2);
                                            imageAssetManager2.a(bitmapD, str);
                                        }
                                    } catch (IllegalArgumentException e2) {
                                        Logger.b("Unable to decode image `" + str + "`.", e2);
                                    }
                                } catch (IOException e3) {
                                    Logger.b("Unable to open asset.", e3);
                                }
                            } else {
                                try {
                                    byte[] bArrDecode = Base64.decode(str3.substring(str3.indexOf(44) + 1), 0);
                                    try {
                                        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options);
                                        if (bitmapDecodeByteArray == null) {
                                            Logger.a("Decoded image `" + str + "` is null.");
                                            bitmapD = null;
                                        } else {
                                            bitmapD = Utils.d(bitmapDecodeByteArray, i3, i2);
                                            imageAssetManager2.a(bitmapD, str);
                                        }
                                    } catch (IllegalArgumentException e4) {
                                        Logger.b("Unable to decode image `" + str + "`.", e4);
                                    }
                                } catch (IllegalArgumentException e5) {
                                    Logger.b("data URL did not have correct base64 format.", e5);
                                }
                            }
                        }
                    }
                }
            }
        } else {
            bitmapD = null;
        }
        if (bitmapD != null) {
            return bitmapD;
        }
        LottieImageAsset lottieImageAsset2 = this.G;
        if (lottieImageAsset2 != null) {
            return lottieImageAsset2.f21771f;
        }
        return null;
    }
}
