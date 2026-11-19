package okhttp3.internal;

import defpackage.pq0;
import java.io.Closeable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import lv.nfc.reader.utils.LVConstants;
import okhttp3.internal.cache.DiskLruCache$fileSystem$1;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.FileSystem;
import okio.Options;
import okio.Path;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class _UtilCommonKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f77016a = new byte[0];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Options f77017b;

    static {
        Options.Companion companion = Options.f77428e;
        ByteString.f77398e.getClass();
        ByteString[] byteStringArr = {ByteString.Companion.b("efbbbf"), ByteString.Companion.b("feff"), ByteString.Companion.b("fffe0000"), ByteString.Companion.b("fffe"), ByteString.Companion.b("0000feff")};
        companion.getClass();
        f77017b = Options.Companion.b(byteStringArr);
    }

    public static final void a(long j2, long j3, long j4) {
        if ((j3 | j4) < 0 || j3 > j2 || j2 - j3 < j4) {
            StringBuilder sbQ = pq0.q(j2, "length=", ", offset=");
            sbQ.append(j3);
            sbQ.append(", count=");
            sbQ.append(j3);
            throw new ArrayIndexOutOfBoundsException(sbQ.toString());
        }
    }

    public static final void b(Closeable closeable) {
        closeable.getClass();
        try {
            closeable.close();
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception unused) {
        }
    }

    public static final void c(FileSystem fileSystem, Path path) throws IOException {
        fileSystem.getClass();
        path.getClass();
        try {
            IOException iOException = null;
            for (Path path2 : fileSystem.m(path)) {
                try {
                    if (fileSystem.n(path2).f77409b) {
                        c(fileSystem, path2);
                    }
                    fileSystem.h(path2);
                } catch (IOException e2) {
                    if (iOException == null) {
                        iOException = e2;
                    }
                }
            }
            if (iOException != null) {
                throw iOException;
            }
        } catch (FileNotFoundException unused) {
        }
    }

    public static final void d(DiskLruCache$fileSystem$1 diskLruCache$fileSystem$1, Path path) {
        diskLruCache$fileSystem$1.getClass();
        path.getClass();
        try {
            diskLruCache$fileSystem$1.h(path);
        } catch (FileNotFoundException unused) {
        }
    }

    public static final int e(int i2, int i3, String str, String str2) {
        str.getClass();
        while (i2 < i3) {
            if (StringsKt.l(str2, str.charAt(i2))) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static final int f(String str, int i2, int i3, char c2) {
        str.getClass();
        while (i2 < i3) {
            if (str.charAt(i2) == c2) {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static /* synthetic */ int g(String str, char c2, int i2, int i3, int i4) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        if ((i4 & 4) != 0) {
            i3 = str.length();
        }
        return f(str, i2, i3, c2);
    }

    public static final boolean h(String[] strArr, String[] strArr2, Comparator comparator) {
        strArr.getClass();
        comparator.getClass();
        if (strArr.length != 0 && strArr2 != null && strArr2.length != 0) {
            for (String str : strArr) {
                for (String str2 : strArr2) {
                    if (comparator.compare(str, str2) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final int i(String str) {
        int length = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (Intrinsics.d(cCharAt, 31) <= 0 || Intrinsics.d(cCharAt, CertificateBody.profileType) >= 0) {
                return i2;
            }
        }
        return -1;
    }

    public static final int j(int i2, int i3, String str) {
        str.getClass();
        while (i2 < i3) {
            char cCharAt = str.charAt(i2);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i2;
            }
            i2++;
        }
        return i3;
    }

    public static final int k(int i2, int i3, String str) {
        str.getClass();
        int i4 = i3 - 1;
        if (i2 <= i4) {
            while (true) {
                char cCharAt = str.charAt(i4);
                if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                    return i4 + 1;
                }
                if (i4 == i2) {
                    break;
                }
                i4--;
            }
        }
        return i2;
    }

    public static final String[] l(String[] strArr, String[] strArr2, Comparator comparator) {
        strArr.getClass();
        strArr2.getClass();
        comparator.getClass();
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            for (String str2 : strArr2) {
                if (comparator.compare(str, str2) == 0) {
                    arrayList.add(str);
                    break;
                }
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static final boolean m(String str) {
        str.getClass();
        return StringsKt.s(str, "Authorization", true) || StringsKt.s(str, LVConstants.COOKIE_HEADER, true) || StringsKt.s(str, "Proxy-Authorization", true) || StringsKt.s(str, "Set-Cookie", true);
    }

    public static final int n(char c2) {
        if ('0' <= c2 && c2 < ':') {
            return c2 - '0';
        }
        if ('a' <= c2 && c2 < 'g') {
            return c2 - 'W';
        }
        if ('A' > c2 || c2 >= 'G') {
            return -1;
        }
        return c2 - '7';
    }

    public static final int o(BufferedSource bufferedSource) {
        bufferedSource.getClass();
        return (bufferedSource.readByte() & 255) | ((bufferedSource.readByte() & 255) << 16) | ((bufferedSource.readByte() & 255) << 8);
    }

    public static final int p(Buffer buffer) {
        int i2 = 0;
        while (!buffer.Z0() && buffer.w(0L) == 61) {
            i2++;
            buffer.readByte();
        }
        return i2;
    }

    public static final int q(int i2, String str) {
        if (str == null) {
            return i2;
        }
        try {
            long j2 = Long.parseLong(str);
            if (j2 > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (j2 < 0) {
                return 0;
            }
            return (int) j2;
        } catch (NumberFormatException unused) {
            return i2;
        }
    }
}
