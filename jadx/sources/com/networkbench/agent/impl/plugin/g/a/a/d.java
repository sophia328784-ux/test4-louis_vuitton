package com.networkbench.agent.impl.plugin.g.a.a;

import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes2.dex */
public final class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final SecureRandom f38096b = new SecureRandom();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final InetAddress f38097a;

    public d(InetAddress inetAddress) {
        this.f38097a = inetAddress;
    }

    private byte[] a(byte[] bArr) throws Throwable {
        DatagramSocket datagramSocket = null;
        try {
            DatagramSocket datagramSocket2 = new DatagramSocket();
            try {
                DatagramPacket datagramPacket = new DatagramPacket(bArr, bArr.length, this.f38097a, 53);
                datagramSocket2.setSoTimeout(HarvestConfiguration.SLOW_START_THRESHOLD);
                datagramSocket2.send(datagramPacket);
                DatagramPacket datagramPacket2 = new DatagramPacket(new byte[1500], 1500);
                datagramSocket2.receive(datagramPacket2);
                byte[] data = datagramPacket2.getData();
                datagramSocket2.close();
                return data;
            } catch (Throwable th) {
                th = th;
                datagramSocket = datagramSocket2;
                if (datagramSocket != null) {
                    datagramSocket.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public c[] a(String str) throws Throwable {
        int iNextInt;
        SecureRandom secureRandom = f38096b;
        synchronized (secureRandom) {
            iNextInt = secureRandom.nextInt() & 255;
        }
        byte[] bArrA = a(b.a(str, iNextInt));
        if (bArrA != null) {
            return b.a(bArrA, iNextInt, str);
        }
        throw new a(str, "cant get answer");
    }
}
