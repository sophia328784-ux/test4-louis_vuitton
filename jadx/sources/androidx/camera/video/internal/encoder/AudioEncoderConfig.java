package androidx.camera.video.internal.encoder;

import android.media.MediaFormat;
import androidx.camera.core.impl.Timebase;
import defpackage.md;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class AudioEncoderConfig implements EncoderConfig {

    public static abstract class Builder {
        public final AudioEncoderConfig a() {
            AutoValue_AudioEncoderConfig.Builder builder = (AutoValue_AudioEncoderConfig.Builder) this;
            String strConcat = builder.f3001a == null ? " mimeType" : "";
            if (builder.f3002b == null) {
                strConcat = strConcat.concat(" profile");
            }
            if (builder.f3003c == null) {
                strConcat = strConcat.concat(" inputTimebase");
            }
            if (builder.d == null) {
                strConcat = strConcat.concat(" bitrate");
            }
            if (builder.f3004e == null) {
                strConcat = strConcat.concat(" captureSampleRate");
            }
            if (builder.f3005f == null) {
                strConcat = strConcat.concat(" encodeSampleRate");
            }
            if (builder.g == null) {
                strConcat = strConcat.concat(" channelCount");
            }
            if (!strConcat.isEmpty()) {
                md.k("Missing required properties:".concat(strConcat));
                return null;
            }
            String str = builder.f3001a;
            int iIntValue = builder.f3002b.intValue();
            AutoValue_AudioEncoderConfig autoValue_AudioEncoderConfig = new AutoValue_AudioEncoderConfig(str, iIntValue, builder.f3003c, builder.d.intValue(), builder.f3004e.intValue(), builder.f3005f.intValue(), builder.g.intValue());
            if (!Objects.equals(str, "audio/mp4a-latm") || iIntValue != -1) {
                return autoValue_AudioEncoderConfig;
            }
            md.n("Encoder mime set to AAC, but no AAC profile was provided.");
            return null;
        }

        public abstract Builder b(int i2);

        public abstract Builder c(int i2);

        public abstract Builder d(int i2);

        public abstract Builder e(int i2);

        public abstract Builder f(Timebase timebase);

        public abstract Builder g(String str);

        public abstract Builder h(int i2);
    }

    public static Builder d() {
        AutoValue_AudioEncoderConfig.Builder builder = new AutoValue_AudioEncoderConfig.Builder();
        builder.f3002b = -1;
        return builder;
    }

    @Override // androidx.camera.video.internal.encoder.EncoderConfig
    public final MediaFormat a() {
        AutoValue_AudioEncoderConfig autoValue_AudioEncoderConfig = (AutoValue_AudioEncoderConfig) this;
        int i2 = autoValue_AudioEncoderConfig.f3000f;
        int i3 = autoValue_AudioEncoderConfig.g;
        String str = autoValue_AudioEncoderConfig.f2996a;
        MediaFormat mediaFormatCreateAudioFormat = MediaFormat.createAudioFormat(str, i2, i3);
        mediaFormatCreateAudioFormat.setInteger("bitrate", autoValue_AudioEncoderConfig.d);
        int i4 = autoValue_AudioEncoderConfig.f2997b;
        if (i4 != -1) {
            if (str.equals("audio/mp4a-latm")) {
                mediaFormatCreateAudioFormat.setInteger("aac-profile", i4);
                return mediaFormatCreateAudioFormat;
            }
            mediaFormatCreateAudioFormat.setInteger("profile", i4);
        }
        return mediaFormatCreateAudioFormat;
    }
}
