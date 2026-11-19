package okio.internal;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.md;
import defpackage.pq0;
import defpackage.tr;
import java.io.EOFException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ByteString;

/* JADX INFO: renamed from: okio.internal.-Path, reason: invalid class name */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okio"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class Path {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ByteString f77463a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ByteString f77464b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ByteString f77465c;
    public static final ByteString d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ByteString f77466e;

    static {
        ByteString.f77398e.getClass();
        f77463a = ByteString.Companion.c("/");
        f77464b = ByteString.Companion.c("\\");
        f77465c = ByteString.Companion.c("/\\");
        d = ByteString.Companion.c(FileUtils.HIDDEN_PREFIX);
        f77466e = ByteString.Companion.c("..");
    }

    public static final int a(okio.Path path) {
        ByteString byteString = path.f77433b;
        if (byteString.e() != 0) {
            if (byteString.j(0) != 47) {
                if (byteString.j(0) == 92) {
                    if (byteString.e() > 2 && byteString.j(1) == 92) {
                        ByteString byteString2 = f77464b;
                        byteString2.getClass();
                        int iG = byteString.g(2, byteString2.getData());
                        return iG == -1 ? byteString.e() : iG;
                    }
                } else if (byteString.e() > 2 && byteString.j(1) == 58 && byteString.j(2) == 92) {
                    char cJ = (char) byteString.j(0);
                    if ('a' <= cJ && cJ < '{') {
                        return 3;
                    }
                    if ('A' <= cJ && cJ < '[') {
                        return 3;
                    }
                }
            }
            return 1;
        }
        return -1;
    }

    public static final okio.Path b(okio.Path path, okio.Path path2, boolean z) {
        path2.getClass();
        if (a(path2) != -1 || path2.f() != null) {
            return path2;
        }
        ByteString byteStringC = c(path);
        if (byteStringC == null && (byteStringC = c(path2)) == null) {
            byteStringC = f(okio.Path.d);
        }
        Buffer buffer = new Buffer();
        buffer.l0(path.f77433b);
        if (buffer.f77390c > 0) {
            buffer.l0(byteStringC);
        }
        buffer.l0(path2.f77433b);
        return d(buffer, z);
    }

    public static final ByteString c(okio.Path path) {
        ByteString byteString = path.f77433b;
        ByteString byteString2 = f77463a;
        if (ByteString.h(byteString, byteString2) != -1) {
            return byteString2;
        }
        ByteString byteString3 = path.f77433b;
        ByteString byteString4 = f77464b;
        if (ByteString.h(byteString3, byteString4) != -1) {
            return byteString4;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:109:0x00d1 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:0x011c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:50:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:55:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:57:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:58:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:83:0x0117 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x0119  */
    /* JADX WARN: Code duplicated, block: B:88:0x012e  */
    /* JADX WARN: Code duplicated, block: B:98:0x0110 A[EDGE_INSN: B:98:0x0110->B:81:0x0110 BREAK  A[LOOP:1: B:53:0x00ab->B:112:0x00ab], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:99:0x00fe A[SYNTHETIC] */
    public static final okio.Path d(Buffer buffer, boolean z) throws EOFException {
        ByteString byteString;
        long j2;
        char cW;
        boolean z2;
        ArrayList arrayList;
        boolean zZ0;
        ByteString byteString2;
        int size;
        int i2;
        long jW;
        ByteString byteStringN0;
        ByteString byteString3;
        Buffer buffer2 = new Buffer();
        ByteString byteStringE = null;
        int i3 = 0;
        while (true) {
            if (!buffer.s0(0L, f77463a)) {
                byteString = f77464b;
                if (!buffer.s0(0L, byteString)) {
                    break;
                }
            }
            byte b2 = buffer.readByte();
            if (byteStringE == null) {
                byteStringE = e(b2);
            }
            i3++;
        }
        boolean z3 = i3 >= 2 && Intrinsics.c(byteStringE, byteString);
        ByteString byteString4 = f77465c;
        if (z3) {
            byteStringE.getClass();
            buffer2.l0(byteStringE);
            buffer2.l0(byteStringE);
        } else {
            if (i3 <= 0) {
                long jW2 = buffer.W(byteString4);
                if (byteStringE == null) {
                    byteStringE = jW2 == -1 ? f(okio.Path.d) : e(buffer.w(jW2));
                }
                if (Intrinsics.c(byteStringE, byteString) && buffer.f77390c >= 2) {
                    j2 = -1;
                    if (buffer.w(1L) == 58 && (('a' <= (cW = (char) buffer.w(0L)) && cW < '{') || ('A' <= cW && cW < '['))) {
                        if (jW2 == 2) {
                            buffer2.D(buffer, 3L);
                        } else {
                            buffer2.D(buffer, 2L);
                        }
                    }
                }
                if (buffer2.f77390c > 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                arrayList = new ArrayList();
                while (true) {
                    zZ0 = buffer.Z0();
                    byteString2 = d;
                    if (!zZ0) {
                        break;
                    }
                    jW = buffer.W(byteString4);
                    if (jW == j2) {
                        byteStringN0 = buffer.N0(buffer.f77390c);
                    } else {
                        byteStringN0 = buffer.N0(jW);
                        buffer.readByte();
                    }
                    byteString3 = f77466e;
                    if (Intrinsics.c(byteStringN0, byteString3)) {
                        if (z2 || !arrayList.isEmpty()) {
                            if (z || (!z2 && (arrayList.isEmpty() || Intrinsics.c(CollectionsKt.M(arrayList), byteString3)))) {
                                arrayList.add(byteStringN0);
                            } else if (!z3 || arrayList.size() != 1) {
                                CollectionsKt.d0(arrayList);
                            }
                        }
                    } else if (Intrinsics.c(byteStringN0, byteString2) && !Intrinsics.c(byteStringN0, ByteString.f77399f)) {
                        arrayList.add(byteStringN0);
                    }
                }
                size = arrayList.size();
                for (i2 = 0; i2 < size; i2++) {
                    if (i2 > 0) {
                        buffer2.l0(byteStringE);
                    }
                    buffer2.l0((ByteString) arrayList.get(i2));
                }
                if (buffer2.f77390c == 0) {
                    buffer2.l0(byteString2);
                }
                return new okio.Path(buffer2.N0(buffer2.f77390c));
            }
            byteStringE.getClass();
            buffer2.l0(byteStringE);
        }
        j2 = -1;
        if (buffer2.f77390c > 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        arrayList = new ArrayList();
        while (true) {
            zZ0 = buffer.Z0();
            byteString2 = d;
            if (!zZ0) {
                break;
                break;
            }
            jW = buffer.W(byteString4);
            if (jW == j2) {
                byteStringN0 = buffer.N0(buffer.f77390c);
            } else {
                byteStringN0 = buffer.N0(jW);
                buffer.readByte();
            }
            byteString3 = f77466e;
            if (Intrinsics.c(byteStringN0, byteString3)) {
                if (z2) {
                }
                if (z) {
                }
                arrayList.add(byteStringN0);
            } else if (Intrinsics.c(byteStringN0, byteString2)) {
            }
        }
        size = arrayList.size();
        while (i2 < size) {
            if (i2 > 0) {
                buffer2.l0(byteStringE);
            }
            buffer2.l0((ByteString) arrayList.get(i2));
        }
        if (buffer2.f77390c == 0) {
            buffer2.l0(byteString2);
        }
        return new okio.Path(buffer2.N0(buffer2.f77390c));
    }

    public static final ByteString e(byte b2) {
        if (b2 == 47) {
            return f77463a;
        }
        if (b2 == 92) {
            return f77464b;
        }
        md.n(pq0.k(b2, "not a directory separator: "));
        return null;
    }

    public static final ByteString f(String str) {
        if (Intrinsics.c(str, "/")) {
            return f77463a;
        }
        if (Intrinsics.c(str, "\\")) {
            return f77464b;
        }
        md.n(tr.g("not a directory separator: ", str));
        return null;
    }
}
