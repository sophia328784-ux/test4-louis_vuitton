package androidx.camera.camera2.internal;

import android.media.CamcorderProfile;
import android.media.EncoderProfiles;
import android.os.Build;
import android.util.Size;
import androidx.camera.camera2.internal.compat.quirk.CamcorderProfileResolutionQuirk;
import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.internal.compat.quirk.InvalidVideoProfilesQuirk;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.EncoderProfilesProvider;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.compat.EncoderProfilesProxyCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class Camera2EncoderProfilesProvider implements EncoderProfilesProvider {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f1520c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f1521e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final HashMap f1522f = new HashMap();
    public final Quirks g;

    public static class Api31Impl {
        public static EncoderProfiles a(int i2, String str) {
            return CamcorderProfile.getAll(str, i2);
        }
    }

    public Camera2EncoderProfilesProvider(String str, Quirks quirks) {
        boolean z;
        int i2;
        this.d = str;
        try {
            i2 = Integer.parseInt(str);
            z = true;
        } catch (NumberFormatException unused) {
            Logger.c(5, "Camera2EncoderProfilesProvider");
            z = false;
            i2 = -1;
        }
        this.f1520c = z;
        this.f1521e = i2;
        this.g = quirks;
    }

    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public final boolean a(int i2) {
        return this.f1520c && b(i2) != null;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003e  */
    /* JADX WARN: Code duplicated, block: B:27:0x0065  */
    /* JADX WARN: Code duplicated, block: B:29:0x0069  */
    /* JADX WARN: Code duplicated, block: B:32:0x007c  */
    /* JADX WARN: Code duplicated, block: B:33:0x007f  */
    /* JADX WARN: Code duplicated, block: B:34:0x0082  */
    /* JADX WARN: Code duplicated, block: B:35:0x0085  */
    /* JADX WARN: Code duplicated, block: B:36:0x0088  */
    /* JADX WARN: Code duplicated, block: B:37:0x008b  */
    /* JADX WARN: Code duplicated, block: B:40:0x0095  */
    /* JADX WARN: Code duplicated, block: B:42:0x0098 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x009a  */
    /* JADX WARN: Code duplicated, block: B:45:0x009d  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:49:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:52:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:53:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:54:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:56:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:57:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:62:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:89:0x0175  */
    @Override // androidx.camera.core.impl.EncoderProfilesProvider
    public final EncoderProfilesProxy b(int i2) {
        CamcorderProfile camcorderProfile;
        int i3;
        String str;
        int i4;
        String str2;
        EncoderProfilesProxy encoderProfilesProxyE;
        boolean zContains;
        EncoderProfilesProxy encoderProfilesProxyB;
        EncoderProfilesProxy encoderProfilesProxy = null;
        if (!this.f1520c || !CamcorderProfile.hasProfile(this.f1521e, i2)) {
            return null;
        }
        if (this.f1522f.containsKey(Integer.valueOf(i2))) {
            return (EncoderProfilesProxy) this.f1522f.get(Integer.valueOf(i2));
        }
        int i5 = 5;
        if (Build.VERSION.SDK_INT < 31) {
            try {
                camcorderProfile = CamcorderProfile.get(this.f1521e, i2);
            } catch (RuntimeException unused) {
                Logger.c(5, "Camera2EncoderProfilesProvider");
                camcorderProfile = null;
            }
            if (camcorderProfile != null) {
                if (Build.VERSION.SDK_INT >= 31) {
                    Logger.c(5, "EncoderProfilesProxyCompat");
                }
                int i6 = camcorderProfile.duration;
                int i7 = camcorderProfile.fileFormat;
                ArrayList arrayList = new ArrayList();
                i3 = camcorderProfile.audioCodec;
                switch (i3) {
                    case 1:
                        str = "audio/3gpp";
                        break;
                    case 2:
                        str = "audio/amr-wb";
                        break;
                    case 3:
                    case 4:
                    case 5:
                        str = "audio/mp4a-latm";
                        break;
                    case 6:
                        str = "audio/vorbis";
                        break;
                    case 7:
                        str = "audio/opus";
                        break;
                    default:
                        str = "audio/none";
                        break;
                }
                int i8 = camcorderProfile.audioBitRate;
                int i9 = camcorderProfile.audioSampleRate;
                int i10 = camcorderProfile.audioChannels;
                if (i3 == 3) {
                    i5 = 2;
                } else if (i3 != 4) {
                    if (i3 != 5) {
                        i5 = -1;
                    } else {
                        i5 = 39;
                    }
                }
                arrayList.add(EncoderProfilesProxy.AudioProfileProxy.a(i3, str, i8, i9, i10, i5));
                ArrayList arrayList2 = new ArrayList();
                i4 = camcorderProfile.videoCodec;
                switch (i4) {
                    case 1:
                        str2 = "video/3gpp";
                        break;
                    case 2:
                        str2 = "video/avc";
                        break;
                    case 3:
                        str2 = "video/mp4v-es";
                        break;
                    case 4:
                        str2 = "video/x-vnd.on2.vp8";
                        break;
                    case 5:
                        str2 = "video/hevc";
                        break;
                    case 6:
                        str2 = "video/x-vnd.on2.vp9";
                        break;
                    case 7:
                        str2 = "video/dolby-vision";
                        break;
                    case 8:
                        str2 = "video/av01";
                        break;
                    default:
                        str2 = "video/none";
                        break;
                }
                arrayList2.add(EncoderProfilesProxy.VideoProfileProxy.a(i4, str2, camcorderProfile.videoBitRate, camcorderProfile.videoFrameRate, camcorderProfile.videoFrameWidth, camcorderProfile.videoFrameHeight, -1, 8, 0, 0));
                encoderProfilesProxyE = EncoderProfilesProxy.ImmutableEncoderProfilesProxy.e(arrayList, arrayList2, i6, i7);
            } else {
                encoderProfilesProxyE = null;
            }
        } else {
            EncoderProfiles encoderProfilesA = Api31Impl.a(i2, this.d);
            if (encoderProfilesA != null) {
                if (DeviceQuirks.f1731a.b(InvalidVideoProfilesQuirk.class) != null) {
                    Logger.c(3, "Camera2EncoderProfilesProvider");
                } else {
                    try {
                        encoderProfilesProxyE = EncoderProfilesProxyCompat.a(encoderProfilesA);
                    } catch (NullPointerException unused2) {
                        Logger.c(5, "Camera2EncoderProfilesProvider");
                        camcorderProfile = CamcorderProfile.get(this.f1521e, i2);
                        if (camcorderProfile != null) {
                            if (Build.VERSION.SDK_INT >= 31) {
                                Logger.c(5, "EncoderProfilesProxyCompat");
                            }
                            int i11 = camcorderProfile.duration;
                            int i12 = camcorderProfile.fileFormat;
                            ArrayList arrayList3 = new ArrayList();
                            i3 = camcorderProfile.audioCodec;
                            switch (i3) {
                                case 1:
                                    str = "audio/3gpp";
                                    break;
                                case 2:
                                    str = "audio/amr-wb";
                                    break;
                                case 3:
                                case 4:
                                case 5:
                                    str = "audio/mp4a-latm";
                                    break;
                                case 6:
                                    str = "audio/vorbis";
                                    break;
                                case 7:
                                    str = "audio/opus";
                                    break;
                                default:
                                    str = "audio/none";
                                    break;
                            }
                            int i13 = camcorderProfile.audioBitRate;
                            int i14 = camcorderProfile.audioSampleRate;
                            int i15 = camcorderProfile.audioChannels;
                            if (i3 == 3) {
                                i5 = 2;
                            } else if (i3 != 4) {
                                if (i3 != 5) {
                                    i5 = -1;
                                } else {
                                    i5 = 39;
                                }
                            }
                            arrayList3.add(EncoderProfilesProxy.AudioProfileProxy.a(i3, str, i13, i14, i15, i5));
                            ArrayList arrayList4 = new ArrayList();
                            i4 = camcorderProfile.videoCodec;
                            switch (i4) {
                                case 1:
                                    str2 = "video/3gpp";
                                    break;
                                case 2:
                                    str2 = "video/avc";
                                    break;
                                case 3:
                                    str2 = "video/mp4v-es";
                                    break;
                                case 4:
                                    str2 = "video/x-vnd.on2.vp8";
                                    break;
                                case 5:
                                    str2 = "video/hevc";
                                    break;
                                case 6:
                                    str2 = "video/x-vnd.on2.vp9";
                                    break;
                                case 7:
                                    str2 = "video/dolby-vision";
                                    break;
                                case 8:
                                    str2 = "video/av01";
                                    break;
                                default:
                                    str2 = "video/none";
                                    break;
                            }
                            arrayList4.add(EncoderProfilesProxy.VideoProfileProxy.a(i4, str2, camcorderProfile.videoBitRate, camcorderProfile.videoFrameRate, camcorderProfile.videoFrameWidth, camcorderProfile.videoFrameHeight, -1, 8, 0, 0));
                            encoderProfilesProxyE = EncoderProfilesProxy.ImmutableEncoderProfilesProxy.e(arrayList3, arrayList4, i11, i12);
                        } else {
                            encoderProfilesProxyE = null;
                        }
                    }
                }
                camcorderProfile = CamcorderProfile.get(this.f1521e, i2);
                if (camcorderProfile != null) {
                    if (Build.VERSION.SDK_INT >= 31) {
                        Logger.c(5, "EncoderProfilesProxyCompat");
                    }
                    int i16 = camcorderProfile.duration;
                    int i17 = camcorderProfile.fileFormat;
                    ArrayList arrayList5 = new ArrayList();
                    i3 = camcorderProfile.audioCodec;
                    switch (i3) {
                        case 1:
                            str = "audio/3gpp";
                            break;
                        case 2:
                            str = "audio/amr-wb";
                            break;
                        case 3:
                        case 4:
                        case 5:
                            str = "audio/mp4a-latm";
                            break;
                        case 6:
                            str = "audio/vorbis";
                            break;
                        case 7:
                            str = "audio/opus";
                            break;
                        default:
                            str = "audio/none";
                            break;
                    }
                    int i18 = camcorderProfile.audioBitRate;
                    int i19 = camcorderProfile.audioSampleRate;
                    int i110 = camcorderProfile.audioChannels;
                    if (i3 == 3) {
                        i5 = 2;
                    } else if (i3 != 4) {
                        if (i3 != 5) {
                            i5 = -1;
                        } else {
                            i5 = 39;
                        }
                    }
                    arrayList5.add(EncoderProfilesProxy.AudioProfileProxy.a(i3, str, i18, i19, i110, i5));
                    ArrayList arrayList6 = new ArrayList();
                    i4 = camcorderProfile.videoCodec;
                    switch (i4) {
                        case 1:
                            str2 = "video/3gpp";
                            break;
                        case 2:
                            str2 = "video/avc";
                            break;
                        case 3:
                            str2 = "video/mp4v-es";
                            break;
                        case 4:
                            str2 = "video/x-vnd.on2.vp8";
                            break;
                        case 5:
                            str2 = "video/hevc";
                            break;
                        case 6:
                            str2 = "video/x-vnd.on2.vp9";
                            break;
                        case 7:
                            str2 = "video/dolby-vision";
                            break;
                        case 8:
                            str2 = "video/av01";
                            break;
                        default:
                            str2 = "video/none";
                            break;
                    }
                    arrayList6.add(EncoderProfilesProxy.VideoProfileProxy.a(i4, str2, camcorderProfile.videoBitRate, camcorderProfile.videoFrameRate, camcorderProfile.videoFrameWidth, camcorderProfile.videoFrameHeight, -1, 8, 0, 0));
                    encoderProfilesProxyE = EncoderProfilesProxy.ImmutableEncoderProfilesProxy.e(arrayList5, arrayList6, i16, i17);
                } else {
                    encoderProfilesProxyE = null;
                }
            } else {
                encoderProfilesProxyE = null;
            }
        }
        if (encoderProfilesProxyE == null) {
            encoderProfilesProxy = encoderProfilesProxyE;
        } else {
            CamcorderProfileResolutionQuirk camcorderProfileResolutionQuirk = (CamcorderProfileResolutionQuirk) this.g.b(CamcorderProfileResolutionQuirk.class);
            if (camcorderProfileResolutionQuirk == null) {
                zContains = true;
            } else {
                List listB = encoderProfilesProxyE.b();
                if (listB.isEmpty()) {
                    zContains = true;
                } else {
                    EncoderProfilesProxy.VideoProfileProxy videoProfileProxy = (EncoderProfilesProxy.VideoProfileProxy) listB.get(0);
                    if (camcorderProfileResolutionQuirk.f1728b == null) {
                        Size[] sizeArrF = camcorderProfileResolutionQuirk.f1727a.f(34);
                        List listAsList = sizeArrF != null ? Arrays.asList((Size[]) sizeArrF.clone()) : Collections.EMPTY_LIST;
                        camcorderProfileResolutionQuirk.f1728b = listAsList;
                        Objects.toString(listAsList);
                        Logger.c(3, "CamcorderProfileResolutionQuirk");
                    }
                    zContains = new ArrayList(camcorderProfileResolutionQuirk.f1728b).contains(videoProfileProxy.k());
                }
            }
            if (zContains) {
                encoderProfilesProxy = encoderProfilesProxyE;
            } else if (i2 == 1) {
                Iterator it = EncoderProfilesProvider.f2298b.iterator();
                while (it.hasNext()) {
                    encoderProfilesProxyB = b(((Integer) it.next()).intValue());
                    if (encoderProfilesProxyB != null) {
                        encoderProfilesProxy = encoderProfilesProxyB;
                    }
                }
            } else if (i2 == 0) {
                for (int size = EncoderProfilesProvider.f2298b.size() - 1; size >= 0; size--) {
                    encoderProfilesProxyB = b(size);
                    if (encoderProfilesProxyB != null) {
                        encoderProfilesProxy = encoderProfilesProxyB;
                    }
                }
            }
        }
        this.f1522f.put(Integer.valueOf(i2), encoderProfilesProxy);
        return encoderProfilesProxy;
    }
}
