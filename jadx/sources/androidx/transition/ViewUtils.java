package androidx.transition;

import android.graphics.Rect;
import android.util.Property;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
abstract class ViewUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Property f20039a = new AnonymousClass1(Float.class, "translationAlpha");

    /* JADX INFO: renamed from: androidx.transition.ViewUtils$1, reason: invalid class name */
    public class AnonymousClass1 extends Property<View, Float> {
        @Override // android.util.Property
        public final Float get(View view) {
            Property property = ViewUtils.f20039a;
            return Float.valueOf(view.getTransitionAlpha());
        }

        @Override // android.util.Property
        public final void set(View view, Float f2) {
            float fFloatValue = f2.floatValue();
            Property property = ViewUtils.f20039a;
            view.setTransitionAlpha(fFloatValue);
        }
    }

    /* JADX INFO: renamed from: androidx.transition.ViewUtils$2, reason: invalid class name */
    public class AnonymousClass2 extends Property<View, Rect> {
        @Override // android.util.Property
        public final Rect get(View view) {
            return view.getClipBounds();
        }

        @Override // android.util.Property
        public final void set(View view, Rect rect) {
            view.setClipBounds(rect);
        }
    }

    static {
        new AnonymousClass2(Rect.class, "clipBounds");
    }
}
