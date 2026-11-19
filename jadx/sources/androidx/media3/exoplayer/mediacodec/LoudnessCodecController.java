package androidx.media3.exoplayer.mediacodec;

import android.media.LoudnessCodecController$OnLoudnessCodecUpdateListener;
import android.media.MediaCodec;
import android.os.Bundle;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.MoreExecutors;
import defpackage.v40;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class LoudnessCodecController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashSet f15363a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LoudnessParameterUpdateListener f15364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public android.media.LoudnessCodecController f15365c;

    public interface LoudnessParameterUpdateListener {
        public static final v40 e0 = new v40(18);

        Bundle a(Bundle bundle);
    }

    public LoudnessCodecController(LoudnessParameterUpdateListener loudnessParameterUpdateListener) {
        this.f15363a = new HashSet();
        this.f15364b = loudnessParameterUpdateListener;
    }

    public final void a(MediaCodec mediaCodec) {
        android.media.LoudnessCodecController loudnessCodecController = this.f15365c;
        if (loudnessCodecController == null || loudnessCodecController.addMediaCodec(mediaCodec)) {
            Preconditions.q(this.f15363a.add(mediaCodec));
        }
    }

    public final void b() {
        this.f15363a.clear();
        android.media.LoudnessCodecController loudnessCodecController = this.f15365c;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
        }
    }

    public final void c(MediaCodec mediaCodec) {
        android.media.LoudnessCodecController loudnessCodecController;
        if (!this.f15363a.remove(mediaCodec) || (loudnessCodecController = this.f15365c) == null) {
            return;
        }
        loudnessCodecController.removeMediaCodec(mediaCodec);
    }

    public final void d(int i2) {
        android.media.LoudnessCodecController loudnessCodecController = this.f15365c;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
            this.f15365c = null;
        }
        android.media.LoudnessCodecController loudnessCodecControllerCreate = android.media.LoudnessCodecController.create(i2, MoreExecutors.b(), new LoudnessCodecController$OnLoudnessCodecUpdateListener() { // from class: androidx.media3.exoplayer.mediacodec.LoudnessCodecController.1
            public final Bundle onLoudnessCodecUpdate(MediaCodec mediaCodec, Bundle bundle) {
                return LoudnessCodecController.this.f15364b.a(bundle);
            }
        });
        this.f15365c = loudnessCodecControllerCreate;
        Iterator it = this.f15363a.iterator();
        while (it.hasNext()) {
            if (!loudnessCodecControllerCreate.addMediaCodec((MediaCodec) it.next())) {
                it.remove();
            }
        }
    }

    public LoudnessCodecController() {
        this(LoudnessParameterUpdateListener.e0);
    }
}
