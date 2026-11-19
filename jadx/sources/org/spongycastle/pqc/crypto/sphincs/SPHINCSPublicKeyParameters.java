package org.spongycastle.pqc.crypto.sphincs;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class SPHINCSPublicKeyParameters extends AsymmetricKeyParameter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f78130b;

    public SPHINCSPublicKeyParameters(byte[] bArr) {
        super(false);
        this.f78130b = Arrays.c(bArr);
    }
}
