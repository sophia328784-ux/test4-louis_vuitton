package org.bouncycastle.crypto.constraints;

import defpackage.md;
import java.util.Collections;
import java.util.Set;
import org.bouncycastle.crypto.CryptoServiceProperties;

/* JADX INFO: loaded from: classes5.dex */
public class BitsOfSecurityConstraint extends ServicesConstraint {
    private final int requiredBitsOfSecurity;

    public BitsOfSecurityConstraint(int i2) {
        super(Collections.EMPTY_SET);
        this.requiredBitsOfSecurity = i2;
    }

    @Override // org.bouncycastle.crypto.CryptoServicesConstraints
    public void check(CryptoServiceProperties cryptoServiceProperties) {
        if (!isException(cryptoServiceProperties.getServiceName()) && cryptoServiceProperties.bitsOfSecurity() < this.requiredBitsOfSecurity) {
            md.f(this.requiredBitsOfSecurity, cryptoServiceProperties.bitsOfSecurity());
        }
    }

    public BitsOfSecurityConstraint(int i2, Set<String> set) {
        super(set);
        this.requiredBitsOfSecurity = i2;
    }
}
