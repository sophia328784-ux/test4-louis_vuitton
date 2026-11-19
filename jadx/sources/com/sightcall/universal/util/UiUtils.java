package com.sightcall.universal.util;

import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.LightingColorFilter;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.PowerManager;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import androidx.core.content.ContextCompat;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.universal.R;
import java.io.File;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class UiUtils {
    public static Bitmap applicationBitmapIcon(Context context) {
        Drawable drawableApplicationDrawableIcon = applicationDrawableIcon(context);
        if (drawableApplicationDrawableIcon instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawableApplicationDrawableIcon).getBitmap();
        }
        return null;
    }

    public static Drawable applicationDrawableIcon(Context context) {
        try {
            return context.getPackageManager().getApplicationIcon(context.getPackageName());
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static int calculateInSampleSize(BitmapFactory.Options options, int i2, int i3) {
        int i4 = options.outHeight;
        int i5 = options.outWidth;
        int i6 = 1;
        if (i4 <= i3 && i5 <= i2) {
            return 1;
        }
        int i7 = i4 / 2;
        int i8 = i5 / 2;
        while (i7 / i6 >= i3 && i8 / i6 >= i2) {
            i6 *= 2;
        }
        return i6;
    }

    public static boolean canDrawOverlays(Context context) {
        if (SdkUtilsKt.isAtLeastSdk23()) {
            return Settings.canDrawOverlays(context);
        }
        return context.getPackageManager().checkPermission("android.permission.SYSTEM_ALERT_WINDOW", context.getPackageName()) == 0;
    }

    public static float dp2px(float f2, Resources resources) {
        return (f2 * resources.getDisplayMetrics().densityDpi) / 160.0f;
    }

    public static void enableJumpcutRotationAnimation(Window window) {
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.rotationAnimation = 2;
        window.setAttributes(attributes);
    }

    public static Bitmap extractThumbnail(File file, int i2, int i3) {
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inMutable = false;
            options.inPreferredConfig = Bitmap.Config.RGB_565;
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(file.getPath(), options);
            options.inSampleSize = calculateInSampleSize(options, i2, i3);
            options.inJustDecodeBounds = false;
            return BitmapFactory.decodeFile(file.getPath(), options);
        } catch (Exception unused) {
            return null;
        }
    }

    public static Drawable getColoredDrawable(Context context, int i2, int i3) {
        Drawable drawable = context.getResources().getDrawable(i2);
        LightingColorFilter lightingColorFilter = new LightingColorFilter(i3, 0);
        if (drawable != null) {
            drawable.mutate().setColorFilter(lightingColorFilter);
        }
        return drawable;
    }

    public static Point getScreenSize(WindowManager windowManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return new Point(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    public static void hideSoftKeyboard(Context context, View view) {
        ((InputMethodManager) context.getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static boolean isLargeScreen(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public static boolean isScreenOn(Context context) {
        return ((PowerManager) context.getSystemService("power")).isInteractive();
    }

    public static boolean isViewChildOf(View view, View view2) {
        while (true) {
            Object parent = view.getParent();
            if (!(parent instanceof View)) {
                return false;
            }
            if (parent == view2) {
                return true;
            }
            view = (View) parent;
        }
    }

    public static void lockOrientation(Activity activity) {
        activity.setRequestedOrientation(14);
    }

    public static float px2dp(float f2, Resources resources) {
        return f2 / (resources.getDisplayMetrics().densityDpi / 160.0f);
    }

    public static void requestOrientation(Activity activity, int i2) {
        activity.setRequestedOrientation(i2);
    }

    public static void setKeepScreenOn(Window window, boolean z) {
        if (window == null) {
            return;
        }
        if (z) {
            window.addFlags(128);
        } else {
            window.clearFlags(128);
        }
    }

    public static void showSoftKeyboard(View view) {
        if (view.getContext().getResources().getConfiguration().hardKeyboardHidden == 2) {
            ((InputMethodManager) view.getContext().getSystemService("input_method")).showSoftInput(view, 1);
        }
    }

    public static ObjectAnimator tada(View view, float f2) {
        float f3 = (-3.0f) * f2;
        float f4 = 3.0f * f2;
        return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofKeyframe(View.SCALE_X, Keyframe.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f), Keyframe.ofFloat(0.1f, 0.9f), Keyframe.ofFloat(0.2f, 0.9f), Keyframe.ofFloat(0.3f, 1.1f), Keyframe.ofFloat(0.4f, 1.1f), Keyframe.ofFloat(0.5f, 1.1f), Keyframe.ofFloat(0.6f, 1.1f), Keyframe.ofFloat(0.7f, 1.1f), Keyframe.ofFloat(0.8f, 1.1f), Keyframe.ofFloat(0.9f, 1.1f), Keyframe.ofFloat(1.0f, 1.0f)), PropertyValuesHolder.ofKeyframe(View.SCALE_Y, Keyframe.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f), Keyframe.ofFloat(0.1f, 0.9f), Keyframe.ofFloat(0.2f, 0.9f), Keyframe.ofFloat(0.3f, 1.1f), Keyframe.ofFloat(0.4f, 1.1f), Keyframe.ofFloat(0.5f, 1.1f), Keyframe.ofFloat(0.6f, 1.1f), Keyframe.ofFloat(0.7f, 1.1f), Keyframe.ofFloat(0.8f, 1.1f), Keyframe.ofFloat(0.9f, 1.1f), Keyframe.ofFloat(1.0f, 1.0f)), PropertyValuesHolder.ofKeyframe(View.ROTATION, Keyframe.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM), Keyframe.ofFloat(0.1f, f3), Keyframe.ofFloat(0.2f, f3), Keyframe.ofFloat(0.3f, f4), Keyframe.ofFloat(0.4f, f3), Keyframe.ofFloat(0.5f, f4), Keyframe.ofFloat(0.6f, f3), Keyframe.ofFloat(0.7f, f4), Keyframe.ofFloat(0.8f, f3), Keyframe.ofFloat(0.9f, f4), Keyframe.ofFloat(1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM))).setDuration(1000L);
    }

    public static Bitmap universalBitmapIcon(Context context) {
        try {
            Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(context.getResources(), R.drawable.universal_icon);
            if (bitmapDecodeResource != null) {
                return bitmapDecodeResource;
            }
        } catch (Exception unused) {
        }
        Drawable drawableApplicationDrawableIcon = applicationDrawableIcon(context);
        if (drawableApplicationDrawableIcon instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawableApplicationDrawableIcon).getBitmap();
        }
        return null;
    }

    public static Drawable universalDrawableIcon(Context context) {
        try {
            Drawable drawable = ContextCompat.getDrawable(context, R.drawable.universal_icon);
            if (drawable != null) {
                return drawable;
            }
        } catch (Exception unused) {
        }
        return applicationDrawableIcon(context);
    }

    public static void unlockOrientation(Activity activity) {
        activity.setRequestedOrientation(-1);
    }

    public static void lockOrientation(Activity activity, int i2) {
        activity.setRequestedOrientation(i2);
    }

    public static boolean isViewChildOf(View view, Activity activity) {
        return isViewChildOf(view, activity.findViewById(android.R.id.content));
    }
}
