package com.linkplay.network;

import com.android.wiimu.R;

/* JADX INFO: loaded from: classes2.dex */
public class EncryptedOkHttp extends EncryptedHttpsBase {
    private static EncryptedOkHttp mInstance;

    private EncryptedOkHttp() {
    }

    public static synchronized EncryptedOkHttp getInstance() {
        try {
            if (mInstance == null) {
                mInstance = new EncryptedOkHttp();
            }
        } catch (Throwable th) {
            throw th;
        }
        return mInstance;
    }

    @Override // com.linkplay.network.EncryptedHttpsBase
    public String getName() {
        return "certificate_old";
    }

    @Override // com.linkplay.network.EncryptedHttpsBase
    public String getPwd() {
        return this.context.getString(R.string.linkplay);
    }
}
