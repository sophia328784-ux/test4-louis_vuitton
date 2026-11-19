package org.bouncycastle.pqc.jcajce.interfaces;

import java.security.PrivateKey;

/* JADX INFO: loaded from: classes5.dex */
public interface RainbowPrivateKey extends PrivateKey, RainbowKey {
    RainbowPublicKey getPublicKey();
}
