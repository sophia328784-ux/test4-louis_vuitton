package com.google.android.gms.maps.model;

import com.google.android.gms.common.internal.Preconditions;
import defpackage.d21;
import defpackage.md;
import defpackage.pq0;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public final class CustomCap extends Cap {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final BitmapDescriptor f31437e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f31438f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomCap(BitmapDescriptor bitmapDescriptor, float f2) {
        super(3, bitmapDescriptor, Float.valueOf(f2));
        Preconditions.i(bitmapDescriptor, "bitmapDescriptor must not be null");
        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            md.n("refWidth must be positive");
            throw null;
        }
        this.f31437e = bitmapDescriptor;
        this.f31438f = f2;
    }

    @Override // com.google.android.gms.maps.model.Cap
    public final String toString() {
        return d21.e(this.f31438f, "]", pq0.r("[CustomCap: bitmapDescriptor=", String.valueOf(this.f31437e), " refWidth="));
    }

    public CustomCap(BitmapDescriptor bitmapDescriptor) {
        this(bitmapDescriptor, 10.0f);
    }
}
