package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.R$styleable;
import androidx.core.widget.NestedScrollView;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
class TouchResponse {
    public static final float[][] E = {new float[]{0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM}, new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.5f}, new float[]{1.0f, 0.5f}, new float[]{0.5f, 1.0f}, new float[]{0.5f, 0.5f}, new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.5f}, new float[]{1.0f, 0.5f}};
    public static final float[][] F = {new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f}, new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f}, new float[]{-1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM}, new float[]{1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM}, new float[]{-1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM}, new float[]{1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM}};
    public final float A;
    public final float B;
    public final int C;
    public final int D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f11677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f11678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f11679c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f11680e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f11681f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f11682h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f11683i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f11684j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f11685k;
    public float l;
    public boolean m = false;
    public final float[] n = new float[2];
    public final int[] o = new int[2];
    public float p;
    public float q;
    public final MotionLayout r;
    public final float s;
    public final float t;
    public final boolean u;
    public final float v;
    public final int w;
    public final float x;
    public final float y;
    public final float z;

    /* JADX INFO: renamed from: androidx.constraintlayout.motion.widget.TouchResponse$1, reason: invalid class name */
    class AnonymousClass1 implements View.OnTouchListener {
        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            return false;
        }
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.motion.widget.TouchResponse$2, reason: invalid class name */
    class AnonymousClass2 implements NestedScrollView.OnScrollChangeListener {
    }

    public TouchResponse(Context context, MotionLayout motionLayout, XmlResourceParser xmlResourceParser) {
        this.f11677a = 0;
        this.f11678b = 0;
        this.f11679c = 0;
        this.d = -1;
        this.f11680e = -1;
        this.f11681f = -1;
        this.g = 0.5f;
        this.f11682h = 0.5f;
        this.f11683i = -1;
        this.f11684j = false;
        this.f11685k = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        this.l = 1.0f;
        this.s = 4.0f;
        this.t = 1.2f;
        this.u = true;
        this.v = 1.0f;
        this.w = 0;
        this.x = 10.0f;
        this.y = 10.0f;
        this.z = 1.0f;
        this.A = Float.NaN;
        this.B = Float.NaN;
        this.C = 0;
        this.D = 0;
        this.r = motionLayout;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), R$styleable.r);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        for (int i2 = 0; i2 < indexCount; i2++) {
            int index = typedArrayObtainStyledAttributes.getIndex(i2);
            if (index == 16) {
                this.d = typedArrayObtainStyledAttributes.getResourceId(index, this.d);
            } else if (index == 17) {
                int i3 = typedArrayObtainStyledAttributes.getInt(index, this.f11677a);
                this.f11677a = i3;
                float[] fArr = E[i3];
                this.f11682h = fArr[0];
                this.g = fArr[1];
            } else if (index == 1) {
                int i4 = typedArrayObtainStyledAttributes.getInt(index, this.f11678b);
                this.f11678b = i4;
                if (i4 < 6) {
                    float[] fArr2 = F[i4];
                    this.f11685k = fArr2[0];
                    this.l = fArr2[1];
                } else {
                    this.l = Float.NaN;
                    this.f11685k = Float.NaN;
                    this.f11684j = true;
                }
            } else if (index == 6) {
                this.s = typedArrayObtainStyledAttributes.getFloat(index, this.s);
            } else if (index == 5) {
                this.t = typedArrayObtainStyledAttributes.getFloat(index, this.t);
            } else if (index == 7) {
                this.u = typedArrayObtainStyledAttributes.getBoolean(index, this.u);
            } else if (index == 2) {
                this.v = typedArrayObtainStyledAttributes.getFloat(index, this.v);
            } else if (index == 3) {
                this.x = typedArrayObtainStyledAttributes.getFloat(index, this.x);
            } else if (index == 18) {
                this.f11680e = typedArrayObtainStyledAttributes.getResourceId(index, this.f11680e);
            } else if (index == 9) {
                this.f11679c = typedArrayObtainStyledAttributes.getInt(index, this.f11679c);
            } else if (index == 8) {
                this.w = typedArrayObtainStyledAttributes.getInteger(index, 0);
            } else if (index == 4) {
                this.f11681f = typedArrayObtainStyledAttributes.getResourceId(index, 0);
            } else if (index == 10) {
                this.f11683i = typedArrayObtainStyledAttributes.getResourceId(index, this.f11683i);
            } else if (index == 12) {
                this.y = typedArrayObtainStyledAttributes.getFloat(index, this.y);
            } else if (index == 13) {
                this.z = typedArrayObtainStyledAttributes.getFloat(index, this.z);
            } else if (index == 14) {
                this.A = typedArrayObtainStyledAttributes.getFloat(index, this.A);
            } else if (index == 15) {
                this.B = typedArrayObtainStyledAttributes.getFloat(index, this.B);
            } else if (index == 11) {
                this.C = typedArrayObtainStyledAttributes.getInt(index, this.C);
            } else if (index == 0) {
                this.D = typedArrayObtainStyledAttributes.getInt(index, this.D);
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final RectF a(ViewGroup viewGroup, RectF rectF) {
        View viewFindViewById;
        int i2 = this.f11681f;
        if (i2 == -1 || (viewFindViewById = viewGroup.findViewById(i2)) == null) {
            return null;
        }
        rectF.set(viewFindViewById.getLeft(), viewFindViewById.getTop(), viewFindViewById.getRight(), viewFindViewById.getBottom());
        return rectF;
    }

    public final RectF b(ViewGroup viewGroup, RectF rectF) {
        View viewFindViewById;
        int i2 = this.f11680e;
        if (i2 == -1 || (viewFindViewById = viewGroup.findViewById(i2)) == null) {
            return null;
        }
        rectF.set(viewFindViewById.getLeft(), viewFindViewById.getTop(), viewFindViewById.getRight(), viewFindViewById.getBottom());
        return rectF;
    }

    public final void c(boolean z) {
        float[][] fArr = E;
        float[][] fArr2 = F;
        if (z) {
            fArr2[4] = fArr2[3];
            fArr2[5] = fArr2[2];
            fArr[5] = fArr[2];
            fArr[6] = fArr[1];
        } else {
            fArr2[4] = fArr2[2];
            fArr2[5] = fArr2[3];
            fArr[5] = fArr[1];
            fArr[6] = fArr[2];
        }
        float[] fArr3 = fArr[this.f11677a];
        this.f11682h = fArr3[0];
        this.g = fArr3[1];
        int i2 = this.f11678b;
        if (i2 >= 6) {
            return;
        }
        float[] fArr4 = fArr2[i2];
        this.f11685k = fArr4[0];
        this.l = fArr4[1];
    }

    public final String toString() {
        if (Float.isNaN(this.f11685k)) {
            return "rotation";
        }
        return this.f11685k + " , " + this.l;
    }
}
