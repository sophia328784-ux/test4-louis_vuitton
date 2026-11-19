package androidx.media3.extractor.metadata.scte35;

import androidx.media3.common.util.ParsableByteArray;
import defpackage.o60;

/* JADX INFO: loaded from: classes.dex */
public final class TimeSignalCommand extends SpliceCommand {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f16418a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16419b;

    public TimeSignalCommand(long j2, long j3) {
        this.f16418a = j2;
        this.f16419b = j3;
    }

    public static long d(long j2, ParsableByteArray parsableByteArray) {
        long jA = parsableByteArray.A();
        if ((128 & jA) != 0) {
            return 8589934591L & ((((jA & 1) << 32) | parsableByteArray.C()) + j2);
        }
        return -9223372036854775807L;
    }

    @Override // androidx.media3.extractor.metadata.scte35.SpliceCommand
    public final String toString() {
        StringBuilder sb = new StringBuilder("SCTE-35 TimeSignalCommand { ptsTime=");
        sb.append(this.f16418a);
        sb.append(", playbackPositionUs= ");
        return o60.j(this.f16419b, " }", sb);
    }
}
