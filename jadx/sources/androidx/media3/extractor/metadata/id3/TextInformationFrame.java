package androidx.media3.extractor.metadata.id3;

import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.Ints;
import defpackage.fc;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class TextInformationFrame extends Id3Frame {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16394b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ImmutableList f16395c;

    /* JADX WARN: Multi-variable type inference failed */
    public TextInformationFrame(String str, String str2, List<String> list) {
        super(str);
        Preconditions.g(!list.isEmpty());
        this.f16394b = str2;
        ImmutableList immutableListT = ImmutableList.t(list);
        this.f16395c = immutableListT;
    }

    public static ArrayList d(String str) {
        ArrayList arrayList = new ArrayList();
        try {
            if (str.length() >= 10) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(8, 10))));
                return arrayList;
            }
            if (str.length() >= 7) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(5, 7))));
                return arrayList;
            }
            if (str.length() >= 4) {
                arrayList.add(Integer.valueOf(Integer.parseInt(str.substring(0, 4))));
            }
            return arrayList;
        } catch (NumberFormatException unused) {
            return new ArrayList();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.common.Metadata.Entry
    public final void b(MediaMetadata.Builder builder) {
        byte b2;
        String str = this.f16384a;
        str.getClass();
        switch (str) {
            case "TAL":
                b2 = 0;
                break;
            case "TCM":
                b2 = 1;
                break;
            case "TDA":
                b2 = 2;
                break;
            case "TP1":
                b2 = 3;
                break;
            case "TP2":
                b2 = 4;
                break;
            case "TP3":
                b2 = 5;
                break;
            case "TRK":
                b2 = 6;
                break;
            case "TT2":
                b2 = 7;
                break;
            case "TXT":
                b2 = 8;
                break;
            case "TYE":
                b2 = 9;
                break;
            case "TALB":
                b2 = 10;
                break;
            case "TCOM":
                b2 = 11;
                break;
            case "TCON":
                b2 = 12;
                break;
            case "TDAT":
                b2 = 13;
                break;
            case "TDRC":
                b2 = 14;
                break;
            case "TDRL":
                b2 = 15;
                break;
            case "TEXT":
                b2 = 16;
                break;
            case "TIT2":
                b2 = 17;
                break;
            case "TPE1":
                b2 = 18;
                break;
            case "TPE2":
                b2 = 19;
                break;
            case "TPE3":
                b2 = 20;
                break;
            case "TRCK":
                b2 = 21;
                break;
            case "TYER":
                b2 = 22;
                break;
            default:
                b2 = -1;
                break;
        }
        ImmutableList immutableList = this.f16395c;
        try {
            switch (b2) {
                case 0:
                case 10:
                    builder.f13890c = (CharSequence) immutableList.get(0);
                    break;
                case 1:
                case 11:
                    builder.A = (CharSequence) immutableList.get(0);
                    break;
                case 2:
                case 13:
                    String str2 = (String) immutableList.get(0);
                    int i2 = Integer.parseInt(str2.substring(2, 4));
                    int i3 = Integer.parseInt(str2.substring(0, 2));
                    builder.u = Integer.valueOf(i2);
                    builder.v = Integer.valueOf(i3);
                    break;
                case 3:
                case 18:
                    builder.f13889b = (CharSequence) immutableList.get(0);
                    break;
                case 4:
                case 19:
                    builder.d = (CharSequence) immutableList.get(0);
                    break;
                case 5:
                case 20:
                    builder.B = (CharSequence) immutableList.get(0);
                    break;
                case 6:
                case 21:
                    String str3 = (String) immutableList.get(0);
                    String str4 = Util.f14242a;
                    String[] strArrSplit = str3.split("/", -1);
                    int i4 = Integer.parseInt(strArrSplit[0]);
                    Integer numValueOf = strArrSplit.length > 1 ? Integer.valueOf(Integer.parseInt(strArrSplit[1])) : null;
                    builder.o = Integer.valueOf(i4);
                    builder.p = numValueOf;
                    break;
                case 7:
                case 17:
                    builder.f13888a = (CharSequence) immutableList.get(0);
                    break;
                case 8:
                case 16:
                    builder.z = (CharSequence) immutableList.get(0);
                    break;
                case 9:
                case 22:
                    builder.t = Integer.valueOf(Integer.parseInt((String) immutableList.get(0)));
                    break;
                case 12:
                    Integer numH = Ints.h((String) immutableList.get(0));
                    if (numH != null) {
                        String strA = Id3Util.a(numH.intValue());
                        if (strA != null) {
                            builder.E = strA;
                        }
                    } else {
                        builder.E = (CharSequence) immutableList.get(0);
                    }
                    break;
                case 14:
                    ArrayList arrayListD = d((String) immutableList.get(0));
                    int size = arrayListD.size();
                    if (size != 1) {
                        if (size != 2) {
                            if (size == 3) {
                                builder.v = (Integer) arrayListD.get(2);
                            }
                        }
                        builder.u = (Integer) arrayListD.get(1);
                    }
                    builder.t = (Integer) arrayListD.get(0);
                    break;
                case 15:
                    ArrayList arrayListD2 = d((String) immutableList.get(0));
                    int size2 = arrayListD2.size();
                    if (size2 != 1) {
                        if (size2 != 2) {
                            if (size2 == 3) {
                                builder.y = (Integer) arrayListD2.get(2);
                            }
                        }
                        builder.x = (Integer) arrayListD2.get(1);
                    }
                    builder.w = (Integer) arrayListD2.get(0);
                    break;
            }
        } catch (NumberFormatException | StringIndexOutOfBoundsException unused) {
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && TextInformationFrame.class == obj.getClass()) {
            TextInformationFrame textInformationFrame = (TextInformationFrame) obj;
            if (Objects.equals(this.f16384a, textInformationFrame.f16384a) && Objects.equals(this.f16394b, textInformationFrame.f16394b) && this.f16395c.equals(textInformationFrame.f16395c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iB = fc.b(527, 31, this.f16384a);
        String str = this.f16394b;
        return this.f16395c.hashCode() + ((iB + (str != null ? str.hashCode() : 0)) * 31);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public final String toString() {
        return this.f16384a + ": description=" + this.f16394b + ": values=" + this.f16395c;
    }

    @Deprecated
    public TextInformationFrame(String str, String str2, String str3) {
        this(str, str2, ImmutableList.A(str3));
    }
}
