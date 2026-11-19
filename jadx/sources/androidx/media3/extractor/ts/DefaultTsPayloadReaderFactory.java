package androidx.media3.extractor.ts;

import android.util.SparseArray;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultTsPayloadReaderFactory implements TsPayloadReader.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16976a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f16977b;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public DefaultTsPayloadReaderFactory(int i2) {
        this(i2, ImmutableList.x());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:38:0x005d  */
    @Override // androidx.media3.extractor.ts.TsPayloadReader.Factory
    public final TsPayloadReader a(int i2, TsPayloadReader.EsInfo esInfo) {
        String str = esInfo.f17179b;
        if (i2 != 2) {
            if (i2 == 3 || i2 == 4) {
                return new PesReader(new MpegAudioReader(str, esInfo.a(), "video/mp2t"));
            }
            if (i2 == 21) {
                return new PesReader(new Id3Reader("video/mp2t"));
            }
            if (i2 == 27) {
                if (d(4)) {
                    return null;
                }
                return new PesReader(new H264Reader(new SeiReader(c(esInfo), "video/mp2t"), d(1), d(8), "video/mp2t"));
            }
            if (i2 == 36) {
                return new PesReader(new H265Reader(new SeiReader(c(esInfo), "video/mp2t"), "video/mp2t"));
            }
            if (i2 == 45) {
                return new PesReader(new MpeghReader("video/mp2t"));
            }
            if (i2 == 89) {
                return new PesReader(new DvbSubtitleReader(esInfo.d, "video/mp2t"));
            }
            if (i2 == 172) {
                return new PesReader(new Ac4Reader(str, esInfo.a(), "video/mp2t"));
            }
            if (i2 == 257) {
                return new SectionReader(new PassthroughSectionPayloadReader("application/vnd.dvb.ait", "video/mp2t"));
            }
            if (i2 != 138) {
                if (i2 == 139) {
                    return new PesReader(new DtsReader(str, esInfo.a(), 5408, "video/mp2t"));
                }
                switch (i2) {
                    case 15:
                        if (d(2)) {
                            return null;
                        }
                        return new PesReader(new AdtsReader(false, str, esInfo.a(), "video/mp2t"));
                    case 16:
                        return new PesReader(new H263Reader(new UserDataReader(c(esInfo), "video/mp2t"), "video/mp2t"));
                    case 17:
                        if (d(2)) {
                            return null;
                        }
                        return new PesReader(new LatmReader(str, esInfo.a(), "video/mp2t"));
                    default:
                        switch (i2) {
                            case 128:
                                break;
                            case 129:
                                return new PesReader(new Ac3Reader(str, esInfo.a(), "video/mp2t"));
                            case 130:
                                if (!d(64)) {
                                    return null;
                                }
                                break;
                            default:
                                switch (i2) {
                                    case 134:
                                        if (d(16)) {
                                            return null;
                                        }
                                        return new SectionReader(new PassthroughSectionPayloadReader("application/x-scte35", "video/mp2t"));
                                    case 135:
                                        return new PesReader(new Ac3Reader(str, esInfo.a(), "video/mp2t"));
                                    case 136:
                                        break;
                                    default:
                                        return null;
                                }
                                break;
                        }
                        break;
                }
            }
            return new PesReader(new DtsReader(str, esInfo.a(), 4096, "video/mp2t"));
        }
        return new PesReader(new H262Reader(new UserDataReader(c(esInfo), "video/mp2t"), "video/mp2t"));
    }

    @Override // androidx.media3.extractor.ts.TsPayloadReader.Factory
    public final SparseArray b() {
        return new SparseArray();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v3 */
    public final List c(TsPayloadReader.EsInfo esInfo) {
        String str;
        int i2;
        List listSingletonList;
        boolean zD = d(32);
        List list = this.f16977b;
        if (zD) {
            return list;
        }
        ParsableByteArray parsableByteArray = new ParsableByteArray(esInfo.f17181e);
        ArrayList arrayList = list;
        while (parsableByteArray.a() > 0) {
            int iA = parsableByteArray.A();
            int iA2 = parsableByteArray.f14195b + parsableByteArray.A();
            if (iA == 134) {
                arrayList = new ArrayList();
                int iA3 = parsableByteArray.A() & 31;
                for (int i3 = 0; i3 < iA3; i3++) {
                    String strY = parsableByteArray.y(3, StandardCharsets.UTF_8);
                    int iA4 = parsableByteArray.A();
                    boolean z = (iA4 & 128) != 0;
                    if (z) {
                        i2 = iA4 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i2 = 1;
                    }
                    byte bA = (byte) parsableByteArray.A();
                    parsableByteArray.O(1);
                    if (z) {
                        boolean z2 = (bA & 64) != 0;
                        byte[] bArr = CodecSpecificDataUtil.f14144a;
                        listSingletonList = Collections.singletonList(z2 ? new byte[]{1} : new byte[]{0});
                    } else {
                        listSingletonList = null;
                    }
                    Format.Builder builder = new Format.Builder();
                    builder.n = MimeTypes.p(str);
                    builder.d = strY;
                    builder.K = i2;
                    builder.q = listSingletonList;
                    arrayList.add(new Format(builder));
                }
            }
            parsableByteArray.N(iA2);
            arrayList = arrayList;
        }
        return arrayList;
    }

    public final boolean d(int i2) {
        return (this.f16976a & i2) != 0;
    }

    public DefaultTsPayloadReaderFactory() {
        this(0);
    }

    public DefaultTsPayloadReaderFactory(int i2, List<Format> list) {
        this.f16976a = i2;
        this.f16977b = list;
    }
}
