package org.bouncycastle.crypto.params;

import defpackage.r81;

/* JADX INFO: loaded from: classes5.dex */
public class ECKeyParameters extends AsymmetricKeyParameter {
    private final ECDomainParameters parameters;

    public ECKeyParameters(boolean z, ECDomainParameters eCDomainParameters) {
        super(z);
        if (eCDomainParameters != null) {
            this.parameters = eCDomainParameters;
        } else {
            r81.d("'parameters' cannot be null");
            throw null;
        }
    }

    public ECDomainParameters getParameters() {
        return this.parameters;
    }
}
