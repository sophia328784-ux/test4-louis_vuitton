package com.google.android.material.resources;

import android.graphics.Typeface;

/* JADX INFO: loaded from: classes2.dex */
public final class CancelableFontCallback extends TextAppearanceFontCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Typeface f32865a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ApplyFont f32866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f32867c;

    public interface ApplyFont {
        void a(Typeface typeface);
    }

    public CancelableFontCallback(ApplyFont applyFont, Typeface typeface) {
        this.f32865a = typeface;
        this.f32866b = applyFont;
    }

    @Override // com.google.android.material.resources.TextAppearanceFontCallback
    public final void a(int i2) {
        if (this.f32867c) {
            return;
        }
        this.f32866b.a(this.f32865a);
    }

    @Override // com.google.android.material.resources.TextAppearanceFontCallback
    public final void b(Typeface typeface, boolean z) {
        if (this.f32867c) {
            return;
        }
        this.f32866b.a(typeface);
    }
}
