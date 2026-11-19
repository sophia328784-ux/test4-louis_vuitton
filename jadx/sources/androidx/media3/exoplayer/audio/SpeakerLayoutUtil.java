package androidx.media3.exoplayer.audio;

import android.media.AudioDescriptor;
import android.media.AudioDeviceInfo;
import android.media.AudioProfile;
import android.os.Build;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.ar.core.ImageMetadata;
import com.google.common.collect.ImmutableList;
import defpackage.aa;
import defpackage.v7;
import defpackage.x5;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
abstract class SpeakerLayoutUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ImmutableList f15028a = ImmutableList.A(12);

    public static ImmutableList a(AudioDeviceInfo audioDeviceInfo) {
        List<AudioProfile> audioProfiles = audioDeviceInfo.getAudioProfiles();
        TreeSet treeSet = new TreeSet(Comparator.comparing(new aa(0)).reversed());
        for (AudioProfile audioProfile : audioProfiles) {
            if (audioProfile.getEncapsulationType() != 1 && Util.K(audioProfile.getFormat())) {
                for (int i2 : audioProfile.getChannelMasks()) {
                    treeSet.add(Integer.valueOf(i2));
                }
            }
        }
        return ImmutableList.t(treeSet);
    }

    /* JADX WARN: Code duplicated, block: B:120:0x017d  */
    /* JADX WARN: Code duplicated, block: B:130:0x019a A[RETURN] */
    public static ImmutableList b(AudioDeviceInfo audioDeviceInfo) {
        int type;
        ImmutableList immutableListA;
        ImmutableList immutableListX;
        int speakerLayoutChannelMask;
        boolean zA = DeviceTypeUtil.a(audioDeviceInfo.getType());
        ImmutableList immutableList = f15028a;
        if (!zA) {
            if (audioDeviceInfo.getType() == 1) {
                return ImmutableList.A(4);
            }
            if (audioDeviceInfo.getType() == 2) {
                if (Build.VERSION.SDK_INT >= 36 && (speakerLayoutChannelMask = audioDeviceInfo.getSpeakerLayoutChannelMask()) != 0 && speakerLayoutChannelMask != 1) {
                    return ImmutableList.A(Integer.valueOf(speakerLayoutChannelMask));
                }
                Log.g("Built-in speaker's getSpeakerLayoutChannelMask not usable, defaulting to stereo.");
                return immutableList;
            }
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 31 && audioDeviceInfo.getType() == 10) {
                ImmutableList immutableListA2 = a(audioDeviceInfo);
                if (!immutableListA2.isEmpty()) {
                    return immutableListA2;
                }
                ImmutableList immutableListA3 = AudioDescriptorUtil.a(audioDeviceInfo.getAudioDescriptors());
                if (!immutableListA3.isEmpty()) {
                    return immutableListA3;
                }
            } else if (i2 >= 31) {
                int type2 = audioDeviceInfo.getType();
                if (i2 >= 31 && type2 == 29) {
                    ImmutableList immutableListA4 = a(audioDeviceInfo);
                    if (!immutableListA4.isEmpty()) {
                        return immutableListA4;
                    }
                    List<AudioDescriptor> audioDescriptors = audioDeviceInfo.getAudioDescriptors();
                    if (i2 >= 34) {
                        if (i2 < 34 || audioDescriptors == null) {
                            immutableListX = ImmutableList.x();
                        } else {
                            ArrayList arrayList = new ArrayList();
                            Iterator<AudioDescriptor> it = audioDescriptors.iterator();
                            while (it.hasNext()) {
                                AudioDescriptor audioDescriptorB = v7.b(it.next());
                                if (audioDescriptorB.getStandard() == 2) {
                                    byte[] descriptor = audioDescriptorB.getDescriptor();
                                    if (descriptor.length != 3) {
                                        Log.g("Invalid SADB length: " + descriptor.length);
                                    } else {
                                        int i3 = 0;
                                        if (Build.VERSION.SDK_INT >= 34 && descriptor.length == 3) {
                                            byte b2 = descriptor[0];
                                            i3 = (b2 & 1) != 0 ? 12 : 0;
                                            if ((b2 & 2) != 0) {
                                                i3 |= 32;
                                            }
                                            if ((b2 & 4) != 0) {
                                                i3 |= 16;
                                            }
                                            if ((b2 & 8) != 0) {
                                                i3 |= 192;
                                            }
                                            if ((b2 & 16) != 0) {
                                                i3 |= 1024;
                                            }
                                            if ((b2 & 32) != 0) {
                                                i3 |= 768;
                                            }
                                            if ((b2 & 128) != 0) {
                                                i3 |= 201326592;
                                            }
                                            byte b3 = descriptor[1];
                                            if ((b3 & 1) != 0) {
                                                i3 |= 81920;
                                            }
                                            if ((b3 & 2) != 0) {
                                                i3 |= 8192;
                                            }
                                            if ((b3 & 4) != 0) {
                                                i3 |= 32768;
                                            }
                                            if ((b3 & 8) != 0) {
                                                i3 |= 6144;
                                            }
                                            if ((b3 & 16) != 0) {
                                                i3 |= 33554432;
                                            }
                                            if ((b3 & 32) != 0) {
                                                i3 |= 262144;
                                            }
                                            if ((b3 & 64) != 0) {
                                                i3 |= 6144;
                                            }
                                            if ((b3 & 128) != 0) {
                                                i3 |= 3145728;
                                            }
                                            byte b4 = descriptor[2];
                                            if ((b4 & 1) != 0) {
                                                i3 |= ImageMetadata.NOISE_REDUCTION_MODE;
                                            }
                                            if ((b4 & 2) != 0) {
                                                i3 = 8388608 | i3;
                                            }
                                            if ((b4 & 4) != 0) {
                                                i3 |= 20971520;
                                            }
                                        }
                                        arrayList.add(Integer.valueOf(i3));
                                    }
                                }
                            }
                            arrayList.sort(new x5(2));
                            immutableListX = ImmutableList.t(arrayList);
                        }
                        if (!immutableListX.isEmpty()) {
                            return immutableListX;
                        }
                    }
                    ImmutableList immutableListA5 = AudioDescriptorUtil.a(audioDescriptors);
                    if (!immutableListA5.isEmpty()) {
                        return immutableListA5;
                    }
                } else if (i2 >= 31 && ((type = audioDeviceInfo.getType()) == 11 || type == 12 || (i2 >= 31 && type == 22))) {
                    immutableListA = a(audioDeviceInfo);
                    if (!immutableListA.isEmpty()) {
                        return immutableListA;
                    }
                }
            } else if (i2 >= 31) {
                immutableListA = a(audioDeviceInfo);
                if (!immutableListA.isEmpty()) {
                    return immutableListA;
                }
            }
        }
        return immutableList;
    }
}
