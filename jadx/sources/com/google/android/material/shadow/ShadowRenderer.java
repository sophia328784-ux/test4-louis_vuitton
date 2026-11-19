package com.google.android.material.shadow;

import android.graphics.Paint;
import android.graphics.Path;
import androidx.core.graphics.ColorUtils;
import com.batch.android.q0.b;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class ShadowRenderer {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int[] f32920i = new int[3];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final float[] f32921j = {Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.5f, 1.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int[] f32922k = new int[4];
    public static final float[] l = {Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.5f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Paint f32923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Paint f32924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Paint f32925c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f32926e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f32927f;
    public final Path g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f32928h;

    public ShadowRenderer(int i2) {
        this.g = new Path();
        Paint paint = new Paint();
        this.f32928h = paint;
        this.f32923a = new Paint();
        a(i2);
        paint.setColor(0);
        Paint paint2 = new Paint(4);
        this.f32924b = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.f32925c = new Paint(paint2);
    }

    public final void a(int i2) {
        this.d = ColorUtils.e(i2, 68);
        this.f32926e = ColorUtils.e(i2, 20);
        this.f32927f = ColorUtils.e(i2, 0);
        this.f32923a.setColor(this.d);
    }

    public ShadowRenderer() {
        this(b.v);
    }
}
