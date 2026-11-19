package androidx.core.content.res;

import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
final class GradientColorInflaterCompat$ColorStops {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int[] f12032a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f12033b;

    public GradientColorInflaterCompat$ColorStops(ArrayList arrayList, ArrayList arrayList2) {
        int size = arrayList.size();
        this.f12032a = new int[size];
        this.f12033b = new float[size];
        for (int i2 = 0; i2 < size; i2++) {
            this.f12032a[i2] = ((Integer) arrayList.get(i2)).intValue();
            this.f12033b[i2] = ((Float) arrayList2.get(i2)).floatValue();
        }
    }

    public GradientColorInflaterCompat$ColorStops(int i2, int i3) {
        this.f12032a = new int[]{i2, i3};
        this.f12033b = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f};
    }

    public GradientColorInflaterCompat$ColorStops(int i2, int i3, int i4) {
        this.f12032a = new int[]{i2, i3, i4};
        this.f12033b = new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.5f, 1.0f};
    }
}
