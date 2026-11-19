package androidx.media3.extractor.text;

import com.google.common.base.Function;
import com.google.common.collect.Ordering;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function {
    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        Ordering ordering = CuesWithTimingSubtitle.d;
        long j2 = ((CuesWithTiming) obj).f16665b;
        if (j2 == -9223372036854775807L) {
            j2 = 0;
        }
        return Long.valueOf(j2);
    }
}
