package androidx.media;

import android.media.AudioAttributes;
import android.os.Parcelable;
import androidx.versionedparcelable.VersionedParcel;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplApi26Parcelizer {
    public static AudioAttributesImplApi26 read(VersionedParcel versionedParcel) {
        AudioAttributesImplApi26 audioAttributesImplApi26 = new AudioAttributesImplApi26();
        Parcelable parcelableL = audioAttributesImplApi26.f13649a;
        if (versionedParcel.i(1)) {
            parcelableL = versionedParcel.l();
        }
        audioAttributesImplApi26.f13649a = (AudioAttributes) parcelableL;
        audioAttributesImplApi26.f13650b = versionedParcel.k(audioAttributesImplApi26.f13650b, 2);
        return audioAttributesImplApi26;
    }

    public static void write(AudioAttributesImplApi26 audioAttributesImplApi26, VersionedParcel versionedParcel) {
        versionedParcel.getClass();
        AudioAttributes audioAttributes = audioAttributesImplApi26.f13649a;
        versionedParcel.o(1);
        versionedParcel.u(audioAttributes);
        versionedParcel.t(audioAttributesImplApi26.f13650b, 2);
    }
}
