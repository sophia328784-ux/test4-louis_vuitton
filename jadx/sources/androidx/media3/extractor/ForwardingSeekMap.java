package androidx.media3.extractor;

/* JADX INFO: loaded from: classes.dex */
public class ForwardingSeekMap implements SeekMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SeekMap f16162a;

    public ForwardingSeekMap(SeekMap seekMap) {
        this.f16162a = seekMap;
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean b() {
        return this.f16162a.b();
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints c(long j2) {
        return this.f16162a.c(j2);
    }

    @Override // androidx.media3.extractor.SeekMap
    public final boolean e() {
        return this.f16162a.e();
    }

    @Override // androidx.media3.extractor.SeekMap
    public long h() {
        return this.f16162a.h();
    }
}
