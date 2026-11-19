package org.spongycastle.pqc.crypto.newhope;

import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class NHPrivateKeyParameters extends AsymmetricKeyParameter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final short[] f78115b;

    public NHPrivateKeyParameters(short[] sArr) {
        super(true);
        this.f78115b = Arrays.d(sArr);
    }
}
