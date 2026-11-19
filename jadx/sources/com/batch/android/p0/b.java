package com.batch.android.p0;

import android.content.res.TypedArray;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import java.util.Locale;
import java.util.Objects;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f23893b = "PercentLayout";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewGroup f23894a;

    /* JADX INFO: renamed from: com.batch.android.p0.b$b, reason: collision with other inner class name */
    public interface InterfaceC0068b {
        a a();
    }

    public b(ViewGroup viewGroup) {
        this.f23894a = viewGroup;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a(int i2, int i3) {
        if (Log.isLoggable(f23893b, 3)) {
            Objects.toString(this.f23894a);
            View.MeasureSpec.toString(i2);
            View.MeasureSpec.toString(i3);
        }
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        int childCount = this.f23894a.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = this.f23894a.getChildAt(i4);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if (Log.isLoggable(f23893b, 3)) {
                childAt.toString();
                Objects.toString(layoutParams);
            }
            if (layoutParams instanceof InterfaceC0068b) {
                a aVarA = ((InterfaceC0068b) layoutParams).a();
                if (Log.isLoggable(f23893b, 3)) {
                    Objects.toString(aVarA);
                }
                if (aVarA != null) {
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        aVarA.a((ViewGroup.MarginLayoutParams) layoutParams, size, size2);
                    } else {
                        aVarA.a(layoutParams, size, size2);
                    }
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void b() {
        int childCount = this.f23894a.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.f23894a.getChildAt(i2);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if (Log.isLoggable(f23893b, 3)) {
                childAt.toString();
                Objects.toString(layoutParams);
            }
            if (layoutParams instanceof InterfaceC0068b) {
                a aVarA = ((InterfaceC0068b) layoutParams).a();
                if (Log.isLoggable(f23893b, 3)) {
                    Objects.toString(aVarA);
                }
                if (aVarA != null) {
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        aVarA.a((ViewGroup.MarginLayoutParams) layoutParams);
                    } else {
                        aVarA.a(layoutParams);
                    }
                }
            }
        }
    }

    private static boolean b(View view, a aVar) {
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        return (view.getMeasuredWidthAndState() & com.batch.android.q0.b.v) == 16777216 && aVar.f23895a >= Call.Parameters.DEFAULT_CAMERA_ZOOM && aVar.f23901i.width == -2;
    }

    public static void a(ViewGroup.LayoutParams layoutParams, TypedArray typedArray, int i2, int i3) {
        layoutParams.width = typedArray.getLayoutDimension(i2, 0);
        layoutParams.height = typedArray.getLayoutDimension(i3, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean a() {
        a aVarA;
        int childCount = this.f23894a.getChildCount();
        boolean z = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = this.f23894a.getChildAt(i2);
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if (Log.isLoggable(f23893b, 3)) {
                childAt.toString();
                Objects.toString(layoutParams);
            }
            if ((layoutParams instanceof InterfaceC0068b) && (aVarA = ((InterfaceC0068b) layoutParams).a()) != null) {
                if (b(childAt, aVarA)) {
                    layoutParams.width = -2;
                    z = true;
                }
                if (a(childAt, aVarA)) {
                    layoutParams.height = -2;
                    z = true;
                }
            }
        }
        Log.isLoggable(f23893b, 3);
        return z;
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public float f23895a = -1.0f;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public float f23896b = -1.0f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f23897c = -1.0f;
        public float d = -1.0f;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public float f23898e = -1.0f;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public float f23899f = -1.0f;
        public float g = -1.0f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f23900h = -1.0f;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        final ViewGroup.MarginLayoutParams f23901i = new ViewGroup.MarginLayoutParams(0, 0);

        public void a(ViewGroup.MarginLayoutParams marginLayoutParams, int i2, int i3) {
            a((ViewGroup.LayoutParams) marginLayoutParams, i2, i3);
            ViewGroup.MarginLayoutParams marginLayoutParams2 = this.f23901i;
            marginLayoutParams2.leftMargin = marginLayoutParams.leftMargin;
            marginLayoutParams2.topMargin = marginLayoutParams.topMargin;
            marginLayoutParams2.rightMargin = marginLayoutParams.rightMargin;
            marginLayoutParams2.bottomMargin = marginLayoutParams.bottomMargin;
            marginLayoutParams2.setMarginStart(marginLayoutParams.getMarginStart());
            this.f23901i.setMarginEnd(marginLayoutParams.getMarginEnd());
            float f2 = this.f23897c;
            if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                marginLayoutParams.leftMargin = (int) (i2 * f2);
            }
            float f3 = this.d;
            if (f3 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                marginLayoutParams.topMargin = (int) (i3 * f3);
            }
            float f4 = this.f23898e;
            if (f4 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                marginLayoutParams.rightMargin = (int) (i2 * f4);
            }
            float f5 = this.f23899f;
            if (f5 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                marginLayoutParams.bottomMargin = (int) (i3 * f5);
            }
            float f6 = this.g;
            if (f6 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                marginLayoutParams.setMarginStart((int) (i2 * f6));
            }
            float f7 = this.f23900h;
            if (f7 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                marginLayoutParams.setMarginEnd((int) (i2 * f7));
            }
            Log.isLoggable(b.f23893b, 3);
        }

        public String toString() {
            return String.format(Locale.US, "PercentLayoutInformation width: %f height %f, margins (%f, %f,  %f, %f, %f, %f)", Float.valueOf(this.f23895a), Float.valueOf(this.f23896b), Float.valueOf(this.f23897c), Float.valueOf(this.d), Float.valueOf(this.f23898e), Float.valueOf(this.f23899f), Float.valueOf(this.g), Float.valueOf(this.f23900h));
        }

        public void a(ViewGroup.LayoutParams layoutParams, int i2, int i3) {
            ViewGroup.MarginLayoutParams marginLayoutParams = this.f23901i;
            marginLayoutParams.width = layoutParams.width;
            marginLayoutParams.height = layoutParams.height;
            float f2 = this.f23895a;
            if (f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                layoutParams.width = (int) (i2 * f2);
            }
            float f3 = this.f23896b;
            if (f3 >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                layoutParams.height = (int) (i3 * f3);
            }
            Log.isLoggable(b.f23893b, 3);
        }

        public void a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            a((ViewGroup.LayoutParams) marginLayoutParams);
            ViewGroup.MarginLayoutParams marginLayoutParams2 = this.f23901i;
            marginLayoutParams.leftMargin = marginLayoutParams2.leftMargin;
            marginLayoutParams.topMargin = marginLayoutParams2.topMargin;
            marginLayoutParams.rightMargin = marginLayoutParams2.rightMargin;
            marginLayoutParams.bottomMargin = marginLayoutParams2.bottomMargin;
            marginLayoutParams.setMarginStart(marginLayoutParams2.getMarginStart());
            marginLayoutParams.setMarginEnd(this.f23901i.getMarginEnd());
        }

        public void a(ViewGroup.LayoutParams layoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = this.f23901i;
            layoutParams.width = marginLayoutParams.width;
            layoutParams.height = marginLayoutParams.height;
        }
    }

    private static boolean a(View view, a aVar) {
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        return (view.getMeasuredHeightAndState() & com.batch.android.q0.b.v) == 16777216 && aVar.f23896b >= Call.Parameters.DEFAULT_CAMERA_ZOOM && aVar.f23901i.height == -2;
    }
}
