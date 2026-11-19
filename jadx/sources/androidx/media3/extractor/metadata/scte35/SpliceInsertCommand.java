package androidx.media3.extractor.metadata.scte35;

import defpackage.o60;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SpliceInsertCommand extends SpliceCommand {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f16413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16414b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f16415c;

    public static final class ComponentSplice {
    }

    public SpliceInsertCommand(List list, long j2, long j3) {
        this.f16413a = j2;
        this.f16414b = j3;
        this.f16415c = Collections.unmodifiableList(list);
    }

    @Override // androidx.media3.extractor.metadata.scte35.SpliceCommand
    public final String toString() {
        StringBuilder sb = new StringBuilder("SCTE-35 SpliceInsertCommand { programSplicePts=");
        sb.append(this.f16413a);
        sb.append(", programSplicePlaybackPositionUs= ");
        return o60.j(this.f16414b, " }", sb);
    }
}
