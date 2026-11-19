package androidx.media3.extractor;

import com.google.common.base.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public final class StartOffsetExtractorInput extends ForwardingExtractorInput {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16205b;

    public StartOffsetExtractorInput(ExtractorInput extractorInput, long j2) {
        super(extractorInput);
        Preconditions.g(extractorInput.getPosition() >= j2);
        this.f16205b = j2;
    }

    @Override // androidx.media3.extractor.ForwardingExtractorInput, androidx.media3.extractor.ExtractorInput
    public final long getLength() {
        return super.getLength() - this.f16205b;
    }

    @Override // androidx.media3.extractor.ForwardingExtractorInput, androidx.media3.extractor.ExtractorInput
    public final long getPosition() {
        return super.getPosition() - this.f16205b;
    }

    @Override // androidx.media3.extractor.ForwardingExtractorInput, androidx.media3.extractor.ExtractorInput
    public final long j() {
        return super.j() - this.f16205b;
    }
}
