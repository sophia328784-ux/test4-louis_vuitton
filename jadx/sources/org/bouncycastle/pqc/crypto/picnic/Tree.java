package org.bouncycastle.pqc.crypto.picnic;

import java.lang.reflect.Array;
import java.util.logging.Logger;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* JADX INFO: loaded from: classes5.dex */
class Tree {
    private static final Logger LOG = Logger.getLogger(Tree.class.getName());
    private static final int MAX_SEED_SIZE_BYTES = 32;
    private int dataSize;
    private int depth;
    private PicnicEngine engine;
    private boolean[] exists;
    private boolean[] haveNode;
    byte[][] nodes;
    private int numLeaves;
    private int numNodes;

    public Tree(PicnicEngine picnicEngine, int i2, int i3) {
        int i4;
        this.engine = picnicEngine;
        int iCeil_log2 = Utils.ceil_log2(i2);
        int i5 = iCeil_log2 + 1;
        this.depth = i5;
        int i6 = ((1 << i5) - 1) - ((1 << iCeil_log2) - i2);
        this.numNodes = i6;
        this.numLeaves = i2;
        this.dataSize = i3;
        this.nodes = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i6, i3);
        int i7 = 0;
        while (true) {
            i4 = this.numNodes;
            if (i7 >= i4) {
                break;
            }
            this.nodes[i7] = new byte[i3];
            i7++;
        }
        this.haveNode = new boolean[i4];
        boolean[] zArr = new boolean[i4];
        this.exists = zArr;
        Arrays.fill(zArr, i4 - this.numLeaves, i4, true);
        for (int i8 = this.numNodes - this.numLeaves; i8 > 0; i8--) {
            int i9 = i8 * 2;
            if (exists(i9 + 1) || exists(i9 + 2)) {
                this.exists[i8] = true;
            }
        }
        this.exists[0] = true;
    }

    private void computeParentHash(int i2, byte[] bArr) {
        if (exists(i2)) {
            int parent = getParent(i2);
            boolean[] zArr = this.haveNode;
            if (zArr[parent]) {
                return;
            }
            int i3 = parent * 2;
            int i4 = i3 + 1;
            if (zArr[i4]) {
                int i5 = i3 + 2;
                if (!exists(i5) || this.haveNode[i5]) {
                    this.engine.digest.update((byte) 3);
                    PicnicEngine picnicEngine = this.engine;
                    picnicEngine.digest.update(this.nodes[i4], 0, picnicEngine.digestSizeBytes);
                    if (hasRightChild(parent)) {
                        PicnicEngine picnicEngine2 = this.engine;
                        picnicEngine2.digest.update(this.nodes[i5], 0, picnicEngine2.digestSizeBytes);
                    }
                    this.engine.digest.update(bArr, 0, 32);
                    this.engine.digest.update(Pack.intToLittleEndian(parent), 0, 2);
                    PicnicEngine picnicEngine3 = this.engine;
                    picnicEngine3.digest.doFinal(this.nodes[parent], 0, picnicEngine3.digestSizeBytes);
                    this.haveNode[parent] = true;
                }
            }
        }
    }

    private boolean contains(int[] iArr, int i2, int i3) {
        for (int i4 = 0; i4 < i2; i4++) {
            if (iArr[i4] == i3) {
                return true;
            }
        }
        return false;
    }

    private boolean exists(int i2) {
        if (i2 >= this.numNodes) {
            return false;
        }
        return this.exists[i2];
    }

    private void expandSeeds(byte[] bArr, int i2) {
        Tree tree;
        byte[] bArr2;
        int i3;
        byte[] bArr3 = new byte[64];
        int parent = getParent(this.numNodes - 1);
        int i4 = 0;
        while (i4 <= parent) {
            if (this.haveNode[i4]) {
                tree = this;
                bArr2 = bArr;
                i3 = i2;
                tree.hashSeed(bArr3, this.nodes[i4], bArr2, (byte) 1, i3, i4);
                int i5 = i4 * 2;
                int i6 = i5 + 1;
                if (!tree.haveNode[i6]) {
                    System.arraycopy(bArr3, 0, tree.nodes[i6], 0, tree.engine.seedSizeBytes);
                    tree.haveNode[i6] = true;
                }
                int i7 = i5 + 2;
                if (tree.exists(i7) && !tree.haveNode[i7]) {
                    int i8 = tree.engine.seedSizeBytes;
                    System.arraycopy(bArr3, i8, tree.nodes[i7], 0, i8);
                    tree.haveNode[i7] = true;
                }
            } else {
                tree = this;
                bArr2 = bArr;
                i3 = i2;
            }
            i4++;
            this = tree;
            bArr = bArr2;
            i2 = i3;
        }
    }

    private int getParent(int i2) {
        return (isLeftChild(i2) ? i2 - 1 : i2 - 2) / 2;
    }

    private int[] getRevealedMerkleNodes(int[] iArr, int i2, int[] iArr2) {
        int i3 = this.numNodes;
        int i4 = i3 - this.numLeaves;
        boolean[] zArr = new boolean[i3];
        for (int i5 = 0; i5 < i2; i5++) {
            zArr[iArr[i5] + i4] = true;
        }
        for (int parent = getParent(this.numNodes - 1); parent > 0; parent--) {
            if (exists(parent)) {
                int i6 = parent * 2;
                int i7 = i6 + 2;
                int i8 = i6 + 1;
                if (exists(i7)) {
                    if (zArr[i8] && zArr[i7]) {
                        zArr[parent] = true;
                    }
                } else if (zArr[i8]) {
                    zArr[parent] = true;
                }
            }
        }
        int[] iArr3 = new int[this.numLeaves];
        int i9 = 0;
        for (int i10 = 0; i10 < i2; i10++) {
            int parent2 = iArr[i10] + i4;
            do {
                if (!zArr[getParent(parent2)]) {
                    if (!contains(iArr3, i9, parent2)) {
                        iArr3[i9] = parent2;
                        i9++;
                        break;
                    }
                    break;
                }
                parent2 = getParent(parent2);
            } while (parent2 != 0);
        }
        iArr2[0] = i9;
        return iArr3;
    }

    private int[] getRevealedNodes(int[] iArr, int i2, int[] iArr2) {
        int i3 = this.depth - 1;
        int[][] iArr3 = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i3, i2);
        for (int i4 = 0; i4 < i2; i4++) {
            int parent = (this.numNodes - this.numLeaves) + iArr[i4];
            iArr3[0][i4] = parent;
            int i5 = 1;
            while (true) {
                parent = getParent(parent);
                if (parent != 0) {
                    iArr3[i5][i4] = parent;
                    i5++;
                }
            }
        }
        int[] iArr4 = new int[this.numLeaves];
        int i6 = 0;
        for (int i7 = 0; i7 < i3; i7++) {
            for (int i8 = 0; i8 < i2; i8++) {
                if (hasSibling(iArr3[i7][i8])) {
                    int sibling = getSibling(iArr3[i7][i8]);
                    if (!contains(iArr3[i7], i2, sibling)) {
                        while (!hasRightChild(sibling) && !isLeafNode(sibling)) {
                            sibling = (sibling * 2) + 1;
                        }
                        if (!contains(iArr4, i6, sibling)) {
                            iArr4[i6] = sibling;
                            i6++;
                        }
                    }
                }
            }
        }
        iArr2[0] = i6;
        return iArr4;
    }

    private int getSibling(int i2) {
        if (!isLeftChild(i2)) {
            return i2 - 1;
        }
        int i3 = i2 + 1;
        if (i3 < this.numNodes) {
            return i3;
        }
        LOG.fine("getSibling: request for node with not sibling");
        return 0;
    }

    private boolean hasRightChild(int i2) {
        return (i2 * 2) + 2 < this.numNodes && exists(i2);
    }

    private boolean hasSibling(int i2) {
        if (exists(i2)) {
            return !isLeftChild(i2) || exists(i2 + 1);
        }
        return false;
    }

    private void hashSeed(byte[] bArr, byte[] bArr2, byte[] bArr3, byte b2, int i2, int i3) {
        this.engine.digest.update(b2);
        PicnicEngine picnicEngine = this.engine;
        picnicEngine.digest.update(bArr2, 0, picnicEngine.seedSizeBytes);
        this.engine.digest.update(bArr3, 0, 32);
        this.engine.digest.update(Pack.shortToLittleEndian((short) (i2 & 65535)), 0, 2);
        this.engine.digest.update(Pack.shortToLittleEndian((short) (65535 & i3)), 0, 2);
        PicnicEngine picnicEngine2 = this.engine;
        picnicEngine2.digest.doFinal(bArr, 0, picnicEngine2.seedSizeBytes * 2);
    }

    private boolean isLeafNode(int i2) {
        return (i2 * 2) + 1 >= this.numNodes;
    }

    private boolean isLeftChild(int i2) {
        return i2 % 2 == 1;
    }

    public int addMerkleNodes(int[] iArr, int i2, byte[] bArr, int i3) {
        int[] iArr2 = {0};
        int[] revealedMerkleNodes = getRevealedMerkleNodes(iArr, i2, iArr2);
        for (int i4 = 0; i4 < iArr2[0]; i4++) {
            int i5 = this.dataSize;
            i3 -= i5;
            if (i3 < 0) {
                return -1;
            }
            System.arraycopy(bArr, i4 * i5, this.nodes[revealedMerkleNodes[i4]], 0, i5);
            this.haveNode[revealedMerkleNodes[i4]] = true;
        }
        return i3 != 0 ? -1 : 0;
    }

    public void buildMerkleTree(byte[][] bArr, byte[] bArr2) {
        int i2 = this.numNodes - this.numLeaves;
        for (int i3 = 0; i3 < this.numLeaves; i3++) {
            byte[] bArr3 = bArr[i3];
            if (bArr3 != null) {
                int i4 = i2 + i3;
                System.arraycopy(bArr3, 0, this.nodes[i4], 0, this.dataSize);
                this.haveNode[i4] = true;
            }
        }
        for (int i5 = this.numNodes; i5 > 0; i5--) {
            computeParentHash(i5, bArr2);
        }
    }

    public void generateSeeds(byte[] bArr, byte[] bArr2, int i2) {
        this.nodes[0] = bArr;
        this.haveNode[0] = true;
        expandSeeds(bArr2, i2);
    }

    public byte[] getLeaf(int i2) {
        return this.nodes[(this.numNodes - this.numLeaves) + i2];
    }

    public byte[][] getLeaves() {
        return this.nodes;
    }

    public int getLeavesOffset() {
        return this.numNodes - this.numLeaves;
    }

    public boolean hasLeftChild(Tree tree, int i2) {
        return (i2 * 2) + 1 < this.numNodes;
    }

    public byte[] openMerkleTree(int[] iArr, int i2, int[] iArr2) {
        int[] iArr3 = new int[1];
        int[] revealedMerkleNodes = getRevealedMerkleNodes(iArr, i2, iArr3);
        int i3 = iArr3[0] * this.dataSize;
        iArr2[0] = i3;
        byte[] bArr = new byte[i3];
        for (int i4 = 0; i4 < iArr3[0]; i4++) {
            byte[] bArr2 = this.nodes[revealedMerkleNodes[i4]];
            int i5 = this.dataSize;
            System.arraycopy(bArr2, 0, bArr, i4 * i5, i5);
        }
        return bArr;
    }

    public int openMerkleTreeSize(int[] iArr, int i2) {
        int[] iArr2 = new int[1];
        getRevealedMerkleNodes(iArr, i2, iArr2);
        return iArr2[0] * this.engine.digestSizeBytes;
    }

    public int reconstructSeeds(int[] iArr, int i2, byte[] bArr, int i3, byte[] bArr2, int i4) {
        int[] iArr2 = {0};
        int[] revealedNodes = getRevealedNodes(iArr, i2, iArr2);
        for (int i5 = 0; i5 < iArr2[0]; i5++) {
            int i6 = this.engine.seedSizeBytes;
            i3 -= i6;
            if (i3 < 0) {
                return -1;
            }
            System.arraycopy(bArr, i5 * i6, this.nodes[revealedNodes[i5]], 0, i6);
            this.haveNode[revealedNodes[i5]] = true;
        }
        expandSeeds(bArr2, i4);
        return 0;
    }

    public int revealSeeds(int[] iArr, int i2, byte[] bArr, int i3) {
        int[] iArr2 = {0};
        int[] revealedNodes = getRevealedNodes(iArr, i2, iArr2);
        for (int i4 = 0; i4 < iArr2[0]; i4++) {
            int i5 = this.engine.seedSizeBytes;
            i3 -= i5;
            if (i3 < 0) {
                LOG.fine("Insufficient sized buffer provided to revealSeeds");
                return 0;
            }
            System.arraycopy(this.nodes[revealedNodes[i4]], 0, bArr, i4 * i5, i5);
        }
        return bArr.length - i3;
    }

    public int revealSeedsSize(int[] iArr, int i2) {
        int[] iArr2 = {0};
        getRevealedNodes(iArr, i2, iArr2);
        return iArr2[0] * this.engine.seedSizeBytes;
    }

    public int verifyMerkleTree(byte[][] bArr, byte[] bArr2) {
        int i2 = this.numNodes - this.numLeaves;
        for (int i3 = 0; i3 < this.numLeaves; i3++) {
            byte[] bArr3 = bArr[i3];
            if (bArr3 != null) {
                int i4 = i2 + i3;
                if (this.haveNode[i4]) {
                    return -1;
                }
                if (bArr3 != null) {
                    System.arraycopy(bArr3, 0, this.nodes[i4], 0, this.dataSize);
                    this.haveNode[i4] = true;
                }
            }
        }
        for (int i5 = this.numNodes; i5 > 0; i5--) {
            computeParentHash(i5, bArr2);
        }
        return !this.haveNode[0] ? -1 : 0;
    }
}
