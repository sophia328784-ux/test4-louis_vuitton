package androidx.media3.exoplayer.hls;

import android.text.TextUtils;
import androidx.media3.common.Metadata;
import defpackage.n00;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class HlsTrackMetadataEntry implements Metadata.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f15190a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f15191b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f15192c;

    public static final class VariantInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15193a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f15194b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f15195c;
        public final String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f15196e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final String f15197f;

        public VariantInfo(int i2, int i3, String str, String str2, String str3, String str4) {
            this.f15193a = i2;
            this.f15194b = i3;
            this.f15195c = str;
            this.d = str2;
            this.f15196e = str3;
            this.f15197f = str4;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && VariantInfo.class == obj.getClass()) {
                VariantInfo variantInfo = (VariantInfo) obj;
                if (this.f15193a == variantInfo.f15193a && this.f15194b == variantInfo.f15194b && TextUtils.equals(this.f15195c, variantInfo.f15195c) && TextUtils.equals(this.d, variantInfo.d) && TextUtils.equals(this.f15196e, variantInfo.f15196e) && TextUtils.equals(this.f15197f, variantInfo.f15197f)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            int i2 = ((this.f15193a * 31) + this.f15194b) * 31;
            String str = this.f15195c;
            int iHashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.d;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            String str3 = this.f15196e;
            int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
            String str4 = this.f15197f;
            return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
        }
    }

    public HlsTrackMetadataEntry(String str, String str2, List<VariantInfo> list) {
        this.f15190a = str;
        this.f15191b = str2;
        this.f15192c = Collections.unmodifiableList(new ArrayList(list));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && HlsTrackMetadataEntry.class == obj.getClass()) {
            HlsTrackMetadataEntry hlsTrackMetadataEntry = (HlsTrackMetadataEntry) obj;
            if (TextUtils.equals(this.f15190a, hlsTrackMetadataEntry.f15190a) && TextUtils.equals(this.f15191b, hlsTrackMetadataEntry.f15191b) && this.f15192c.equals(hlsTrackMetadataEntry.f15192c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f15190a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f15191b;
        return this.f15192c.hashCode() + ((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String strR;
        String str = this.f15190a;
        if (str != null) {
            strR = n00.r(this.f15191b, "]", pq0.r(" [", str, ", "));
        } else {
            strR = "";
        }
        return "HlsTrackMetadataEntry".concat(strR);
    }
}
