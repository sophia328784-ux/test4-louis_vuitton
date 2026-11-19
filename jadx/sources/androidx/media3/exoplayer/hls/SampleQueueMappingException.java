package androidx.media3.exoplayer.hls;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.fc;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class SampleQueueMappingException extends IOException {
    public SampleQueueMappingException(String str) {
        super(fc.h("Unable to bind a sample queue to TrackGroup with MIME type ", str, FileUtils.HIDDEN_PREFIX));
    }
}
