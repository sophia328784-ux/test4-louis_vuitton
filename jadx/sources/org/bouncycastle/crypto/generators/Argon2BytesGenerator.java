package org.bouncycastle.crypto.generators;

import defpackage.cj;
import defpackage.md;
import defpackage.no0;
import defpackage.z81;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.digests.Blake2bDigest;
import org.bouncycastle.crypto.params.Argon2Parameters;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Longs;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
public class Argon2BytesGenerator {
    private static final int ARGON2_ADDRESSES_IN_BLOCK = 128;
    private static final int ARGON2_BLOCK_SIZE = 1024;
    private static final int ARGON2_PREHASH_DIGEST_LENGTH = 64;
    private static final int ARGON2_PREHASH_SEED_LENGTH = 72;
    private static final int ARGON2_QWORDS_IN_BLOCK = 128;
    private static final int ARGON2_SYNC_POINTS = 4;
    private static final long M32L = 4294967295L;
    private static final int MAX_PARALLELISM = 16777216;
    private static final int MIN_ITERATIONS = 1;
    private static final int MIN_OUTLEN = 4;
    private static final int MIN_PARALLELISM = 1;
    private static final byte[] ZERO_BYTES = new byte[4];
    private int laneLength;
    private Block[] memory;
    private Argon2Parameters parameters;
    private int segmentLength;

    public static class Position {
        int lane;
        int pass;
        int slice;
    }

    private static void F(long[] jArr, int i2, int i3, int i4, int i5) {
        quarterRound(jArr, i2, i3, i5, 32);
        quarterRound(jArr, i4, i5, i3, 24);
        quarterRound(jArr, i2, i3, i5, 16);
        quarterRound(jArr, i4, i5, i3, 63);
    }

    private static void addByteString(byte[] bArr, Digest digest, byte[] bArr2) {
        if (bArr2 == null) {
            digest.update(ZERO_BYTES, 0, 4);
            return;
        }
        Pack.intToLittleEndian(bArr2.length, bArr, 0);
        digest.update(bArr, 0, 4);
        digest.update(bArr2, 0, bArr2.length);
    }

    private void digest(byte[] bArr, byte[] bArr2, int i2, int i3) {
        Block block = this.memory[this.laneLength - 1];
        for (int i4 = 1; i4 < this.parameters.getLanes(); i4++) {
            int i5 = this.laneLength;
            block.xorWith(this.memory[(i5 - 1) + (i4 * i5)]);
        }
        block.toBytes(bArr);
        hash(bArr, bArr2, i2, i3);
    }

    private void doInit(Argon2Parameters argon2Parameters) {
        int memory = argon2Parameters.getMemory();
        if (memory < argon2Parameters.getLanes() * 8) {
            memory = argon2Parameters.getLanes() * 8;
        }
        int lanes = memory / (argon2Parameters.getLanes() * 4);
        this.segmentLength = lanes;
        this.laneLength = lanes * 4;
        initMemory(argon2Parameters.getLanes() * 4 * lanes);
    }

    private void fillFirstBlocks(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[72];
        System.arraycopy(bArr2, 0, bArr3, 0, 64);
        bArr3[64] = 1;
        for (int i2 = 0; i2 < this.parameters.getLanes(); i2++) {
            Pack.intToLittleEndian(i2, bArr2, 68);
            Pack.intToLittleEndian(i2, bArr3, 68);
            hash(bArr2, bArr, 0, 1024);
            this.memory[this.laneLength * i2].fromBytes(bArr);
            hash(bArr3, bArr, 0, 1024);
            this.memory[(this.laneLength * i2) + 1].fromBytes(bArr);
        }
    }

    private void fillMemoryBlocks() {
        FillBlock fillBlock = new FillBlock();
        Position position = new Position();
        for (int i2 = 0; i2 < this.parameters.getIterations(); i2++) {
            position.pass = i2;
            for (int i3 = 0; i3 < 4; i3++) {
                position.slice = i3;
                for (int i4 = 0; i4 < this.parameters.getLanes(); i4++) {
                    position.lane = i4;
                    fillSegment(fillBlock, position);
                }
            }
        }
    }

