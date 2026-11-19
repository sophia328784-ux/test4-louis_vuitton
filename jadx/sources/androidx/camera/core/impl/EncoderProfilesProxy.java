package androidx.camera.core.impl;

import android.util.Size;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface EncoderProfilesProxy {

    public static abstract class AudioProfileProxy {

        @Retention(RetentionPolicy.SOURCE)
        public @interface AudioEncoder {
        }

        public static AudioProfileProxy a(int i2, String str, int i3, int i4, int i5, int i6) {
            return new AutoValue_EncoderProfilesProxy_AudioProfileProxy(i2, str, i3, i4, i5, i6);
        }

        public abstract int b();

        public abstract int c();

        public abstract int d();

        public abstract String e();

        public abstract int f();

        public abstract int g();
    }

    public static abstract class ImmutableEncoderProfilesProxy implements EncoderProfilesProxy {
        public static ImmutableEncoderProfilesProxy e(List list, List list2, int i2, int i3) {
            return new AutoValue_EncoderProfilesProxy_ImmutableEncoderProfilesProxy(Collections.unmodifiableList(new ArrayList(list)), Collections.unmodifiableList(new ArrayList(list2)), i2, i3);
        }
    }

    public static abstract class VideoProfileProxy {

        @Retention(RetentionPolicy.SOURCE)
        public @interface VideoEncoder {
        }

        public static VideoProfileProxy a(int i2, String str, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
            return new AutoValue_EncoderProfilesProxy_VideoProfileProxy(i2, str, i3, i4, i5, i6, i7, i8, i9, i10);
        }

        public abstract int b();

        public abstract int c();

        public abstract int d();

        public abstract int e();

        public abstract int f();

        public abstract int g();

        public abstract int h();

        public abstract String i();

        public abstract int j();

        public final Size k() {
            return new Size(l(), h());
        }

        public abstract int l();
    }

    int a();

    List b();

    int c();

    List d();
}
