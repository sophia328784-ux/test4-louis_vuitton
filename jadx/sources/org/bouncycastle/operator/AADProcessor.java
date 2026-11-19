package org.bouncycastle.operator;

import java.io.OutputStream;

/* JADX INFO: loaded from: classes3.dex */
public interface AADProcessor {
    OutputStream getAADStream();

    byte[] getMAC();
}
