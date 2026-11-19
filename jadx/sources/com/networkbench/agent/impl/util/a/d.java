package com.networkbench.agent.impl.util.a;

import java.util.Arrays;
import org.bouncycastle.crypto.agreement.SM2KeyExchange;
import org.bouncycastle.crypto.params.ECPrivateKeyParameters;
import org.bouncycastle.crypto.params.ECPublicKeyParameters;
import org.bouncycastle.crypto.params.ParametersWithID;
import org.bouncycastle.crypto.params.SM2KeyExchangePrivateParameters;
import org.bouncycastle.crypto.params.SM2KeyExchangePublicParameters;

/* JADX INFO: loaded from: classes5.dex */
public class d {
    public static a a(boolean z, int i2, byte[] bArr, ECPrivateKeyParameters eCPrivateKeyParameters, ECPrivateKeyParameters eCPrivateKeyParameters2, byte[] bArr2, ECPublicKeyParameters eCPublicKeyParameters, ECPublicKeyParameters eCPublicKeyParameters2, byte[] bArr3) {
        SM2KeyExchange sM2KeyExchange = new SM2KeyExchange();
        sM2KeyExchange.init(new ParametersWithID(new SM2KeyExchangePrivateParameters(z, eCPrivateKeyParameters, eCPrivateKeyParameters2), bArr2));
        byte[][] bArrCalculateKeyWithConfirmation = sM2KeyExchange.calculateKeyWithConfirmation(i2, bArr, new ParametersWithID(new SM2KeyExchangePublicParameters(eCPublicKeyParameters, eCPublicKeyParameters2), bArr3));
        a aVar = new a();
        aVar.a(bArrCalculateKeyWithConfirmation[0]);
        if (z) {
            aVar.c(bArrCalculateKeyWithConfirmation[1]);
            return aVar;
        }
        aVar.b(bArrCalculateKeyWithConfirmation[1]);
        aVar.c(bArrCalculateKeyWithConfirmation[2]);
        return aVar;
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private byte[] f38276a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private byte[] f38277b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private byte[] f38278c;

        public byte[] a() {
            return this.f38276a;
        }

        public byte[] b() {
            return this.f38277b;
        }

        public byte[] c() {
            return this.f38278c;
        }

        public void a(byte[] bArr) {
            this.f38276a = bArr;
        }

        public void b(byte[] bArr) {
            this.f38277b = bArr;
        }

        public void c(byte[] bArr) {
            this.f38278c = bArr;
        }
    }

    public static byte[] a(boolean z, int i2, ECPrivateKeyParameters eCPrivateKeyParameters, ECPrivateKeyParameters eCPrivateKeyParameters2, byte[] bArr, ECPublicKeyParameters eCPublicKeyParameters, ECPublicKeyParameters eCPublicKeyParameters2, byte[] bArr2) {
        SM2KeyExchange sM2KeyExchange = new SM2KeyExchange();
        sM2KeyExchange.init(new ParametersWithID(new SM2KeyExchangePrivateParameters(z, eCPrivateKeyParameters, eCPrivateKeyParameters2), bArr));
        return sM2KeyExchange.calculateKey(i2, new ParametersWithID(new SM2KeyExchangePublicParameters(eCPublicKeyParameters, eCPublicKeyParameters2), bArr2));
    }

    public static boolean a(byte[] bArr, byte[] bArr2) {
        return Arrays.equals(bArr, bArr2);
    }
}
