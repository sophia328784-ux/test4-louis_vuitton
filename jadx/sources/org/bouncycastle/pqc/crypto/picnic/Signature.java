package org.bouncycastle.pqc.crypto.picnic;

/* JADX INFO: loaded from: classes5.dex */
class Signature {
    final byte[] challengeBits;
    final Proof[] proofs;
    final byte[] salt = new byte[32];

    public static class Proof {
        final byte[] communicatedBits;
        final int[] inputShare;
        final byte[] seed1;
        final byte[] seed2;
        final byte[] view3Commitment;
        final byte[] view3UnruhG;

        public Proof(PicnicEngine picnicEngine) {
            int i2 = picnicEngine.seedSizeBytes;
            this.seed1 = new byte[i2];
            this.seed2 = new byte[i2];
            this.inputShare = new int[picnicEngine.stateSizeWords];
            this.communicatedBits = new byte[picnicEngine.andSizeBytes];
            this.view3Commitment = new byte[picnicEngine.digestSizeBytes];
            int i3 = picnicEngine.UnruhGWithInputBytes;
            if (i3 > 0) {
                this.view3UnruhG = new byte[i3];
            } else {
                this.view3UnruhG = null;
            }
        }
    }

    public Signature(PicnicEngine picnicEngine) {
        this.challengeBits = new byte[Utils.numBytes(picnicEngine.numMPCRounds * 2)];
        this.proofs = new Proof[picnicEngine.numMPCRounds];
        int i2 = 0;
        while (true) {
            Proof[] proofArr = this.proofs;
            if (i2 >= proofArr.length) {
                return;
            }
            proofArr[i2] = new Proof(picnicEngine);
            i2++;
        }
    }
}
