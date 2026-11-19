package defpackage;

import kotlin.Metadata;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0007B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"LSCCollimator;", "", "", "safeArea", "ratio", "<init>", "(FF)V", "Rect", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SCCollimator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final float f51a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float f52b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"LSCCollimator$Rect;", "", "", "top", "start", "width", "height", "<init>", "(FFFF)V", "pratik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Rect {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f53a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f54b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f55c;
        public final float d;

        public Rect(float f2, float f3, float f4, float f5) {
            this.f53a = f2;
            this.f54b = f3;
            this.f55c = f4;
            this.d = f5;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Rect)) {
                return false;
            }
            Rect rect = (Rect) obj;
            return Float.compare(this.f53a, rect.f53a) == 0 && Float.compare(this.f54b, rect.f54b) == 0 && Float.compare(this.f55c, rect.f55c) == 0 && Float.compare(this.d, rect.d) == 0;
        }

        public final int hashCode() {
            return Float.hashCode(this.d) + pq0.b(pq0.b(Float.hashCode(this.f53a) * 31, 31, this.f54b), 31, this.f55c);
        }

        public final String toString() {
            return "Rect(top=" + this.f53a + ", start=" + this.f54b + ", width=" + this.f55c + ", height=" + this.d + ")";
        }
    }

    public SCCollimator(float f2, float f3) {
        this.f51a = f2;
        this.f52b = f3;
    }

    public final Rect a(int i2, int i3) {
        float f2;
        float f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        Rect rect = new Rect(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, i2, i3);
        float f4 = rect.f55c;
        float f5 = this.f51a;
        float f6 = (f4 * f5) / 2.0f;
        float f7 = rect.d;
        float f8 = (f5 * f7) / 2.0f;
        Rect rect2 = new Rect(rect.f53a + f8, rect.f54b + f6, f4 - (f6 * 2.0f), f7 - (f8 * 2.0f));
        float f9 = rect2.f55c;
        float f10 = this.f52b;
        float f11 = f9 / f10;
        float f12 = rect2.d;
        if (f11 > f12) {
            f3 = (f9 - (f10 * f12)) / 2.0f;
            f2 = 0.0f;
        } else {
            f2 = (f12 - f11) / 2.0f;
        }
        return new Rect(rect2.f53a + f2, rect2.f54b + f3, f9 - (f3 * 2.0f), f12 - (2.0f * f2));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SCCollimator)) {
            return false;
        }
        SCCollimator sCCollimator = (SCCollimator) obj;
        return Float.compare(this.f51a, sCCollimator.f51a) == 0 && Float.compare(this.f52b, sCCollimator.f52b) == 0;
    }

    public final int hashCode() {
        return Float.hashCode(this.f52b) + (Float.hashCode(this.f51a) * 31);
    }

    public final String toString() {
        return "SCCollimator(safeArea=" + this.f51a + ", ratio=" + this.f52b + ")";
    }
}
