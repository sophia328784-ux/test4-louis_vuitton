package androidx.media3.exoplayer.mediacodec;

import java.util.Comparator;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class g implements Comparator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MediaCodecUtil.ScoreProvider f15410b;

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        HashMap map = MediaCodecUtil.f15393a;
        MediaCodecUtil.ScoreProvider scoreProvider = this.f15410b;
        return scoreProvider.a(obj2) - scoreProvider.a(obj);
    }
}
