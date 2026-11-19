package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.model.CubicCurveData;
import defpackage.d21;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ShapeData {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f22156a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public PointF f22157b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f22158c;

    public ShapeData(PointF pointF, boolean z, List<CubicCurveData> list) {
        this.f22157b = pointF;
        this.f22158c = z;
        this.f22156a = new ArrayList(list);
    }

    public final void a(float f2, float f3) {
        if (this.f22157b == null) {
            this.f22157b = new PointF();
        }
        this.f22157b.set(f2, f3);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ShapeData{numCurves=");
        sb.append(this.f22156a.size());
        sb.append("closed=");
        return d21.q(sb, this.f22158c, '}');
    }

    public ShapeData() {
        this.f22156a = new ArrayList();
    }
}
