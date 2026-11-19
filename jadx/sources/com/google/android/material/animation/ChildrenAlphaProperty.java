package com.google.android.material.animation;

import android.util.Property;
import android.view.ViewGroup;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes2.dex */
public class ChildrenAlphaProperty extends Property<ViewGroup, Float> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ChildrenAlphaProperty f32232a = new ChildrenAlphaProperty(Float.class, "childrenAlpha");

    @Override // android.util.Property
    public final Float get(ViewGroup viewGroup) {
        Float f2 = (Float) viewGroup.getTag(R.id.mtrl_internal_children_alpha_tag);
        return f2 != null ? f2 : Float.valueOf(1.0f);
    }

    @Override // android.util.Property
    public final void set(ViewGroup viewGroup, Float f2) {
        ViewGroup viewGroup2 = viewGroup;
        Float f3 = f2;
        float fFloatValue = f3.floatValue();
        viewGroup2.setTag(R.id.mtrl_internal_children_alpha_tag, f3);
        int childCount = viewGroup2.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            viewGroup2.getChildAt(i2).setAlpha(fFloatValue);
        }
    }
}
