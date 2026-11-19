package androidx.media3.extractor.avi;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.NoOpExtractorOutput;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.SubtitleTranscodingExtractorOutput;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
public final class AviExtractor implements Extractor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f16237a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ChunkHeaderHolder f16238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f16239c;
    public final SubtitleParser.Factory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f16240e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ExtractorOutput f16241f;
    public AviMainHeaderChunk g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f16242h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ChunkReader[] f16243i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f16244j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ChunkReader f16245k;
    public int l;
    public long m;
    public long n;
    public int o;
    public boolean p;

    public class AviSeekMap implements SeekMap {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f16246a;

        public AviSeekMap(long j2) {
            this.f16246a = j2;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final SeekMap.SeekPoints c(long j2) {
            AviExtractor aviExtractor = AviExtractor.this;
            SeekMap.SeekPoints seekPointsB = aviExtractor.f16243i[0].b(j2);
            int i2 = 1;
            while (true) {
                ChunkReader[] chunkReaderArr = aviExtractor.f16243i;
                if (i2 >= chunkReaderArr.length) {
                    return seekPointsB;
                }
                SeekMap.SeekPoints seekPointsB2 = chunkReaderArr[i2].b(j2);
                if (seekPointsB2.f16191a.f16197b < seekPointsB.f16191a.f16197b) {
                    seekPointsB = seekPointsB2;
                }
                i2++;
            }
        }

        @Override // androidx.media3.extractor.SeekMap
        public final boolean e() {
            return true;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final long h() {
            return this.f16246a;
        }
    }

    public static class ChunkHeaderHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f16248a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f16249b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f16250c;
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public AviExtractor(int i2, SubtitleParser.Factory factory) {
        this.d = factory;
        this.f16239c = (i2 & 1) == 0;
        this.f16237a = new ParsableByteArray(12);
        this.f16238b = new ChunkHeaderHolder();
        this.f16241f = new NoOpExtractorOutput();
        this.f16243i = new ChunkReader[0];
        this.m = -1L;
        this.n = -1L;
        this.l = -1;
        this.f16242h = -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a(long j2, long j3) {
        this.f16244j = -1L;
        this.f16245k = null;
        for (ChunkReader chunkReader : this.f16243i) {
            if (chunkReader.f16267k == 0) {
                chunkReader.f16265i = 0;
            } else {
                chunkReader.f16265i = chunkReader.n[Util.f(chunkReader.m, j2, true)];
            }
        }
        if (j2 != 0) {
            this.f16240e = 6;
        } else if (this.f16243i.length == 0) {
            this.f16240e = 0;
        } else {
            this.f16240e = 3;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void b(ExtractorOutput extractorOutput) {
        this.f16240e = 0;
        if (this.f16239c) {
            extractorOutput = new SubtitleTranscodingExtractorOutput(extractorOutput, this.d);
        }
        this.f16241f = extractorOutput;
        this.f16244j = -1L;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean d(ExtractorInput extractorInput) {
        ParsableByteArray parsableByteArray = this.f16237a;
        extractorInput.b(0, 12, parsableByteArray.f14194a);
        parsableByteArray.N(0);
        if (parsableByteArray.o() != 1179011410) {
            return false;
        }
        parsableByteArray.O(4);
        return parsableByteArray.o() == 541677121;
    }

    /* JADX WARN: Failed to calculate best type for var: r2v22 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r2v22 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.calculateFromBounds(FixTypesVisitor.java:159)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.setBestType(FixTypesVisitor.java:136)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:241)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 6 more
     */
    /* JADX WARN: Failed to calculate best type for var: r2v22 ??
    jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r2v22 ??, new type: int
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.calculateFromBounds(TypeInferenceVisitor.java:147)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.setBestType(TypeInferenceVisitor.java:125)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.lambda$runTypePropagation$2(TypeInferenceVisitor.java:103)
    	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runTypePropagation(TypeInferenceVisitor.java:103)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:75)
    Caused by: java.lang.NullPointerException
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
    	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
    	... 7 more
     */
    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxRuntimeException: Type update failed for variable: r2v22 ??, new type: int
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:109)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:59)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryPossibleTypes(FixTypesVisitor.java:186)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.deduceType(FixTypesVisitor.java:245)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryDeduceTypes(FixTypesVisitor.java:224)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
        Caused by: java.lang.NullPointerException
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.verifyType(TypeUpdate.java:210)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.queueTypeUpdate(TypeUpdate.java:171)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.sameFirstArgListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:310)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runUpdate(TypeUpdate.java:124)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.apply(TypeUpdate.java:91)
        	... 5 more
        */
    @Override // androidx.media3.extractor.Extractor
    public final int f(androidx.media3.extractor.ExtractorInput r24, androidx.media3.extractor.PositionHolder r25) {
        /*
            Method dump skipped, instruction units count: 1136
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.extractor.avi.AviExtractor.f(androidx.media3.extractor.ExtractorInput, androidx.media3.extractor.PositionHolder):int");
    }

    @Override // androidx.media3.extractor.Extractor
    public final void release() {
    }

    @Deprecated
    public AviExtractor() {
        this(1, SubtitleParser.Factory.f16683a);
    }
}
