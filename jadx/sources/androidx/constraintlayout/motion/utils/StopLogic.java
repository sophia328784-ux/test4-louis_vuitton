package androidx.constraintlayout.motion.utils;

import androidx.constraintlayout.core.motion.utils.SpringStopEngine;
import androidx.constraintlayout.core.motion.utils.StopEngine;
import androidx.constraintlayout.core.motion.utils.StopLogicEngine;
import androidx.constraintlayout.motion.widget.MotionInterpolator;

/* JADX INFO: loaded from: classes.dex */
public class StopLogic extends MotionInterpolator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StopLogicEngine f11557a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public SpringStopEngine f11558b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public StopEngine f11559c;

    public StopLogic() {
        StopLogicEngine stopLogicEngine = new StopLogicEngine();
        this.f11557a = stopLogicEngine;
        this.f11559c = stopLogicEngine;
    }

    @Override // androidx.constraintlayout.motion.widget.MotionInterpolator
    public final float a() {
        return this.f11559c.a();
    }

    public final void b(float f2, float f3, float f4, float f5, float f6, float f7) {
        StopLogicEngine stopLogicEngine = this.f11557a;
        this.f11559c = stopLogicEngine;
        stopLogicEngine.l = f2;
        boolean z = f2 > f3;
        stopLogicEngine.f11392k = z;
        if (z) {
            stopLogicEngine.d(-f4, f2 - f3, f6, f7, f5);
        } else {
            stopLogicEngine.d(f4, f3 - f2, f6, f7, f5);
        }
    }

    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f2) {
        return this.f11559c.getInterpolation(f2);
    }
}
