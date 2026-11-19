package androidx.core.view;

import android.view.VelocityTracker;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes.dex */
public abstract class VelocityTrackerCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Map f12195a = Collections.synchronizedMap(new WeakHashMap());

    public static class Api34Impl {
        public static float a(VelocityTracker velocityTracker, int i2) {
            return velocityTracker.getAxisVelocity(i2);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface VelocityTrackableMotionEventAxis {
    }
}
