package androidx.camera.core.processing.util;

import defpackage.md;
import defpackage.n00;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_GraphicDeviceInfo extends GraphicDeviceInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f2603a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f2604b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f2605c;
    public final String d;

    public static final class Builder extends GraphicDeviceInfo.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f2606a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f2607b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f2608c;
        public String d;

        @Override // androidx.camera.core.processing.util.GraphicDeviceInfo.Builder
        public final GraphicDeviceInfo a() {
            String strConcat = this.f2606a == null ? " glVersion" : "";
            if (this.f2607b == null) {
                strConcat = strConcat.concat(" eglVersion");
            }
            if (this.f2608c == null) {
                strConcat = strConcat.concat(" glExtensions");
            }
            if (this.d == null) {
                strConcat = strConcat.concat(" eglExtensions");
            }
            if (strConcat.isEmpty()) {
                return new AutoValue_GraphicDeviceInfo(this.f2606a, this.f2607b, this.f2608c, this.d);
            }
            md.k("Missing required properties:".concat(strConcat));
            return null;
        }

        @Override // androidx.camera.core.processing.util.GraphicDeviceInfo.Builder
        public final GraphicDeviceInfo.Builder b(String str) {
            if (str != null) {
                this.d = str;
                return this;
            }
            r81.d("Null eglExtensions");
            return null;
        }

        @Override // androidx.camera.core.processing.util.GraphicDeviceInfo.Builder
        public final GraphicDeviceInfo.Builder c(String str) {
            this.f2607b = str;
            return this;
        }

        @Override // androidx.camera.core.processing.util.GraphicDeviceInfo.Builder
        public final GraphicDeviceInfo.Builder d(String str) {
            if (str != null) {
                this.f2608c = str;
                return this;
            }
            r81.d("Null glExtensions");
            return null;
        }

        @Override // androidx.camera.core.processing.util.GraphicDeviceInfo.Builder
        public final GraphicDeviceInfo.Builder e(String str) {
            this.f2606a = str;
            return this;
        }
    }

    public AutoValue_GraphicDeviceInfo(String str, String str2, String str3, String str4) {
        this.f2603a = str;
        this.f2604b = str2;
        this.f2605c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof GraphicDeviceInfo) {
            AutoValue_GraphicDeviceInfo autoValue_GraphicDeviceInfo = (AutoValue_GraphicDeviceInfo) ((GraphicDeviceInfo) obj);
            if (this.f2603a.equals(autoValue_GraphicDeviceInfo.f2603a) && this.f2604b.equals(autoValue_GraphicDeviceInfo.f2604b) && this.f2605c.equals(autoValue_GraphicDeviceInfo.f2605c) && this.d.equals(autoValue_GraphicDeviceInfo.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.d.hashCode() ^ ((((((this.f2603a.hashCode() ^ 1000003) * 1000003) ^ this.f2604b.hashCode()) * 1000003) ^ this.f2605c.hashCode()) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GraphicDeviceInfo{glVersion=");
        sb.append(this.f2603a);
        sb.append(", eglVersion=");
        sb.append(this.f2604b);
        sb.append(", glExtensions=");
        sb.append(this.f2605c);
        sb.append(", eglExtensions=");
        return n00.r(this.d, "}", sb);
    }
}
