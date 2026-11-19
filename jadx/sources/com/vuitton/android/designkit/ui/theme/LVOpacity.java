package com.vuitton.android.designkit.ui.theme;

import defpackage.d21;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\n\b\u0087\b\u0018\u00002\u00020\u0001BM\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0002\u0012\b\b\u0002\u0010\b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/designkit/ui/theme/LVOpacity;", "", "", "opacity100", "opacity95", "opacity75", "opacity50", "opacity25", "opacity10", "opacity0", "<init>", "(FFFFFFF)V", "system"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LVOpacity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f48401a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f48402b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f48403c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f48404e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final float f48405f;
    public final float g;

    public /* synthetic */ LVOpacity(float f2, float f3, float f4, float f5, float f6, float f7, float f8, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 1.0f : f2, (i2 & 2) != 0 ? 0.95f : f3, (i2 & 4) != 0 ? 0.75f : f4, (i2 & 8) != 0 ? 0.5f : f5, (i2 & 16) != 0 ? 0.25f : f6, (i2 & 32) != 0 ? 0.1f : f7, (i2 & 64) != 0 ? Call.Parameters.DEFAULT_CAMERA_ZOOM : f8);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LVOpacity)) {
            return false;
        }
        LVOpacity lVOpacity = (LVOpacity) obj;
        return Float.compare(this.f48401a, lVOpacity.f48401a) == 0 && Float.compare(this.f48402b, lVOpacity.f48402b) == 0 && Float.compare(this.f48403c, lVOpacity.f48403c) == 0 && Float.compare(this.d, lVOpacity.d) == 0 && Float.compare(this.f48404e, lVOpacity.f48404e) == 0 && Float.compare(this.f48405f, lVOpacity.f48405f) == 0 && Float.compare(this.g, lVOpacity.g) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.g) + pq0.b(pq0.b(pq0.b(pq0.b(pq0.b(Float.hashCode(this.f48401a) * 31, 31, this.f48402b), 31, this.f48403c), 31, this.d), 31, this.f48404e), 31, this.f48405f);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LVOpacity(opacity100=");
        sb.append(this.f48401a);
        sb.append(", opacity95=");
        sb.append(this.f48402b);
        sb.append(", opacity75=");
        sb.append(this.f48403c);
        sb.append(", opacity50=");
        sb.append(this.d);
        sb.append(", opacity25=");
        sb.append(this.f48404e);
        sb.append(", opacity10=");
        sb.append(this.f48405f);
        sb.append(", opacity0=");
        return d21.e(this.g, ")", sb);
    }

    public LVOpacity(float f2, float f3, float f4, float f5, float f6, float f7, float f8) {
        this.f48401a = f2;
        this.f48402b = f3;
        this.f48403c = f4;
        this.d = f5;
        this.f48404e = f6;
        this.f48405f = f7;
        this.g = f8;
    }

    public LVOpacity() {
        this(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, CertificateBody.profileType, null);
    }
}