    private void fillSegment(FillBlock fillBlock, Position position) {
        Block blockClear;
        Block blockClear2;
        FillBlock fillBlock2 = fillBlock;
        Position position2 = position;
        boolean zIsDataIndependentAddressing = isDataIndependentAddressing(position2);
        int startingIndex = getStartingIndex(position2);
        int iA = cj.a(position2.slice, this.segmentLength, position2.lane * this.laneLength, startingIndex);
        int prevOffset = getPrevOffset(iA);
        if (zIsDataIndependentAddressing) {
            blockClear = fillBlock2.addressBlock.clear();
            blockClear2 = fillBlock2.inputBlock.clear();
            initAddressBlocks(fillBlock2, position2, blockClear2, blockClear);
        } else {
            blockClear = null;
            blockClear2 = null;
        }
        boolean zIsWithXor = isWithXor(position2);
        while (true) {
            int i2 = iA;
            if (startingIndex >= this.segmentLength) {
                return;
            }
            Block block = blockClear;
            int i3 = prevOffset;
            Block block2 = blockClear2;
            long pseudoRandom = getPseudoRandom(fillBlock2, startingIndex, block, block2, i3, zIsDataIndependentAddressing);
            boolean z = zIsDataIndependentAddressing;
            FillBlock fillBlock3 = fillBlock2;
            int refLane = getRefLane(position2, pseudoRandom);
            int refColumn = getRefColumn(position2, startingIndex, pseudoRandom, refLane == position2.lane);
            Block[] blockArr = this.memory;
            Block block3 = blockArr[i3];
            Block block4 = blockArr[(this.laneLength * refLane) + refColumn];
            Block block5 = blockArr[i2];
            if (zIsWithXor) {
                fillBlock3.fillBlockWithXor(block3, block4, block5);
            } else {
                fillBlock3.fillBlock(block3, block4, block5);
            }
            iA = i2 + 1;
            startingIndex++;
            position2 = position;
            fillBlock2 = fillBlock3;
            zIsDataIndependentAddressing = z;
            prevOffset = i2;
            blockClear = block;
            blockClear2 = block2;
        }
    }

    private int getPrevOffset(int i2) {
        int i3 = this.laneLength;
        return i2 % i3 == 0 ? (i2 + i3) - 1 : i2 - 1;
    }

    private long getPseudoRandom(FillBlock fillBlock, int i2, Block block, Block block2, int i3, boolean z) {
        if (!z) {
            return this.memory[i3].v[0];
        }
        int i4 = i2 % 128;
        if (i4 == 0) {
            nextAddresses(fillBlock, block2, block);
        }
        return block.v[i4];
    }

    private int getRefColumn(Position position, int i2, long j2, boolean z) {
        int i3;
        int i4;
        int i5 = position.pass;
        int i6 = 0;
        int i7 = position.slice;
        if (i5 != 0) {
            int i8 = this.segmentLength;
            int i9 = this.laneLength;
            int i10 = ((i7 + 1) * i8) % i9;
            int i11 = i9 - i8;
            if (z) {
                i3 = (i11 + i2) - 1;
            } else {
                i3 = i11 + (i2 != 0 ? 0 : -1);
            }
            i6 = i10;
            i4 = i3;
        } else if (z) {
            i4 = ((i7 * this.segmentLength) + i2) - 1;
        } else {
            i4 = (i7 * this.segmentLength) + (i2 != 0 ? 0 : -1);
        }
        long j3 = j2 & 4294967295L;
        return ((int) (((long) i6) + (((long) (i4 - 1)) - ((((long) i4) * ((j3 * j3) >>> 32)) >>> 32)))) % this.laneLength;
    }

    private int getRefLane(Position position, long j2) {
        int lanes = (int) ((j2 >>> 32) % ((long) this.parameters.getLanes()));
        return (position.pass == 0 && position.slice == 0) ? position.lane : lanes;
    }

    private static int getStartingIndex(Position position) {
        return (position.pass == 0 && position.slice == 0) ? 2 : 0;
    }

    private void hash(byte[] bArr, byte[] bArr2, int i2, int i3) {
        byte[] bArr3 = new byte[4];
        Pack.intToLittleEndian(i3, bArr3, 0);
        if (i3 <= 64) {
            Blake2bDigest blake2bDigest = new Blake2bDigest(i3 * 8);
            blake2bDigest.update(bArr3, 0, 4);
            blake2bDigest.update(bArr, 0, bArr.length);
            blake2bDigest.doFinal(bArr2, i2);
            return;
        }
        Blake2bDigest blake2bDigest2 = new Blake2bDigest(512);
        byte[] bArr4 = new byte[64];
        blake2bDigest2.update(bArr3, 0, 4);
        blake2bDigest2.update(bArr, 0, bArr.length);
        blake2bDigest2.doFinal(bArr4, 0);
        System.arraycopy(bArr4, 0, bArr2, i2, 32);
        int i4 = i2 + 32;
        int i5 = 2;
        int i6 = ((i3 + 31) / 32) - 2;
        while (i5 <= i6) {
            blake2bDigest2.update(bArr4, 0, 64);
            blake2bDigest2.doFinal(bArr4, 0);
            System.arraycopy(bArr4, 0, bArr2, i4, 32);
            i5++;
            i4 += 32;
        }
        Blake2bDigest blake2bDigest3 = new Blake2bDigest((i3 - (i6 * 32)) * 8);
        blake2bDigest3.update(bArr4, 0, 64);
        blake2bDigest3.doFinal(bArr2, i4);
    }

