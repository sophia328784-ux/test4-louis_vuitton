package com.google.android.material.shape;

/* JADX INFO: loaded from: classes2.dex */
public final class OffsetEdgeTreatment extends EdgeTreatment {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EdgeTreatment f32955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f32956c;

    public OffsetEdgeTreatment(EdgeTreatment edgeTreatment, float f2) {
        this.f32955b = edgeTreatment;
        this.f32956c = f2;
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public final boolean a() {
        return this.f32955b.a();
    }

    @Override // com.google.android.material.shape.EdgeTreatment
    public final void b(float f2, float f3, float f4, ShapePath shapePath) {
        this.f32955b.b(f2, f3 - this.f32956c, f4, shapePath);
    }
}
