package org.spongycastle.pqc.crypto.sphincs;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SPHINCSPrivateKeyParameters extends AsymmetricKeyParameter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f78129b;

    public SPHINCSPrivateKeyParameters(byte[] bArr) {
        super(true);
        this.f78129b = Arrays.c(bArr);
    }
}
