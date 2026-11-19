package com.vuitton.android.presentation.ar.arcore;

import defpackage.pq0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/ar/arcore/ViewRect;", "", "", "left", "top", "width", "height", "<init>", "(FFFF)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ViewRect {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f50577a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f50578b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f50579c;
    public final float d;

    public ViewRect(float f2, float f3, float f4, float f5) {
        this.f50577a = f2;
        this.f50578b = f3;
        this.f50579c = f4;
        this.d = f5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ViewRect)) {
            return false;
        }
        ViewRect viewRect = (ViewRect) obj;
        return Float.compare(this.f50577a, viewRect.f50577a) == 0 && Float.compare(this.f50578b, viewRect.f50578b) == 0 && Float.compare(this.f50579c, viewRect.f50579c) == 0 && Float.compare(this.d, viewRect.d) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.d) + pq0.b(pq0.b(Float.hashCode(this.f50577a) * 31, 31, this.f50578b), 31, this.f50579c);
    }

    public final String toString() {
        return "ViewRect(left=" + this.f50577a + ", top=" + this.f50578b + ", width=" + this.f50579c + ", height=" + this.d + ")";
    }
}
