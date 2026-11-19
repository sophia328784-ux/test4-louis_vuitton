package com.sensorsdata.analytics.android.sdk.visual.snap;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import com.sensorsdata.analytics.android.sdk.util.WeakSet;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
public class SoftWareCanvas extends Canvas {
    private static final String TAG = "SA.SoftWareCanvas";
    private WeakSet<Bitmap> bitmapWeakSet;
    private Bitmap mBitmap;

    public SoftWareCanvas(Bitmap bitmap) {
        super(bitmap);
        this.bitmapWeakSet = new WeakSet<>();
        this.mBitmap = bitmap;
    }

    private Bitmap drawOnSFCanvas(Bitmap bitmap) {
        if (bitmap.getConfig() != Bitmap.Config.HARDWARE) {
            return bitmap;
        }
        Bitmap bitmapCopy = bitmap.copy(Bitmap.Config.ARGB_8888, false);
        this.bitmapWeakSet.add(bitmapCopy);
        return bitmapCopy;
    }

    private Paint replaceBitmapShader(Paint paint) {
        if (paint == null) {
            return null;
        }
        if (paint.getShader() instanceof BitmapShader) {
            Paint paint2 = new Paint(paint);
            BitmapShader bitmapShader = (BitmapShader) paint2.getShader();
            try {
                Field field = BitmapShader.class.getField("mBitmap");
                field.setAccessible(true);
                if (((Bitmap) field.get(bitmapShader)).getConfig() == Bitmap.Config.HARDWARE) {
                    Field declaredField = BitmapShader.class.getDeclaredField("mTileX");
                    Field declaredField2 = BitmapShader.class.getDeclaredField("mTileY");
                    declaredField.setAccessible(true);
                    declaredField2.setAccessible(true);
                    Bitmap bitmapCopy = ((Bitmap) field.get(bitmapShader)).copy(Bitmap.Config.ARGB_8888, false);
                    this.bitmapWeakSet.add(bitmapCopy);
                    Class cls = Integer.TYPE;
                    Constructor declaredConstructor = BitmapShader.class.getDeclaredConstructor(Bitmap.class, cls, cls);
                    declaredConstructor.setAccessible(true);
                    BitmapShader bitmapShader2 = (BitmapShader) declaredConstructor.newInstance(bitmapCopy, declaredField.get(bitmapShader), declaredField2.get(bitmapShader));
                    Matrix matrix = new Matrix();
                    paint.getShader().getLocalMatrix(matrix);
                    bitmapShader2.setLocalMatrix(matrix);
                    paint2.setShader(bitmapShader2);
                    return paint2;
                }
            } catch (Exception unused) {
            }
        }
        return paint;
    }

    public void destroy() {
        Iterator<Bitmap> it = this.bitmapWeakSet.iterator();
        while (it.hasNext()) {
            it.next().recycle();
        }
        this.bitmapWeakSet.clear();
    }

