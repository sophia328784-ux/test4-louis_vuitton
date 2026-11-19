package com.vuitton.android.presentation.ar.gesture;

import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.vuitton.android.presentation.ar.MatrixKt;
import com.vuitton.android.presentation.ar.V3;
import java.util.HashSet;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility;", "", "Landroid/util/DisplayMetrics;", "displayMetrics", "<init>", "(Landroid/util/DisplayMetrics;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GesturePointersUtility {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f50599c = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DisplayMetrics f50600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet f50601b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/ar/gesture/GesturePointersUtility$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static V3 a(MotionEvent motionEvent, int i2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(i2);
            return MatrixKt.k(motionEvent.getX(iFindPointerIndex), motionEvent.getY(iFindPointerIndex), Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
    }

    public GesturePointersUtility(DisplayMetrics displayMetrics) {
        displayMetrics.getClass();
        this.f50600a = displayMetrics;
        this.f50601b = new HashSet();
    }

    public final boolean a(int i2) {
        return this.f50601b.contains(Integer.valueOf(i2));
    }

    public final void b(int i2) {
        if (a(i2)) {
            return;
        }
        this.f50601b.add(Integer.valueOf(i2));
    }
}
