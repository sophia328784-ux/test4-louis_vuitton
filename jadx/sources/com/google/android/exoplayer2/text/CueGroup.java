package com.google.android.exoplayer2.text;

import com.google.android.exoplayer2.Bundleable;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class CueGroup implements Bundleable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableList f28353b;

    static {
        new CueGroup(ImmutableList.x(), 0L);
        Util.e(0);
        Util.e(1);
    }

    public CueGroup(List<Cue> list, long j2) {
        this.f28353b = ImmutableList.t(list);
    }
}
