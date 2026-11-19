package com.google.android.exoplayer2.util;

import defpackage.fc;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class PriorityTaskManager$PriorityTooLowException extends IOException {
    public PriorityTaskManager$PriorityTooLowException(int i2, int i3) {
        super(fc.f(i2, i3, "Priority too low [priority=", ", highest=", "]"));
    }
}