    private void initAddressBlocks(FillBlock fillBlock, Position position, Block block, Block block2) {
        block.v[0] = intToLong(position.pass);
        block.v[1] = intToLong(position.lane);
        block.v[2] = intToLong(position.slice);
        block.v[3] = intToLong(this.memory.length);
        block.v[4] = intToLong(this.parameters.getIterations());
        block.v[5] = intToLong(this.parameters.getType());
        if (position.pass == 0 && position.slice == 0) {
            nextAddresses(fillBlock, block, block2);
        }
    }

    private void initMemory(int i2) {
        this.memory = new Block[i2];
        int i3 = 0;
        while (true) {
            Block[] blockArr = this.memory;
            if (i3 >= blockArr.length) {
                return;
            }
            blockArr[i3] = new Block();
            i3++;
        }
    }

    private void initialize(byte[] bArr, byte[] bArr2, int i2) {
        Blake2bDigest blake2bDigest = new Blake2bDigest(512);
        Pack.intToLittleEndian(new int[]{this.parameters.getLanes(), i2, this.parameters.getMemory(), this.parameters.getIterations(), this.parameters.getVersion(), this.parameters.getType()}, bArr, 0);
        blake2bDigest.update(bArr, 0, 24);
        addByteString(bArr, blake2bDigest, bArr2);
        addByteString(bArr, blake2bDigest, this.parameters.getSalt());
        addByteString(bArr, blake2bDigest, this.parameters.getSecret());
        addByteString(bArr, blake2bDigest, this.parameters.getAdditional());
        byte[] bArr3 = new byte[72];
        blake2bDigest.doFinal(bArr3, 0);
        fillFirstBlocks(bArr, bArr3);
    }

    private long intToLong(int i2) {
        return ((long) i2) & 4294967295L;
    }

    private boolean isDataIndependentAddressing(Position position) {
        return this.parameters.getType() == 1 || (this.parameters.getType() == 2 && position.pass == 0 && position.slice < 2);
    }

    private boolean isWithXor(Position position) {
        return (position.pass == 0 || this.parameters.getVersion() == 16) ? false : true;
    }

    private void nextAddresses(FillBlock fillBlock, Block block, Block block2) {
        long[] jArr = block.v;
        jArr[6] = jArr[6] + 1;
        fillBlock.fillBlock(block, block2);
        fillBlock.fillBlock(block2, block2);
    }

    private static void quarterRound(long[] jArr, int i2, int i3, int i4, int i5) {
        long j2 = jArr[i2];
        long j3 = jArr[i3];
        long j4 = jArr[i4];
        long jC = z81.c((j2 & 4294967295L) * 2, 4294967295L & j3, j3, j2);
        long jRotateRight = Longs.rotateRight(j4 ^ jC, i5);
        jArr[i2] = jC;
        jArr[i4] = jRotateRight;
    }

