package androidx.media3.extractor.mp4;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.a;
import java.nio.ByteBuffer;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public abstract class PsshAtomUtil {

    public static final class PsshAtom {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final UUID f16581a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16582b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f16583c;

        public PsshAtom(UUID uuid, int i2, byte[] bArr, UUID[] uuidArr) {
            this.f16581a = uuid;
            this.f16582b = i2;
            this.f16583c = bArr;
        }
    }

    public static byte[] a(UUID uuid, byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        byteBufferAllocate.putInt(length);
        byteBufferAllocate.putInt(1886614376);
        byteBufferAllocate.putInt(0);
        byteBufferAllocate.putLong(uuid.getMostSignificantBits());
        byteBufferAllocate.putLong(uuid.getLeastSignificantBits());
        if (bArr == null || bArr.length == 0) {
            byteBufferAllocate.putInt(0);
        } else {
            byteBufferAllocate.putInt(bArr.length);
            byteBufferAllocate.put(bArr);
        }
        return byteBufferAllocate.array();
    }

    public static PsshAtom b(byte[] bArr) {
        UUID[] uuidArr;
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr);
        if (parsableByteArray.f14196c < 32) {
            return null;
        }
        parsableByteArray.N(0);
        int iA = parsableByteArray.a();
        int iM = parsableByteArray.m();
        if (iM != iA) {
            Log.g("Advertised atom size (" + iM + ") does not match buffer size: " + iA);
            return null;
        }
        int iM2 = parsableByteArray.m();
        if (iM2 != 1886614376) {
            a.u(iM2, "Atom type is not pssh: ");
            return null;
        }
        int iD = BoxParser.d(parsableByteArray.m());
        if (iD > 1) {
            a.u(iD, "Unsupported pssh version: ");
            return null;
        }
        UUID uuid = new UUID(parsableByteArray.u(), parsableByteArray.u());
        if (iD == 1) {
            int iE = parsableByteArray.E();
            uuidArr = new UUID[iE];
            for (int i2 = 0; i2 < iE; i2++) {
                uuidArr[i2] = new UUID(parsableByteArray.u(), parsableByteArray.u());
            }
        } else {
            uuidArr = null;
        }
        int iE2 = parsableByteArray.E();
        int iA2 = parsableByteArray.a();
        if (iE2 == iA2) {
            byte[] bArr2 = new byte[iE2];
            parsableByteArray.k(0, iE2, bArr2);
            return new PsshAtom(uuid, iD, bArr2, uuidArr);
        }
        Log.g("Atom data size (" + iE2 + ") does not match the bytes left: " + iA2);
        return null;
    }

    public static byte[] c(UUID uuid, byte[] bArr) {
        PsshAtom psshAtomB = b(bArr);
        if (psshAtomB == null) {
            return null;
        }
        UUID uuid2 = psshAtomB.f16581a;
        if (uuid.equals(uuid2)) {
            return psshAtomB.f16583c;
        }
        Log.g("UUID mismatch. Expected: " + uuid + ", got: " + uuid2 + FileUtils.HIDDEN_PREFIX);
        return null;
    }
}
