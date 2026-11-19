package com.google.android.material.motion;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Path;
import android.util.TypedValue;
import android.view.animation.AnimationUtils;
import android.view.animation.PathInterpolator;
import androidx.core.graphics.PathParser;
import com.google.android.material.resources.MaterialAttributes;
import defpackage.a61;
import defpackage.md;
import defpackage.o60;
import defpackage.r81;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public abstract class MotionUtils {
    public static float a(int i2, String[] strArr) {
        float f2 = Float.parseFloat(strArr[i2]);
        if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM && f2 <= 1.0f) {
            return f2;
        }
        a61.p("Motion easing control point value must be between 0 and 1; instead got: ", f2);
        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public static boolean b(String str, String str2) {
        return str.startsWith(str2.concat("(")) && str.endsWith(")");
    }

    public static int c(Context context, int i2, int i3) {
        TypedValue typedValueA = MaterialAttributes.a(i2, context);
        return (typedValueA == null || typedValueA.type != 16) ? i3 : typedValueA.data;
    }

    public static TimeInterpolator d(Context context, int i2, TimeInterpolator timeInterpolator) {
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(i2, typedValue, true)) {
            return timeInterpolator;
        }
        if (typedValue.type != 3) {
            md.n("Motion easing theme attribute must be an @interpolator resource for ?attr/motionEasing*Interpolator attributes or a string for ?attr/motionEasing* attributes.");
            return null;
        }
        String strValueOf = String.valueOf(typedValue.string);
        if (!b(strValueOf, "cubic-bezier") && !b(strValueOf, "path")) {
            return AnimationUtils.loadInterpolator(context, typedValue.resourceId);
        }
        if (b(strValueOf, "cubic-bezier")) {
            String[] strArrSplit = strValueOf.substring(13, strValueOf.length() - 1).split(",");
            if (strArrSplit.length == 4) {
                return new PathInterpolator(a(0, strArrSplit), a(1, strArrSplit), a(2, strArrSplit), a(3, strArrSplit));
            }
            md.g(strArrSplit.length, "Motion easing theme attribute must have 4 control points if using bezier curve format; instead got: ");
            return null;
        }
        if (!b(strValueOf, "path")) {
            md.n("Invalid motion easing type: ".concat(strValueOf));
            return null;
        }
        String strG = o60.g(1, 5, strValueOf);
        Path path = new Path();
        try {
            PathParser.PathDataNode.b(PathParser.b(strG), path);
            return new PathInterpolator(path);
        } catch (RuntimeException e2) {
            r81.g("Error in parsing ".concat(strG), e2);
            return null;
        }
    }
}