    private void reset() {
        if (this.memory == null) {
            return;
        }
        int i2 = 0;
        while (true) {
            Block[] blockArr = this.memory;
            if (i2 >= blockArr.length) {
                return;
            }
            Block block = blockArr[i2];
            if (block != null) {
                block.clear();
            }
            i2++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void roundFunction(Block block, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        long[] jArr = block.v;
        F(jArr, i2, i6, i10, i14);
        F(jArr, i3, i7, i11, i15);
        F(jArr, i4, i8, i12, i16);
        F(jArr, i5, i9, i13, i17);
        F(jArr, i2, i7, i12, i17);
        F(jArr, i3, i8, i13, i14);
        F(jArr, i4, i9, i10, i15);
        F(jArr, i5, i6, i11, i16);
    }

    public int generateBytes(byte[] bArr, byte[] bArr2, int i2, int i3) {
        if (i3 < 4) {
            md.k("output length less than 4");
            return 0;
        }
        byte[] bArr3 = new byte[1024];
        initialize(bArr3, bArr, i3);
        fillMemoryBlocks();
        digest(bArr3, bArr2, i2, i3);
        reset();
        return i3;
    }

    public void init(Argon2Parameters argon2Parameters) {
        this.parameters = argon2Parameters;
        if (argon2Parameters.getLanes() < 1) {
            md.k("lanes must be greater than 1");
            return;
        }
        if (argon2Parameters.getLanes() > MAX_PARALLELISM) {
            md.k("lanes must be less than 16777216");
            return;
        }
        if (argon2Parameters.getMemory() < argon2Parameters.getLanes() * 2) {
            no0.k(" expected ", argon2Parameters.getLanes() * 2, argon2Parameters.getLanes() * 2, "memory is less than: ");
        } else if (argon2Parameters.getIterations() >= 1) {
            doInit(argon2Parameters);
        } else {
            md.k("iterations is less than: 1");
        }
    }

    public static class FillBlock {
        Block R;
        Block Z;
        Block addressBlock;
        Block inputBlock;

        private FillBlock() {
            this.R = new Block();
            this.Z = new Block();
            this.addressBlock = new Block();
            this.inputBlock = new Block();
        }

        private void applyBlake() {
            for (int i2 = 0; i2 < 8; i2++) {
                int i3 = i2 * 16;
                Argon2BytesGenerator.roundFunction(this.Z, i3, i3 + 1, i3 + 2, i3 + 3, i3 + 4, i3 + 5, i3 + 6, i3 + 7, i3 + 8, i3 + 9, i3 + 10, i3 + 11, i3 + 12, i3 + 13, i3 + 14, i3 + 15);
            }
            for (int i4 = 0; i4 < 8; i4++) {
                int i5 = i4 * 2;
                Argon2BytesGenerator.roundFunction(this.Z, i5, i5 + 1, i5 + 16, i5 + 17, i5 + 32, i5 + 33, i5 + 48, i5 + 49, i5 + 64, i5 + 65, i5 + 80, i5 + 81, i5 + 96, i5 + 97, i5 + 112, i5 + 113);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillBlock(Block block, Block block2, Block block3) {
            this.R.xor(block, block2);
            this.Z.copyBlock(this.R);
            applyBlake();
            block3.xor(this.R, this.Z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillBlockWithXor(Block block, Block block2, Block block3) {
            this.R.xor(block, block2);
            this.Z.copyBlock(this.R);
            applyBlake();
            block3.xorWith(this.R, this.Z);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void fillBlock(Block block, Block block2) {
            this.Z.copyBlock(block);
            applyBlake();
            block2.xor(block, this.Z);
        }
    }

    public static class Block {
        private static final int SIZE = 128;
        private final long[] v;

        private Block() {
            this.v = new long[128];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void copyBlock(Block block) {
            System.arraycopy(block.v, 0, this.v, 0, 128);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void xor(Block block, Block block2) {
            long[] jArr = this.v;
            long[] jArr2 = block.v;
            long[] jArr3 = block2.v;
            for (int i2 = 0; i2 < 128; i2++) {
                jArr[i2] = jArr2[i2] ^ jArr3[i2];
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void xorWith(Block block, Block block2) {
            long[] jArr = this.v;
            long[] jArr2 = block.v;
            long[] jArr3 = block2.v;
            for (int i2 = 0; i2 < 128; i2++) {
                jArr[i2] = jArr[i2] ^ (jArr2[i2] ^ jArr3[i2]);
            }
        }

        public Block clear() {
            Arrays.fill(this.v, 0L);
            return this;
        }

        public void fromBytes(byte[] bArr) {
            if (bArr.length >= 1024) {
                Pack.littleEndianToLong(bArr, 0, this.v);
            } else {
                md.n("input shorter than blocksize");
            }
        }

        public void toBytes(byte[] bArr) {
            if (bArr.length >= 1024) {
                Pack.longToLittleEndian(this.v, bArr, 0);
            } else {
                md.n("output shorter than blocksize");
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void xorWith(Block block) {
            long[] jArr = this.v;
            long[] jArr2 = block.v;
            for (int i2 = 0; i2 < 128; i2++) {
                jArr[i2] = jArr[i2] ^ jArr2[i2];
            }
        }
    }

    public int generateBytes(byte[] bArr, byte[] bArr2) {
        return generateBytes(bArr, bArr2, 0, bArr2.length);
    }

    public int generateBytes(char[] cArr, byte[] bArr) {
        return generateBytes(this.parameters.getCharToByteConverter().convert(cArr), bArr);
    }

    public int generateBytes(char[] cArr, byte[] bArr, int i2, int i3) {
        return generateBytes(this.parameters.getCharToByteConverter().convert(cArr), bArr, i2, i3);
    }
}
