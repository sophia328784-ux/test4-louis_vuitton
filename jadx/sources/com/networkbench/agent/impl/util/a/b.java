package com.networkbench.agent.impl.util.a;

import java.security.Security;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

/* JADX INFO: loaded from: classes5.dex */
public class b {
    static {
        Security.addProvider(new BouncyCastleProvider());
    }
}
