package androidx.camera.video.internal.encoder;

import android.media.MediaFormat;
import android.util.Size;
import androidx.camera.core.impl.Timebase;

/* JADX INFO: loaded from: classes.dex */
public abstract class VideoEncoderConfig implements EncoderConfig {

    public static abstract class Builder {
        public abstract VideoEncoderConfig a();

        public abstract Builder b(int i2);

        public abstract Builder c(int i2);

        public abstract Builder d(VideoEncoderDataSpace videoEncoderDataSpace);

        public abstract Builder e(int i2);

        public abstract Builder f(Timebase timebase);

        public abstract Builder g(String str);

        public abstract Builder h(int i2);

        public abstract Builder i(Size size);
    }

    public static Builder d() {
        AutoValue_VideoEncoderConfig.Builder builder = new AutoValue_VideoEncoderConfig.Builder();
        builder.f3015b = -1;
        builder.f3020i = 1;
        builder.f3017e = 2130708361;
        builder.f3018f = VideoEncoderDataSpace.f3074a;
        return builder;
    }

    @Override // androidx.camera.video.internal.encoder.EncoderConfig
    public final MediaFormat a() {
        AutoValue_VideoEncoderConfig autoValue_VideoEncoderConfig = (AutoValue_VideoEncoderConfig) this;
        Size size = autoValue_VideoEncoderConfig.d;
        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat(autoValue_VideoEncoderConfig.f3006a, size.getWidth(), size.getHeight());
        mediaFormatCreateVideoFormat.setInteger("color-format", autoValue_VideoEncoderConfig.f3009e);
        mediaFormatCreateVideoFormat.setInteger("bitrate", autoValue_VideoEncoderConfig.f3013j);
        int i2 = autoValue_VideoEncoderConfig.f3011h;
        mediaFormatCreateVideoFormat.setInteger("frame-rate", i2);
        int i3 = autoValue_VideoEncoderConfig.g;
        if (i2 != i3) {
            mediaFormatCreateVideoFormat.setInteger("operating-rate", i3);
            mediaFormatCreateVideoFormat.setInteger("priority", 0);
        }
        mediaFormatCreateVideoFormat.setInteger("i-frame-interval", autoValue_VideoEncoderConfig.f3012i);
        int i4 = autoValue_VideoEncoderConfig.f3007b;
        if (i4 != -1) {
            mediaFormatCreateVideoFormat.setInteger("profile", i4);
        }
        VideoEncoderDataSpace videoEncoderDataSpace = autoValue_VideoEncoderConfig.f3010f;
        if (((AutoValue_VideoEncoderDataSpace) videoEncoderDataSpace).f3022f != 0) {
            mediaFormatCreateVideoFormat.setInteger("color-standard", ((AutoValue_VideoEncoderDataSpace) videoEncoderDataSpace).f3022f);
        }
        AutoValue_VideoEncoderDataSpace autoValue_VideoEncoderDataSpace = (AutoValue_VideoEncoderDataSpace) videoEncoderDataSpace;
        int i5 = autoValue_VideoEncoderDataSpace.g;
        if (i5 != 0) {
            mediaFormatCreateVideoFormat.setInteger("color-transfer", i5);
        }
        int i6 = autoValue_VideoEncoderDataSpace.f3023h;
        if (i6 != 0) {
            mediaFormatCreateVideoFormat.setInteger("color-range", i6);
        }
        return mediaFormatCreateVideoFormat;
    }

    public abstract int e();

    public abstract VideoEncoderDataSpace f();

    public abstract int g();

    public abstract Builder h();
}
