package org.spongycastle.pqc.crypto.newhope;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class NHPublicKeyParameters extends AsymmetricKeyParameter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f78116b;

    public NHPublicKeyParameters(byte[] bArr) {
        super(false);
        this.f78116b = Arrays.c(bArr);
    }
}
