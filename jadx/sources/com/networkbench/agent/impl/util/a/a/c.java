package com.networkbench.agent.impl.util.a.a;

import java.io.RandomAccessFile;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class c implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f38256a = "sn.dat";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static String f38257b = c.class.getClassLoader().getResource(f38256a).getPath();

    private void a(BigInteger bigInteger) throws Throwable {
        RandomAccessFile randomAccessFile;
        Throwable th;
        try {
            randomAccessFile = new RandomAccessFile(f38257b, "rw");
            try {
                randomAccessFile.writeBytes(bigInteger.toString(10));
                randomAccessFile.close();
            } catch (Throwable th2) {
                th = th2;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            randomAccessFile = null;
            th = th3;
        }
    }

    private BigInteger b() throws Throwable {
        RandomAccessFile randomAccessFile;
        Throwable th;
        try {
            randomAccessFile = new RandomAccessFile(f38257b, "r");
            try {
                byte[] bArr = new byte[(int) randomAccessFile.length()];
                randomAccessFile.read(bArr);
                BigInteger bigInteger = new BigInteger(new String(bArr));
                randomAccessFile.close();
                return bigInteger;
            } catch (Throwable th2) {
                th = th2;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            randomAccessFile = null;
            th = th3;
        }
    }

    @Override // com.networkbench.agent.impl.util.a.a.a
    public synchronized BigInteger a() throws Exception {
        BigInteger bigIntegerB;
        bigIntegerB = b();
        a(bigIntegerB.add(BigInteger.ONE));
        return bigIntegerB;
    }
}
