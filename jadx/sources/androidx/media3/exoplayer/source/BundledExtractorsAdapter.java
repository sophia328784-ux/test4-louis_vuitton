package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.datasource.DataSource;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.ExtractorsFactory;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.mp3.Mp3Extractor;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Lists;
import defpackage.uh;
import java.io.EOFException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class BundledExtractorsAdapter implements ProgressiveMediaExtractor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExtractorsFactory f15442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Extractor f15443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public DefaultExtractorInput f15444c;

    public BundledExtractorsAdapter(ExtractorsFactory extractorsFactory) {
        this.f15442a = extractorsFactory;
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public final void a(long j2, long j3) {
        Extractor extractor = this.f15443b;
        extractor.getClass();
        extractor.a(j2, j3);
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public final void b() {
        Extractor extractor = this.f15443b;
        if (extractor == null) {
            return;
        }
        Extractor extractorC = extractor.c();
        if (extractorC instanceof Mp3Extractor) {
            ((Mp3Extractor) extractorC).t = true;
        }
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public final long c() {
        DefaultExtractorInput defaultExtractorInput = this.f15444c;
        if (defaultExtractorInput != null) {
            return defaultExtractorInput.d;
        }
        return -1L;
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public final int d(PositionHolder positionHolder) {
        Extractor extractor = this.f15443b;
        extractor.getClass();
        DefaultExtractorInput defaultExtractorInput = this.f15444c;
        defaultExtractorInput.getClass();
        return extractor.f(defaultExtractorInput, positionHolder);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x004c  */
    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public final void e(DataSource dataSource, Uri uri, Map map, long j2, long j3, ExtractorOutput extractorOutput) throws UnrecognizedInputFormatException {
        DefaultExtractorInput defaultExtractorInput = new DefaultExtractorInput(dataSource, j2, j3);
        this.f15444c = defaultExtractorInput;
        if (this.f15443b != null) {
            return;
        }
        Extractor[] extractorArrF = this.f15442a.f(uri, map);
        ImmutableList.Builder builderR = ImmutableList.r(extractorArrF.length);
        boolean z = true;
        int i2 = 0;
        if (extractorArrF.length == 1) {
            this.f15443b = extractorArrF[0];
        } else {
            for (Extractor extractor : extractorArrF) {
                try {
                    if (extractor.d(defaultExtractorInput)) {
                        this.f15443b = extractor;
                        defaultExtractorInput.f16125f = 0;
                        break;
                    }
                    builderR.g(extractor.e());
                    boolean z2 = this.f15443b != null || defaultExtractorInput.d == j2;
                    Preconditions.q(z2);
                    defaultExtractorInput.f16125f = 0;
                } catch (EOFException unused) {
                    if (this.f15443b != null || defaultExtractorInput.d == j2) {
                    }
                } catch (Throwable th) {
                    if (this.f15443b == null && defaultExtractorInput.d != j2) {
                        z = false;
                    }
                    Preconditions.q(z);
                    defaultExtractorInput.f16125f = 0;
                    throw th;
                }
                Preconditions.q(z2);
                defaultExtractorInput.f16125f = 0;
            }
            if (this.f15443b == null) {
                String str = "None of the available extractors (" + new Joiner(", ").b(Lists.d(new uh(i2), ImmutableList.u(extractorArrF))) + ") could read the stream.";
                uri.getClass();
                throw new UnrecognizedInputFormatException(str, uri, builderR.j());
            }
        }
        this.f15443b.b(extractorOutput);
    }

    @Override // androidx.media3.exoplayer.source.ProgressiveMediaExtractor
    public final void release() {
        Extractor extractor = this.f15443b;
        if (extractor != null) {
            extractor.release();
            this.f15443b = null;
        }
        this.f15444c = null;
    }
}
