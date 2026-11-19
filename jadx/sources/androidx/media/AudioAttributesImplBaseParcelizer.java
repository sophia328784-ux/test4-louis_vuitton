package androidx.media;

import androidx.versionedparcelable.VersionedParcel;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(VersionedParcel versionedParcel) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f13651a = versionedParcel.k(audioAttributesImplBase.f13651a, 1);
        audioAttributesImplBase.f13652b = versionedParcel.k(audioAttributesImplBase.f13652b, 2);
        audioAttributesImplBase.f13653c = versionedParcel.k(audioAttributesImplBase.f13653c, 3);
        audioAttributesImplBase.d = versionedParcel.k(audioAttributesImplBase.d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, VersionedParcel versionedParcel) {
        versionedParcel.getClass();
        versionedParcel.t(audioAttributesImplBase.f13651a, 1);
        versionedParcel.t(audioAttributesImplBase.f13652b, 2);
        versionedParcel.t(audioAttributesImplBase.f13653c, 3);
        versionedParcel.t(audioAttributesImplBase.d, 4);
    }
}
