package com.google.android.material.floatingactionbutton;

import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.Property;
import android.view.View;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.MotionSpec;
import java.util.ArrayList;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
abstract class BaseMotionStrategy implements MotionStrategy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f32618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ExtendedFloatingActionButton f32619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f32620c = new ArrayList();
    public final AnimatorTracker d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public MotionSpec f32621e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public MotionSpec f32622f;

    public BaseMotionStrategy(ExtendedFloatingActionButton extendedFloatingActionButton, AnimatorTracker animatorTracker) {
        this.f32619b = extendedFloatingActionButton;
        this.f32618a = extendedFloatingActionButton.getContext();
        this.d = animatorTracker;
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public void b() {
        this.d.f32617a = null;
    }

    @Override // com.google.android.material.floatingactionbutton.MotionStrategy
    public AnimatorSet f() {
        MotionSpec motionSpec = this.f32622f;
        if (motionSpec == null) {
            if (this.f32621e == null) {
                this.f32621e = MotionSpec.b(e(), this.f32618a);
            }
            motionSpec = this.f32621e;
            motionSpec.getClass();
        }
        return g(motionSpec);
    }

    public final AnimatorSet g(MotionSpec motionSpec) {
        ArrayList arrayList = new ArrayList();
        boolean zG = motionSpec.g("opacity");
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f32619b;
        if (zG) {
            arrayList.add(motionSpec.d("opacity", extendedFloatingActionButton, View.ALPHA));
        }
        if (motionSpec.g("scale")) {
            arrayList.add(motionSpec.d("scale", extendedFloatingActionButton, View.SCALE_Y));
            arrayList.add(motionSpec.d("scale", extendedFloatingActionButton, View.SCALE_X));
        }
        if (motionSpec.g("width")) {
            arrayList.add(motionSpec.d("width", extendedFloatingActionButton, ExtendedFloatingActionButton.h0));
        }
        if (motionSpec.g("height")) {
            arrayList.add(motionSpec.d("height", extendedFloatingActionButton, ExtendedFloatingActionButton.t0));
        }
        if (motionSpec.g("paddingStart")) {
            arrayList.add(motionSpec.d("paddingStart", extendedFloatingActionButton, ExtendedFloatingActionButton.b1));
        }
        if (motionSpec.g("paddingEnd")) {
            arrayList.add(motionSpec.d("paddingEnd", extendedFloatingActionButton, ExtendedFloatingActionButton.c1));
        }
        if (motionSpec.g("labelOpacity")) {
            arrayList.add(motionSpec.d("labelOpacity", extendedFloatingActionButton, new Property<ExtendedFloatingActionButton, Float>() { // from class: com.google.android.material.floatingactionbutton.BaseMotionStrategy.1
                @Override // android.util.Property
                public final Float get(ExtendedFloatingActionButton extendedFloatingActionButton2) {
                    ExtendedFloatingActionButton extendedFloatingActionButton3 = extendedFloatingActionButton2;
                    return Float.valueOf(AnimationUtils.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, (Color.alpha(extendedFloatingActionButton3.getCurrentTextColor()) / 255.0f) / Color.alpha(extendedFloatingActionButton3.T.getColorForState(extendedFloatingActionButton3.getDrawableState(), BaseMotionStrategy.this.f32619b.T.getDefaultColor()))));
                }

                @Override // android.util.Property
                public final void set(ExtendedFloatingActionButton extendedFloatingActionButton2, Float f2) {
                    ExtendedFloatingActionButton extendedFloatingActionButton3 = extendedFloatingActionButton2;
                    Float f3 = f2;
                    int colorForState = extendedFloatingActionButton3.T.getColorForState(extendedFloatingActionButton3.getDrawableState(), BaseMotionStrategy.this.f32619b.T.getDefaultColor());
                    ColorStateList colorStateListValueOf = ColorStateList.valueOf(Color.argb((int) (AnimationUtils.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Color.alpha(colorForState) / 255.0f, f3.floatValue()) * 255.0f), Color.red(colorForState), Color.green(colorForState), Color.blue(colorForState)));
                    if (f3.floatValue() == 1.0f) {
                        extendedFloatingActionButton3.l(extendedFloatingActionButton3.T);
                    } else {
                        extendedFloatingActionButton3.l(colorStateListValueOf);
                    }
                }
            }));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSetCompat.a(animatorSet, arrayList);
        return animatorSet;
    }
}
