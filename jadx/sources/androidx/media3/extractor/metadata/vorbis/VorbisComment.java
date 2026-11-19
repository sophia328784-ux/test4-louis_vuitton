package androidx.media3.extractor.metadata.vorbis;

import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import com.google.common.base.Ascii;
import com.google.common.primitives.Ints;
import defpackage.fc;

/* JADX INFO: loaded from: classes.dex */
public final class VorbisComment implements Metadata.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f16420a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16421b;

    public VorbisComment(String str, String str2) {
        this.f16420a = Ascii.d(str);
        this.f16421b = str2;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // androidx.media3.common.Metadata.Entry
    public final void b(MediaMetadata.Builder builder) {
        String str = this.f16420a;
        str.getClass();
        byte b2 = -1;
        switch (str.hashCode()) {
            case -1935137620:
                if (str.equals("TOTALTRACKS")) {
                    b2 = 0;
                }
                break;
            case -215998278:
                if (str.equals("TOTALDISCS")) {
                    b2 = 1;
                }
                break;
            case -113312716:
                if (str.equals("TRACKNUMBER")) {
                    b2 = 2;
                }
                break;
            case 62359119:
                if (str.equals("ALBUM")) {
                    b2 = 3;
                }
                break;
            case 67703139:
                if (str.equals("GENRE")) {
                    b2 = 4;
                }
                break;
            case 79833656:
                if (str.equals("TITLE")) {
                    b2 = 5;
                }
                break;
            case 428414940:
                if (str.equals("DESCRIPTION")) {
                    b2 = 6;
                }
                break;
            case 993300766:
                if (str.equals("DISCNUMBER")) {
                    b2 = 7;
                }
                break;
            case 1746739798:
                if (str.equals("ALBUMARTIST")) {
                    b2 = 8;
                }
                break;
            case 1939198791:
                if (str.equals("ARTIST")) {
                    b2 = 9;
                }
                break;
        }
        String str2 = this.f16421b;
        switch (b2) {
            case 0:
                Integer numH = Ints.h(str2);
                if (numH != null) {
                    builder.p = numH;
                }
                break;
            case 1:
                Integer numH2 = Ints.h(str2);
                if (numH2 != null) {
                    builder.D = numH2;
                }
                break;
            case 2:
                Integer numH3 = Ints.h(str2);
                if (numH3 != null) {
                    builder.o = numH3;
                }
                break;
            case 3:
                builder.f13890c = str2;
                break;
            case 4:
                builder.E = str2;
                break;
            case 5:
                builder.f13888a = str2;
                break;
            case 6:
                builder.g = str2;
                break;
            case 7:
                Integer numH4 = Ints.h(str2);
                if (numH4 != null) {
                    builder.C = numH4;
                }
                break;
            case 8:
                builder.d = str2;
                break;
            case 9:
                builder.f13889b = str2;
                break;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && VorbisComment.class == obj.getClass()) {
            VorbisComment vorbisComment = (VorbisComment) obj;
            if (this.f16420a.equals(vorbisComment.f16420a) && this.f16421b.equals(vorbisComment.f16421b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f16421b.hashCode() + fc.b(527, 31, this.f16420a);
    }

    public final String toString() {
        return "VC: " + this.f16420a + "=" + this.f16421b;
    }
}
