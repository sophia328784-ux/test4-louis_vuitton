package com.google.android.exoplayer2.decoder;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class DecoderOutputBuffer extends Buffer {

    public interface Owner<S extends DecoderOutputBuffer> {
        void a();
    }
}
