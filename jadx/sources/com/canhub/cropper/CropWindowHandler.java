package com.canhub.cropper;

import android.graphics.RectF;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/canhub/cropper/CropWindowHandler;", "", "<init>", "()V", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CropWindowHandler {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public float f25099c;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f25100e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f25101f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f25102h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f25103i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f25104j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RectF f25097a = new RectF();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RectF f25098b = new RectF();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f25105k = 1.0f;
    public float l = 1.0f;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f25106a;

        static {
            int[] iArr = new int[CropImageView.CropShape.values().length];
            try {
                iArr[CropImageView.CropShape.RECTANGLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CropImageView.CropShape.OVAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CropImageView.CropShape.RECTANGLE_VERTICAL_ONLY.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CropImageView.CropShape.RECTANGLE_HORIZONTAL_ONLY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f25106a = iArr;
        }
    }

    public static float a(float f2, float f3, float f4, float f5) {
        return Math.max(Math.abs(f2 - f4), Math.abs(f3 - f5));
    }

    public static boolean h(float f2, float f3, float f4, float f5, float f6, float f7) {
        return f2 > f4 && f2 < f6 && f3 > f5 && f3 < f7;
    }

    public final float b() {
        float f2 = this.f25101f;
        float f3 = this.f25104j / this.l;
        return f2 > f3 ? f3 : f2;
    }

    public final float c() {
        float f2 = this.f25100e;
        float f3 = this.f25103i / this.f25105k;
        return f2 > f3 ? f3 : f2;
    }

    public final float d() {
        float f2 = this.d;
        float f3 = this.f25102h / this.l;
        return f2 < f3 ? f3 : f2;
    }

    public final float e() {
        float f2 = this.f25099c;
        float f3 = this.g / this.f25105k;
        return f2 < f3 ? f3 : f2;
    }

    public final CropWindowMoveHandler.Type f(float f2, float f3, boolean z) {
        RectF rectF = this.f25097a;
        float fWidth = rectF.width() / 6.0f;
        float f4 = rectF.left;
        float f5 = f4 + fWidth;
        float f6 = (fWidth * 5.0f) + f4;
        float fHeight = rectF.height() / 6.0f;
        float f7 = rectF.top;
        float f8 = f7 + fHeight;
        float f9 = (5.0f * fHeight) + f7;
        if (f2 < f5) {
            if (f3 < f8) {
                return CropWindowMoveHandler.Type.TOP_LEFT;
            }
            return f3 < f9 ? CropWindowMoveHandler.Type.LEFT : CropWindowMoveHandler.Type.BOTTOM_LEFT;
        }
        if (f2 >= f6) {
            if (f3 < f8) {
                return CropWindowMoveHandler.Type.TOP_RIGHT;
            }
            return f3 < f9 ? CropWindowMoveHandler.Type.RIGHT : CropWindowMoveHandler.Type.BOTTOM_RIGHT;
        }
        if (f3 < f8) {
            return CropWindowMoveHandler.Type.TOP;
        }
        if (f3 >= f9) {
            return CropWindowMoveHandler.Type.BOTTOM;
        }
        if (z) {
            return CropWindowMoveHandler.Type.CENTER;
        }
        return null;
    }

    public final RectF g() {
        RectF rectF = this.f25097a;
        RectF rectF2 = this.f25098b;
        rectF2.set(rectF);
        return rectF2;
    }
}
