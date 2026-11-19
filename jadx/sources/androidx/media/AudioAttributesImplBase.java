package androidx.media;

import defpackage.pq0;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class AudioAttributesImplBase implements AudioAttributesImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f13651a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13652b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13653c = 0;
    public int d = -1;

    public final boolean equals(Object obj) {
        int i2;
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        if (this.f13652b == audioAttributesImplBase.f13652b) {
            int i3 = this.f13653c;
            int i4 = audioAttributesImplBase.f13653c;
            int i5 = audioAttributesImplBase.d;
            if (i5 == -1) {
                int i6 = audioAttributesImplBase.f13651a;
                int i7 = AudioAttributesCompat.f13647b;
                if ((i4 & 1) != 1) {
                    i2 = 4;
                    if ((i4 & 4) != 4) {
                        switch (i6) {
                            case 2:
                                i2 = 0;
                                break;
                            case 3:
                                i2 = 8;
                                break;
                            case 4:
                                break;
                            case 5:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                                i2 = 5;
                                break;
                            case 6:
                                i2 = 2;
                                break;
                            case 11:
                                i2 = 10;
                                break;
                            case 12:
                            default:
                                i2 = 3;
                                break;
                            case 13:
                                i2 = 1;
                                break;
                        }
                    } else {
                        i2 = 6;
                    }
                } else {
                    i2 = 7;
                }
            } else {
                i2 = i5;
            }
            if (i2 == 6) {
                i4 |= 4;
            } else if (i2 == 7) {
                i4 |= 1;
            }
            if (i3 == (i4 & 273) && this.f13651a == audioAttributesImplBase.f13651a && this.d == i5) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f13652b), Integer.valueOf(this.f13653c), Integer.valueOf(this.f13651a), Integer.valueOf(this.d)});
    }

    public final String toString() {
        String strK;
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.d != -1) {
            sb.append(" stream=");
            sb.append(this.d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        int i2 = this.f13651a;
        int i3 = AudioAttributesCompat.f13647b;
        switch (i2) {
            case 0:
                strK = "USAGE_UNKNOWN";
                break;
            case 1:
                strK = "USAGE_MEDIA";
                break;
            case 2:
                strK = "USAGE_VOICE_COMMUNICATION";
                break;
            case 3:
                strK = "USAGE_VOICE_COMMUNICATION_SIGNALLING";
                break;
            case 4:
                strK = "USAGE_ALARM";
                break;
            case 5:
                strK = "USAGE_NOTIFICATION";
                break;
            case 6:
                strK = "USAGE_NOTIFICATION_RINGTONE";
                break;
            case 7:
                strK = "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
                break;
            case 8:
                strK = "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
                break;
            case 9:
                strK = "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
                break;
            case 10:
                strK = "USAGE_NOTIFICATION_EVENT";
                break;
            case 11:
                strK = "USAGE_ASSISTANCE_ACCESSIBILITY";
                break;
            case 12:
                strK = "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
                break;
            case 13:
                strK = "USAGE_ASSISTANCE_SONIFICATION";
                break;
            case 14:
                strK = "USAGE_GAME";
                break;
            case 15:
            default:
                strK = pq0.k(i2, "unknown usage ");
                break;
            case 16:
                strK = "USAGE_ASSISTANT";
                break;
        }
        sb.append(strK);
        sb.append(" content=");
        sb.append(this.f13652b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f13653c).toUpperCase());
        return sb.toString();
    }
}
