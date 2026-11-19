package okio.internal;

import defpackage.az;
import defpackage.pq0;
import defpackage.q71;
import defpackage.xr;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import okio.Buffer;
import okio.FileHandle;
import okio.FileSystem;
import okio.Path;
import okio.RealBufferedSource;
import okio.ZipFileSystem;
import org.bouncycastle.asn1.cmc.BodyPartID;
import org.bouncycastle.crypto.hpke.HPKE;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okio"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ZipFilesKt {
    public static final LinkedHashMap a(ArrayList arrayList) {
        Path.f77432c.getClass();
        Path pathA = Path.Companion.a("/");
        LinkedHashMap linkedHashMapJ = MapsKt.j(new Pair(pathA, new ZipEntry(pathA, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, null, null, null, 65532, null)));
        for (ZipEntry zipEntry : CollectionsKt.o0(arrayList, new Comparator() { // from class: okio.internal.ZipFilesKt$buildIndex$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ComparisonsKt.a(((ZipEntry) obj).f77483a, ((ZipEntry) obj2).f77483a);
            }
        })) {
            if (((ZipEntry) linkedHashMapJ.put(zipEntry.f77483a, zipEntry)) == null) {
                while (true) {
                    Path path = zipEntry.f77483a;
                    Path pathC = path.c();
                    if (pathC == null) {
                        break;
                    }
                    ZipEntry zipEntry2 = (ZipEntry) linkedHashMapJ.get(pathC);
                    if (zipEntry2 != null) {
                        zipEntry2.q.add(path);
                        break;
                    }
                    ZipEntry zipEntry3 = new ZipEntry(pathC, true, null, 0L, 0L, 0L, 0, 0L, 0, 0, null, null, null, null, null, null, 65532, null);
                    linkedHashMapJ.put(pathC, zipEntry3);
                    zipEntry3.q.add(path);
                    zipEntry = zipEntry3;
                }
            }
        }
        return linkedHashMapJ;
    }

    public static final String b(int i2) {
        StringBuilder sb = new StringBuilder("0x");
        String string = Integer.toString(i2, CharsKt.checkRadix(16));
        string.getClass();
        sb.append(string);
        return sb.toString();
    }

    public static final ZipFileSystem c(Path path, FileSystem fileSystem, Function1 function1) {
        Throwable th;
        Throwable th2;
        Throwable th3;
        fileSystem.getClass();
        FileHandle fileHandleP = fileSystem.p(path);
        try {
            long size = fileHandleP.size();
            long j2 = size - 22;
            long j3 = 0;
            if (j2 < 0) {
                throw new IOException("not a zip: size=" + fileHandleP.size());
            }
            long jMax = Math.max(size - 65558, 0L);
            while (true) {
                RealBufferedSource realBufferedSource = new RealBufferedSource(fileHandleP.m(j2));
                try {
                    if (realBufferedSource.w1() == 101010256) {
                        int iJ = realBufferedSource.j() & HPKE.aead_EXPORT_ONLY;
                        int iJ2 = realBufferedSource.j() & HPKE.aead_EXPORT_ONLY;
                        long j4 = realBufferedSource.j() & HPKE.aead_EXPORT_ONLY;
                        if (j4 != (realBufferedSource.j() & HPKE.aead_EXPORT_ONLY) || iJ != 0 || iJ2 != 0) {
                            throw new IOException("unsupported zip: spanned");
                        }
                        realBufferedSource.skip(4L);
                        EocdRecord eocdRecord = new EocdRecord(j4, BodyPartID.bodyIdMax & ((long) realBufferedSource.w1()), realBufferedSource.j() & HPKE.aead_EXPORT_ONLY);
                        String strK0 = realBufferedSource.K0(eocdRecord.f77476c);
                        realBufferedSource.close();
                        long j5 = j2 - 20;
                        if (j5 > j3) {
                            RealBufferedSource realBufferedSource2 = new RealBufferedSource(fileHandleP.m(j5));
                            try {
                                if (realBufferedSource2.w1() == 117853008) {
                                    int iW1 = realBufferedSource2.w1();
                                    long jA0 = realBufferedSource2.A0();
                                    if (realBufferedSource2.w1() != 1 || iW1 != 0) {
                                        throw new IOException("unsupported zip: spanned");
                                    }
                                    RealBufferedSource realBufferedSource3 = new RealBufferedSource(fileHandleP.m(jA0));
                                    try {
                                        int iW2 = realBufferedSource3.w1();
                                        if (iW2 != 101075792) {
                                            throw new IOException("bad zip: expected " + b(101075792) + " but was " + b(iW2));
                                        }
                                        realBufferedSource3.skip(12L);
                                        int iW3 = realBufferedSource3.w1();
                                        int iW4 = realBufferedSource3.w1();
                                        long jA1 = realBufferedSource3.A0();
                                        if (jA1 != realBufferedSource3.A0() || iW3 != 0 || iW4 != 0) {
                                            throw new IOException("unsupported zip: spanned");
                                        }
                                        realBufferedSource3.skip(8L);
                                        EocdRecord eocdRecord2 = new EocdRecord(jA1, realBufferedSource3.A0(), eocdRecord.f77476c);
                                        try {
                                            realBufferedSource3.close();
                                            th3 = null;
                                        } catch (Throwable th4) {
                                            th3 = th4;
                                        }
                                        eocdRecord = eocdRecord2;
                                        if (th3 != null) {
                                            throw th3;
                                        }
                                    } catch (Throwable th5) {
                                        try {
                                            realBufferedSource3.close();
                                        } catch (Throwable th6) {
                                            ExceptionsKt.a(th5, th6);
                                        }
                                        th3 = th5;
                                    }
                                }
                                try {
                                    realBufferedSource2.close();
                                    th2 = null;
                                } catch (Throwable th7) {
                                    th2 = th7;
                                }
                            } catch (Throwable th8) {
                                try {
                                    realBufferedSource2.close();
                                } catch (Throwable th9) {
                                    ExceptionsKt.a(th8, th9);
                                }
                                th2 = th8;
                            }
                            if (th2 != null) {
                                throw th2;
                            }
                        }
                        ArrayList arrayList = new ArrayList();
                        RealBufferedSource realBufferedSource4 = new RealBufferedSource(fileHandleP.m(eocdRecord.f77475b));
                        try {
                            long j6 = eocdRecord.f77474a;
                            for (long j7 = 0; j7 < j6; j7++) {
                                ZipEntry zipEntryD = d(realBufferedSource4);
                                if (zipEntryD.f77488h >= eocdRecord.f77475b) {
                                    throw new IOException("bad zip: local file header offset >= central directory offset");
                                }
                                if (((Boolean) function1.invoke(zipEntryD)).booleanValue()) {
                                    arrayList.add(zipEntryD);
                                }
                            }
                            try {
                                realBufferedSource4.close();
                                th = null;
                            } catch (Throwable th10) {
                                th = th10;
                            }
                        } catch (Throwable th11) {
                            try {
                                realBufferedSource4.close();
                            } catch (Throwable th12) {
                                ExceptionsKt.a(th11, th12);
                            }
                            th = th11;
                        }
                        if (th != null) {
                            throw th;
                        }
                        ZipFileSystem zipFileSystem = new ZipFileSystem(path, fileSystem, a(arrayList), strK0);
                        try {
                            fileHandleP.close();
                        } catch (Throwable unused) {
                        }
                        return zipFileSystem;
                    }
                    realBufferedSource.close();
                    j2--;
                    if (j2 < jMax) {
                        throw new IOException("not a zip: end of central directory signature not found");
                    }
                    j3 = 0;
                } catch (Throwable th13) {
                    realBufferedSource.close();
                    throw th13;
                }
            }
        } catch (Throwable th14) {
            if (fileHandleP == null) {
                throw th14;
            }
            try {
                fileHandleP.close();
                throw th14;
            } catch (Throwable th15) {
                ExceptionsKt.a(th14, th15);
                throw th14;
            }
        }
    }

    public static final ZipEntry d(RealBufferedSource realBufferedSource) throws IOException {
        int iW1 = realBufferedSource.w1();
        if (iW1 != 33639248) {
            throw new IOException("bad zip: expected " + b(33639248) + " but was " + b(iW1));
        }
        realBufferedSource.skip(4L);
        short sJ = realBufferedSource.j();
        int i2 = sJ & HPKE.aead_EXPORT_ONLY;
        if ((sJ & 1) != 0) {
            az.o("unsupported zip: general purpose bit flag=".concat(b(i2)));
            return null;
        }
        int iJ = realBufferedSource.j() & HPKE.aead_EXPORT_ONLY;
        int iJ2 = realBufferedSource.j() & HPKE.aead_EXPORT_ONLY;
        int iJ3 = realBufferedSource.j() & HPKE.aead_EXPORT_ONLY;
        long jW1 = ((long) realBufferedSource.w1()) & BodyPartID.bodyIdMax;
        Ref$LongRef ref$LongRef = new Ref$LongRef();
        ref$LongRef.f71920b = ((long) realBufferedSource.w1()) & BodyPartID.bodyIdMax;
        Ref$LongRef ref$LongRef2 = new Ref$LongRef();
        ref$LongRef2.f71920b = ((long) realBufferedSource.w1()) & BodyPartID.bodyIdMax;
        int iJ4 = realBufferedSource.j() & HPKE.aead_EXPORT_ONLY;
        int iJ5 = realBufferedSource.j() & HPKE.aead_EXPORT_ONLY;
        int iJ6 = realBufferedSource.j() & HPKE.aead_EXPORT_ONLY;
        realBufferedSource.skip(8L);
        Ref$LongRef ref$LongRef3 = new Ref$LongRef();
        ref$LongRef3.f71920b = ((long) realBufferedSource.w1()) & BodyPartID.bodyIdMax;
        String strK0 = realBufferedSource.K0(iJ4);
        if (StringsKt.l(strK0, (char) 0)) {
            az.o("bad zip: filename contains 0x00");
            return null;
        }
        long j2 = ref$LongRef2.f71920b == BodyPartID.bodyIdMax ? 8L : 0L;
        if (ref$LongRef.f71920b == BodyPartID.bodyIdMax) {
            j2 += 8;
        }
        if (ref$LongRef3.f71920b == BodyPartID.bodyIdMax) {
            j2 += 8;
        }
        long j3 = j2;
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
        Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
        Ref$BooleanRef ref$BooleanRef = new Ref$BooleanRef();
        e(realBufferedSource, iJ5, new xr(ref$BooleanRef, j3, ref$LongRef2, realBufferedSource, ref$LongRef, ref$LongRef3, ref$ObjectRef, ref$ObjectRef2, ref$ObjectRef3));
        if (j3 > 0 && !ref$BooleanRef.f71917b) {
            az.o("bad zip: zip64 extra required but absent");
            return null;
        }
        String strK1 = realBufferedSource.K0(iJ6);
        Path.f77432c.getClass();
        return new ZipEntry(Path.Companion.a("/").e(strK0), StringsKt.p(strK0, "/", false), strK1, jW1, ref$LongRef.f71920b, ref$LongRef2.f71920b, iJ, ref$LongRef3.f71920b, iJ3, iJ2, (Long) ref$ObjectRef.f71921b, (Long) ref$ObjectRef2.f71921b, (Long) ref$ObjectRef3.f71921b, null, null, null, 57344, null);
    }

    public static final void e(RealBufferedSource realBufferedSource, int i2, Function2 function2) {
        Buffer buffer = realBufferedSource.f77444c;
        long j2 = i2;
        while (j2 != 0) {
            if (j2 < 4) {
                az.o("bad zip: truncated header in extra field");
                return;
            }
            int iJ = realBufferedSource.j() & HPKE.aead_EXPORT_ONLY;
            long j3 = ((long) realBufferedSource.j()) & 65535;
            long j4 = j2 - 4;
            if (j4 < j3) {
                az.o("bad zip: truncated value in extra field");
                return;
            }
            realBufferedSource.D0(j3);
            long j5 = buffer.f77390c;
            function2.invoke(Integer.valueOf(iJ), Long.valueOf(j3));
            long j6 = (buffer.f77390c + j3) - j5;
            if (j6 < 0) {
                az.o(pq0.k(iJ, "unsupported zip: too many bytes processed for "));
                return;
            } else {
                if (j6 > 0) {
                    buffer.skip(j6);
                }
                j2 = j4 - j3;
            }
        }
    }

    public static final ZipEntry f(RealBufferedSource realBufferedSource, ZipEntry zipEntry) {
        int iW1 = realBufferedSource.w1();
        if (iW1 != 67324752) {
            throw new IOException("bad zip: expected " + b(67324752) + " but was " + b(iW1));
        }
        realBufferedSource.skip(2L);
        short sJ = realBufferedSource.j();
        int i2 = sJ & HPKE.aead_EXPORT_ONLY;
        if ((sJ & 1) != 0) {
            az.o("unsupported zip: general purpose bit flag=".concat(b(i2)));
            return null;
        }
        realBufferedSource.skip(18L);
        long j2 = ((long) realBufferedSource.j()) & 65535;
        int iJ = realBufferedSource.j() & HPKE.aead_EXPORT_ONLY;
        realBufferedSource.skip(j2);
        if (zipEntry == null) {
            realBufferedSource.skip(iJ);
            return null;
        }
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
        Ref$ObjectRef ref$ObjectRef3 = new Ref$ObjectRef();
        e(realBufferedSource, iJ, new q71(realBufferedSource, ref$ObjectRef, ref$ObjectRef2, ref$ObjectRef3));
        return new ZipEntry(zipEntry.f77483a, zipEntry.f77484b, zipEntry.f77485c, zipEntry.d, zipEntry.f77486e, zipEntry.f77487f, zipEntry.g, zipEntry.f77488h, zipEntry.f77489i, zipEntry.f77490j, zipEntry.f77491k, zipEntry.l, zipEntry.m, (Integer) ref$ObjectRef.f71921b, (Integer) ref$ObjectRef2.f71921b, (Integer) ref$ObjectRef3.f71921b);
    }
}
