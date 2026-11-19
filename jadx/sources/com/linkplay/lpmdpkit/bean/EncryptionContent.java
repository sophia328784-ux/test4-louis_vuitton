package com.linkplay.lpmdpkit.bean;

import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class EncryptionContent implements Serializable {
    private String alias;
    private byte[] encryption;
    private byte[] iv;

    public EncryptionContent(byte[] bArr, byte[] bArr2, String str) {
        this.encryption = bArr;
        this.iv = bArr2;
        this.alias = str;
    }

    public String getAlias() {
        return this.alias;
    }

    public byte[] getEncryption() {
        return this.encryption;
    }

    public byte[] getIv() {
        return this.iv;
    }
}
