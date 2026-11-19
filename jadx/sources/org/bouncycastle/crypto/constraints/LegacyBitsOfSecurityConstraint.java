package org.bouncycastle.crypto.constraints;

import defpackage.md;
import java.util.Collections;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;

/* JADX INFO: loaded from: classes5.dex */
public class LegacyBitsOfSecurityConstraint extends ServicesConstraint {
    private final int legacyRequiredBitsOfSecurity;
    private final int requiredBitsOfSecurity;

    /* JADX INFO: renamed from: org.bouncycastle.crypto.constraints.LegacyBitsOfSecurityConstraint$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose;

        static {
            int[] iArr = new int[CryptoServicePurpose.values().length];
            $SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose = iArr;
            try {
                iArr[CryptoServicePurpose.ANY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose[CryptoServicePurpose.VERIFYING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose[CryptoServicePurpose.DECRYPTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose[CryptoServicePurpose.VERIFICATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public LegacyBitsOfSecurityConstraint(int i2, int i3) {
        super(Collections.EMPTY_SET);
        this.requiredBitsOfSecurity = i2;
        this.legacyRequiredBitsOfSecurity = i3;
    }

    @Override // org.bouncycastle.crypto.CryptoServicesConstraints
    public void check(CryptoServiceProperties cryptoServiceProperties) {
        if (isException(cryptoServiceProperties.getServiceName())) {
            return;
        }
        CryptoServicePurpose purpose = cryptoServiceProperties.getPurpose();
        int i2 = AnonymousClass1.$SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose[purpose.ordinal()];
        if (i2 != 1 && i2 != 2 && i2 != 3 && i2 != 4) {
            if (cryptoServiceProperties.bitsOfSecurity() >= this.requiredBitsOfSecurity) {
                return;
            }
            md.f(this.requiredBitsOfSecurity, cryptoServiceProperties.bitsOfSecurity());
        } else {
            if (cryptoServiceProperties.bitsOfSecurity() < this.legacyRequiredBitsOfSecurity) {
                md.f(this.legacyRequiredBitsOfSecurity, cryptoServiceProperties.bitsOfSecurity());
                return;
            }
            if (purpose != CryptoServicePurpose.ANY) {
                Logger logger = ServicesConstraint.LOG;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine("usage of legacy cryptography service for algorithm " + cryptoServiceProperties.getServiceName());
                }
            }
        }
    }

    public LegacyBitsOfSecurityConstraint(int i2) {
        this(i2, 0);
    }

    public LegacyBitsOfSecurityConstraint(int i2, int i3, Set<String> set) {
        super(set);
        this.requiredBitsOfSecurity = i2;
        this.legacyRequiredBitsOfSecurity = i3;
    }

    public LegacyBitsOfSecurityConstraint(int i2, Set<String> set) {
        this(i2, 0, set);
    }
}
