package androidx.camera.video.internal.audio;

import androidx.core.util.Preconditions;
import defpackage.md;
import defpackage.pq0;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class AudioSettings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f2885a = Collections.unmodifiableList(Arrays.asList(192000, 48000, 44100, 24000, 22050, 16000, 12000, 11025, 8000, 4800));

    public static abstract class Builder {
        public final AudioSettings a() {
            AutoValue_AudioSettings.Builder builder = (AutoValue_AudioSettings.Builder) this;
            String strConcat = builder.f2914a == null ? " audioSource" : "";
            if (builder.f2915b == null) {
                strConcat = strConcat.concat(" captureSampleRate");
            }
            if (builder.f2916c == null) {
                strConcat = strConcat.concat(" encodeSampleRate");
            }
            if (builder.d == null) {
                strConcat = strConcat.concat(" channelCount");
            }
            if (builder.f2917e == null) {
                strConcat = strConcat.concat(" audioFormat");
            }
            if (!strConcat.isEmpty()) {
                md.k("Missing required properties:".concat(strConcat));
                return null;
            }
            int iIntValue = builder.f2914a.intValue();
            int iIntValue2 = builder.f2915b.intValue();
            int iIntValue3 = builder.f2916c.intValue();
            int iIntValue4 = builder.d.intValue();
            int iIntValue5 = builder.f2917e.intValue();
            AutoValue_AudioSettings autoValue_AudioSettings = new AutoValue_AudioSettings(iIntValue, iIntValue2, iIntValue3, iIntValue4, iIntValue5);
            String strConcat2 = iIntValue != -1 ? "" : " audioSource";
            if (iIntValue2 <= 0) {
                strConcat2 = strConcat2.concat(" captureSampleRate");
            }
            if (iIntValue3 <= 0) {
                strConcat2 = strConcat2.concat(" encodeSampleRate");
            }
            if (iIntValue4 <= 0) {
                strConcat2 = strConcat2.concat(" channelCount");
            }
            if (iIntValue5 == -1) {
                strConcat2 = strConcat2.concat(" audioFormat");
            }
            if (strConcat2.isEmpty()) {
                return autoValue_AudioSettings;
            }
            md.n("Required settings missing or non-positive:".concat(strConcat2));
            return null;
        }

        public abstract Builder b(int i2);

        public abstract Builder c(int i2);

        public abstract Builder d(int i2);

        public abstract Builder e(int i2);

        public abstract Builder f(int i2);
    }

    public static Builder a() {
        AutoValue_AudioSettings.Builder builder = new AutoValue_AudioSettings.Builder();
        builder.f2914a = -1;
        builder.f2915b = -1;
        builder.f2916c = -1;
        builder.d = -1;
        builder.f2917e = -1;
        return builder;
    }

    public final int b() {
        AutoValue_AudioSettings autoValue_AudioSettings = (AutoValue_AudioSettings) this;
        int i2 = autoValue_AudioSettings.f2912e;
        Preconditions.b(i2 > 0, "Invalid channel count: " + i2);
        int i3 = autoValue_AudioSettings.f2913f;
        if (i3 == 2) {
            return i2 * 2;
        }
        if (i3 == 3) {
            return i2;
        }
        if (i3 != 4) {
            if (i3 == 21) {
                return i2 * 3;
            }
            if (i3 != 22) {
                md.n(pq0.k(i3, "Invalid audio encoding: "));
                return 0;
            }
        }
        return i2 * 4;
    }

    public abstract int c();

    public abstract int d();

    public abstract int e();
}
