package androidx.media;

import android.media.AudioAttributes;
import android.os.Parcelable;
import androidx.versionedparcelable.VersionedParcel;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplApi21Parcelizer {
    public static AudioAttributesImplApi21 read(VersionedParcel versionedParcel) {
        AudioAttributesImplApi21 audioAttributesImplApi21 = new AudioAttributesImplApi21();
        Parcelable parcelableL = audioAttributesImplApi21.f13649a;
        if (versionedParcel.i(1)) {
            parcelableL = versionedParcel.l();
        }
        audioAttributesImplApi21.f13649a = (AudioAttributes) parcelableL;
        audioAttributesImplApi21.f13650b = versionedParcel.k(audioAttributesImplApi21.f13650b, 2);
        return audioAttributesImplApi21;
    }

    public static void write(AudioAttributesImplApi21 audioAttributesImplApi21, VersionedParcel versionedParcel) {
        versionedParcel.getClass();
        AudioAttributes audioAttributes = audioAttributesImplApi21.f13649a;
        versionedParcel.o(1);
        versionedParcel.u(audioAttributes);
        versionedParcel.t(audioAttributesImplApi21.f13650b, 2);
    }
}
