package androidx.media3.extractor.text;

import androidx.media3.common.text.Cue;
import com.google.common.collect.ImmutableList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CuesWithTiming {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableList f16664a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f16665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f16666c;
    public final long d;

    public CuesWithTiming(List<Cue> list, long j2, long j3) {
        this.f16664a = ImmutableList.t(list);
        this.f16665b = j2;
        this.f16666c = j3;
        long j4 = -9223372036854775807L;
        if (j2 != -9223372036854775807L && j3 != -9223372036854775807L) {
            j4 = j2 + j3;
        }
        this.d = j4;
    }
}
