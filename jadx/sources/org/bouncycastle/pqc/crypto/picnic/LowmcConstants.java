package org.bouncycastle.pqc.crypto.picnic;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.util.Properties;
import org.bouncycastle.util.Pack;
import org.bouncycastle.util.encoders.Hex;

/* JADX INFO: loaded from: classes5.dex */
abstract class LowmcConstants {
    protected KMatrices KMatrix;
    protected KMatrices KMatrix_full;
    protected KMatrices KMatrix_inv;
    protected KMatrices LMatrix;
    protected KMatrices LMatrix_full;
    protected KMatrices LMatrix_inv;
    protected KMatrices RConstants;
    protected KMatrices RConstants_full;
    protected int[] keyMatrices;
    protected int[] keyMatrices_full;
    protected int[] keyMatrices_inv;
    protected int[] linearMatrices;
    protected int[] linearMatrices_full;
    protected int[] linearMatrices_inv;
    protected int[] roundConstants;
    protected int[] roundConstants_full;

    private KMatricesWithPointer GET_MAT(KMatrices kMatrices, int i2) {
        KMatricesWithPointer kMatricesWithPointer = new KMatricesWithPointer(kMatrices);
        kMatricesWithPointer.setMatrixPointer(i2 * kMatricesWithPointer.getSize());
        return kMatricesWithPointer;
    }

    public static int[] ReadFromProperty(Properties properties, String str, int i2) {
        byte[] bArrDecode = Hex.decode(removeCommas(properties.getProperty(str)));
        int[] iArr = new int[i2];
        for (int i3 = 0; i3 < bArrDecode.length / 4; i3++) {
            iArr[i3] = Pack.littleEndianToInt(bArrDecode, i3 * 4);
        }
        return iArr;
    }

    public static int[] readArray(DataInputStream dataInputStream) throws IOException {
        int i2 = dataInputStream.readInt();
        int[] iArr = new int[i2];
        for (int i3 = 0; i3 != i2; i3++) {
            iArr[i3] = dataInputStream.readInt();
        }
        return iArr;
    }

    private static byte[] removeCommas(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i2 = 0; i2 != str.length(); i2++) {
            if (str.charAt(i2) != ',') {
                byteArrayOutputStream.write(str.charAt(i2));
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0006  */
    public KMatricesWithPointer KMatrix(PicnicEngine picnicEngine, int i2) {
        KMatrices kMatrices;
        int i3 = picnicEngine.stateSizeBits;
        if (i3 != 128) {
            if (i3 != 129) {
                if (i3 == 192) {
                    if (picnicEngine.numRounds != 4) {
                        kMatrices = this.KMatrix;
                    }
                } else if (i3 != 255) {
                    if (i3 != 256) {
                        return null;
                    }
                    kMatrices = this.KMatrix;
                }
            }
            kMatrices = this.KMatrix_full;
        } else {
            kMatrices = this.KMatrix;
        }
        return GET_MAT(kMatrices, i2);
    }

    public KMatricesWithPointer KMatrixInv(PicnicEngine picnicEngine) {
        int i2 = picnicEngine.stateSizeBits;
        if (i2 == 129 || ((i2 == 192 && picnicEngine.numRounds == 4) || i2 == 255)) {
            return GET_MAT(this.KMatrix_inv, 0);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0006  */
    public KMatricesWithPointer LMatrix(PicnicEngine picnicEngine, int i2) {
        KMatrices kMatrices;
        int i3 = picnicEngine.stateSizeBits;
        if (i3 != 128) {
            if (i3 != 129) {
                if (i3 == 192) {
                    if (picnicEngine.numRounds != 4) {
                        kMatrices = this.LMatrix;
                    }
                } else if (i3 != 255) {
                    if (i3 != 256) {
                        return null;
                    }
                    kMatrices = this.LMatrix;
                }
            }
            kMatrices = this.LMatrix_full;
        } else {
            kMatrices = this.LMatrix;
        }
        return GET_MAT(kMatrices, i2);
    }

    public KMatricesWithPointer LMatrixInv(PicnicEngine picnicEngine, int i2) {
        int i3 = picnicEngine.stateSizeBits;
        if (i3 == 129 || ((i3 == 192 && picnicEngine.numRounds == 4) || i3 == 255)) {
            return GET_MAT(this.LMatrix_inv, i2);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0006  */
    public KMatricesWithPointer RConstant(PicnicEngine picnicEngine, int i2) {
        KMatrices kMatrices;
        int i3 = picnicEngine.stateSizeBits;
        if (i3 != 128) {
            if (i3 != 129) {
                if (i3 == 192) {
                    if (picnicEngine.numRounds != 4) {
                        kMatrices = this.RConstants;
                    }
                } else if (i3 != 255) {
                    if (i3 != 256) {
                        return null;
                    }
                    kMatrices = this.RConstants;
                }
            }
            kMatrices = this.RConstants_full;
        } else {
            kMatrices = this.RConstants;
        }
        return GET_MAT(kMatrices, i2);
    }
}
