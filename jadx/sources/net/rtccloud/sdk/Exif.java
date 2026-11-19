package net.rtccloud.sdk;

import com.sightcall.pratik.logs.Logger;

/* JADX INFO: loaded from: classes4.dex */
public class Exif {
    public static int getOrientation(byte[] bArr) {
        int i2;
        if (bArr == null) {
            return 0;
        }
        int i3 = 0;
        while (true) {
            if (i3 + 3 >= bArr.length) {
                i2 = 0;
                break;
            }
            int i4 = i3 + 1;
            if ((bArr[i3] & 255) == 255) {
                int i5 = bArr[i4] & 255;
                if (i5 != 255) {
                    i4 = i3 + 2;
                    if (i5 != 216 && i5 != 1) {
                        if (i5 != 217 && i5 != 218) {
                            int iPack = pack(bArr, i4, 2, false);
                            if (iPack >= 2 && (i4 = i4 + iPack) <= bArr.length) {
                                if (i5 == 225 && iPack >= 8 && pack(bArr, i3 + 4, 4, false) == 1165519206 && pack(bArr, i3 + 8, 2, false) == 0) {
                                    i3 += 10;
                                    i2 = iPack - 8;
                                    break;
                                }
                            } else {
                                Logger.INSTANCE.e("Invalid length", null);
                                return 0;
                            }
                        }
                    }
                }
                i3 = i4;
            }
            i2 = 0;
            i3 = i4;
            break;
        }
        if (i2 > 8) {
            int iPack2 = pack(bArr, i3, 4, false);
            if (iPack2 != 1229531648 && iPack2 != 1296891946) {
                Logger.INSTANCE.e("Invalid byte order", null);
                return 0;
            }
            boolean z = iPack2 == 1229531648;
            int iPack3 = pack(bArr, i3 + 4, 4, z) + 2;
            if (iPack3 < 10 || iPack3 > i2) {
                Logger.INSTANCE.e("Invalid offset", null);
                return 0;
            }
            int i6 = i3 + iPack3;
            int i7 = i2 - iPack3;
            int iPack4 = pack(bArr, i6 - 2, 2, z);
            while (true) {
                int i8 = iPack4 - 1;
                if (iPack4 <= 0 || i7 < 12) {
                    break;
                }
                if (pack(bArr, i6, 2, z) == 274) {
                    int iPack5 = pack(bArr, i6 + 8, 2, z);
                    if (iPack5 == 1) {
                        return 0;
                    }
                    if (iPack5 == 3) {
                        return Sink.ORIENTATION_180;
                    }
                    if (iPack5 == 6) {
                        return 90;
                    }
                    if (iPack5 == 8) {
                        return Sink.ORIENTATION_270;
                    }
                    Logger.INSTANCE.i("Unsupported orientation", null);
                    return 0;
                }
                i6 += 12;
                i7 -= 12;
                iPack4 = i8;
            }
        }
        Logger.INSTANCE.i("Orientation not found", null);
        return 0;
    }

    private static int pack(byte[] bArr, int i2, int i3, boolean z) {
        int i4;
        if (z) {
            i2 += i3 - 1;
            i4 = -1;
        } else {
            i4 = 1;
        }
        int i5 = 0;
        while (true) {
            int i6 = i3 - 1;
            if (i3 <= 0) {
                return i5;
            }
            i5 = (bArr[i2] & 255) | (i5 << 8);
            i2 += i4;
            i3 = i6;
        }
    }
}
