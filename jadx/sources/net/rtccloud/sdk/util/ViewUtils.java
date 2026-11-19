package net.rtccloud.sdk.util;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;
import com.appsflyer.sdk_base.referrer.Payload;
import com.sightcall.advancedannotations.domain.parser.AnnotationParser;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import defpackage.md;
import defpackage.n00;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.VideoModule;

/* JADX INFO: loaded from: classes3.dex */
public class ViewUtils {

    /* JADX INFO: renamed from: net.rtccloud.sdk.util.ViewUtils$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$util$ScaleType;

        static {
            int[] iArr = new int[ScaleType.values().length];
            $SwitchMap$net$rtccloud$sdk$util$ScaleType = iArr;
            try {
                iArr[ScaleType.FIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$util$ScaleType[ScaleType.CROP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$util$ScaleType[ScaleType.FILL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static float applyScalingTo(ScaleType scaleType, RectF rectF, float f2, float f3, float f4, float f5) {
        if (f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM || f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM || f4 == Call.Parameters.DEFAULT_CAMERA_ZOOM || f5 == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            rectF.setEmpty();
            return Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }
        int i2 = AnonymousClass1.$SwitchMap$net$rtccloud$sdk$util$ScaleType[scaleType.ordinal()];
        if (i2 != 1 && i2 != 2) {
            if (i2 != 3) {
                return Call.Parameters.DEFAULT_CAMERA_ZOOM;
            }
            rectF.left = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            rectF.top = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            rectF.right = f4;
            rectF.bottom = f5;
            return 1.0f;
        }
        float f6 = f4 / f2;
        float f7 = f5 / f3;
        float fMin = scaleType == ScaleType.FIT ? Math.min(f6, f7) : Math.max(f6, f7);
        float f8 = f2 * fMin;
        float f9 = f3 * fMin;
        rectF.left = Math.round(((double) (f4 - f8)) * 0.5d);
        rectF.top = Math.round(((double) (f5 - f9)) * 0.5d);
        rectF.right = Math.round(((double) (f4 + f8)) * 0.5d);
        rectF.bottom = Math.round(((double) (f5 + f9)) * 0.5d);
        return fMin;
    }

    public static Dimension getMeasuredDimension(int i2, int i3, float f2, float f3) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode == 1073741824 && mode2 == 1073741824) {
            return new Dimension(size, size2);
        }
        if (mode == 1073741824) {
            int iRound = Math.round((size * f3) / f2);
            if (mode2 == Integer.MIN_VALUE) {
                iRound = Math.min(size2, iRound);
            }
            return new Dimension(size, iRound);
        }
        if (mode2 == 1073741824) {
            int iRound2 = Math.round((size2 * f2) / f3);
            if (mode == Integer.MIN_VALUE) {
                iRound2 = Math.min(size, iRound2);
            }
            return new Dimension(iRound2, size2);
        }
        if (mode != Integer.MIN_VALUE || mode2 != Integer.MIN_VALUE) {
            return new Dimension((int) f2, (int) f3);
        }
        float fMin = Math.min(size / f2, size2 / f3);
        return new Dimension(Math.round(f2 * fMin), Math.round(f3 * fMin));
    }

    public static String measureSpecModeToString(int i2) {
        if (i2 == Integer.MIN_VALUE) {
            return "AT_MOST";
        }
        if (i2 != 0) {
            return i2 != 1073741824 ? Integer.toString(i2) : "EXACTLY";
        }
        return "UNSPECIFIED";
    }

    public static String measureSpecToString(int i2) {
        int size = View.MeasureSpec.getSize(i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode == Integer.MIN_VALUE) {
            return n00.m(size, "AT_MOST ", "px");
        }
        if (mode != 0) {
            return mode != 1073741824 ? Integer.toString(mode) : n00.m(size, "EXACTLY ", "px");
        }
        return n00.m(size, "UNSPECIFIED ", "px");
    }

    public static void measureWithPreviewSize(Dimension dimension, Point point, int i2, int i3) {
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        float f2 = point.x;
        float f3 = point.y;
        float fMin = Math.min(size / f2, size2 / f3);
        dimension.set(Math.round(f2 * fMin), Math.round(f3 * fMin));
    }

    public static void measureWithSpecs(Dimension dimension, int i2, int i3) {
        dimension.set(View.MeasureSpec.getSize(i2), View.MeasureSpec.getSize(i3));
    }

    public static void measureWithVideoProfile(Dimension dimension, VideoModule.Profile profile, boolean z, int i2, int i3) {
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int i4 = z ? profile.low : profile.high;
        int i5 = z ? profile.high : profile.low;
        float f2 = size;
        float f3 = i4;
        float f4 = i5;
        float fMin = Math.min(f2 / f3, size2 / f4);
        dimension.set(Math.round(f3 * fMin), Math.round(f4 * fMin));
    }

    public static String motionEventActionToString(int i2) {
        switch (i2) {
            case 0:
                return "ACTION_DOWN";
            case 1:
                return "ACTION_UP";
            case 2:
                return "ACTION_MOVE";
            case 3:
                return "ACTION_CANCEL";
            case 4:
                return "ACTION_OUTSIDE";
            case 5:
            case 6:
            default:
                int i3 = (65280 & i2) >> 8;
                int i4 = i2 & 255;
                if (i4 != 5) {
                    return i4 != 6 ? Integer.toString(i2) : n00.m(i3, "ACTION_POINTER_UP(", ")");
                }
                return n00.m(i3, "ACTION_POINTER_DOWN(", ")");
            case 7:
                return "ACTION_HOVER_MOVE";
            case 8:
                return "ACTION_SCROLL";
            case 9:
                return "ACTION_HOVER_ENTER";
            case 10:
                return "ACTION_HOVER_EXIT";
        }
    }

    public static void remapLocalCoordinates(float[] fArr, float f2, float f3, RectF rectF) {
        if (fArr == null || fArr.length < 2) {
            md.n("coordinates must be an array of two floats");
            return;
        }
        float fWidth = rectF.width();
        float fHeight = rectF.height();
        if (fWidth == Call.Parameters.DEFAULT_CAMERA_ZOOM || fHeight == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            fArr[1] = -1.0f;
            fArr[0] = -1.0f;
        } else {
            fArr[0] = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(1.0f, (f2 - rectF.left) / fWidth));
            fArr[1] = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.min(1.0f, (f3 - rectF.top) / fHeight));
        }
    }

    public static void remapRemoteCoordinates(float[] fArr, float f2, float f3, RectF rectF) {
        if (fArr == null || fArr.length < 2) {
            md.n("coordinates must be an array of two floats");
            return;
        }
        fArr[0] = (rectF.width() * f2) + rectF.left;
        fArr[1] = (rectF.height() * f3) + rectF.top;
    }

    public static boolean safeDrawBitmap(Canvas canvas, Bitmap bitmap, Rect rect, Rect rect2, Paint paint) {
        if (canvas != null && bitmap != null && !bitmap.isRecycled()) {
            try {
                canvas.drawBitmap(bitmap, rect, rect2, paint);
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }

    public static String whoami(View view) {
        String resourcePackageName;
        int id = view.getId();
        StringBuilder sb = new StringBuilder();
        if (id != -1) {
            Resources resources = view.getResources();
            int i2 = (-16777216) & id;
            if (i2 == 16777216) {
                resourcePackageName = ReferenceApiV3ConstKt.OS_NAME;
            } else if (i2 != 2130706432) {
                try {
                    resourcePackageName = resources.getResourcePackageName(id);
                } catch (Resources.NotFoundException unused) {
                }
            } else {
                resourcePackageName = Payload.TYPE_APP;
            }
            String resourceTypeName = resources.getResourceTypeName(id);
            String resourceEntryName = resources.getResourceEntryName(id);
            sb.append(resourcePackageName);
            sb.append(":");
            sb.append(resourceTypeName);
            sb.append("/");
            sb.append(resourceEntryName);
            return sb.toString();
        }
        return view.getClass().getName() + AnnotationParser.AnnotationInstruction + Integer.toHexString(view.hashCode());
    }

    public static boolean safeDrawBitmap(Canvas canvas, Bitmap bitmap, Rect rect, RectF rectF, Paint paint) {
        if (canvas != null && bitmap != null && !bitmap.isRecycled()) {
            try {
                canvas.drawBitmap(bitmap, rect, rectF, paint);
                return true;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return false;
    }

    public static void remapRemoteCoordinates(float[] fArr, float f2, float f3, int i2, int i3) {
        if (fArr != null && fArr.length >= 2) {
            fArr[0] = f2 * i2;
            fArr[1] = f3 * i3;
        } else {
            md.n("coordinates must be an array of two floats");
        }
    }

    public static void measureWithVideoProfile(Dimension dimension, VideoModule.Profile profile, int i2, int i3) {
        measureWithVideoProfile(dimension, profile, View.MeasureSpec.getSize(i2) < View.MeasureSpec.getSize(i3), i2, i3);
    }
}
