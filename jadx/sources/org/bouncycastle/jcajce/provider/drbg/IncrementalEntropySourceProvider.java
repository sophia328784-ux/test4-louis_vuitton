package org.bouncycastle.jcajce.provider.drbg;

import defpackage.md;
import java.security.SecureRandom;
import org.bouncycastle.crypto.prng.EntropySource;
import org.bouncycastle.crypto.prng.EntropySourceProvider;

/* JADX INFO: loaded from: classes5.dex */
class IncrementalEntropySourceProvider implements EntropySourceProvider {
    private final boolean predictionResistant;
    private final SecureRandom random;

    public IncrementalEntropySourceProvider(SecureRandom secureRandom, boolean z) {
        this.random = secureRandom;
        this.predictionResistant = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sleep(long j2) throws InterruptedException {
        if (j2 != 0) {
            Thread.sleep(j2);
        }
    }

    @Override // org.bouncycastle.crypto.prng.EntropySourceProvider
    public EntropySource get(int i2) {
        return new IncrementalEntropySource(i2) { // from class: org.bouncycastle.jcajce.provider.drbg.IncrementalEntropySourceProvider.1
            final int numBytes;
            final /* synthetic */ int val$bitsRequired;

            {
                this.val$bitsRequired = i2;
                this.numBytes = (i2 + 7) / 8;
            }

            @Override // org.bouncycastle.crypto.prng.EntropySource
            public int entropySize() {
                return this.val$bitsRequired;
            }

            @Override // org.bouncycastle.jcajce.provider.drbg.IncrementalEntropySource
            public byte[] getEntropy(long j2) throws InterruptedException {
                int i3;
                int i4 = this.numBytes;
                byte[] bArr = new byte[i4];
                int i5 = 0;
                while (true) {
                    i3 = this.numBytes;
                    if (i5 >= i3 / 8) {
                        break;
                    }
                    IncrementalEntropySourceProvider.sleep(j2);
                    byte[] bArrGenerateSeed = IncrementalEntropySourceProvider.this.random.generateSeed(8);
                    System.arraycopy(bArrGenerateSeed, 0, bArr, i5 * 8, bArrGenerateSeed.length);
                    i5++;
                }
                int i6 = i3 - ((i3 / 8) * 8);
                if (i6 != 0) {
                    IncrementalEntropySourceProvider.sleep(j2);
                    byte[] bArrGenerateSeed2 = IncrementalEntropySourceProvider.this.random.generateSeed(i6);
                    System.arraycopy(bArrGenerateSeed2, 0, bArr, i4 - bArrGenerateSeed2.length, bArrGenerateSeed2.length);
                }
                return bArr;
            }

            @Override // org.bouncycastle.crypto.prng.EntropySource
            public boolean isPredictionResistant() {
                return IncrementalEntropySourceProvider.this.predictionResistant;
            }

            @Override // org.bouncycastle.crypto.prng.EntropySource
            public byte[] getEntropy() {
                try {
                    return getEntropy(0L);
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    md.k("initial entropy fetch interrupted");
                    return null;
                }
            }
        };
    }
}
