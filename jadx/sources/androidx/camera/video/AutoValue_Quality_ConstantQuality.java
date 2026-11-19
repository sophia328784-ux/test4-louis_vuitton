package androidx.camera.video;

import defpackage.r81;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_Quality_ConstantQuality extends Quality.ConstantQuality {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f2738j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f2739k;
    public final String l;
    public final List m;

    public AutoValue_Quality_ConstantQuality(int i2, int i3, String str, List list) {
        this.f2738j = i2;
        this.f2739k = i3;
        this.l = str;
        if (list != null) {
            this.m = list;
        } else {
            r81.d("Null typicalSizes");
            throw null;
        }
    }

    @Override // androidx.camera.video.Quality.ConstantQuality
    public final int a() {
        return this.f2739k;
    }

    @Override // androidx.camera.video.Quality.ConstantQuality
    public final String b() {
        return this.l;
    }

    @Override // androidx.camera.video.Quality.ConstantQuality
    public final List c() {
        return this.m;
    }

    @Override // androidx.camera.video.Quality.ConstantQuality
    public final int d() {
        return this.f2738j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Quality.ConstantQuality)) {
            return false;
        }
        Quality.ConstantQuality constantQuality = (Quality.ConstantQuality) obj;
        return this.f2738j == constantQuality.d() && this.f2739k == constantQuality.a() && this.l.equals(constantQuality.b()) && this.m.equals(constantQuality.c());
    }

    public final int hashCode() {
        return this.m.hashCode() ^ ((((((this.f2738j ^ 1000003) * 1000003) ^ this.f2739k) * 1000003) ^ this.l.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ConstantQuality{value=");
        sb.append(this.f2738j);
        sb.append(", highSpeedValue=");
        sb.append(this.f2739k);
        sb.append(", name=");
        sb.append(this.l);
        sb.append(", typicalSizes=");
        return defpackage.a.o(sb, this.m, "}");
    }
}
