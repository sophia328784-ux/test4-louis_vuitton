package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import androidx.media3.common.Format;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements MediaCodecUtil.ScoreProvider {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f15408a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Format f15409b;

    public /* synthetic */ e(Context context, Format format) {
        this.f15408a = context;
        this.f15409b = format;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecUtil.ScoreProvider
    public final int a(Object obj) {
        MediaCodecInfo mediaCodecInfo = (MediaCodecInfo) obj;
        HashMap map = MediaCodecUtil.f15393a;
        String str = mediaCodecInfo.f15375b;
        Format format = this.f15409b;
        return ((str.equals(format.o) || str.equals(MediaCodecUtil.c(format))) && mediaCodecInfo.c(this.f15408a, format, false) && mediaCodecInfo.d(format)) ? 1 : 0;
    }
}
