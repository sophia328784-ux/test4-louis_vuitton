package androidx.media3.extractor.text.cea;

import androidx.media3.common.text.Cue;
import androidx.media3.extractor.text.Subtitle;
import com.google.common.base.Preconditions;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class CeaSubtitle implements Subtitle {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f16738b;

    public CeaSubtitle(List<Cue> list) {
        this.f16738b = list;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final int a(long j2) {
        return j2 < 0 ? 0 : -1;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final List b(long j2) {
        return j2 >= 0 ? this.f16738b : Collections.EMPTY_LIST;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final long c(int i2) {
        Preconditions.g(i2 == 0);
        return 0L;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public final int d() {
        return 1;
    }
}
