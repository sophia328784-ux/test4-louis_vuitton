package androidx.media3.common.text;

import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.Ordering;
import defpackage.uh;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class CueGroup {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Ordering f14111c = Ordering.c().d(new uh(1));
    public static final CueGroup d = new CueGroup(ImmutableList.x(), 0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f14112e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final String f14113f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableList f14114a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f14115b;

    static {
        String str = Util.f14242a;
        f14112e = Integer.toString(0, 36);
        f14113f = Integer.toString(1, 36);
    }

    public CueGroup(List<Cue> list, long j2) {
        this.f14114a = ImmutableList.G(f14111c, list);
        this.f14115b = j2;
    }
}
