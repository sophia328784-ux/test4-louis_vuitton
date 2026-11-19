package com.linkplay.network;

import com.android.wiimu.R;

/* JADX INFO: loaded from: classes2.dex */
public class EncryptedNewOkHttp extends EncryptedHttpsBase {
    private static EncryptedNewOkHttp mInstance;

    private EncryptedNewOkHttp() {
    }

    public static synchronized EncryptedNewOkHttp getInstance() {
        try {
            if (mInstance == null) {
                mInstance = new EncryptedNewOkHttp();
            }
        } catch (Throwable th) {
            throw th;
        }
        return mInstance;
    }

    @Override // com.linkplay.network.EncryptedHttpsBase
    public String getName() {
        return "certificate_new";
    }

    @Override // com.linkplay.network.EncryptedHttpsBase
    public String getPwd() {
        return this.context.getString(R.string.linkplay1);
    }
}
