package androidx.media3.exoplayer.audio;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.os.Build;
import android.provider.Settings;
import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ObjectArrays;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.collect.UnmodifiableListIterator;
import com.google.common.primitives.Ints;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class AudioCapabilities {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ImmutableList f14857e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ImmutableList f14858f;
    public static final AudioCapabilities g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ImmutableList f14859h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ImmutableMap f14860i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SparseArray f14861a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f14862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmutableList f14863c;
    public final ImmutableList d;

    public static final class Api33 {
        public static AudioCapabilities a(AudioManager audioManager, AudioAttributes audioAttributes, ImmutableList immutableList, List list) {
            List<android.media.AudioProfile> directProfilesForAttributes = audioManager.getDirectProfilesForAttributes(audioAttributes.c());
            HashMap map = new HashMap();
            map.put(2, new HashSet(Ints.a(12)));
            for (int i2 = 0; i2 < directProfilesForAttributes.size(); i2++) {
                android.media.AudioProfile audioProfile = directProfilesForAttributes.get(i2);
                if (audioProfile.getEncapsulationType() != 1) {
                    int format = audioProfile.getFormat();
                    if (Util.K(format) || AudioCapabilities.f14860i.containsKey(Integer.valueOf(format))) {
                        if (map.containsKey(Integer.valueOf(format))) {
                            Set set = (Set) map.get(Integer.valueOf(format));
                            set.getClass();
                            set.addAll(Ints.a(audioProfile.getChannelMasks()));
                        } else {
                            map.put(Integer.valueOf(format), new HashSet(Ints.a(audioProfile.getChannelMasks())));
                        }
                    }
                }
            }
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
            ImmutableList.Builder builder = new ImmutableList.Builder();
            for (Map.Entry entry : map.entrySet()) {
                builder.e(new AudioProfile(((Integer) entry.getKey()).intValue(), (Set<Integer>) entry.getValue()));
            }
            return new AudioCapabilities(builder.j(), immutableList, list);
        }

        public static AudioDeviceInfo b(AudioManager audioManager, AudioAttributes audioAttributes) {
            audioManager.getClass();
            List<AudioDeviceInfo> audioDevicesForAttributes = audioManager.getAudioDevicesForAttributes(audioAttributes.c());
            if (audioDevicesForAttributes.isEmpty()) {
                return null;
            }
            return audioDevicesForAttributes.get(0);
        }
    }

    static {
        ImmutableList immutableListA = ImmutableList.A(12);
        f14857e = immutableListA;
        ImmutableList immutableListX = ImmutableList.x();
        f14858f = immutableListX;
        g = new AudioCapabilities(ImmutableList.A(AudioProfile.d), immutableListA, immutableListX);
        Object[] objArr = {2, 5, 6};
        ObjectArrays.a(3, objArr);
        f14859h = ImmutableList.q(3, objArr);
        ImmutableMap.Builder builder = new ImmutableMap.Builder();
        builder.d(5, 6);
        builder.d(17, 6);
        builder.d(7, 6);
        builder.d(30, 10);
        builder.d(18, 6);
        builder.d(6, 8);
        builder.d(8, 8);
        builder.d(14, 8);
        f14860i = builder.a(true);
    }

    public AudioCapabilities(List list, List list2, List list3) {
        this.f14861a = new SparseArray();
        for (int i2 = 0; i2 < list.size(); i2++) {
            AudioProfile audioProfile = (AudioProfile) list.get(i2);
            this.f14861a.put(audioProfile.f14864a, audioProfile);
        }
        int iMax = 0;
        for (int i3 = 0; i3 < this.f14861a.size(); i3++) {
            iMax = Math.max(iMax, ((AudioProfile) this.f14861a.valueAt(i3)).f14865b);
        }
        this.f14862b = iMax;
        this.f14863c = ImmutableList.t(list2);
        this.d = ImmutableList.t(list3);
    }

    public static ImmutableList a(int i2, int[] iArr) {
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        if (iArr == null) {
            iArr = new int[0];
        }
        for (int i3 : iArr) {
            builder.e(new AudioProfile(i3, i2));
        }
        return builder.j();
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b0  */
    /* JADX WARN: Multi-variable type inference failed */
    public static AudioCapabilities b(Context context, Intent intent, AudioAttributes audioAttributes, AudioDeviceInfo audioDeviceInfo, List list) {
        AudioManager audioManagerA = AudioManagerCompat.a(context);
        if (audioDeviceInfo == null) {
            audioDeviceInfo = Build.VERSION.SDK_INT >= 33 ? Api33.b(audioManagerA, audioAttributes) : null;
        }
        ImmutableList immutableListB = audioDeviceInfo != null ? SpeakerLayoutUtil.b(audioDeviceInfo) : f14857e;
        if (Build.VERSION.SDK_INT >= 33 && (Util.N(context) || context.getPackageManager().hasSystemFeature("android.hardware.type.automotive"))) {
            return Api33.a(audioManagerA, audioAttributes, immutableListB, list);
        }
        AudioDeviceInfo[] devices = audioDeviceInfo == null ? audioManagerA.getDevices(2) : new AudioDeviceInfo[]{audioDeviceInfo};
        for (AudioDeviceInfo audioDeviceInfo2 : devices) {
            if (DeviceTypeUtil.a(audioDeviceInfo2.getType())) {
                return new AudioCapabilities(ImmutableList.A(AudioProfile.d), immutableListB, list);
            }
        }
        ImmutableSet.Builder builder = new ImmutableSet.Builder();
        builder.a(2);
        if (Util.N(context) || context.getPackageManager().hasSystemFeature("android.hardware.type.automotive")) {
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
            ImmutableList.Builder builder2 = new ImmutableList.Builder();
            UnmodifiableIterator it = f14860i.keySet().iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                int iIntValue = num.intValue();
                if (Build.VERSION.SDK_INT >= Util.s(iIntValue) && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(iIntValue).setSampleRate(48000).build(), audioAttributes.c())) {
                    builder2.e(num);
                }
            }
            builder2.e(2);
            builder.j(builder2.j());
            return new AudioCapabilities(a(10, Ints.g(builder.k())), immutableListB, list);
        }
        ContentResolver contentResolver = context.getContentResolver();
        boolean z = Settings.Global.getInt(contentResolver, "use_external_surround_sound_flag", 0) == 1;
        if (!z) {
            String str = Build.MANUFACTURER;
            if (str.equals("Amazon") || str.equals("Xiaomi")) {
                if (Settings.Global.getInt(contentResolver, "external_surround_sound_enabled", 0) == 1) {
                    builder.j(f14859h);
                }
            }
        } else if (Settings.Global.getInt(contentResolver, "external_surround_sound_enabled", 0) == 1) {
            builder.j(f14859h);
        }
        if (intent == null || z || intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) != 1) {
            return new AudioCapabilities(a(10, Ints.g(builder.k())), immutableListB, list);
        }
        int[] intArrayExtra = intent.getIntArrayExtra("android.media.extra.ENCODINGS");
        if (intArrayExtra != null) {
            builder.j(Ints.a(intArrayExtra));
        }
        return new AudioCapabilities(a(intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 10), Ints.g(builder.k())), immutableListB, list);
    }

    public final Pair c(AudioAttributes audioAttributes, Format format) {
        String str = format.o;
        str.getClass();
        int iD = MimeTypes.d(str, format.f13763k);
        if (!f14860i.containsKey(Integer.valueOf(iD))) {
            return null;
        }
        SparseArray sparseArray = this.f14861a;
        if (iD == 18 && !Util.l(sparseArray, 18)) {
            iD = 6;
        } else if ((iD == 8 && !Util.l(sparseArray, 8)) || (iD == 30 && !Util.l(sparseArray, 30))) {
            iD = 7;
        }
        if (!Util.l(sparseArray, iD)) {
            return null;
        }
        AudioProfile audioProfile = (AudioProfile) sparseArray.get(iD);
        audioProfile.getClass();
        int i2 = audioProfile.f14865b;
        ImmutableSet immutableSet = audioProfile.f14866c;
        int i3 = format.G;
        boolean zContains = false;
        if (i3 == -1 || iD == 18) {
            int i4 = format.H;
            if (i4 == -1) {
                i4 = 48000;
            }
            if (immutableSet == null) {
                int i5 = audioProfile.f14864a;
                i2 = 10;
                while (true) {
                    if (i2 <= 0) {
                        i2 = 0;
                        break;
                    }
                    int iT = Util.t(i2);
                    if (iT != 0 && AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i5).setSampleRate(i4).setChannelMask(iT).build(), audioAttributes.c())) {
                        break;
                    }
                    i2--;
                }
            }
            i3 = i2;
        } else if (!format.o.equals("audio/vnd.dts.uhd;profile=p2") || Build.VERSION.SDK_INT >= 33) {
            if (immutableSet != null) {
                int iT2 = Util.t(i3);
                if (iT2 != 0) {
                    zContains = immutableSet.contains(Integer.valueOf(iT2));
                }
            } else if (i3 <= i2) {
                zContains = true;
            }
            if (!zContains) {
                return null;
            }
        } else if (i3 > 10) {
            return null;
        }
        int iT3 = Util.t(i3);
        if (iT3 == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(iD), Integer.valueOf(iT3));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioCapabilities)) {
            return false;
        }
        AudioCapabilities audioCapabilities = (AudioCapabilities) obj;
        return Util.n(this.f14861a, audioCapabilities.f14861a) && this.f14862b == audioCapabilities.f14862b && Objects.equals(this.f14863c, audioCapabilities.f14863c) && Objects.equals(this.d, audioCapabilities.d);
    }

    public final int hashCode() {
        return Objects.hashCode(this.d) + ((Objects.hashCode(this.f14863c) + ((Util.o(this.f14861a) + (this.f14862b * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.f14862b + ", audioProfiles=" + this.f14861a + ", speakerLayoutChannelMasks=" + this.f14863c + ", spatializerChannelMasks=" + this.d + "]";
    }

    public static final class AudioProfile {
        public static final AudioProfile d;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f14864a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f14865b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImmutableSet f14866c;

        static {
            AudioProfile audioProfile;
            if (Build.VERSION.SDK_INT >= 33) {
                ImmutableSet.Builder builder = new ImmutableSet.Builder();
                for (int i2 = 1; i2 <= 10; i2++) {
                    builder.a(Integer.valueOf(Util.t(i2)));
                }
                audioProfile = new AudioProfile(2, builder.k());
            } else {
                audioProfile = new AudioProfile(2, 10);
            }
            d = audioProfile;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public AudioProfile(int i2, Set<Integer> set) {
            this.f14864a = i2;
            ImmutableSet immutableSetS = ImmutableSet.s(set);
            this.f14866c = immutableSetS;
            UnmodifiableIterator it = immutableSetS.iterator();
            int iMax = 0;
            while (it.hasNext()) {
                iMax = Math.max(iMax, Integer.bitCount(((Integer) it.next()).intValue()));
            }
            this.f14865b = iMax;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AudioProfile)) {
                return false;
            }
            AudioProfile audioProfile = (AudioProfile) obj;
            return this.f14864a == audioProfile.f14864a && this.f14865b == audioProfile.f14865b && Objects.equals(this.f14866c, audioProfile.f14866c);
        }

        public final int hashCode() {
            int i2 = ((this.f14864a * 31) + this.f14865b) * 31;
            ImmutableSet immutableSet = this.f14866c;
            return i2 + (immutableSet == null ? 0 : immutableSet.hashCode());
        }

        public final String toString() {
            return "AudioProfile[format=" + this.f14864a + ", maxChannelCount=" + this.f14865b + ", channelMasks=" + this.f14866c + "]";
        }

        public AudioProfile(int i2, int i3) {
            this.f14864a = i2;
            this.f14865b = i3;
            this.f14866c = null;
        }
    }

    @Deprecated
    public AudioCapabilities(int[] iArr, int i2) {
        this(a(i2, iArr), f14857e, f14858f);
    }
}
