package androidx.media3.extractor.metadata.icy;

import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.Log;
import com.google.common.base.Preconditions;
import defpackage.cj;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class IcyHeaders implements Metadata.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16354a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f16356c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f16357e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f16358f;

    public IcyHeaders(int i2, String str, String str2, String str3, boolean z, int i3) {
        Preconditions.g(i3 == -1 || i3 > 0);
        this.f16354a = i2;
        this.f16355b = str;
        this.f16356c = str2;
        this.d = str3;
        this.f16357e = z;
        this.f16358f = i3;
    }

    public static IcyHeaders d(Map map) {
        boolean z;
        int i2;
        String str;
        String str2;
        String str3;
        boolean zEquals;
        int i3;
        List list = (List) map.get("icy-br");
        boolean z2 = true;
        int i4 = -1;
        if (list != null) {
            String str4 = (String) list.get(0);
            try {
                i3 = Integer.parseInt(str4) * 1000;
                if (i3 > 0) {
                    z = true;
                } else {
                    try {
                        Log.g("Invalid bitrate: " + str4);
                        z = false;
                        i3 = -1;
                    } catch (NumberFormatException unused) {
                        cj.y("Invalid bitrate header: ", str4);
                        z = false;
                    }
                }
            } catch (NumberFormatException unused2) {
                i3 = -1;
            }
            i2 = i3;
        } else {
            z = false;
            i2 = -1;
        }
        List list2 = (List) map.get("icy-genre");
        if (list2 != null) {
            str = (String) list2.get(0);
            z = true;
        } else {
            str = null;
        }
        List list3 = (List) map.get("icy-name");
        if (list3 != null) {
            str2 = (String) list3.get(0);
            z = true;
        } else {
            str2 = null;
        }
        List list4 = (List) map.get("icy-url");
        if (list4 != null) {
            str3 = (String) list4.get(0);
            z = true;
        } else {
            str3 = null;
        }
        List list5 = (List) map.get("icy-pub");
        if (list5 != null) {
            zEquals = ((String) list5.get(0)).equals("1");
            z = true;
        } else {
            zEquals = false;
        }
        List list6 = (List) map.get("icy-metaint");
        if (list6 != null) {
            String str5 = (String) list6.get(0);
            try {
                int i5 = Integer.parseInt(str5);
                if (i5 > 0) {
                    i4 = i5;
                } else {
                    try {
                        Log.g("Invalid metadata interval: " + str5);
                        z2 = z;
                    } catch (NumberFormatException unused3) {
                        i4 = i5;
                        cj.y("Invalid metadata interval: ", str5);
                    }
                }
                z = z2;
            } catch (NumberFormatException unused4) {
            }
        }
        int i6 = i4;
        if (z) {
            return new IcyHeaders(i2, str, str2, str3, zEquals, i6);
        }
        return null;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final void b(MediaMetadata.Builder builder) {
        String str = this.f16356c;
        if (str != null) {
            builder.G = str;
        }
        String str2 = this.f16355b;
        if (str2 != null) {
            builder.E = str2;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && IcyHeaders.class == obj.getClass()) {
            IcyHeaders icyHeaders = (IcyHeaders) obj;
            if (this.f16354a == icyHeaders.f16354a && Objects.equals(this.f16355b, icyHeaders.f16355b) && Objects.equals(this.f16356c, icyHeaders.f16356c) && Objects.equals(this.d, icyHeaders.d) && this.f16357e == icyHeaders.f16357e && this.f16358f == icyHeaders.f16358f) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2 = (527 + this.f16354a) * 31;
        String str = this.f16355b;
        int iHashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f16356c;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.d;
        return ((((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.f16357e ? 1 : 0)) * 31) + this.f16358f;
    }

    public final String toString() {
        return "IcyHeaders: name=\"" + this.f16356c + "\", genre=\"" + this.f16355b + "\", bitrate=" + this.f16354a + ", metadataInterval=" + this.f16358f;
    }
}
