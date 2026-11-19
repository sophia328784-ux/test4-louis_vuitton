package com.google.android.gms.internal.clearcut;

import com.sightcall.uvc.Camera;
import defpackage.md;
import defpackage.z81;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes2.dex */
public final class zzfs {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ByteBuffer f29752a;

    public zzfs(byte[] bArr, int i2) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr, 0, i2);
        this.f29752a = byteBufferWrap;
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (i2 < length) {
            char cCharAt = charSequence.charAt(i2);
            if (cCharAt >= 2048) {
                int length2 = charSequence.length();
                int i4 = 0;
                while (i2 < length2) {
                    char cCharAt2 = charSequence.charAt(i2);
                    if (cCharAt2 < 2048) {
                        i4 += (127 - cCharAt2) >>> 31;
                    } else {
                        i4 += 2;
                        if (55296 <= cCharAt2 && cCharAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i2) < 65536) {
                                md.n(z81.f(39, i2, "Unpaired surrogate at index "));
                                return 0;
                            }
                            i2++;
                        }
                    }
                    i2++;
                }
                i3 += i4;
                break;
            }
            i3 += (127 - cCharAt) >>> 31;
            i2++;
        }
        if (i3 >= length) {
            return i3;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("UTF-8 length does not fit in int: ");
        sb.append(((long) i3) + 4294967296L);
        throw new IllegalArgumentException(sb.toString());
    }

    public static int g(int i2, String str) {
        int iL = l(i2);
        int iA = a(str);
        return m(iA) + iA + iL;
    }

    public static void i(String str, ByteBuffer byteBuffer) {
        int i2;
        char cCharAt;
        int i3;
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        char c2 = 57343;
        int i4 = 0;
        if (!byteBuffer.hasArray()) {
            int length = str.length();
            while (i4 < length) {
                char cCharAt2 = str.charAt(i4);
                if (cCharAt2 < 128) {
                    i3 = cCharAt2;
                    byteBuffer.put((byte) i3);
                } else if (cCharAt2 < 2048) {
                    byteBuffer.put((byte) ((cCharAt2 >>> 6) | 960));
                    i3 = (cCharAt2 & '?') | 128;
                    i3 = cCharAt2;
                    byteBuffer.put((byte) i3);
                } else {
                    if (cCharAt2 >= 55296 && 57343 >= cCharAt2) {
                        int i5 = i4 + 1;
                        if (i5 != str.length()) {
                            char cCharAt3 = str.charAt(i5);
                            if (Character.isSurrogatePair(cCharAt2, cCharAt3)) {
                                int codePoint = Character.toCodePoint(cCharAt2, cCharAt3);
                                byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                                byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                                byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                                byteBuffer.put((byte) ((codePoint & 63) | 128));
                                i4 = i5;
                            } else {
                                i4 = i5;
                            }
                        }
                        md.n(z81.f(39, i4 - 1, "Unpaired surrogate at index "));
                        return;
                    }
                    byteBuffer.put((byte) ((cCharAt2 >>> '\f') | Camera.DEFAULT_PREVIEW_HEIGHT));
                    byteBuffer.put((byte) (((cCharAt2 >>> 6) & 63) | 128));
                    byteBuffer.put((byte) ((cCharAt2 & '?') | 128));
                }
                i4++;
            }
            return;
        }
        try {
            byte[] bArrArray = byteBuffer.array();
            int iArrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
            int iRemaining = byteBuffer.remaining();
            int length2 = str.length();
            int i6 = iRemaining + iArrayOffset;
            while (i4 < length2) {
                int i7 = i4 + iArrayOffset;
                if (i7 >= i6 || (cCharAt = str.charAt(i4)) >= 128) {
                    break;
                }
                bArrArray[i7] = (byte) cCharAt;
                i4++;
            }
            if (i4 == length2) {
                i2 = iArrayOffset + length2;
            } else {
                i2 = iArrayOffset + i4;
                while (i4 < length2) {
                    char cCharAt4 = str.charAt(i4);
                    if (cCharAt4 < 128 && i2 < i6) {
                        bArrArray[i2] = (byte) cCharAt4;
                        i2++;
                    } else if (cCharAt4 < 2048 && i2 <= i6 - 2) {
                        int i8 = i2 + 1;
                        bArrArray[i2] = (byte) ((cCharAt4 >>> 6) | 960);
                        i2 += 2;
                        bArrArray[i8] = (byte) ((cCharAt4 & '?') | 128);
                    } else {
                        if ((cCharAt4 >= 55296 && c2 >= cCharAt4) || i2 > i6 - 3) {
                            if (i2 > i6 - 4) {
                                StringBuilder sb = new StringBuilder(37);
                                sb.append("Failed writing ");
                                sb.append(cCharAt4);
                                sb.append(" at index ");
                                sb.append(i2);
                                throw new ArrayIndexOutOfBoundsException(sb.toString());
                            }
                            int i9 = i4 + 1;
                            if (i9 != str.length()) {
                                char cCharAt5 = str.charAt(i9);
                                if (Character.isSurrogatePair(cCharAt4, cCharAt5)) {
                                    int codePoint2 = Character.toCodePoint(cCharAt4, cCharAt5);
                                    bArrArray[i2] = (byte) ((codePoint2 >>> 18) | 240);
                                    bArrArray[i2 + 1] = (byte) (((codePoint2 >>> 12) & 63) | 128);
                                    int i10 = i2 + 3;
                                    bArrArray[i2 + 2] = (byte) (((codePoint2 >>> 6) & 63) | 128);
                                    i2 += 4;
                                    bArrArray[i10] = (byte) ((codePoint2 & 63) | 128);
                                    i4 = i9;
                                } else {
                                    i4 = i9;
                                }
                            }
                            StringBuilder sb2 = new StringBuilder(39);
                            sb2.append("Unpaired surrogate at index ");
                            sb2.append(i4 - 1);
                            throw new IllegalArgumentException(sb2.toString());
                        }
                        bArrArray[i2] = (byte) ((cCharAt4 >>> '\f') | Camera.DEFAULT_PREVIEW_HEIGHT);
                        int i11 = i2 + 2;
                        bArrArray[i2 + 1] = (byte) (((cCharAt4 >>> 6) & 63) | 128);
                        i2 += 3;
                        bArrArray[i11] = (byte) ((cCharAt4 & '?') | 128);
                    }
                    i4++;
                    c2 = 57343;
                }
            }
            byteBuffer.position(i2 - byteBuffer.arrayOffset());
        } catch (ArrayIndexOutOfBoundsException e2) {
            BufferOverflowException bufferOverflowException = new BufferOverflowException();
            bufferOverflowException.initCause(e2);
            throw bufferOverflowException;
        }
    }

    public static int k(long j2) {
        if (((-128) & j2) == 0) {
            return 1;
        }
        if (((-16384) & j2) == 0) {
            return 2;
        }
        if (((-2097152) & j2) == 0) {
            return 3;
        }
        if (((-268435456) & j2) == 0) {
            return 4;
        }
        if (((-34359738368L) & j2) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j2) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j2) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j2) == 0) {
            return 8;
        }
        return (j2 & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int l(int i2) {
        return m(i2 << 3);
    }

    public static int m(int i2) {
        if ((i2 & (-128)) == 0) {
            return 1;
        }
        if ((i2 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i2) == 0) {
            return 3;
        }
        return (i2 & (-268435456)) == 0 ? 4 : 5;
    }

    public final void b(int i2, zzfz zzfzVar) throws zzft {
        h(i2, 2);
        if (zzfzVar.f29754b < 0) {
            zzfzVar.f29754b = zzfzVar.c();
        }
        f(zzfzVar.f29754b);
        zzfzVar.a(this);
    }

    public final void c(int i2, String str) throws zzft {
        ByteBuffer byteBuffer = this.f29752a;
        h(i2, 2);
        try {
            int iM = m(str.length());
            if (iM != m(str.length() * 3)) {
                f(a(str));
                i(str, byteBuffer);
                return;
            }
            int iPosition = byteBuffer.position();
            if (byteBuffer.remaining() < iM) {
                throw new zzft(iPosition + iM, byteBuffer.limit());
            }
            byteBuffer.position(iPosition + iM);
            i(str, byteBuffer);
            int iPosition2 = byteBuffer.position();
            byteBuffer.position(iPosition);
            f((iPosition2 - iPosition) - iM);
            byteBuffer.position(iPosition2);
        } catch (BufferOverflowException e2) {
            zzft zzftVar = new zzft(byteBuffer.position(), byteBuffer.limit());
            zzftVar.initCause(e2);
            throw zzftVar;
        }
    }

    public final void d(int i2, byte[] bArr) throws zzft {
        h(i2, 2);
        f(bArr.length);
        int length = bArr.length;
        ByteBuffer byteBuffer = this.f29752a;
        if (byteBuffer.remaining() < length) {
            throw new zzft(byteBuffer.position(), byteBuffer.limit());
        }
        byteBuffer.put(bArr, 0, length);
    }

    public final void e(int i2) throws zzft {
        byte b2 = (byte) i2;
        ByteBuffer byteBuffer = this.f29752a;
        if (!byteBuffer.hasRemaining()) {
            throw new zzft(byteBuffer.position(), byteBuffer.limit());
        }
        byteBuffer.put(b2);
    }

    public final void f(int i2) throws zzft {
        while ((i2 & (-128)) != 0) {
            e((i2 & CertificateBody.profileType) | 128);
            i2 >>>= 7;
        }
        e(i2);
    }

    public final void h(int i2, int i3) throws zzft {
        f((i2 << 3) | i3);
    }

    public final void j(long j2) throws zzft {
        while (((-128) & j2) != 0) {
            e((((int) j2) & CertificateBody.profileType) | 128);
            j2 >>>= 7;
        }
        e((int) j2);
    }
}
