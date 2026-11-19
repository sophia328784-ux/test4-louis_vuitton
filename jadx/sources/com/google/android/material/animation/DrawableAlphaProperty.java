package com.google.android.material.animation;

import android.graphics.drawable.Drawable;
import android.util.Property;

/* JADX INFO: loaded from: classes2.dex */
public class DrawableAlphaProperty extends Property<Drawable, Integer> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DrawableAlphaProperty f32233a = new DrawableAlphaProperty(Integer.class, "drawableAlphaCompat");

    @Override // android.util.Property
    public final Integer get(Drawable drawable) {
        return Integer.valueOf(drawable.getAlpha());
    }

    @Override // android.util.Property
    public final void set(Drawable drawable, Integer num) {
        drawable.setAlpha(num.intValue());
    }
}
