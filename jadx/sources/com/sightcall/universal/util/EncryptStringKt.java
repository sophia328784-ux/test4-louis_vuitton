package com.sightcall.universal.util;

import java.nio.ByteBuffer;
import kotlin.Metadata;
import net.rtccloud.sdk.Jni;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a\u000e\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005¨\u0006\u0006"}, d2 = {"encryptInit", "", "encryptBuffer", "Ljava/nio/ByteBuffer;", "buffer", "", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class EncryptStringKt {
    public static final ByteBuffer encryptBuffer(byte[] bArr) {
        bArr.getClass();
        ByteBuffer byteBufferNEncryptBuffer = Jni.nEncryptBuffer(bArr);
        byteBufferNEncryptBuffer.getClass();
        return byteBufferNEncryptBuffer;
    }

    public static final void encryptInit() {
        Jni.nEncryptInit();
    }
}
