package androidx.media3.exoplayer.video;

import com.google.common.base.Supplier;
import defpackage.bm;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Supplier {
    @Override // com.google.common.base.Supplier
    public final Object get() {
        Supplier supplier = PlaybackVideoGraphWrapper.ReflectiveDefaultVideoFrameProcessorFactory.f15937a;
        try {
            return Class.forName("androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder");
        } catch (Exception e2) {
            bm.i(e2);
            return null;
        }
    }
}
