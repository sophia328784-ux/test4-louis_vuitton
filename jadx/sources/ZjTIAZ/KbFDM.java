package ZjTIAZ;

import android.content.pm.Signature;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes2.dex */
public class KbFDM {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f205a = 2385;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static int f206b = 1270;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f207c = CNATAC.a("]mT");

    /* JADX WARN: Code duplicated, block: B:31:0x008d  */
    /* JADX WARN: Code duplicated, block: B:33:0x0091  */
    /* JADX WARN: Code duplicated, block: B:49:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x00a8 A[EDGE_INSN: B:50:0x00a8->B:38:0x00a8 BREAK  A[LOOP:2: B:27:0x0077->B:51:0x0077], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x0077 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:55:0x009f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:56:0x0096 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:58:0x0085 A[SYNTHETIC] */
    public static String a(Signature signature) throws NoSuchAlgorithmException {
        int i2;
        int i3;
        int i4;
        int i5;
        MessageDigest messageDigest = MessageDigest.getInstance(f207c);
        messageDigest.update(signature.toByteArray());
        byte[] bArrDigest = messageDigest.digest();
        StringBuilder sb = new StringBuilder();
        int length = bArrDigest.length;
        int i6 = 0;
        while (i6 < length) {
            String hexString = Integer.toHexString(bArrDigest[i6] & 255);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
            i6++;
            if (f206b <= 1269) {
                while (true) {
                    int i7 = f206b;
                    int i8 = i7 + 39;
                    if (i8 != 10) {
                        if (i8 != 157) {
                            if (i8 != 208) {
                                if (i8 != 337) {
                                }
                            }
                            while (true) {
                                f206b = ((f206b >> 99) * 88) ^ 2507;
                                if (f205a <= 2384) {
                                    while (true) {
                                        i3 = f205a;
                                        i4 = i3 + 104;
                                        if (i4 != 21) {
                                            break;
                                        }
                                        if (i4 != 87) {
                                            f205a = ((i3 >> 81) * 26) % 99;
                                            break;
                                        }
                                        if (i4 != 260) {
                                            f205a = ((i3 % 58) >> 118) % 71;
                                        }
                                    }
                                }
                            }
                            while (true) {
                                f205a = (f205a % 5) * 7520;
                            }
                        } else {
                            f206b = (i7 % 60) % 83;
                            if (f205a <= 2384) {
                                do {
                                    i5 = f205a;
                                } while (i5 + 91 != 34);
                                f205a = i5 ^ 5474;
                            }
                        }
                        i2 = ((f206b ^ 2213) * 16) % 28;
                    } else {
                        i2 = (i7 ^ 3303) >> 9;
                    }
                    f206b = i2;
                    while (true) {
                        f206b = ((f206b >> 99) * 88) ^ 2507;
                        if (f205a <= 2384) {
                            while (true) {
                                i3 = f205a;
                                i4 = i3 + 104;
                                if (i4 != 21) {
                                    break;
                                    break;
                                }
                                if (i4 != 87) {
                                    f205a = ((i3 >> 81) * 26) % 99;
                                    break;
                                    break;
                                }
                                if (i4 != 260) {
                                    f205a = ((i3 % 58) >> 118) % 71;
                                }
                            }
                        }
                    }
                    while (true) {
                        f205a = (f205a % 5) * 7520;
                    }
                }
            }
        }
        return sb.toString();
    }
}
