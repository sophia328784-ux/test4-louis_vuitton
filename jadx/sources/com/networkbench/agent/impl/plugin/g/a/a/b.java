package com.networkbench.agent.impl.plugin.g.a.a;

import com.sightcall.universal.media.offline.FileUtils;
import defpackage.ct0;
import defpackage.md;
import defpackage.o60;
import defpackage.tr;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.IDN;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static a f38080a = a.NO_ERROR;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Map<Integer, String> f38081b;

    static {
        HashMap map = new HashMap();
        f38081b = map;
        map.put(1, "Format Error");
        f38081b.put(2, "Server Failure");
        f38081b.put(3, "Non-Existent Domain");
        f38081b.put(4, "Not Implemented");
        f38081b.put(5, "Query Refused");
        f38081b.put(6, "Name Exists when it should not");
        f38081b.put(7, "RR Set Exists when it should not");
        f38081b.put(8, "RR Set that should exist does not");
        f38081b.put(9, "Not Authorized");
        f38081b.put(10, "Name not contained in zone");
        f38081b.put(11, "Bad OPT Version");
        f38081b.put(16, "Bad OPT Version or TSIG Signature Failure");
        f38081b.put(17, "Key not recognized");
        f38081b.put(18, "Signature out of time window");
        f38081b.put(19, "Bad TKEY Mode");
        f38081b.put(20, "Duplicate key name");
        f38081b.put(21, "Algorithm not supported");
        f38081b.put(22, "Bad Truncation");
        f38081b.put(23, "Bad cookie");
    }

    public static c[] a(byte[] bArr, int i2, String str) throws IOException {
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(bArr));
        int unsignedShort = dataInputStream.readUnsignedShort();
        if (unsignedShort != i2) {
            throw new com.networkbench.agent.impl.plugin.g.a.a.a(str, o60.h(unsignedShort, i2, "the answer id ", " is not match "));
        }
        int unsignedShort2 = dataInputStream.readUnsignedShort();
        boolean z = ((unsignedShort2 >> 8) & 1) == 1;
        if (((unsignedShort2 >> 7) & 1) != 1 || !z) {
            throw new com.networkbench.agent.impl.plugin.g.a.a.a(str, "the dns server cant support recursion ");
        }
        f38080a = a.a(unsignedShort2 & 15);
        int unsignedShort3 = dataInputStream.readUnsignedShort();
        int unsignedShort4 = dataInputStream.readUnsignedShort();
        dataInputStream.readUnsignedShort();
        dataInputStream.readUnsignedShort();
        a(dataInputStream, bArr, unsignedShort3);
        return b(dataInputStream, bArr, unsignedShort4);
    }

    private static c b(DataInputStream dataInputStream, byte[] bArr) throws IOException {
        String hostAddress;
        a(dataInputStream, bArr);
        int unsignedShort = dataInputStream.readUnsignedShort();
        dataInputStream.readUnsignedShort();
        long unsignedShort2 = (((long) dataInputStream.readUnsignedShort()) << 16) + ((long) dataInputStream.readUnsignedShort());
        int unsignedShort3 = dataInputStream.readUnsignedShort();
        if (unsignedShort == 1) {
            byte[] bArr2 = new byte[4];
            dataInputStream.readFully(bArr2);
            hostAddress = InetAddress.getByAddress(bArr2).getHostAddress();
        } else if (unsignedShort != 5) {
            for (int i2 = 0; i2 < unsignedShort3; i2++) {
                dataInputStream.readByte();
            }
            hostAddress = null;
        } else {
            hostAddress = a(dataInputStream, bArr);
        }
        if (hostAddress == null) {
            throw new UnknownHostException("no record");
        }
        return new c(hostAddress, unsignedShort, (int) unsignedShort2, System.currentTimeMillis() / 1000);
    }

    public enum a {
        NO_ERROR(0),
        FORMAT_ERR(1),
        SERVER_FAIL(2),
        NX_DOMAIN(3),
        NO_IMP(4),
        REFUSED(5),
        YXDOMAIN(6),
        YXRRSET(7),
        NXRRSET(8),
        NOT_AUTH(9),
        NOT_ZONE(10),
        BADVERS_BADSIG(16),
        BADKEY(17),
        BADTIME(18),
        BADMODE(19),
        BADNAME(20),
        BADALG(21),
        BADTRUNC(22),
        BADCOOKIE(23);

        private static final Map<Integer, a> t = new HashMap(values().length);
        private final byte u;

        static {
            for (a aVar : values()) {
                t.put(Integer.valueOf(aVar.u), aVar);
            }
        }

        a(int i2) {
            this.u = (byte) i2;
        }

        public static a a(int i2) throws IllegalArgumentException {
            if (i2 >= 0 && i2 <= 65535) {
                return t.get(Integer.valueOf(i2));
            }
            ct0.c();
            return null;
        }

        public byte a() {
            return this.u;
        }
    }

    private static void a(OutputStream outputStream, String str) throws IOException {
        for (String str2 : str.split("[.。．｡]")) {
            byte[] bytes = IDN.toASCII(str2).getBytes();
            outputStream.write(bytes.length);
            outputStream.write(bytes, 0, bytes.length);
        }
        outputStream.write(0);
    }

    private static c[] b(DataInputStream dataInputStream, byte[] bArr, int i2) throws IOException {
        c[] cVarArr = new c[i2];
        int i3 = 0;
        while (true) {
            int i4 = i2 - 1;
            if (i2 <= 0) {
                return cVarArr;
            }
            cVarArr[i3] = b(dataInputStream, bArr);
            i3++;
            i2 = i4;
        }
    }

    private static void b(OutputStream outputStream, String str) throws IOException {
        DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
        a(outputStream, str);
        dataOutputStream.writeShort(1);
        dataOutputStream.writeShort(1);
    }

    public static String a(int i2) {
        return f38081b.get(Integer.valueOf(i2)) == null ? "" : f38081b.get(Integer.valueOf(i2));
    }

    public static byte[] a(String str, int i2) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        try {
            dataOutputStream.writeShort((short) i2);
            dataOutputStream.writeShort(256);
            dataOutputStream.writeShort(1);
            dataOutputStream.writeShort(0);
            dataOutputStream.writeShort(0);
            dataOutputStream.writeShort(0);
            dataOutputStream.flush();
            b(byteArrayOutputStream, str);
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e2) {
            md.h(e2);
            return null;
        }
    }

    private static String a(DataInputStream dataInputStream, byte[] bArr) throws IOException {
        int unsignedByte = dataInputStream.readUnsignedByte();
        if ((unsignedByte & 192) == 192) {
            int unsignedByte2 = dataInputStream.readUnsignedByte() + ((unsignedByte & 63) << 8);
            HashSet hashSet = new HashSet();
            hashSet.add(Integer.valueOf(unsignedByte2));
            return a(bArr, unsignedByte2, (HashSet<Integer>) hashSet);
        }
        if (unsignedByte == 0) {
            return "";
        }
        byte[] bArr2 = new byte[unsignedByte];
        dataInputStream.readFully(bArr2);
        String unicode = IDN.toUnicode(new String(bArr2));
        String strA = a(dataInputStream, bArr);
        return strA.length() > 0 ? tr.h(unicode, FileUtils.HIDDEN_PREFIX, strA) : unicode;
    }

    private static String a(byte[] bArr, int i2, HashSet<Integer> hashSet) throws IOException {
        int i3 = bArr[i2];
        int i4 = i3 & 255;
        if ((i3 & 192) == 192) {
            int i5 = ((i3 & 63) << 8) + (bArr[i2 + 1] & 255);
            if (!hashSet.contains(Integer.valueOf(i5))) {
                hashSet.add(Integer.valueOf(i5));
                return a(bArr, i5, hashSet);
            }
            throw new com.networkbench.agent.impl.plugin.g.a.a.a("", "Cyclic offsets detected.");
        }
        if (i4 == 0) {
            return "";
        }
        int i6 = i2 + 1;
        String str = new String(bArr, i6, i4);
        String strA = a(bArr, i6 + i4, hashSet);
        return strA.length() > 0 ? tr.h(str, FileUtils.HIDDEN_PREFIX, strA) : str;
    }

    private static void a(DataInputStream dataInputStream, byte[] bArr, int i2) throws IOException {
        while (true) {
            int i3 = i2 - 1;
            if (i2 <= 0) {
                return;
            }
            a(dataInputStream, bArr);
            dataInputStream.readUnsignedShort();
            dataInputStream.readUnsignedShort();
            i2 = i3;
        }
    }
}
