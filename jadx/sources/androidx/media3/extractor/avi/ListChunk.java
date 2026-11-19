package androidx.media3.extractor.avi;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.a;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
final class ListChunk implements AviChunk {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableList f16268a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16269b;

    public ListChunk(int i2, ImmutableList immutableList) {
        this.f16269b = i2;
        this.f16268a = immutableList;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static ListChunk b(int i2, ParsableByteArray parsableByteArray) {
        String str;
        AviChunk streamFormatChunk;
        String str2;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        int i3 = parsableByteArray.f14196c;
        int iA = -2;
        while (parsableByteArray.a() > 8) {
            int iO = parsableByteArray.o();
            int iO2 = parsableByteArray.f14195b + parsableByteArray.o();
            parsableByteArray.M(iO2);
            if (iO != 1414744396) {
                AviStreamHeaderChunk aviStreamHeaderChunk = null;
                switch (iO) {
                    case 1718776947:
                        if (iA != 2) {
                            if (iA == 1) {
                                int iT = parsableByteArray.t();
                                if (iT == 1) {
                                    str = "audio/raw";
                                } else if (iT == 85) {
                                    str = "audio/mpeg";
                                } else if (iT == 255) {
                                    str = "audio/mp4a-latm";
                                } else if (iT != 8192) {
                                    str = iT != 8193 ? null : "audio/vnd.dts";
                                } else {
                                    str = "audio/ac3";
                                }
                                if (str != null) {
                                    int iT2 = parsableByteArray.t();
                                    int iO3 = parsableByteArray.o();
                                    parsableByteArray.O(6);
                                    int iT3 = parsableByteArray.t();
                                    String str3 = Util.f14242a;
                                    int iC = Util.C(iT3, ByteOrder.LITTLE_ENDIAN);
                                    int iT4 = parsableByteArray.a() > 0 ? parsableByteArray.t() : 0;
                                    Format.Builder builder2 = new Format.Builder();
                                    builder2.n = MimeTypes.p(str);
                                    builder2.F = iT2;
                                    builder2.G = iO3;
                                    if (str.equals("audio/raw") && iC != 0) {
                                        builder2.H = iC;
                                    }
                                    if (str.equals("audio/mp4a-latm") && iT4 > 0) {
                                        byte[] bArr = new byte[iT4];
                                        parsableByteArray.k(0, iT4, bArr);
                                        builder2.q = ImmutableList.A(bArr);
                                    }
                                    streamFormatChunk = new StreamFormatChunk(new Format(builder2));
                                } else {
                                    a.u(iT, "Ignoring track with unsupported format tag ");
                                }
                            } else {
                                Log.g("Ignoring strf box for unsupported track type: ".concat(Util.F(iA)));
                            }
                            streamFormatChunk = aviStreamHeaderChunk;
                            break;
                        } else {
                            parsableByteArray.O(4);
                            int iO4 = parsableByteArray.o();
                            int iO5 = parsableByteArray.o();
                            parsableByteArray.O(4);
                            int iO6 = parsableByteArray.o();
                            switch (iO6) {
                                case 808802372:
                                case 877677894:
                                case 1145656883:
                                case 1145656920:
                                case 1482049860:
                                case 1684633208:
                                case 2021026148:
                                    str2 = "video/mp4v-es";
                                    break;
                                case 826496577:
                                case 828601953:
                                case 875967048:
                                    str2 = "video/avc";
                                    break;
                                case 842289229:
                                    str2 = "video/mp42";
                                    break;
                                case 859066445:
                                    str2 = "video/mp43";
                                    break;
                                case 1196444237:
                                case 1735420525:
                                    str2 = "video/mjpeg";
                                    break;
                                default:
                                    str2 = null;
                                    break;
                            }
                            if (str2 != null) {
                                Format.Builder builder3 = new Format.Builder();
                                builder3.u = iO4;
                                builder3.v = iO5;
                                builder3.n = MimeTypes.p(str2);
                                streamFormatChunk = new StreamFormatChunk(new Format(builder3));
                            } else {
                                a.u(iO6, "Ignoring track with unsupported compression ");
                                streamFormatChunk = aviStreamHeaderChunk;
                            }
                        }
                        break;
                    case 1751742049:
                        int iO7 = parsableByteArray.o();
                        parsableByteArray.O(8);
                        int iO8 = parsableByteArray.o();
                        int iO9 = parsableByteArray.o();
                        parsableByteArray.O(4);
                        parsableByteArray.o();
                        parsableByteArray.O(12);
                        streamFormatChunk = new AviMainHeaderChunk(iO7, iO8, iO9);
                        break;
                    case 1752331379:
                        int iO10 = parsableByteArray.o();
                        parsableByteArray.O(12);
                        parsableByteArray.o();
                        int iO11 = parsableByteArray.o();
                        int iO12 = parsableByteArray.o();
                        parsableByteArray.O(4);
                        int iO13 = parsableByteArray.o();
                        int iO14 = parsableByteArray.o();
                        parsableByteArray.O(4);
                        aviStreamHeaderChunk = new AviStreamHeaderChunk(iO10, iO11, iO12, iO13, iO14, parsableByteArray.o());
                        streamFormatChunk = aviStreamHeaderChunk;
                        break;
                    case 1852994675:
                        streamFormatChunk = new StreamNameChunk(parsableByteArray.y(parsableByteArray.a(), StandardCharsets.UTF_8));
                        break;
                    default:
                        streamFormatChunk = aviStreamHeaderChunk;
                        break;
                }
            } else {
                streamFormatChunk = b(parsableByteArray.o(), parsableByteArray);
            }
            if (streamFormatChunk != null) {
                if (streamFormatChunk.getType() == 1752331379) {
                    iA = ((AviStreamHeaderChunk) streamFormatChunk).a();
                }
                builder.e(streamFormatChunk);
            }
            parsableByteArray.N(iO2);
            parsableByteArray.M(i3);
        }
        return new ListChunk(i2, builder.j());
    }

    public final AviChunk a(Class cls) {
        UnmodifiableListIterator unmodifiableListIteratorListIterator = this.f16268a.listIterator(0);
        while (unmodifiableListIteratorListIterator.hasNext()) {
            AviChunk aviChunk = (AviChunk) unmodifiableListIteratorListIterator.next();
            if (aviChunk.getClass() == cls) {
                return aviChunk;
            }
        }
        return null;
    }

    @Override // androidx.media3.extractor.avi.AviChunk
    public final int getType() {
        return this.f16269b;
    }
}