    @Override // android.graphics.Canvas
    public void drawArc(RectF rectF, float f2, float f3, boolean z, Paint paint) {
        try {
            super.drawArc(rectF, f2, f3, z, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(Bitmap bitmap, float f2, float f3, Paint paint) {
        Bitmap bitmapDrawOnSFCanvas = drawOnSFCanvas(bitmap);
        if (bitmapDrawOnSFCanvas.getDensity() == this.mBitmap.getDensity()) {
            super.drawBitmap(bitmapDrawOnSFCanvas, f2, f3, replaceBitmapShader(paint));
            return;
        }
        int i2 = (int) f2;
        int i3 = (int) f3;
        Rect rect = new Rect(i2, i3, bitmapDrawOnSFCanvas.getWidth() + i2, bitmapDrawOnSFCanvas.getHeight() + i3);
        super.drawBitmap(bitmapDrawOnSFCanvas, rect, rect, replaceBitmapShader(paint));
    }

    @Override // android.graphics.Canvas
    public void drawBitmapMesh(Bitmap bitmap, int i2, int i3, float[] fArr, int i4, int[] iArr, int i5, Paint paint) {
        super.drawBitmapMesh(drawOnSFCanvas(bitmap), i2, i3, fArr, i4, iArr, i5, replaceBitmapShader(paint));
    }

    @Override // android.graphics.Canvas
    public void drawCircle(float f2, float f3, float f4, Paint paint) {
        try {
            super.drawCircle(f2, f3, f4, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawLine(float f2, float f3, float f4, float f5, Paint paint) {
        try {
            super.drawLine(f2, f3, f4, f5, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawLines(float[] fArr, int i2, int i3, Paint paint) {
        try {
            super.drawLines(fArr, i2, i3, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawOval(RectF rectF, Paint paint) {
        try {
            super.drawOval(rectF, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawPaint(Paint paint) {
        try {
            super.drawPaint(replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawPath(Path path, Paint paint) {
        try {
            super.drawPath(path, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawPoint(float f2, float f3, Paint paint) {
        try {
            super.drawPoint(f2, f3, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawPoints(float[] fArr, int i2, int i3, Paint paint) {
        try {
            super.drawPoints(fArr, i2, i3, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawPosText(char[] cArr, int i2, int i3, float[] fArr, Paint paint) {
        try {
            super.drawPosText(cArr, i2, i3, fArr, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawRect(RectF rectF, Paint paint) {
        try {
            super.drawRect(rectF, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawRoundRect(RectF rectF, float f2, float f3, Paint paint) {
        try {
            super.drawRoundRect(rectF, f2, f3, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawText(char[] cArr, int i2, int i3, float f2, float f3, Paint paint) {
        try {
            super.drawText(cArr, i2, i3, f2, f3, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawTextOnPath(char[] cArr, int i2, int i3, Path path, float f2, float f3, Paint paint) {
        try {
            super.drawTextOnPath(cArr, i2, i3, path, f2, f3, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public int saveLayer(RectF rectF, Paint paint, int i2) {
        return super.saveLayer(rectF, replaceBitmapShader(paint), i2);
    }

    @Override // android.graphics.Canvas
    public void setBitmap(Bitmap bitmap) {
        super.setBitmap(drawOnSFCanvas(bitmap));
    }

    @Override // android.graphics.Canvas
    public void drawLines(float[] fArr, Paint paint) {
        try {
            super.drawLines(fArr, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawOval(float f2, float f3, float f4, float f5, Paint paint) {
        try {
            super.drawOval(f2, f3, f4, f5, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawPoints(float[] fArr, Paint paint) {
        try {
            super.drawPoints(fArr, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawPosText(String str, float[] fArr, Paint paint) {
        try {
            super.drawPosText(str, fArr, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawRect(Rect rect, Paint paint) {
        try {
            super.drawRect(rect, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawRoundRect(float f2, float f3, float f4, float f5, float f6, float f7, Paint paint) {
        try {
            super.drawRoundRect(f2, f3, f4, f5, f6, f7, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawText(String str, float f2, float f3, Paint paint) {
        try {
            super.drawText(str, f2, f3, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawTextOnPath(String str, Path path, float f2, float f3, Paint paint) {
        try {
            super.drawTextOnPath(str, path, f2, f3, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawRect(float f2, float f3, float f4, float f5, Paint paint) {
        try {
            super.drawRect(f2, f3, f4, f5, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawText(String str, int i2, int i3, float f2, float f3, Paint paint) {
        try {
            super.drawText(str, i2, i3, f2, f3, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public int saveLayer(RectF rectF, Paint paint) {
        return super.saveLayer(rectF, replaceBitmapShader(paint));
    }

    @Override // android.graphics.Canvas
    public void drawText(CharSequence charSequence, int i2, int i3, float f2, float f3, Paint paint) {
        try {
            super.drawText(charSequence, i2, i3, f2, f3, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public int saveLayer(float f2, float f3, float f4, float f5, Paint paint, int i2) {
        return super.saveLayer(f2, f3, f4, f5, replaceBitmapShader(paint), i2);
    }

    @Override // android.graphics.Canvas
    public int saveLayer(float f2, float f3, float f4, float f5, Paint paint) {
        return super.saveLayer(f2, f3, f4, f5, replaceBitmapShader(paint));
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(Bitmap bitmap, Rect rect, RectF rectF, Paint paint) {
        super.drawBitmap(drawOnSFCanvas(bitmap), rect, rectF, replaceBitmapShader(paint));
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(Bitmap bitmap, Rect rect, Rect rect2, Paint paint) {
        super.drawBitmap(drawOnSFCanvas(bitmap), rect, rect2, replaceBitmapShader(paint));
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(int[] iArr, int i2, int i3, float f2, float f3, int i4, int i5, boolean z, Paint paint) {
        try {
            super.drawBitmap(iArr, i2, i3, f2, f3, i4, i5, z, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(int[] iArr, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, Paint paint) {
        try {
            super.drawBitmap(iArr, i2, i3, i4, i5, i6, i7, z, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }

    @Override // android.graphics.Canvas
    public void drawBitmap(Bitmap bitmap, Matrix matrix, Paint paint) {
        try {
            super.drawBitmap(drawOnSFCanvas(bitmap), matrix, replaceBitmapShader(paint));
        } catch (Exception unused) {
        }
    }
}
