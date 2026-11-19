package androidx.camera.view.impl;

import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\u000b\fB-\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0003\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0003\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Landroidx/camera/view/impl/ZoomGestureDetector;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "", "spanSlop", "minSpan", "Landroidx/camera/view/impl/ZoomGestureDetector$OnZoomGestureListener;", "listener", "<init>", "(Landroid/content/Context;IILandroidx/camera/view/impl/ZoomGestureDetector$OnZoomGestureListener;)V", "OnZoomGestureListener", "Companion", "camera-view_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ZoomGestureDetector {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OnZoomGestureListener f3197a;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0004¨\u0006\u000b"}, d2 = {"Landroidx/camera/view/impl/ZoomGestureDetector$Companion;", "", "", "DEFAULT_MIN_SPAN", "I", "", "SCALE_FACTOR", "F", "ANCHORED_ZOOM_MODE_NONE", "ANCHORED_ZOOM_MODE_DOUBLE_TAP", "ANCHORED_ZOOM_MODE_STYLUS", "camera-view_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/camera/view/impl/ZoomGestureDetector$OnZoomGestureListener;", "", "camera-view_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface OnZoomGestureListener {
    }

    static {
        new Companion(null);
    }

    public /* synthetic */ ZoomGestureDetector(Context context, int i2, int i3, OnZoomGestureListener onZoomGestureListener, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i4 & 2) != 0 ? ViewConfiguration.get(context).getScaledTouchSlop() * 2 : i2, (i4 & 4) != 0 ? 0 : i3, onZoomGestureListener);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ZoomGestureDetector(Context context, OnZoomGestureListener onZoomGestureListener) {
        this(context, 0, 0, onZoomGestureListener, 6, null);
        context.getClass();
        onZoomGestureListener.getClass();
    }

    public ZoomGestureDetector(Context context, int i2, int i3, OnZoomGestureListener onZoomGestureListener) {
        context.getClass();
        onZoomGestureListener.getClass();
        this.f3197a = onZoomGestureListener;
        new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: androidx.camera.view.impl.ZoomGestureDetector$gestureDetector$1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public final boolean onDoubleTap(MotionEvent motionEvent) {
                motionEvent.getClass();
                motionEvent.getX();
                motionEvent.getY();
                return true;
            }
        });
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ZoomGestureDetector(Context context, int i2, OnZoomGestureListener onZoomGestureListener) {
        this(context, i2, 0, onZoomGestureListener, 4, null);
        context.getClass();
        onZoomGestureListener.getClass();
    }
}
