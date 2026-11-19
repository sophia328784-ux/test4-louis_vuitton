package com.google.android.exoplayer2.source.hls;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.fc;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public final class SampleQueueMappingException extends IOException {
    public SampleQueueMappingException(String str) {
        super(fc.h("Unable to bind a sample queue to TrackGroup with MIME type ", str, FileUtils.HIDDEN_PREFIX));
    }
}
