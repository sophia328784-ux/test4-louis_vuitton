package androidx.camera.core.processing.util;

/* JADX INFO: loaded from: classes.dex */
public abstract class GraphicDeviceInfo {

    public static abstract class Builder {
        public abstract GraphicDeviceInfo a();

        public abstract Builder b(String str);

        public abstract Builder c(String str);

        public abstract Builder d(String str);

        public abstract Builder e(String str);
    }

    public static Builder a() {
        AutoValue_GraphicDeviceInfo.Builder builder = new AutoValue_GraphicDeviceInfo.Builder();
        builder.f2606a = "0.0";
        builder.f2607b = "0.0";
        builder.f2608c = "";
        builder.d = "";
        return builder;
    }
}
