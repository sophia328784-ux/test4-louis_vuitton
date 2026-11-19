package androidx.media3.extractor.mp3;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.LongArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ConstantBitrateSeekMap;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.Id3Peeker;
import androidx.media3.extractor.IndexSeekMap;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.metadata.id3.MlltFrame;
import androidx.media3.extractor.metadata.id3.TextInformationFrame;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.math.LongMath;
import com.google.common.primitives.Ints;
import defpackage.lc0;
import defpackage.md;
import defpackage.pq0;
import java.io.EOFException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.math.RoundingMode;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class Mp3Extractor implements Extractor {
    public static final lc0 w = new lc0(10);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16467a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f16469c;
    public final MpegAudioUtil.Header d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GaplessInfoHolder f16470e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Id3Peeker f16471f;
    public final DiscardingTrackOutput g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ExtractorOutput f16472h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public TrackOutput f16473i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public TrackOutput f16474j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f16475k;
    public Metadata l;
    public Metadata m;
    public long n;
    public long o;
    public long p;
    public long q;
    public int r;
    public Seeker s;
    public boolean t;
    public boolean u;
    public long v;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public Mp3Extractor(int i2, long j2) {
        this.f16467a = (i2 & 2) != 0 ? i2 | 1 : i2;
        this.f16468b = j2;
        this.f16469c = new ParsableByteArray(10);
        this.d = new MpegAudioUtil.Header();
        this.f16470e = new GaplessInfoHolder();
        this.n = -9223372036854775807L;
        this.f16471f = new Id3Peeker();
        DiscardingTrackOutput discardingTrackOutput = new DiscardingTrackOutput();
        this.g = discardingTrackOutput;
        this.f16474j = discardingTrackOutput;
        this.q = -1L;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        this.f16475k = 0;
        this.n = -9223372036854775807L;
        this.o = 0L;
        this.r = 0;
        this.q = -1L;
        this.v = j3;
        Seeker seeker = this.s;
        if (seeker instanceof IndexSeeker) {
            LongArray longArray = ((IndexSeeker) seeker).d.f16178b;
            int i2 = longArray.f14173a;
            if (i2 != 0 && j3 - longArray.c(i2 - 1) < 100000) {
                return;
            }
            this.u = true;
            this.f16474j = this.g;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        this.f16472h = extractorOutput;
        TrackOutput trackOutputR = extractorOutput.r(0, 1);
        this.f16473i = trackOutputR;
        this.f16474j = trackOutputR;
        this.f16472h.n();
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) {
        return j(extractorInput, true);
    }

    /* JADX WARN: Code duplicated, block: B:104:0x0231  */
    /* JADX WARN: Code duplicated, block: B:105:0x023c  */
    /* JADX WARN: Code duplicated, block: B:108:0x024e  */
    /* JADX WARN: Code duplicated, block: B:111:0x025c  */
    /* JADX WARN: Code duplicated, block: B:113:0x0260  */
    /* JADX WARN: Code duplicated, block: B:119:0x029b  */
    /* JADX WARN: Code duplicated, block: B:11:0x003e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:122:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:124:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:126:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:128:0x02bc  */
    /* JADX WARN: Code duplicated, block: B:12:0x0040  */
    /* JADX WARN: Code duplicated, block: B:132:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:133:0x02f8  */
    /* JADX WARN: Code duplicated, block: B:135:0x0303  */
    /* JADX WARN: Code duplicated, block: B:137:0x0311  */
    /* JADX WARN: Code duplicated, block: B:13:0x0042 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:140:0x031e  */
    /* JADX WARN: Code duplicated, block: B:143:0x0322 A[LOOP:0: B:134:0x0301->B:143:0x0322, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:148:0x032b  */
    /* JADX WARN: Code duplicated, block: B:150:0x0334  */
    /* JADX WARN: Code duplicated, block: B:152:0x0342  */
    /* JADX WARN: Code duplicated, block: B:155:0x0356  */
    /* JADX WARN: Code duplicated, block: B:158:0x035a A[LOOP:1: B:149:0x0332->B:158:0x035a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:15:0x0045  */
    /* JADX WARN: Code duplicated, block: B:162:0x0362  */
    /* JADX WARN: Code duplicated, block: B:163:0x0367  */
    /* JADX WARN: Code duplicated, block: B:166:0x0389 A[LOOP:2: B:165:0x0387->B:166:0x0389, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:170:0x03af  */
    /* JADX WARN: Code duplicated, block: B:171:0x03b6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:172:0x03b8  */
    /* JADX WARN: Code duplicated, block: B:173:0x03ba A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:174:0x03bc  */
    /* JADX WARN: Code duplicated, block: B:175:0x03bf  */
    /* JADX WARN: Code duplicated, block: B:177:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:179:0x03c6  */
    /* JADX WARN: Code duplicated, block: B:180:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:18:0x005b  */
    /* JADX WARN: Code duplicated, block: B:209:0x0454  */
    /* JADX WARN: Code duplicated, block: B:211:0x045a  */
    /* JADX WARN: Code duplicated, block: B:220:0x046e  */
    /* JADX WARN: Code duplicated, block: B:229:0x0490  */
    /* JADX WARN: Code duplicated, block: B:22:0x0067  */
    /* JADX WARN: Code duplicated, block: B:232:0x04c8  */
    /* JADX WARN: Code duplicated, block: B:234:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:236:0x04f1  */
    /* JADX WARN: Code duplicated, block: B:238:0x04fb  */
    /* JADX WARN: Code duplicated, block: B:241:0x0504  */
    /* JADX WARN: Code duplicated, block: B:244:0x050f  */
    /* JADX WARN: Code duplicated, block: B:24:0x006d  */
    /* JADX WARN: Code duplicated, block: B:26:0x0076  */
    /* JADX WARN: Code duplicated, block: B:271:0x05be  */
    /* JADX WARN: Code duplicated, block: B:273:0x05c5  */
    /* JADX WARN: Code duplicated, block: B:276:0x05d3  */
    /* JADX WARN: Code duplicated, block: B:277:0x05d6  */
    /* JADX WARN: Code duplicated, block: B:27:0x0078  */
    /* JADX WARN: Code duplicated, block: B:280:0x05de  */
    /* JADX WARN: Code duplicated, block: B:290:0x0325 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:291:0x0326 A[EDGE_INSN: B:291:0x0326->B:145:0x0326 BREAK  A[LOOP:0: B:134:0x0301->B:143:0x0322], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:292:0x035d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:293:0x035e A[EDGE_INSN: B:293:0x035e->B:160:0x035e BREAK  A[LOOP:1: B:149:0x0332->B:158:0x035a], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:295:0x0124 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:296:0x00b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x0080 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x0082 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x0084  */
    /* JADX WARN: Code duplicated, block: B:33:0x008b A[PHI: r0 r24 r36
      0x008b: PHI (r0v14 androidx.media3.extractor.mp3.Mp3Extractor) = 
      (r0v7 androidx.media3.extractor.mp3.Mp3Extractor)
      (r0v7 androidx.media3.extractor.mp3.Mp3Extractor)
      (r0v7 androidx.media3.extractor.mp3.Mp3Extractor)
      (r0v0 androidx.media3.extractor.mp3.Mp3Extractor)
     binds: [B:120:0x02a5, B:127:0x02ba, B:109:0x0258, B:32:0x0084] A[DONT_GENERATE, DONT_INLINE]
      0x008b: PHI (r24v4 long) = (r24v2 long), (r24v2 long), (r24v2 long), (r24v6 long) binds: [B:120:0x02a5, B:127:0x02ba, B:109:0x0258, B:32:0x0084] A[DONT_GENERATE, DONT_INLINE]
      0x008b: PHI (r36v2 int) = (r36v0 int), (r36v0 int), (r36v0 int), (r36v7 int) binds: [B:120:0x02a5, B:127:0x02ba, B:109:0x0258, B:32:0x0084] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:34:0x008f  */
    /* JADX WARN: Code duplicated, block: B:35:0x0095  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:39:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:41:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:43:0x00fa A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:44:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:49:0x0103  */
    /* JADX WARN: Code duplicated, block: B:50:0x0108  */
    /* JADX WARN: Code duplicated, block: B:51:0x010d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0112  */
    /* JADX WARN: Code duplicated, block: B:61:0x0144  */
    /* JADX WARN: Code duplicated, block: B:66:0x017f  */
    /* JADX WARN: Code duplicated, block: B:67:0x0184  */
    /* JADX WARN: Code duplicated, block: B:70:0x0189  */
    /* JADX WARN: Code duplicated, block: B:71:0x0190  */
    /* JADX WARN: Code duplicated, block: B:74:0x0197  */
    /* JADX WARN: Code duplicated, block: B:76:0x019f A[LOOP:4: B:75:0x019d->B:76:0x019f, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:78:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:81:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:84:0x01be  */
    /* JADX WARN: Code duplicated, block: B:86:0x01e0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:89:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:91:0x0201  */
    /* JADX WARN: Code duplicated, block: B:94:0x021c  */
    /* JADX WARN: Code duplicated, block: B:97:0x0221  */
    /* JADX WARN: Code duplicated, block: B:9:0x0022  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        int i2;
        int i3;
        long j2;
        long j3;
        long j4;
        long position;
        long j5;
        int iC;
        int i4;
        int iM;
        ParsableByteArray parsableByteArray;
        int i5;
        int i6;
        int i7;
        int iM2;
        GaplessInfoHolder gaplessInfoHolder;
        int i8;
        int iM3;
        int iE;
        long jC;
        long[] jArr;
        Mp3InfoReplayGain mp3InfoReplayGain;
        int i9;
        int i10;
        XingFrame xingFrame;
        int i11;
        int i12;
        Mp3InfoReplayGain mp3InfoReplayGain2;
        Metadata metadata;
        long position2;
        MpegAudioUtil.Header header;
        long jMin;
        long length;
        long jA;
        long j6;
        Seeker constantBitrateSeeker;
        long length2;
        long jA2;
        float fIntBitsToFloat;
        Mp3InfoReplayGain.GainField gainFieldA;
        Mp3InfoReplayGain.GainField gainFieldA2;
        Mp3InfoReplayGain mp3InfoReplayGain3;
        long[] jArr2;
        int i13;
        Metadata metadata2;
        long position3;
        Predicate predicateA;
        Metadata.Entry[] entryArr;
        int length3;
        int i14;
        Metadata.Entry entry;
        MlltFrame mlltFrame;
        int[] iArr;
        Metadata.Entry[] entryArr2;
        int length4;
        int i15;
        Metadata.Entry entry2;
        TextInformationFrame textInformationFrame;
        int i16;
        long jR;
        int length5;
        long[] jArr3;
        long[] jArr4;
        long j7;
        int i17;
        MlltSeeker mlltSeeker;
        Metadata.Entry entry3;
        Metadata.Entry entry4;
        boolean z;
        int i18;
        Seeker indexSeeker;
        Seeker seekerG;
        boolean z2;
        Metadata metadataB;
        Format.Builder builder;
        long length6;
        long position4;
        long j8;
        long jMax;
        int iM4;
        long jX;
        int iH;
        int iH2;
        int iH3;
        long[] jArr5;
        long[] jArr6;
        long j9;
        int i19;
        int iA;
        Mp3Extractor mp3Extractor = this;
        ExtractorInput extractorInput2 = extractorInput;
        mp3Extractor.f16473i.getClass();
        String str = Util.f14242a;
        int i20 = mp3Extractor.f16475k;
        MpegAudioUtil.Header header2 = mp3Extractor.d;
        if (i20 == 0) {
            try {
                mp3Extractor.j(extractorInput2, false);
                if (mp3Extractor.s == null) {
                    parsableByteArray = new ParsableByteArray(header2.f16187c);
                    extractorInput2.b(0, header2.f16187c, parsableByteArray.f14194a);
                    i5 = header2.f16185a & 1;
                    i6 = header2.f16188e;
                    i7 = 21;
                    j2 = 1000000;
                    if (i5 != 0) {
                        if (i6 != 1) {
                            i7 = 36;
                        }
                    } else if (i6 == 1) {
                        i7 = 13;
                    }
                    j3 = -9223372036854775807L;
                    if (parsableByteArray.f14196c >= i7 + 4) {
                        parsableByteArray.N(i7);
                        iM2 = parsableByteArray.m();
                        if (iM2 != 1483304551 && iM2 != 1231971951) {
                            if (parsableByteArray.f14196c >= 40) {
                                parsableByteArray.N(36);
                                if (parsableByteArray.m() == 1447187017) {
                                    iM2 = 1447187017;
                                } else {
                                    iM2 = 0;
                                }
                            } else {
                                iM2 = 0;
                            }
                        }
                    } else if (parsableByteArray.f14196c >= 40) {
                        parsableByteArray.N(36);
                        if (parsableByteArray.m() == 1447187017) {
                            iM2 = 1447187017;
                        } else {
                            iM2 = 0;
                        }
                    } else {
                        iM2 = 0;
                    }
                    gaplessInfoHolder = mp3Extractor.f16470e;
                    if (iM2 == 1231971951) {
                        i8 = 0;
                        j4 = 0;
                        iM3 = parsableByteArray.m();
                        if ((iM3 & 1) != 0) {
                            iE = parsableByteArray.E();
                        } else {
                            iE = -1;
                        }
                        if ((iM3 & 2) != 0) {
                            jC = parsableByteArray.C();
                        } else {
                            jC = -1;
                        }
                        if ((iM3 & 4) == 4) {
                            jArr2 = new long[100];
                            for (i13 = 0; i13 < 100; i13++) {
                                jArr2[i13] = parsableByteArray.A();
                            }
                            jArr = jArr2;
                        } else {
                            jArr = null;
                        }
                        if ((iM3 & 8) != 0) {
                            parsableByteArray.O(4);
                        }
                        if (parsableByteArray.a() >= 24) {
                            parsableByteArray.O(11);
                            fIntBitsToFloat = Float.intBitsToFloat(parsableByteArray.m());
                            int iH4 = parsableByteArray.H();
                            int iH5 = parsableByteArray.H();
                            gainFieldA = Mp3InfoReplayGain.GainField.a(iH4);
                            gainFieldA2 = Mp3InfoReplayGain.GainField.a(iH5);
                            if (fIntBitsToFloat > Call.Parameters.DEFAULT_CAMERA_ZOOM && gainFieldA == null && gainFieldA2 == null) {
                                mp3InfoReplayGain3 = null;
                            } else {
                                mp3InfoReplayGain3 = new Mp3InfoReplayGain(fIntBitsToFloat, gainFieldA, gainFieldA2);
                            }
                            parsableByteArray.O(2);
                            int iD = parsableByteArray.D();
                            i10 = iD & 4095;
                            i9 = (16773120 & iD) >> 12;
                            mp3InfoReplayGain = mp3InfoReplayGain3;
                        } else {
                            mp3InfoReplayGain = null;
                            i9 = -1;
                            i10 = -1;
                        }
                        mp3Extractor = this;
                        xingFrame = new XingFrame(mp3Extractor.d, iE, jC, jArr, mp3InfoReplayGain, i9, i10);
                        if ((gaplessInfoHolder.f16165a != -1 || gaplessInfoHolder.f16166b == -1) && (i11 = xingFrame.f16490e) != -1 && (i12 = xingFrame.f16491f) != -1) {
                            gaplessInfoHolder.f16165a = i11;
                            gaplessInfoHolder.f16166b = i12;
                        }
                        mp3InfoReplayGain2 = xingFrame.d;
                        if (mp3InfoReplayGain2 != null) {
                            metadata = new Metadata(mp3InfoReplayGain2);
                        } else {
                            metadata = null;
                        }
                        mp3Extractor.m = metadata;
                        position2 = extractorInput2.getPosition();
                        extractorInput2.m(header2.f16187c);
                        header = xingFrame.f16487a;
                        jMin = xingFrame.f16489c;
                        if (iM2 == 1483304551) {
                            length2 = extractorInput2.getLength();
                            jA2 = xingFrame.a();
                            if (jA2 == -9223372036854775807L) {
                                constantBitrateSeeker = null;
                            } else {
                                if (jMin != -1 && length2 != -1 && position2 + jMin != length2) {
                                    long j10 = length2 - position2;
                                    StringBuilder sbQ = pq0.q(j10, "Data size mismatch between stream (", ") and Xing frame (");
                                    sbQ.append(jMin);
                                    sbQ.append("), using smaller value.");
                                    Log.f(sbQ.toString());
                                    jMin = Math.min(jMin, j10);
                                }
                                constantBitrateSeeker = new XingSeeker(position2, header.f16187c, jA2, header.f16189f, jMin, xingFrame.g);
                            }
                        } else {
                            length = extractorInput2.getLength();
                            jA = xingFrame.a();
                            if (jA != -9223372036854775807L) {
                                if (jMin != -1) {
                                    length = position2 + jMin;
                                    j6 = jMin - ((long) header.f16187c);
                                } else if (length != -1) {
                                    j6 = (length - position2) - ((long) header.f16187c);
                                } else {
                                    constantBitrateSeeker = null;
                                }
                                long j11 = j6;
                                long j12 = length;
                                RoundingMode roundingMode = RoundingMode.HALF_UP;
                                constantBitrateSeeker = new ConstantBitrateSeeker(j12, position2 + ((long) header.f16187c), Ints.b(Util.Z(j11, 8000000L, jA, roundingMode)), Ints.b(LongMath.a(j11, xingFrame.f16488b, roundingMode)), false);
                            } else {
                                constantBitrateSeeker = null;
                            }
                        }
                    } else if (iM2 != 1447187017) {
                        if (iM2 != 1483304551) {
                            extractorInput2.g();
                            i8 = 0;
                            j4 = 0;
                        } else {
                            i8 = 0;
                            j4 = 0;
                            iM3 = parsableByteArray.m();
                            if ((iM3 & 1) != 0) {
                                iE = parsableByteArray.E();
                            } else {
                                iE = -1;
                            }
                            if ((iM3 & 2) != 0) {
                                jC = parsableByteArray.C();
                            } else {
                                jC = -1;
                            }
                            if ((iM3 & 4) == 4) {
                                jArr2 = new long[100];
                                while (i13 < 100) {
                                    jArr2[i13] = parsableByteArray.A();
                                }
                                jArr = jArr2;
                            } else {
                                jArr = null;
                            }
                            if ((iM3 & 8) != 0) {
                                parsableByteArray.O(4);
                            }
                            if (parsableByteArray.a() >= 24) {
                                parsableByteArray.O(11);
                                fIntBitsToFloat = Float.intBitsToFloat(parsableByteArray.m());
                                int iH6 = parsableByteArray.H();
                                int iH7 = parsableByteArray.H();
                                gainFieldA = Mp3InfoReplayGain.GainField.a(iH6);
                                gainFieldA2 = Mp3InfoReplayGain.GainField.a(iH7);
                                if (fIntBitsToFloat > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                    mp3InfoReplayGain3 = new Mp3InfoReplayGain(fIntBitsToFloat, gainFieldA, gainFieldA2);
                                } else {
                                    mp3InfoReplayGain3 = new Mp3InfoReplayGain(fIntBitsToFloat, gainFieldA, gainFieldA2);
                                }
                                parsableByteArray.O(2);
                                int iD2 = parsableByteArray.D();
                                i10 = iD2 & 4095;
                                i9 = (16773120 & iD2) >> 12;
                                mp3InfoReplayGain = mp3InfoReplayGain3;
                            } else {
                                mp3InfoReplayGain = null;
                                i9 = -1;
                                i10 = -1;
                            }
                            mp3Extractor = this;
                            xingFrame = new XingFrame(mp3Extractor.d, iE, jC, jArr, mp3InfoReplayGain, i9, i10);
                            if (gaplessInfoHolder.f16165a != -1) {
                                gaplessInfoHolder.f16165a = i11;
                                gaplessInfoHolder.f16166b = i12;
                            } else {
                                gaplessInfoHolder.f16165a = i11;
                                gaplessInfoHolder.f16166b = i12;
                            }
                            mp3InfoReplayGain2 = xingFrame.d;
                            if (mp3InfoReplayGain2 != null) {
                                metadata = new Metadata(mp3InfoReplayGain2);
                            } else {
                                metadata = null;
                            }
                            mp3Extractor.m = metadata;
                            position2 = extractorInput2.getPosition();
                            extractorInput2.m(header2.f16187c);
                            header = xingFrame.f16487a;
                            jMin = xingFrame.f16489c;
                            if (iM2 == 1483304551) {
                                length2 = extractorInput2.getLength();
                                jA2 = xingFrame.a();
                                if (jA2 == -9223372036854775807L) {
                                    if (jMin != -1) {
                                        long j13 = length2 - position2;
                                        StringBuilder sbQ2 = pq0.q(j13, "Data size mismatch between stream (", ") and Xing frame (");
                                        sbQ2.append(jMin);
                                        sbQ2.append("), using smaller value.");
                                        Log.f(sbQ2.toString());
                                        jMin = Math.min(jMin, j13);
                                    }
                                    constantBitrateSeeker = new XingSeeker(position2, header.f16187c, jA2, header.f16189f, jMin, xingFrame.g);
                                }
                            } else {
                                length = extractorInput2.getLength();
                                jA = xingFrame.a();
                                if (jA != -9223372036854775807L) {
                                    if (jMin != -1) {
                                        length = position2 + jMin;
                                        j6 = jMin - ((long) header.f16187c);
                                    } else if (length != -1) {
                                        j6 = (length - position2) - ((long) header.f16187c);
                                    }
                                    long j14 = j6;
                                    long j15 = length;
                                    RoundingMode roundingMode2 = RoundingMode.HALF_UP;
                                    constantBitrateSeeker = new ConstantBitrateSeeker(j15, position2 + ((long) header.f16187c), Ints.b(Util.Z(j14, 8000000L, jA, roundingMode2)), Ints.b(LongMath.a(j14, xingFrame.f16488b, roundingMode2)), false);
                                }
                            }
                        }
                        constantBitrateSeeker = null;
                    } else {
                        length6 = extractorInput2.getLength();
                        position4 = extractorInput2.getPosition();
                        parsableByteArray.O(6);
                        int iM5 = parsableByteArray.m();
                        j4 = 0;
                        j8 = position4 + ((long) header2.f16187c);
                        jMax = j8 + ((long) iM5);
                        iM4 = parsableByteArray.m();
                        if (iM4 <= 0) {
                            i8 = 0;
                        } else {
                            i8 = 0;
                            jX = Util.X(header2.d, (((long) iM4) * ((long) header2.g)) - 1);
                            iH = parsableByteArray.H();
                            iH2 = parsableByteArray.H();
                            iH3 = parsableByteArray.H();
                            parsableByteArray.O(2);
                            jArr5 = new long[iH];
                            jArr6 = new long[iH];
                            j9 = position4 + ((long) header2.f16187c);
                            i19 = 0;
                            while (true) {
                                if (i19 < iH) {
                                    if (length6 != -1 && length6 != jMax) {
                                        StringBuilder sbQ3 = pq0.q(length6, "VBRI data size mismatch: ", ", ");
                                        sbQ3.append(jMax);
                                        Log.g(sbQ3.toString());
                                    }
                                    if (jMax != j9) {
                                        StringBuilder sbQ4 = pq0.q(jMax, "VBRI bytes and ToC mismatch (using max): ", ", ");
                                        sbQ4.append(j9);
                                        sbQ4.append("\nSeeking will be inaccurate.");
                                        Log.g(sbQ4.toString());
                                        jMax = Math.max(jMax, j9);
                                    }
                                    constantBitrateSeeker = new VbriSeeker(jArr5, jArr6, jX, j8, jMax, header2.f16189f);
                                    break;
                                }
                                jArr5[i19] = (((long) i19) * jX) / ((long) iH);
                                jArr6[i19] = j9;
                                if (iH3 != 1) {
                                    iA = parsableByteArray.A();
                                } else if (iH3 != 2) {
                                    iA = parsableByteArray.H();
                                } else if (iH3 != 3) {
                                    iA = parsableByteArray.D();
                                } else if (iH3 != 4) {
                                    iA = parsableByteArray.E();
                                }
                                j9 += ((long) iH2) * ((long) iA);
                                i19++;
                            }
                            extractorInput2 = extractorInput;
                            extractorInput2.m(header2.f16187c);
                            mp3Extractor = this;
                        }
                        constantBitrateSeeker = null;
                        extractorInput2 = extractorInput;
                        extractorInput2.m(header2.f16187c);
                        mp3Extractor = this;
                    }
                    metadata2 = mp3Extractor.l;
                    position3 = extractorInput2.getPosition();
                    if (metadata2 == null) {
                        mlltSeeker = null;
                    } else {
                        predicateA = Predicates.a();
                        entryArr = metadata2.f13897a;
                        length3 = entryArr.length;
                        i14 = i8;
                        while (true) {
                            if (i14 < length3) {
                                entry = null;
                                break;
                            }
                            entry4 = entryArr[i14];
                            if (MlltFrame.class.isAssignableFrom(entry4.getClass())) {
                                entry = (Metadata.Entry) MlltFrame.class.cast(entry4);
                                if (!predicateA.apply(entry)) {
                                    entry = null;
                                }
                            } else {
                                entry = null;
                            }
                            if (entry != null) {
                                break;
                            }
                            i14++;
                        }
                        mlltFrame = (MlltFrame) entry;
                        if (mlltFrame == null) {
                            mlltSeeker = null;
                        } else {
                            iArr = mlltFrame.f16390e;
                            entryArr2 = metadata2.f13897a;
                            length4 = entryArr2.length;
                            i15 = i8;
                            while (true) {
                                if (i15 < length4) {
                                    entry2 = null;
                                    break;
                                }
                                entry3 = entryArr2[i15];
                                if (TextInformationFrame.class.isAssignableFrom(entry3.getClass())) {
                                    entry2 = (Metadata.Entry) TextInformationFrame.class.cast(entry3);
                                    if (!((TextInformationFrame) entry2).f16384a.equals("TLEN")) {
                                        entry2 = null;
                                    }
                                } else {
                                    entry2 = null;
                                }
                                if (entry2 != null) {
                                    break;
                                }
                                i15++;
                            }
                            textInformationFrame = (TextInformationFrame) entry2;
                            if (textInformationFrame == null) {
                                jR = -9223372036854775807L;
                                i16 = i8;
                            } else {
                                i16 = i8;
                                jR = Util.R(Long.parseLong((String) textInformationFrame.f16395c.get(i16)));
                            }
                            length5 = iArr.length;
                            int i21 = length5 + 1;
                            jArr3 = new long[i21];
                            jArr4 = new long[i21];
                            jArr3[i16] = position3;
                            jArr4[i16] = j4;
                            j7 = j4;
                            for (i17 = 1; i17 <= length5; i17++) {
                                int i22 = i17 - 1;
                                position3 += (long) (mlltFrame.f16389c + iArr[i22]);
                                j7 += (long) (mlltFrame.d + mlltFrame.f16391f[i22]);
                                jArr3[i17] = position3;
                                jArr4[i17] = j7;
                            }
                            mlltSeeker = new MlltSeeker(jArr3, jArr4, jR);
                        }
                    }
                    z = mp3Extractor.t;
                    i18 = mp3Extractor.f16467a;
                    if (z) {
                        seekerG = new Seeker.UnseekableSeeker();
                    } else {
                        if (mlltSeeker != null) {
                            indexSeeker = mlltSeeker;
                        } else if (constantBitrateSeeker != null) {
                            indexSeeker = constantBitrateSeeker;
                        } else {
                            indexSeeker = null;
                        }
                        if (indexSeeker == null) {
                            if ((i18 & 2) != 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            indexSeeker = mp3Extractor.g(extractorInput2, z2);
                        }
                        if ((i18 & 4) != 0 && !indexSeeker.e()) {
                            indexSeeker = new IndexSeeker(indexSeeker.h(), extractorInput2.getPosition(), indexSeeker.d());
                        }
                        if (indexSeeker.e() && !(indexSeeker instanceof ConstantBitrateSeeker) && (i18 & 1) != 0 && indexSeeker.h() != -9223372036854775807L && (indexSeeker.d() != -1 || extractorInput2.getLength() != -1)) {
                            long jA3 = indexSeeker.a() != -1 ? indexSeeker.a() : j4;
                            long jD = indexSeeker.d() != -1 ? indexSeeker.d() : extractorInput2.getLength();
                            seekerG = new ConstantBitrateSeeker(jD, jA3, Ints.f(Util.Z(jD - jA3, 8000000L, indexSeeker.h(), RoundingMode.HALF_UP)), -1, false);
                        } else if (!indexSeeker.e() || (indexSeeker instanceof ConstantBitrateSeeker) || (i18 & 1) == 0) {
                            seekerG = indexSeeker;
                        } else {
                            seekerG = mp3Extractor.g(extractorInput2, (i18 & 2) != 0);
                        }
                        mp3Extractor.f16473i.e(seekerG.h());
                    }
                    mp3Extractor.s = seekerG;
                    mp3Extractor.f16472h.j(seekerG);
                    metadataB = mp3Extractor.l;
                    if (metadataB == null && (i18 & 8) == 0) {
                        Metadata metadata3 = mp3Extractor.m;
                        if (metadata3 != null) {
                            metadataB = metadataB.b(metadata3);
                        }
                    } else {
                        metadataB = mp3Extractor.m;
                    }
                    builder = new Format.Builder();
                    builder.m = MimeTypes.p("audio/mpeg");
                    builder.n = MimeTypes.p(header2.f16186b);
                    builder.o = 4096;
                    builder.F = header2.f16188e;
                    builder.G = header2.d;
                    builder.I = gaplessInfoHolder.f16165a;
                    builder.J = gaplessInfoHolder.f16166b;
                    builder.f13772k = metadataB;
                    if (mp3Extractor.s.g() != -2147483647) {
                        builder.f13769h = mp3Extractor.s.g();
                    }
                    mp3Extractor.f16474j.b(new Format(builder));
                    mp3Extractor.p = extractorInput2.getPosition();
                } else {
                    j2 = 1000000;
                    j3 = -9223372036854775807L;
                    j4 = 0;
                    if (mp3Extractor.p != 0) {
                        position = extractorInput2.getPosition();
                        j5 = mp3Extractor.p;
                        if (position < j5) {
                            extractorInput2.m((int) (j5 - position));
                        }
                    }
                }
                if (mp3Extractor.r == 0) {
                    extractorInput2.g();
                    if (i(extractorInput)) {
                        i2 = -1;
                        i3 = -1;
                    } else {
                        ParsableByteArray parsableByteArray2 = mp3Extractor.f16469c;
                        parsableByteArray2.N(0);
                        iM = parsableByteArray2.m();
                        if (((-128000) & iM) == (((long) mp3Extractor.f16475k) & (-128000)) || MpegAudioUtil.a(iM) == -1) {
                            extractorInput2.m(1);
                            mp3Extractor.f16475k = 0;
                        } else {
                            header2.a(iM);
                            if (mp3Extractor.n == j3) {
                                mp3Extractor.n = mp3Extractor.s.f(extractorInput2.getPosition());
                                long j16 = mp3Extractor.f16468b;
                                if (j16 != j3) {
                                    mp3Extractor.n = (j16 - mp3Extractor.s.f(j4)) + mp3Extractor.n;
                                }
                            }
                            mp3Extractor.r = header2.f16187c;
                            long position5 = extractorInput2.getPosition() + ((long) header2.f16187c);
                            mp3Extractor.q = position5;
                            Seeker seeker = mp3Extractor.s;
                            if (seeker instanceof IndexSeeker) {
                                IndexSeekMap indexSeekMap = ((IndexSeeker) seeker).d;
                                long j17 = (((mp3Extractor.o + ((long) header2.g)) * j2) / ((long) header2.d)) + mp3Extractor.n;
                                LongArray longArray = indexSeekMap.f16178b;
                                int i23 = longArray.f14173a;
                                if (i23 == 0 || j17 - longArray.c(i23 - 1) >= 100000) {
                                    indexSeekMap.i(j17, position5);
                                }
                                if (mp3Extractor.u) {
                                    long j18 = mp3Extractor.v;
                                    LongArray longArray2 = indexSeekMap.f16178b;
                                    int i24 = longArray2.f14173a;
                                    if (i24 != 0 && j18 - longArray2.c(i24 - 1) < 100000) {
                                        mp3Extractor.u = false;
                                        mp3Extractor.f16474j = mp3Extractor.f16473i;
                                    }
                                }
                            }
                            iC = mp3Extractor.f16474j.c(extractorInput2, mp3Extractor.r, true);
                            if (iC == -1) {
                                i2 = -1;
                                i3 = -1;
                            } else {
                                i4 = mp3Extractor.r - iC;
                                mp3Extractor.r = i4;
                                if (i4 <= 0) {
                                    mp3Extractor.f16474j.g(((mp3Extractor.o * j2) / ((long) header2.d)) + mp3Extractor.n, 1, header2.f16187c, 0, null);
                                    mp3Extractor.o += (long) header2.g;
                                    i3 = 0;
                                    mp3Extractor.r = 0;
                                    i2 = -1;
                                }
                            }
                        }
                        i2 = -1;
                        i3 = 0;
                    }
                } else {
                    iC = mp3Extractor.f16474j.c(extractorInput2, mp3Extractor.r, true);
                    if (iC == -1) {
                        i2 = -1;
                        i3 = -1;
                    } else {
                        i4 = mp3Extractor.r - iC;
                        mp3Extractor.r = i4;
                        if (i4 <= 0) {
                            i2 = -1;
                            i3 = 0;
                        } else {
                            mp3Extractor.f16474j.g(((mp3Extractor.o * j2) / ((long) header2.d)) + mp3Extractor.n, 1, header2.f16187c, 0, null);
                            mp3Extractor.o += (long) header2.g;
                            i3 = 0;
                            mp3Extractor.r = 0;
                            i2 = -1;
                        }
                    }
                }
            } catch (EOFException unused) {
                i2 = -1;
                i3 = -1;
                j2 = 1000000;
            }
        } else {
            if (mp3Extractor.s == null) {
                parsableByteArray = new ParsableByteArray(header2.f16187c);
                extractorInput2.b(0, header2.f16187c, parsableByteArray.f14194a);
                i5 = header2.f16185a & 1;
                i6 = header2.f16188e;
                i7 = 21;
                j2 = 1000000;
                if (i5 != 0) {
                    if (i6 != 1) {
                        i7 = 36;
                    }
                } else if (i6 == 1) {
                    i7 = 13;
                }
                j3 = -9223372036854775807L;
                if (parsableByteArray.f14196c >= i7 + 4) {
                    parsableByteArray.N(i7);
                    iM2 = parsableByteArray.m();
                    if (iM2 != 1483304551) {
                        if (parsableByteArray.f14196c >= 40) {
                            parsableByteArray.N(36);
                            if (parsableByteArray.m() == 1447187017) {
                                iM2 = 1447187017;
                            } else {
                                iM2 = 0;
                            }
                        } else {
                            iM2 = 0;
                        }
                    }
                } else if (parsableByteArray.f14196c >= 40) {
                    parsableByteArray.N(36);
                    if (parsableByteArray.m() == 1447187017) {
                        iM2 = 1447187017;
                    } else {
                        iM2 = 0;
                    }
                } else {
                    iM2 = 0;
                }
                gaplessInfoHolder = mp3Extractor.f16470e;
                if (iM2 == 1231971951) {
                    i8 = 0;
                    j4 = 0;
                    iM3 = parsableByteArray.m();
                    if ((iM3 & 1) != 0) {
                        iE = parsableByteArray.E();
                    } else {
                        iE = -1;
                    }
                    if ((iM3 & 2) != 0) {
                        jC = parsableByteArray.C();
                    } else {
                        jC = -1;
                    }
                    if ((iM3 & 4) == 4) {
                        jArr2 = new long[100];
                        while (i13 < 100) {
                            jArr2[i13] = parsableByteArray.A();
                        }
                        jArr = jArr2;
                    } else {
                        jArr = null;
                    }
                    if ((iM3 & 8) != 0) {
                        parsableByteArray.O(4);
                    }
                    if (parsableByteArray.a() >= 24) {
                        parsableByteArray.O(11);
                        fIntBitsToFloat = Float.intBitsToFloat(parsableByteArray.m());
                        int iH8 = parsableByteArray.H();
                        int iH9 = parsableByteArray.H();
                        gainFieldA = Mp3InfoReplayGain.GainField.a(iH8);
                        gainFieldA2 = Mp3InfoReplayGain.GainField.a(iH9);
                        if (fIntBitsToFloat > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            mp3InfoReplayGain3 = new Mp3InfoReplayGain(fIntBitsToFloat, gainFieldA, gainFieldA2);
                        } else {
                            mp3InfoReplayGain3 = new Mp3InfoReplayGain(fIntBitsToFloat, gainFieldA, gainFieldA2);
                        }
                        parsableByteArray.O(2);
                        int iD3 = parsableByteArray.D();
                        i10 = iD3 & 4095;
                        i9 = (16773120 & iD3) >> 12;
                        mp3InfoReplayGain = mp3InfoReplayGain3;
                    } else {
                        mp3InfoReplayGain = null;
                        i9 = -1;
                        i10 = -1;
                    }
                    mp3Extractor = this;
                    xingFrame = new XingFrame(mp3Extractor.d, iE, jC, jArr, mp3InfoReplayGain, i9, i10);
                    if (gaplessInfoHolder.f16165a != -1) {
                        gaplessInfoHolder.f16165a = i11;
                        gaplessInfoHolder.f16166b = i12;
                    } else {
                        gaplessInfoHolder.f16165a = i11;
                        gaplessInfoHolder.f16166b = i12;
                    }
                    mp3InfoReplayGain2 = xingFrame.d;
                    if (mp3InfoReplayGain2 != null) {
                        metadata = new Metadata(mp3InfoReplayGain2);
                    } else {
                        metadata = null;
                    }
                    mp3Extractor.m = metadata;
                    position2 = extractorInput2.getPosition();
                    extractorInput2.m(header2.f16187c);
                    header = xingFrame.f16487a;
                    jMin = xingFrame.f16489c;
                    if (iM2 == 1483304551) {
                        length2 = extractorInput2.getLength();
                        jA2 = xingFrame.a();
                        if (jA2 == -9223372036854775807L) {
                            constantBitrateSeeker = null;
                        } else {
                            if (jMin != -1) {
                                long j19 = length2 - position2;
                                StringBuilder sbQ5 = pq0.q(j19, "Data size mismatch between stream (", ") and Xing frame (");
                                sbQ5.append(jMin);
                                sbQ5.append("), using smaller value.");
                                Log.f(sbQ5.toString());
                                jMin = Math.min(jMin, j19);
                            }
                            constantBitrateSeeker = new XingSeeker(position2, header.f16187c, jA2, header.f16189f, jMin, xingFrame.g);
                        }
                    } else {
                        length = extractorInput2.getLength();
                        jA = xingFrame.a();
                        if (jA != -9223372036854775807L) {
                            if (jMin != -1) {
                                length = position2 + jMin;
                                j6 = jMin - ((long) header.f16187c);
                            } else if (length != -1) {
                                j6 = (length - position2) - ((long) header.f16187c);
                            } else {
                                constantBitrateSeeker = null;
                            }
                            long j110 = j6;
                            long j111 = length;
                            RoundingMode roundingMode3 = RoundingMode.HALF_UP;
                            constantBitrateSeeker = new ConstantBitrateSeeker(j111, position2 + ((long) header.f16187c), Ints.b(Util.Z(j110, 8000000L, jA, roundingMode3)), Ints.b(LongMath.a(j110, xingFrame.f16488b, roundingMode3)), false);
                        } else {
                            constantBitrateSeeker = null;
                        }
                    }
                } else if (iM2 != 1447187017) {
                    if (iM2 != 1483304551) {
                        extractorInput2.g();
                        i8 = 0;
                        j4 = 0;
                    } else {
                        i8 = 0;
                        j4 = 0;
                        iM3 = parsableByteArray.m();
                        if ((iM3 & 1) != 0) {
                            iE = parsableByteArray.E();
                        } else {
                            iE = -1;
                        }
                        if ((iM3 & 2) != 0) {
                            jC = parsableByteArray.C();
                        } else {
                            jC = -1;
                        }
                        if ((iM3 & 4) == 4) {
                            jArr2 = new long[100];
                            while (i13 < 100) {
                                jArr2[i13] = parsableByteArray.A();
                            }
                            jArr = jArr2;
                        } else {
                            jArr = null;
                        }
                        if ((iM3 & 8) != 0) {
                            parsableByteArray.O(4);
                        }
                        if (parsableByteArray.a() >= 24) {
                            parsableByteArray.O(11);
                            fIntBitsToFloat = Float.intBitsToFloat(parsableByteArray.m());
                            int iH10 = parsableByteArray.H();
                            int iH11 = parsableByteArray.H();
                            gainFieldA = Mp3InfoReplayGain.GainField.a(iH10);
                            gainFieldA2 = Mp3InfoReplayGain.GainField.a(iH11);
                            if (fIntBitsToFloat > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                                mp3InfoReplayGain3 = new Mp3InfoReplayGain(fIntBitsToFloat, gainFieldA, gainFieldA2);
                            } else {
                                mp3InfoReplayGain3 = new Mp3InfoReplayGain(fIntBitsToFloat, gainFieldA, gainFieldA2);
                            }
                            parsableByteArray.O(2);
                            int iD4 = parsableByteArray.D();
                            i10 = iD4 & 4095;
                            i9 = (16773120 & iD4) >> 12;
                            mp3InfoReplayGain = mp3InfoReplayGain3;
                        } else {
                            mp3InfoReplayGain = null;
                            i9 = -1;
                            i10 = -1;
                        }
                        mp3Extractor = this;
                        xingFrame = new XingFrame(mp3Extractor.d, iE, jC, jArr, mp3InfoReplayGain, i9, i10);
                        if (gaplessInfoHolder.f16165a != -1) {
                            gaplessInfoHolder.f16165a = i11;
                            gaplessInfoHolder.f16166b = i12;
                        } else {
                            gaplessInfoHolder.f16165a = i11;
                            gaplessInfoHolder.f16166b = i12;
                        }
                        mp3InfoReplayGain2 = xingFrame.d;
                        if (mp3InfoReplayGain2 != null) {
                            metadata = new Metadata(mp3InfoReplayGain2);
                        } else {
                            metadata = null;
                        }
                        mp3Extractor.m = metadata;
                        position2 = extractorInput2.getPosition();
                        extractorInput2.m(header2.f16187c);
                        header = xingFrame.f16487a;
                        jMin = xingFrame.f16489c;
                        if (iM2 == 1483304551) {
                            length2 = extractorInput2.getLength();
                            jA2 = xingFrame.a();
                            if (jA2 == -9223372036854775807L) {
                                if (jMin != -1) {
                                    long j112 = length2 - position2;
                                    StringBuilder sbQ6 = pq0.q(j112, "Data size mismatch between stream (", ") and Xing frame (");
                                    sbQ6.append(jMin);
                                    sbQ6.append("), using smaller value.");
                                    Log.f(sbQ6.toString());
                                    jMin = Math.min(jMin, j112);
                                }
                                constantBitrateSeeker = new XingSeeker(position2, header.f16187c, jA2, header.f16189f, jMin, xingFrame.g);
                            }
                        } else {
                            length = extractorInput2.getLength();
                            jA = xingFrame.a();
                            if (jA != -9223372036854775807L) {
                                if (jMin != -1) {
                                    length = position2 + jMin;
                                    j6 = jMin - ((long) header.f16187c);
                                } else if (length != -1) {
                                    j6 = (length - position2) - ((long) header.f16187c);
                                }
                                long j113 = j6;
                                long j114 = length;
                                RoundingMode roundingMode4 = RoundingMode.HALF_UP;
                                constantBitrateSeeker = new ConstantBitrateSeeker(j114, position2 + ((long) header.f16187c), Ints.b(Util.Z(j113, 8000000L, jA, roundingMode4)), Ints.b(LongMath.a(j113, xingFrame.f16488b, roundingMode4)), false);
                            }
                        }
                    }
                    constantBitrateSeeker = null;
                } else {
                    length6 = extractorInput2.getLength();
                    position4 = extractorInput2.getPosition();
                    parsableByteArray.O(6);
                    int iM6 = parsableByteArray.m();
                    j4 = 0;
                    j8 = position4 + ((long) header2.f16187c);
                    jMax = j8 + ((long) iM6);
                    iM4 = parsableByteArray.m();
                    if (iM4 <= 0) {
                        i8 = 0;
                    } else {
                        i8 = 0;
                        jX = Util.X(header2.d, (((long) iM4) * ((long) header2.g)) - 1);
                        iH = parsableByteArray.H();
                        iH2 = parsableByteArray.H();
                        iH3 = parsableByteArray.H();
                        parsableByteArray.O(2);
                        jArr5 = new long[iH];
                        jArr6 = new long[iH];
                        j9 = position4 + ((long) header2.f16187c);
                        i19 = 0;
                        while (true) {
                            if (i19 < iH) {
                                if (length6 != -1) {
                                    StringBuilder sbQ7 = pq0.q(length6, "VBRI data size mismatch: ", ", ");
                                    sbQ7.append(jMax);
                                    Log.g(sbQ7.toString());
                                }
                                if (jMax != j9) {
                                    StringBuilder sbQ8 = pq0.q(jMax, "VBRI bytes and ToC mismatch (using max): ", ", ");
                                    sbQ8.append(j9);
                                    sbQ8.append("\nSeeking will be inaccurate.");
                                    Log.g(sbQ8.toString());
                                    jMax = Math.max(jMax, j9);
                                }
                                constantBitrateSeeker = new VbriSeeker(jArr5, jArr6, jX, j8, jMax, header2.f16189f);
                                break;
                            }
                            jArr5[i19] = (((long) i19) * jX) / ((long) iH);
                            jArr6[i19] = j9;
                            if (iH3 != 1) {
                                iA = parsableByteArray.A();
                            } else if (iH3 != 2) {
                                iA = parsableByteArray.H();
                            } else if (iH3 != 3) {
                                iA = parsableByteArray.D();
                            } else if (iH3 != 4) {
                                iA = parsableByteArray.E();
                            }
                            j9 += ((long) iH2) * ((long) iA);
                            i19++;
                        }
                        extractorInput2 = extractorInput;
                        extractorInput2.m(header2.f16187c);
                        mp3Extractor = this;
                    }
                    constantBitrateSeeker = null;
                    extractorInput2 = extractorInput;
                    extractorInput2.m(header2.f16187c);
                    mp3Extractor = this;
                }
                metadata2 = mp3Extractor.l;
                position3 = extractorInput2.getPosition();
                if (metadata2 == null) {
                    mlltSeeker = null;
                } else {
                    predicateA = Predicates.a();
                    entryArr = metadata2.f13897a;
                    length3 = entryArr.length;
                    i14 = i8;
                    while (true) {
                        if (i14 < length3) {
                            entry = null;
                            break;
                        }
                        entry4 = entryArr[i14];
                        if (MlltFrame.class.isAssignableFrom(entry4.getClass())) {
                            entry = (Metadata.Entry) MlltFrame.class.cast(entry4);
                            if (!predicateA.apply(entry)) {
                                entry = null;
                            }
                        } else {
                            entry = null;
                        }
                        if (entry != null) {
                            break;
                            break;
                        }
                        i14++;
                    }
                    mlltFrame = (MlltFrame) entry;
                    if (mlltFrame == null) {
                        mlltSeeker = null;
                    } else {
                        iArr = mlltFrame.f16390e;
                        entryArr2 = metadata2.f13897a;
                        length4 = entryArr2.length;
                        i15 = i8;
                        while (true) {
                            if (i15 < length4) {
                                entry2 = null;
                                break;
                            }
                            entry3 = entryArr2[i15];
                            if (TextInformationFrame.class.isAssignableFrom(entry3.getClass())) {
                                entry2 = (Metadata.Entry) TextInformationFrame.class.cast(entry3);
                                if (!((TextInformationFrame) entry2).f16384a.equals("TLEN")) {
                                    entry2 = null;
                                }
                            } else {
                                entry2 = null;
                            }
                            if (entry2 != null) {
                                break;
                                break;
                            }
                            i15++;
                        }
                        textInformationFrame = (TextInformationFrame) entry2;
                        if (textInformationFrame == null) {
                            jR = -9223372036854775807L;
                            i16 = i8;
                        } else {
                            i16 = i8;
                            jR = Util.R(Long.parseLong((String) textInformationFrame.f16395c.get(i16)));
                        }
                        length5 = iArr.length;
                        int i25 = length5 + 1;
                        jArr3 = new long[i25];
                        jArr4 = new long[i25];
                        jArr3[i16] = position3;
                        jArr4[i16] = j4;
                        j7 = j4;
                        while (i17 <= length5) {
                            int i26 = i17 - 1;
                            position3 += (long) (mlltFrame.f16389c + iArr[i26]);
                            j7 += (long) (mlltFrame.d + mlltFrame.f16391f[i26]);
                            jArr3[i17] = position3;
                            jArr4[i17] = j7;
                        }
                        mlltSeeker = new MlltSeeker(jArr3, jArr4, jR);
                    }
                }
                z = mp3Extractor.t;
                i18 = mp3Extractor.f16467a;
                if (z) {
                    seekerG = new Seeker.UnseekableSeeker();
                } else {
                    if (mlltSeeker != null) {
                        indexSeeker = mlltSeeker;
                    } else if (constantBitrateSeeker != null) {
                        indexSeeker = constantBitrateSeeker;
                    } else {
                        indexSeeker = null;
                    }
                    if (indexSeeker == null) {
                        if ((i18 & 2) != 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        indexSeeker = mp3Extractor.g(extractorInput2, z2);
                    }
                    if ((i18 & 4) != 0) {
                        indexSeeker = new IndexSeeker(indexSeeker.h(), extractorInput2.getPosition(), indexSeeker.d());
                    }
                    if (indexSeeker.e()) {
                        if (indexSeeker.e()) {
                            seekerG = indexSeeker;
                        } else {
                            seekerG = indexSeeker;
                        }
                    } else if (indexSeeker.e()) {
                        seekerG = indexSeeker;
                    } else {
                        seekerG = indexSeeker;
                    }
                    mp3Extractor.f16473i.e(seekerG.h());
                }
                mp3Extractor.s = seekerG;
                mp3Extractor.f16472h.j(seekerG);
                metadataB = mp3Extractor.l;
                if (metadataB == null) {
                    metadataB = mp3Extractor.m;
                } else {
                    metadataB = mp3Extractor.m;
                }
                builder = new Format.Builder();
                builder.m = MimeTypes.p("audio/mpeg");
                builder.n = MimeTypes.p(header2.f16186b);
                builder.o = 4096;
                builder.F = header2.f16188e;
                builder.G = header2.d;
                builder.I = gaplessInfoHolder.f16165a;
                builder.J = gaplessInfoHolder.f16166b;
                builder.f13772k = metadataB;
                if (mp3Extractor.s.g() != -2147483647) {
                    builder.f13769h = mp3Extractor.s.g();
                }
                mp3Extractor.f16474j.b(new Format(builder));
                mp3Extractor.p = extractorInput2.getPosition();
            } else {
                j2 = 1000000;
                j3 = -9223372036854775807L;
                j4 = 0;
                if (mp3Extractor.p != 0) {
                    position = extractorInput2.getPosition();
                    j5 = mp3Extractor.p;
                    if (position < j5) {
                        extractorInput2.m((int) (j5 - position));
                    }
                }
            }
            if (mp3Extractor.r == 0) {
                extractorInput2.g();
                if (i(extractorInput)) {
                    i2 = -1;
                    i3 = -1;
                } else {
                    ParsableByteArray parsableByteArray3 = mp3Extractor.f16469c;
                    parsableByteArray3.N(0);
                    iM = parsableByteArray3.m();
                    if (((-128000) & iM) == (((long) mp3Extractor.f16475k) & (-128000))) {
                    }
                    extractorInput2.m(1);
                    mp3Extractor.f16475k = 0;
                    i2 = -1;
                    i3 = 0;
                }
            } else {
                iC = mp3Extractor.f16474j.c(extractorInput2, mp3Extractor.r, true);
                if (iC == -1) {
                    i2 = -1;
                    i3 = -1;
                } else {
                    i4 = mp3Extractor.r - iC;
                    mp3Extractor.r = i4;
                    if (i4 <= 0) {
                        i2 = -1;
                        i3 = 0;
                    } else {
                        mp3Extractor.f16474j.g(((mp3Extractor.o * j2) / ((long) header2.d)) + mp3Extractor.n, 1, header2.f16187c, 0, null);
                        mp3Extractor.o += (long) header2.g;
                        i3 = 0;
                        mp3Extractor.r = 0;
                        i2 = -1;
                    }
                }
            }
        }
        if (i3 == i2) {
            Seeker seeker2 = mp3Extractor.s;
            if (seeker2 instanceof IndexSeeker) {
                long j20 = ((mp3Extractor.o * j2) / ((long) header2.d)) + mp3Extractor.n;
                if (seeker2.h() != j20) {
                    Seeker seeker3 = mp3Extractor.s;
                    ((IndexSeeker) seeker3).d.f16179c = j20;
                    mp3Extractor.f16472h.j(seeker3);
                    mp3Extractor.f16473i.e(mp3Extractor.s.h());
                }
            }
        }
        return i3;
    }

    public final ConstantBitrateSeeker g(ExtractorInput extractorInput, boolean z) {
        ParsableByteArray parsableByteArray = this.f16469c;
        extractorInput.b(0, 4, parsableByteArray.f14194a);
        parsableByteArray.N(0);
        this.d.a(parsableByteArray.m());
        return new ConstantBitrateSeeker(extractorInput.getLength(), extractorInput.getPosition(), this.d, z);
    }

    public final void h() {
        SeekMap seekMap = this.s;
        if ((seekMap instanceof ConstantBitrateSeeker) && ((ConstantBitrateSeekMap) seekMap).e()) {
            long j2 = this.q;
            if (j2 == -1 || j2 == this.s.d()) {
                return;
            }
            ConstantBitrateSeeker constantBitrateSeeker = (ConstantBitrateSeeker) this.s;
            this.s = new ConstantBitrateSeeker(this.q, constantBitrateSeeker.f16458i, constantBitrateSeeker.f16459j, constantBitrateSeeker.f16460k, constantBitrateSeeker.l, false);
            ExtractorOutput extractorOutput = this.f16472h;
            extractorOutput.getClass();
            extractorOutput.j(this.s);
            TrackOutput trackOutput = this.f16473i;
            trackOutput.getClass();
            trackOutput.e(this.s.h());
        }
    }

    public final boolean i(ExtractorInput extractorInput) {
        Seeker seeker = this.s;
        if (seeker != null) {
            long jD = seeker.d();
            if (jD == -1 || extractorInput.j() <= jD - 4) {
            }
            return true;
        }
        try {
            return !extractorInput.i(true, 0, 4, this.f16469c.f14194a);
        } catch (EOFException unused) {
        }
    }

    public final boolean j(ExtractorInput extractorInput, boolean z) throws EOFException {
        int iJ;
        int i2;
        int iA;
        extractorInput.g();
        if (extractorInput.getPosition() == 0) {
            Metadata metadataA = this.f16471f.a(extractorInput, (this.f16467a & 8) == 0 ? null : w, 131072);
            this.l = metadataA;
            if (metadataA != null) {
                this.f16470e.b(metadataA);
            }
            iJ = (int) extractorInput.j();
            if (!z) {
                extractorInput.m(iJ);
            }
            i2 = 0;
        } else {
            iJ = 0;
            i2 = 0;
        }
        int i3 = i2;
        int i4 = i3;
        while (true) {
            if (i(extractorInput)) {
                if (i3 > 0) {
                    break;
                }
                h();
                md.e();
                return false;
            }
            ParsableByteArray parsableByteArray = this.f16469c;
            parsableByteArray.N(0);
            int iM = parsableByteArray.m();
            if ((i2 == 0 || ((-128000) & iM) == (((long) i2) & (-128000))) && (iA = MpegAudioUtil.a(iM)) != -1) {
                i3++;
                if (i3 != 1) {
                    if (i3 == 4) {
                        break;
                    }
                } else {
                    this.d.a(iM);
                    i2 = iM;
                }
                extractorInput.k(iA - 4);
            } else {
                int i5 = i4 + 1;
                if (i4 == 131072) {
                    if (z) {
                        return false;
                    }
                    h();
                    md.e();
                    return false;
                }
                if (z) {
                    extractorInput.g();
                    extractorInput.k(iJ + i5);
                } else {
                    extractorInput.m(1);
                }
                i3 = 0;
                i4 = i5;
                i2 = 0;
            }
        }
        if (z) {
            extractorInput.m(iJ + i4);
        } else {
            extractorInput.g();
        }
        this.f16475k = i2;
        return true;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }

    public Mp3Extractor(int i2) {
        this(i2, -9223372036854775807L);
    }

    public Mp3Extractor() {
        this(0);
    }
}
