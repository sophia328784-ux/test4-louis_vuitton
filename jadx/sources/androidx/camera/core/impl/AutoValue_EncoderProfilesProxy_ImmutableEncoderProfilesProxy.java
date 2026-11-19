package androidx.camera.core.impl;

import defpackage.r81;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy extends EncoderProfilesProxy.ImmutableEncoderProfilesProxy {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f2178a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2179b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f2180c;
    public final List d;

    public AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy(List list, List list2, int i2, int i3) {
        this.f2178a = i2;
        this.f2179b = i3;
        if (list == null) {
            r81.d("Null audioProfiles");
            throw null;
        }
        this.f2180c = list;
        if (list2 != null) {
            this.d = list2;
        } else {
            r81.d("Null videoProfiles");
            throw null;
        }
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy
    public final int a() {
        return this.f2178a;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy
    public final List b() {
        return this.d;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy
    public final int c() {
        return this.f2179b;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProxy
    public final List d() {
        return this.f2180c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof EncoderProfilesProxy.ImmutableEncoderProfilesProxy) {
            AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy autoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy = (AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy) ((EncoderProfilesProxy.ImmutableEncoderProfilesProxy) obj);
            if (this.f2178a == autoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy.f2178a && this.f2179b == autoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy.f2179b && this.f2180c.equals(autoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy.f2180c) && this.d.equals(autoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.d.hashCode() ^ ((((((this.f2178a ^ 1000003) * 1000003) ^ this.f2179b) * 1000003) ^ this.f2180c.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ImmutableEncoderProfilesProxy{defaultDurationSeconds=");
        sb.append(this.f2178a);
        sb.append(", recommendedFileFormat=");
        sb.append(this.f2179b);
        sb.append(", audioProfiles=");
        sb.append(this.f2180c);
        sb.append(", videoProfiles=");
        return defpackage.a.o(sb, this.d, "}");
    }
}
