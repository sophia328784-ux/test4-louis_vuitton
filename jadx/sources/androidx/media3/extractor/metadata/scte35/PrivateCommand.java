package androidx.media3.extractor.metadata.scte35;

import defpackage.o60;

/* JADX INFO: loaded from: classes.dex */
public final class PrivateCommand extends SpliceCommand {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f16408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16409b;

    public PrivateCommand(long j2, long j3) {
        this.f16408a = j3;
        this.f16409b = j2;
    }

    @Override // androidx.media3.extractor.metadata.scte35.SpliceCommand
    public final String toString() {
        StringBuilder sb = new StringBuilder("SCTE-35 PrivateCommand { ptsAdjustment=");
        sb.append(this.f16408a);
        sb.append(", identifier= ");
        return o60.j(this.f16409b, " }", sb);
    }
}
