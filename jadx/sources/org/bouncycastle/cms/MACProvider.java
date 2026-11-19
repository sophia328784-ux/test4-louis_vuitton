package org.bouncycastle.cms;

import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
interface MACProvider {
    byte[] getMAC();

    void init() throws IOException;
}
