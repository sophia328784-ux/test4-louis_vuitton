package com.canhub.cropper;

import android.graphics.PointF;
import android.graphics.RectF;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u0002\u000b\fB'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/canhub/cropper/CropWindowMoveHandler;", "", "Lcom/canhub/cropper/CropWindowMoveHandler$Type;", "type", "Lcom/canhub/cropper/CropWindowHandler;", "cropWindowHandler", "", "touchX", "touchY", "<init>", "(Lcom/canhub/cropper/CropWindowMoveHandler$Type;Lcom/canhub/cropper/CropWindowHandler;FF)V", "Type", "Companion", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class CropWindowMoveHandler {
    public static final Companion g = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Type f25107a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f25108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f25109c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f25110e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PointF f25111f;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/canhub/cropper/CropWindowMoveHandler$Companion;", "", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/canhub/cropper/CropWindowMoveHandler$Type;", "", "TOP_LEFT", "TOP_RIGHT", "BOTTOM_LEFT", "BOTTOM_RIGHT", "LEFT", "TOP", "RIGHT", "BOTTOM", "CENTER", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Type {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Type[] $VALUES;
        public static final Type BOTTOM;
        public static final Type BOTTOM_LEFT;
        public static final Type BOTTOM_RIGHT;
        public static final Type CENTER;
        public static final Type LEFT;
        public static final Type RIGHT;
        public static final Type TOP;
        public static final Type TOP_LEFT;
        public static final Type TOP_RIGHT;

        static {
            Type type = new Type("TOP_LEFT", 0);
            TOP_LEFT = type;
            Type type2 = new Type("TOP_RIGHT", 1);
            TOP_RIGHT = type2;
            Type type3 = new Type("BOTTOM_LEFT", 2);
            BOTTOM_LEFT = type3;
            Type type4 = new Type("BOTTOM_RIGHT", 3);
            BOTTOM_RIGHT = type4;
            Type type5 = new Type("LEFT", 4);
            LEFT = type5;
            Type type6 = new Type("TOP", 5);
            TOP = type6;
            Type type7 = new Type("RIGHT", 6);
            RIGHT = type7;
            Type type8 = new Type("BOTTOM", 7);
            BOTTOM = type8;
            Type type9 = new Type("CENTER", 8);
            CENTER = type9;
            Type[] typeArr = {type, type2, type3, type4, type5, type6, type7, type8, type9};
            $VALUES = typeArr;
            $ENTRIES = EnumEntriesKt.a(typeArr);
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f25112a;

        static {
            int[] iArr = new int[Type.values().length];
            try {
                iArr[Type.TOP_LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Type.TOP_RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Type.BOTTOM_LEFT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Type.BOTTOM_RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Type.LEFT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Type.TOP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Type.RIGHT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Type.BOTTOM.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[Type.CENTER.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            f25112a = iArr;
        }
    }

    public CropWindowMoveHandler(Type type, CropWindowHandler cropWindowHandler, float f2, float f3) {
        float fCenterY;
        float f4;
        float f5;
        type.getClass();
        cropWindowHandler.getClass();
        this.f25107a = type;
        this.f25108b = cropWindowHandler.e();
        this.f25109c = cropWindowHandler.d();
        this.d = cropWindowHandler.c();
        this.f25110e = cropWindowHandler.b();
        float fCenterX = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        PointF pointF = new PointF(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.f25111f = pointF;
        RectF rectFG = cropWindowHandler.g();
        switch (WhenMappings.f25112a[type.ordinal()]) {
            case 1:
                fCenterX = rectFG.left - f2;
                fCenterY = rectFG.top;
                f5 = fCenterY - f3;
                pointF.x = fCenterX;
                pointF.y = f5;
                return;
            case 2:
                fCenterX = rectFG.right - f2;
                fCenterY = rectFG.top;
                f5 = fCenterY - f3;
                pointF.x = fCenterX;
                pointF.y = f5;
                return;
            case 3:
                fCenterX = rectFG.left - f2;
                fCenterY = rectFG.bottom;
                f5 = fCenterY - f3;
                pointF.x = fCenterX;
                pointF.y = f5;
                return;
            case 4:
                fCenterX = rectFG.right - f2;
                fCenterY = rectFG.bottom;
                f5 = fCenterY - f3;
                pointF.x = fCenterX;
                pointF.y = f5;
                return;
            case 5:
                f4 = rectFG.left;
                fCenterX = f4 - f2;
                f5 = 0.0f;
                pointF.x = fCenterX;
                pointF.y = f5;
                return;
            case 6:
                fCenterY = rectFG.top;
                f5 = fCenterY - f3;
                pointF.x = fCenterX;
                pointF.y = f5;
                return;
            case 7:
                f4 = rectFG.right;
                fCenterX = f4 - f2;
                f5 = 0.0f;
                pointF.x = fCenterX;
                pointF.y = f5;
                return;
            case 8:
                fCenterY = rectFG.bottom;
                f5 = fCenterY - f3;
                pointF.x = fCenterX;
                pointF.y = f5;
                return;
            case 9:
                fCenterX = rectFG.centerX() - f2;
                fCenterY = rectFG.centerY();
                f5 = fCenterY - f3;
                pointF.x = fCenterX;
                pointF.y = f5;
                return;
            default:
                v40.g();
                throw null;
        }
    }

    public static void c(RectF rectF, RectF rectF2, float f2) {
        rectF.inset((rectF.width() - (rectF.height() * f2)) / 2.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        float f3 = rectF.left;
        float f4 = rectF2.left;
        if (f3 < f4) {
            rectF.offset(f4 - f3, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        float f5 = rectF.right;
        float f6 = rectF2.right;
        if (f5 > f6) {
            rectF.offset(f6 - f5, Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
    }

    public static void f(RectF rectF, RectF rectF2, float f2) {
        rectF.inset(Call.Parameters.DEFAULT_CAMERA_ZOOM, (rectF.height() - (rectF.width() / f2)) / 2.0f);
        float f3 = rectF.top;
        float f4 = rectF2.top;
        if (f3 < f4) {
            rectF.offset(Call.Parameters.DEFAULT_CAMERA_ZOOM, f4 - f3);
        }
        float f5 = rectF.bottom;
        float f6 = rectF2.bottom;
        if (f5 > f6) {
            rectF.offset(Call.Parameters.DEFAULT_CAMERA_ZOOM, f6 - f5);
        }
    }

    public final void a(RectF rectF, float f2, RectF rectF2, int i2, float f3, float f4, boolean z, boolean z2) {
        float f5 = i2;
        PointF pointF = this.f25111f;
        if (f2 > f5) {
            f2 = ((f2 - f5) / 1.05f) + f5;
            pointF.y -= (f2 - f5) / 1.1f;
        }
        float f6 = rectF2.bottom;
        if (f2 > f6) {
            pointF.y -= (f2 - f6) / 2.0f;
        }
        if (f6 - f2 < f3) {
            f2 = f6;
        }
        float f7 = rectF.top;
        float f8 = f2 - f7;
        float f9 = this.f25109c;
        if (f8 < f9) {
            f2 = f7 + f9;
        }
        float f10 = f2 - f7;
        float f11 = this.f25110e;
        if (f10 > f11) {
            f2 = f7 + f11;
        }
        if (f6 - f2 < f3) {
            f2 = f6;
        }
        if (f4 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            float f12 = (f2 - f7) * f4;
            float f13 = this.f25108b;
            if (f12 < f13) {
                f2 = Math.min(f6, (f13 / f4) + f7);
                f12 = (f2 - rectF.top) * f4;
            }
            float f14 = this.d;
            if (f12 > f14) {
                f2 = Math.min(rectF2.bottom, (f14 / f4) + rectF.top);
                f12 = (f2 - rectF.top) * f4;
            }
            if (z && z2) {
                f2 = Math.min(f2, Math.min(rectF2.bottom, (rectF2.width() / f4) + rectF.top));
            } else {
                if (z) {
                    float f15 = rectF.right;
                    float f16 = f15 - f12;
                    float f17 = rectF2.left;
                    if (f16 < f17) {
                        float fMin = Math.min(rectF2.bottom, ((f15 - f17) / f4) + rectF.top);
                        f12 = (fMin - rectF.top) * f4;
                        f2 = fMin;
                    }
                }
                if (z2) {
                    float f18 = rectF.left;
                    float f19 = f12 + f18;
                    float f20 = rectF2.right;
                    if (f19 > f20) {
                        f2 = Math.min(f2, Math.min(rectF2.bottom, ((f20 - f18) / f4) + rectF.top));
                    }
                }
            }
        }
        rectF.bottom = f2;
    }

    public final void b(RectF rectF, float f2, RectF rectF2, float f3, float f4, boolean z, boolean z2) {
        PointF pointF = this.f25111f;
        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f2 /= 1.05f;
            pointF.x -= f2 / 1.1f;
        }
        float f5 = rectF2.left;
        if (f2 < f5) {
            pointF.x -= (f2 - f5) / 2.0f;
        }
        if (f2 - f5 < f3) {
            f2 = f5;
        }
        float f6 = rectF.right;
        float f7 = f6 - f2;
        float f8 = this.f25108b;
        if (f7 < f8) {
            f2 = f6 - f8;
        }
        float f9 = f6 - f2;
        float f10 = this.d;
        if (f9 > f10) {
            f2 = f6 - f10;
        }
        if (f2 - f5 < f3) {
            f2 = f5;
        }
        if (f4 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            float f11 = (f6 - f2) / f4;
            float f12 = this.f25109c;
            if (f11 < f12) {
                f2 = Math.max(f5, f6 - (f12 * f4));
                f11 = (rectF.right - f2) / f4;
            }
            float f13 = this.f25110e;
            if (f11 > f13) {
                f2 = Math.max(rectF2.left, rectF.right - (f13 * f4));
                f11 = (rectF.right - f2) / f4;
            }
            if (z && z2) {
                f2 = Math.max(f2, Math.max(rectF2.left, rectF.right - (rectF2.height() * f4)));
            } else {
                if (z) {
                    float f14 = rectF.bottom;
                    float f15 = f14 - f11;
                    float f16 = rectF2.top;
                    if (f15 < f16) {
                        float fMax = Math.max(rectF2.left, rectF.right - ((f14 - f16) * f4));
                        f11 = (rectF.right - fMax) / f4;
                        f2 = fMax;
                    }
                }
                if (z2) {
                    float f17 = rectF.top;
                    float f18 = f11 + f17;
                    float f19 = rectF2.bottom;
                    if (f18 > f19) {
                        f2 = Math.max(f2, Math.max(rectF2.left, rectF.right - ((f19 - f17) * f4)));
                    }
                }
            }
        }
        rectF.left = f2;
    }

    public final void d(RectF rectF, float f2, RectF rectF2, int i2, float f3, float f4, boolean z, boolean z2) {
        float f5 = i2;
        PointF pointF = this.f25111f;
        if (f2 > f5) {
            f2 = ((f2 - f5) / 1.05f) + f5;
            pointF.x -= (f2 - f5) / 1.1f;
        }
        float f6 = rectF2.right;
        if (f2 > f6) {
            pointF.x -= (f2 - f6) / 2.0f;
        }
        if (f6 - f2 < f3) {
            f2 = f6;
        }
        float f7 = rectF.left;
        float f8 = f2 - f7;
        float f9 = this.f25108b;
        if (f8 < f9) {
            f2 = f7 + f9;
        }
        float f10 = f2 - f7;
        float f11 = this.d;
        if (f10 > f11) {
            f2 = f7 + f11;
        }
        if (f6 - f2 < f3) {
            f2 = f6;
        }
        if (f4 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            float f12 = (f2 - f7) / f4;
            float f13 = this.f25109c;
            if (f12 < f13) {
                f2 = Math.min(f6, (f13 * f4) + f7);
                f12 = (f2 - rectF.left) / f4;
            }
            float f14 = this.f25110e;
            if (f12 > f14) {
                f2 = Math.min(rectF2.right, (f14 * f4) + rectF.left);
                f12 = (f2 - rectF.left) / f4;
            }
            if (z && z2) {
                f2 = Math.min(f2, Math.min(rectF2.right, (rectF2.height() * f4) + rectF.left));
            } else {
                if (z) {
                    float f15 = rectF.bottom;
                    float f16 = f15 - f12;
                    float f17 = rectF2.top;
                    if (f16 < f17) {
                        float fMin = Math.min(rectF2.right, ((f15 - f17) * f4) + rectF.left);
                        f12 = (fMin - rectF.left) / f4;
                        f2 = fMin;
                    }
                }
                if (z2) {
                    float f18 = rectF.top;
                    float f19 = f12 + f18;
                    float f20 = rectF2.bottom;
                    if (f19 > f20) {
                        f2 = Math.min(f2, Math.min(rectF2.right, ((f20 - f18) * f4) + rectF.left));
                    }
                }
            }
        }
        rectF.right = f2;
    }

    public final void e(RectF rectF, float f2, RectF rectF2, float f3, float f4, boolean z, boolean z2) {
        PointF pointF = this.f25111f;
        if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            f2 /= 1.05f;
            pointF.y -= f2 / 1.1f;
        }
        float f5 = rectF2.top;
        if (f2 < f5) {
            pointF.y -= (f2 - f5) / 2.0f;
        }
        if (f2 - f5 < f3) {
            f2 = f5;
        }
        float f6 = rectF.bottom;
        float f7 = f6 - f2;
        float f8 = this.f25109c;
        if (f7 < f8) {
            f2 = f6 - f8;
        }
        float f9 = f6 - f2;
        float f10 = this.f25110e;
        if (f9 > f10) {
            f2 = f6 - f10;
        }
        if (f2 - f5 < f3) {
            f2 = f5;
        }
        if (f4 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            float f11 = (f6 - f2) * f4;
            float f12 = this.f25108b;
            if (f11 < f12) {
                f2 = Math.max(f5, f6 - (f12 / f4));
                f11 = (rectF.bottom - f2) * f4;
            }
            float f13 = this.d;
            if (f11 > f13) {
                f2 = Math.max(rectF2.top, rectF.bottom - (f13 / f4));
                f11 = (rectF.bottom - f2) * f4;
            }
            if (z && z2) {
                f2 = Math.max(f2, Math.max(rectF2.top, rectF.bottom - (rectF2.width() / f4)));
            } else {
                if (z) {
                    float f14 = rectF.right;
                    float f15 = f14 - f11;
                    float f16 = rectF2.left;
                    if (f15 < f16) {
                        float fMax = Math.max(rectF2.top, rectF.bottom - ((f14 - f16) / f4));
                        f11 = (rectF.bottom - fMax) * f4;
                        f2 = fMax;
                    }
                }
                if (z2) {
                    float f17 = rectF.left;
                    float f18 = f11 + f17;
                    float f19 = rectF2.right;
                    if (f18 > f19) {
                        f2 = Math.max(f2, Math.max(rectF2.top, rectF.bottom - ((f19 - f17) / f4)));
                    }
                }
            }
        }
        rectF.top = f2;
    }
}
