package androidx.media;

import androidx.versionedparcelable.VersionedParcel;
import androidx.versionedparcelable.VersionedParcelable;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(VersionedParcel versionedParcel) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        VersionedParcelable versionedParcelableN = audioAttributesCompat.f13648a;
        if (versionedParcel.i(1)) {
            versionedParcelableN = versionedParcel.n();
        }
        audioAttributesCompat.f13648a = (AudioAttributesImpl) versionedParcelableN;
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, VersionedParcel versionedParcel) {
        versionedParcel.getClass();
        AudioAttributesImpl audioAttributesImpl = audioAttributesCompat.f13648a;
        versionedParcel.o(1);
        versionedParcel.w(audioAttributesImpl);
    }
}
