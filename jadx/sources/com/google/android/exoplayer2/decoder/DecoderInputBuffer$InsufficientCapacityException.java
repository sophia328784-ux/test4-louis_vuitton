package com.google.android.exoplayer2.decoder;

import defpackage.fc;

/* JADX INFO: loaded from: classes.dex */
public final class DecoderInputBuffer$InsufficientCapacityException extends IllegalStateException {
    public DecoderInputBuffer$InsufficientCapacityException(int i2, int i3) {
        super(fc.f(i2, i3, "Buffer too small (", " < ", ")"));
    }
}
