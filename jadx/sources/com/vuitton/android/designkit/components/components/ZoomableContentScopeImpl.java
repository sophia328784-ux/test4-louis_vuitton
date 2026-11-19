package com.vuitton.android.designkit.components.components;

import defpackage.d21;
import defpackage.pq0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0082\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/designkit/components/components/ZoomableContentScopeImpl;", "Lcom/vuitton/android/designkit/components/components/ZoomableContentScope;", "", "scale", "offsetX", "offsetY", "<init>", "(FFF)V", "components"}, k = 1, mv = {2, 3, 0}, xi = 48)
final /* data */ class ZoomableContentScopeImpl implements ZoomableContentScope {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f48292a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f48293b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f48294c;

    public ZoomableContentScopeImpl(float f2, float f3, float f4) {
        this.f48292a = f2;
        this.f48293b = f3;
        this.f48294c = f4;
    }

    @Override // com.vuitton.android.designkit.components.components.ZoomableContentScope
    /* JADX INFO: renamed from: a, reason: from getter */
    public final float getF48293b() {
        return this.f48293b;
    }

    @Override // com.vuitton.android.designkit.components.components.ZoomableContentScope
    /* JADX INFO: renamed from: b, reason: from getter */
    public final float getF48294c() {
        return this.f48294c;
    }

    @Override // com.vuitton.android.designkit.components.components.ZoomableContentScope
    /* JADX INFO: renamed from: c, reason: from getter */
    public final float getF48292a() {
        return this.f48292a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ZoomableContentScopeImpl)) {
            return false;
        }
        ZoomableContentScopeImpl zoomableContentScopeImpl = (ZoomableContentScopeImpl) obj;
        return Float.compare(this.f48292a, zoomableContentScopeImpl.f48292a) == 0 && Float.compare(this.f48293b, zoomableContentScopeImpl.f48293b) == 0 && Float.compare(this.f48294c, zoomableContentScopeImpl.f48294c) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f48294c) + pq0.b(Float.hashCode(this.f48292a) * 31, 31, this.f48293b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ZoomableContentScopeImpl(scale=");
        sb.append(this.f48292a);
        sb.append(", offsetX=");
        sb.append(this.f48293b);
        sb.append(", offsetY=");
        return d21.e(this.f48294c, ")", sb);
    }
}
