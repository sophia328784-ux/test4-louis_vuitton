package androidx.media3.extractor;

/* JADX INFO: loaded from: classes.dex */
public class ForwardingExtractorInput implements ExtractorInput {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExtractorInput f16161a;

    public ForwardingExtractorInput(ExtractorInput extractorInput) {
        this.f16161a = extractorInput;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void b(int i2, int i3, byte[] bArr) {
        this.f16161a.b(i2, i3, bArr);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final int d(int i2, int i3, byte[] bArr) {
        return this.f16161a.d(i2, i3, bArr);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final boolean e(int i2, boolean z) {
        return this.f16161a.e(i2, true);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void g() {
        this.f16161a.g();
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public long getLength() {
        return this.f16161a.getLength();
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public long getPosition() {
        return this.f16161a.getPosition();
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final boolean h(boolean z, int i2, int i3, byte[] bArr) {
        return this.f16161a.h(z, 0, i3, bArr);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final boolean i(boolean z, int i2, int i3, byte[] bArr) {
        return this.f16161a.i(z, i2, i3, bArr);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public long j() {
        return this.f16161a.j();
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void k(int i2) {
        this.f16161a.k(i2);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final int l(int i2) {
        return this.f16161a.l(i2);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void m(int i2) {
        this.f16161a.m(i2);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final boolean n(int i2, boolean z) {
        return this.f16161a.n(i2, true);
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i2, int i3) {
        return this.f16161a.read(bArr, i2, i3);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void readFully(byte[] bArr, int i2, int i3) {
        this.f16161a.readFully(bArr, i2, i3);
    }
}
