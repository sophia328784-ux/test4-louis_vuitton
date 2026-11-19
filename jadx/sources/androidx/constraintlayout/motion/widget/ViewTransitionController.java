package androidx.constraintlayout.motion.widget;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.SharedValues;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class ViewTransitionController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MotionLayout f11705a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public HashSet f11707c;
    public ArrayList d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f11706b = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f11708e = new ArrayList();

    /* JADX INFO: renamed from: androidx.constraintlayout.motion.widget.ViewTransitionController$1, reason: invalid class name */
    class AnonymousClass1 implements SharedValues.SharedValuesListener {
    }

    public ViewTransitionController(MotionLayout motionLayout) {
        this.f11705a = motionLayout;
    }

    public static void a(ViewTransition viewTransition) {
        SharedValues sharedValues = ConstraintLayout.getSharedValues();
        int i2 = viewTransition.u;
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        HashMap map = sharedValues.f11827a;
        HashSet hashSet = (HashSet) map.get(Integer.valueOf(i2));
        if (hashSet == null) {
            hashSet = new HashSet();
            map.put(Integer.valueOf(i2), hashSet);
        }
        hashSet.add(new WeakReference(anonymousClass1));
    }
}
