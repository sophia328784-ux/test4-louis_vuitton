package androidx.compose.ui.text.android;

import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.DrawFilter;
import android.graphics.Matrix;
import android.graphics.NinePatch;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Picture;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.RenderNode;
import android.graphics.fonts.Font;
import android.graphics.text.MeasuredText;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.os;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/text/android/TextAndroidCanvas;", "Landroid/graphics/Canvas;", "<init>", "()V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextAndroidCanvas extends Canvas {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Canvas f10608a;

    public final Canvas a() {
        Canvas canvas = this.f10608a;
        if (canvas != null) {
            return canvas;
        }
        InlineClassHelperKt.d("Text drawing wrapper is missing a Canvas!");
        os.d();
        return null;
    }

    @Override // android.graphics.Canvas
    public final boolean clipOutPath(Path path) {
        return a().clipOutPath(path);
    }

    @Override // android.graphics.Canvas
    public final boolean clipOutRect(RectF rectF) {
        return a().clipOutRect(rectF);
    }

    @Override // android.graphics.Canvas
    public final boolean clipPath(Path path, Region.Op op) {
        return a().clipPath(path, op);
    }

    @Override // android.graphics.Canvas
    public final boolean clipRect(RectF rectF, Region.Op op) {
        return a().clipRect(rectF, op);
    }

    @Override // android.graphics.Canvas
    public final void concat(Matrix matrix) {
        a().concat(matrix);
    }

    @Override // android.graphics.Canvas
    public final void disableZ() {
        a().disableZ();
    }

    @Override // android.graphics.Canvas
    public final void drawARGB(int i2, int i3, int i4, int i5) {
        a().drawARGB(i2, i3, i4, i5);
    }

    @Override // android.graphics.Canvas
    public final void drawArc(RectF rectF, float f2, float f3, boolean z, Paint paint) {
        a().drawArc(rectF, f2, f3, z, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawBitmap(Bitmap bitmap, float f2, float f3, Paint paint) {
        a().drawBitmap(bitmap, f2, f3, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawBitmapMesh(Bitmap bitmap, int i2, int i3, float[] fArr, int i4, int[] iArr, int i5, Paint paint) {
        a().drawBitmapMesh(bitmap, i2, i3, fArr, i4, iArr, i5, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawCircle(float f2, float f3, float f4, Paint paint) {
        a().drawCircle(f2, f3, f4, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawColor(int i2) {
        a().drawColor(i2);
    }

    @Override // android.graphics.Canvas
    public final void drawDoubleRoundRect(RectF rectF, float f2, float f3, RectF rectF2, float f4, float f5, Paint paint) {
        a().drawDoubleRoundRect(rectF, f2, f3, rectF2, f4, f5, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawGlyphs(int[] iArr, int i2, float[] fArr, int i3, int i4, Font font, Paint paint) {
        CanvasCompatS.a(a(), iArr, i2, fArr, i3, i4, font, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawLine(float f2, float f3, float f4, float f5, Paint paint) {
        a().drawLine(f2, f3, f4, f5, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawLines(float[] fArr, int i2, int i3, Paint paint) {
        a().drawLines(fArr, i2, i3, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawOval(RectF rectF, Paint paint) {
        a().drawOval(rectF, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawPaint(Paint paint) {
        a().drawPaint(paint);
    }

    @Override // android.graphics.Canvas
    public final void drawPatch(NinePatch ninePatch, Rect rect, Paint paint) {
        CanvasCompatS.b(a(), ninePatch, rect, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawPath(Path path, Paint paint) {
        a().drawPath(path, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawPicture(Picture picture) {
        a().drawPicture(picture);
    }

    @Override // android.graphics.Canvas
    public final void drawPoint(float f2, float f3, Paint paint) {
        a().drawPoint(f2, f3, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawPoints(float[] fArr, int i2, int i3, Paint paint) {
        a().drawPoints(fArr, i2, i3, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawPosText(char[] cArr, int i2, int i3, float[] fArr, Paint paint) {
        a().drawPosText(cArr, i2, i3, fArr, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawRGB(int i2, int i3, int i4) {
        a().drawRGB(i2, i3, i4);
    }

    @Override // android.graphics.Canvas
    public final void drawRect(RectF rectF, Paint paint) {
        a().drawRect(rectF, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawRenderNode(RenderNode renderNode) {
        a().drawRenderNode(renderNode);
    }

    @Override // android.graphics.Canvas
    public final void drawRoundRect(RectF rectF, float f2, float f3, Paint paint) {
        a().drawRoundRect(rectF, f2, f3, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawText(char[] cArr, int i2, int i3, float f2, float f3, Paint paint) {
        a().drawText(cArr, i2, i3, f2, f3, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawTextOnPath(char[] cArr, int i2, int i3, Path path, float f2, float f3, Paint paint) {
        a().drawTextOnPath(cArr, i2, i3, path, f2, f3, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawTextRun(char[] cArr, int i2, int i3, int i4, int i5, float f2, float f3, boolean z, Paint paint) {
        a().drawTextRun(cArr, i2, i3, i4, i5, f2, f3, z, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawVertices(Canvas.VertexMode vertexMode, int i2, float[] fArr, int i3, float[] fArr2, int i4, int[] iArr, int i5, short[] sArr, int i6, int i7, Paint paint) {
        a().drawVertices(vertexMode, i2, fArr, i3, fArr2, i4, iArr, i5, sArr, i6, i7, paint);
    }

    @Override // android.graphics.Canvas
    public final void enableZ() {
        a().enableZ();
    }

    @Override // android.graphics.Canvas
    public final boolean getClipBounds(Rect rect) {
        boolean clipBounds = a().getClipBounds(rect);
        if (clipBounds) {
            rect.set(0, 0, rect.width(), Integer.MAX_VALUE);
        }
        return clipBounds;
    }

    @Override // android.graphics.Canvas
    public final int getDensity() {
        return a().getDensity();
    }

    @Override // android.graphics.Canvas
    public final DrawFilter getDrawFilter() {
        return a().getDrawFilter();
    }

    @Override // android.graphics.Canvas
    public final int getHeight() {
        return a().getHeight();
    }

    @Override // android.graphics.Canvas
    public final void getMatrix(Matrix matrix) {
        a().getMatrix(matrix);
    }

    @Override // android.graphics.Canvas
    public final int getMaximumBitmapHeight() {
        return a().getMaximumBitmapHeight();
    }

    @Override // android.graphics.Canvas
    public final int getMaximumBitmapWidth() {
        return a().getMaximumBitmapWidth();
    }

    @Override // android.graphics.Canvas
    public final int getSaveCount() {
        return a().getSaveCount();
    }

    @Override // android.graphics.Canvas
    public final int getWidth() {
        return a().getWidth();
    }

    @Override // android.graphics.Canvas
    public final boolean isOpaque() {
        return a().isOpaque();
    }

    @Override // android.graphics.Canvas
    public final boolean quickReject(RectF rectF, Canvas.EdgeType edgeType) {
        return a().quickReject(rectF, edgeType);
    }

    @Override // android.graphics.Canvas
    public final void restore() {
        a().restore();
    }

    @Override // android.graphics.Canvas
    public final void restoreToCount(int i2) {
        a().restoreToCount(i2);
    }

    @Override // android.graphics.Canvas
    public final void rotate(float f2) {
        a().rotate(f2);
    }

    @Override // android.graphics.Canvas
    public final int save() {
        return a().save();
    }

    @Override // android.graphics.Canvas
    public final int saveLayer(RectF rectF, Paint paint, int i2) {
        return a().saveLayer(rectF, paint, i2);
    }

    @Override // android.graphics.Canvas
    public final int saveLayerAlpha(RectF rectF, int i2, int i3) {
        return a().saveLayerAlpha(rectF, i2, i3);
    }

    @Override // android.graphics.Canvas
    public final void scale(float f2, float f3) {
        a().scale(f2, f3);
    }

    @Override // android.graphics.Canvas
    public final void setBitmap(Bitmap bitmap) {
        a().setBitmap(bitmap);
    }

    @Override // android.graphics.Canvas
    public final void setDensity(int i2) {
        a().setDensity(i2);
    }

    @Override // android.graphics.Canvas
    public final void setDrawFilter(DrawFilter drawFilter) {
        a().setDrawFilter(drawFilter);
    }

    @Override // android.graphics.Canvas
    public final void setMatrix(Matrix matrix) {
        a().setMatrix(matrix);
    }

    @Override // android.graphics.Canvas
    public final void skew(float f2, float f3) {
        a().skew(f2, f3);
    }

    @Override // android.graphics.Canvas
    public final void translate(float f2, float f3) {
        a().translate(f2, f3);
    }

    @Override // android.graphics.Canvas
    public final void drawArc(float f2, float f3, float f4, float f5, float f6, float f7, boolean z, Paint paint) {
        a().drawArc(f2, f3, f4, f5, f6, f7, z, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawBitmap(Bitmap bitmap, Rect rect, RectF rectF, Paint paint) {
        a().drawBitmap(bitmap, rect, rectF, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawColor(long j2) {
        a().drawColor(j2);
    }

    @Override // android.graphics.Canvas
    public final void drawDoubleRoundRect(RectF rectF, float[] fArr, RectF rectF2, float[] fArr2, Paint paint) {
        a().drawDoubleRoundRect(rectF, fArr, rectF2, fArr2, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawLines(float[] fArr, Paint paint) {
        a().drawLines(fArr, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawOval(float f2, float f3, float f4, float f5, Paint paint) {
        a().drawOval(f2, f3, f4, f5, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawPatch(NinePatch ninePatch, RectF rectF, Paint paint) {
        CanvasCompatS.c(a(), ninePatch, rectF, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawPicture(Picture picture, RectF rectF) {
        a().drawPicture(picture, rectF);
    }

    @Override // android.graphics.Canvas
    public final void drawPoints(float[] fArr, Paint paint) {
        a().drawPoints(fArr, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawPosText(String str, float[] fArr, Paint paint) {
        a().drawPosText(str, fArr, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawRect(Rect rect, Paint paint) {
        a().drawRect(rect, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawRoundRect(float f2, float f3, float f4, float f5, float f6, float f7, Paint paint) {
        a().drawRoundRect(f2, f3, f4, f5, f6, f7, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawText(String str, float f2, float f3, Paint paint) {
        a().drawText(str, f2, f3, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawTextOnPath(String str, Path path, float f2, float f3, Paint paint) {
        a().drawTextOnPath(str, path, f2, f3, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawTextRun(CharSequence charSequence, int i2, int i3, int i4, int i5, float f2, float f3, boolean z, Paint paint) {
        a().drawTextRun(charSequence, i2, i3, i4, i5, f2, f3, z, paint);
    }

    @Override // android.graphics.Canvas
    public final boolean clipOutRect(Rect rect) {
        return a().clipOutRect(rect);
    }

    @Override // android.graphics.Canvas
    public final boolean clipPath(Path path) {
        return a().clipPath(path);
    }

    @Override // android.graphics.Canvas
    public final boolean clipRect(Rect rect, Region.Op op) {
        return a().clipRect(rect, op);
    }

    @Override // android.graphics.Canvas
    public final void drawBitmap(Bitmap bitmap, Rect rect, Rect rect2, Paint paint) {
        a().drawBitmap(bitmap, rect, rect2, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawPicture(Picture picture, Rect rect) {
        a().drawPicture(picture, rect);
    }

    @Override // android.graphics.Canvas
    public final void drawRect(float f2, float f3, float f4, float f5, Paint paint) {
        a().drawRect(f2, f3, f4, f5, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawText(String str, int i2, int i3, float f2, float f3, Paint paint) {
        a().drawText(str, i2, i3, f2, f3, paint);
    }

    @Override // android.graphics.Canvas
    public final boolean quickReject(RectF rectF) {
        return CanvasCompatR.c(a(), rectF);
    }

    @Override // android.graphics.Canvas
    public final int saveLayer(RectF rectF, Paint paint) {
        return a().saveLayer(rectF, paint);
    }

    @Override // android.graphics.Canvas
    public final int saveLayerAlpha(RectF rectF, int i2) {
        return a().saveLayerAlpha(rectF, i2);
    }

    @Override // android.graphics.Canvas
    public final boolean clipRect(RectF rectF) {
        return a().clipRect(rectF);
    }

    @Override // android.graphics.Canvas
    public final void drawBitmap(int[] iArr, int i2, int i3, float f2, float f3, int i4, int i5, boolean z, Paint paint) {
        a().drawBitmap(iArr, i2, i3, f2, f3, i4, i5, z, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawColor(int i2, PorterDuff.Mode mode) {
        a().drawColor(i2, mode);
    }

    @Override // android.graphics.Canvas
    public final void drawText(CharSequence charSequence, int i2, int i3, float f2, float f3, Paint paint) {
        a().drawText(charSequence, i2, i3, f2, f3, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawTextRun(MeasuredText measuredText, int i2, int i3, int i4, int i5, float f2, float f3, boolean z, Paint paint) {
        a().drawTextRun(measuredText, i2, i3, i4, i5, f2, f3, z, paint);
    }

    @Override // android.graphics.Canvas
    public final boolean quickReject(Path path, Canvas.EdgeType edgeType) {
        return a().quickReject(path, edgeType);
    }

    @Override // android.graphics.Canvas
    public final int saveLayer(float f2, float f3, float f4, float f5, Paint paint, int i2) {
        return a().saveLayer(f2, f3, f4, f5, paint, i2);
    }

    @Override // android.graphics.Canvas
    public final int saveLayerAlpha(float f2, float f3, float f4, float f5, int i2, int i3) {
        return a().saveLayerAlpha(f2, f3, f4, f5, i2, i3);
    }

    @Override // android.graphics.Canvas
    public final boolean clipOutRect(float f2, float f3, float f4, float f5) {
        return a().clipOutRect(f2, f3, f4, f5);
    }

    @Override // android.graphics.Canvas
    public final boolean clipRect(Rect rect) {
        return a().clipRect(rect);
    }

    @Override // android.graphics.Canvas
    public final void drawBitmap(int[] iArr, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, Paint paint) {
        a().drawBitmap(iArr, i2, i3, i4, i5, i6, i7, z, paint);
    }

    @Override // android.graphics.Canvas
    public final void drawColor(int i2, BlendMode blendMode) {
        a().drawColor(i2, blendMode);
    }

    @Override // android.graphics.Canvas
    public final boolean quickReject(Path path) {
        return CanvasCompatR.b(a(), path);
    }

    @Override // android.graphics.Canvas
    public final int saveLayer(float f2, float f3, float f4, float f5, Paint paint) {
        return a().saveLayer(f2, f3, f4, f5, paint);
    }

    @Override // android.graphics.Canvas
    public final int saveLayerAlpha(float f2, float f3, float f4, float f5, int i2) {
        return a().saveLayerAlpha(f2, f3, f4, f5, i2);
    }

    @Override // android.graphics.Canvas
    public final boolean clipRect(float f2, float f3, float f4, float f5, Region.Op op) {
        return a().clipRect(f2, f3, f4, f5, op);
    }

    @Override // android.graphics.Canvas
    public final void drawBitmap(Bitmap bitmap, Matrix matrix, Paint paint) {
        a().drawBitmap(bitmap, matrix, paint);
    }

    @Override // android.graphics.Canvas
    public final boolean quickReject(float f2, float f3, float f4, float f5, Canvas.EdgeType edgeType) {
        return a().quickReject(f2, f3, f4, f5, edgeType);
    }

    @Override // android.graphics.Canvas
    public final boolean clipOutRect(int i2, int i3, int i4, int i5) {
        return a().clipOutRect(i2, i3, i4, i5);
    }

    @Override // android.graphics.Canvas
    public final boolean clipRect(float f2, float f3, float f4, float f5) {
        return a().clipRect(f2, f3, f4, f5);
    }

    @Override // android.graphics.Canvas
    public final void drawColor(long j2, BlendMode blendMode) {
        a().drawColor(j2, blendMode);
    }

    @Override // android.graphics.Canvas
    public final boolean quickReject(float f2, float f3, float f4, float f5) {
        return CanvasCompatR.a(a(), f2, f3, f4, f5);
    }

    @Override // android.graphics.Canvas
    public final boolean clipRect(int i2, int i3, int i4, int i5) {
        return a().clipRect(i2, i3, i4, i5);
    }
}
