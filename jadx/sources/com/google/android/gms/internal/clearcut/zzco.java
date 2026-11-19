package com.google.android.gms.internal.clearcut;

import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class zzco extends IOException {
    public zzco(String str) {
        super(str);
    }

    public static zzco a() {
        return new zzco("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static zzco b() {
        return new zzco("Failed to parse the message.");
    }
}
