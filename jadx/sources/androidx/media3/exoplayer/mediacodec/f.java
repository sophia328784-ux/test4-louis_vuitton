package androidx.media3.exoplayer.mediacodec;

import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f implements MediaCodecUtil.ScoreProvider {
    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.ScoreProvider
    public final int a(Object obj) {
        HashMap map = MediaCodecUtil.f15393a;
        String str = ((MediaCodecInfo) obj).f15374a;
        return (str.startsWith("OMX.google") || str.startsWith("c2.android")) ? 1 : 0;
    }
}
