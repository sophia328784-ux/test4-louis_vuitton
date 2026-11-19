package androidx.media3.datasource;

import android.net.Uri;
import com.networkbench.agent.impl.util.r;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;

/* JADX INFO: loaded from: classes.dex */
public final class UdpDataSource extends BaseDataSource {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f14447e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f14448f;
    public final DatagramPacket g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Uri f14449h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public DatagramSocket f14450i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public MulticastSocket f14451j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public InetAddress f14452k;
    public boolean l;
    public int m;

    public static final class UdpDataSourceException extends DataSourceException {
        public UdpDataSourceException(Throwable th, int i2) {
            super(th, i2);
        }
    }

    public UdpDataSource(int i2, int i3) {
        super(true);
        this.f14447e = i3;
        byte[] bArr = new byte[i2];
        this.f14448f = bArr;
        this.g = new DatagramPacket(bArr, 0, i2);
    }

    @Override // androidx.media3.datasource.DataSource
    public final long a(DataSpec dataSpec) throws UdpDataSourceException {
        Uri uri = dataSpec.f14390a;
        this.f14449h = uri;
        String host = uri.getHost();
        host.getClass();
        int port = this.f14449h.getPort();
        q(dataSpec);
        try {
            this.f14452k = InetAddress.getByName(host);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f14452k, port);
            if (this.f14452k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.f14451j = multicastSocket;
                multicastSocket.joinGroup(this.f14452k);
                this.f14450i = this.f14451j;
            } else {
                this.f14450i = new DatagramSocket(inetSocketAddress);
            }
            this.f14450i.setSoTimeout(this.f14447e);
            this.l = true;
            r(dataSpec);
            return -1L;
        } catch (IOException e2) {
            throw new UdpDataSourceException(e2, 2001);
        } catch (SecurityException e3) {
            throw new UdpDataSourceException(e3, 2006);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        this.f14449h = null;
        MulticastSocket multicastSocket = this.f14451j;
        if (multicastSocket != null) {
            try {
                InetAddress inetAddress = this.f14452k;
                inetAddress.getClass();
                multicastSocket.leaveGroup(inetAddress);
            } catch (IOException unused) {
            }
            this.f14451j = null;
        }
        DatagramSocket datagramSocket = this.f14450i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f14450i = null;
        }
        this.f14452k = null;
        this.m = 0;
        if (this.l) {
            this.l = false;
            p();
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri getUri() {
        return this.f14449h;
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i2, int i3) throws UdpDataSourceException {
        if (i3 == 0) {
            return 0;
        }
        int i4 = this.m;
        DatagramPacket datagramPacket = this.g;
        if (i4 == 0) {
            try {
                DatagramSocket datagramSocket = this.f14450i;
                datagramSocket.getClass();
                datagramSocket.receive(datagramPacket);
                int length = datagramPacket.getLength();
                this.m = length;
                o(length);
            } catch (SocketTimeoutException e2) {
                throw new UdpDataSourceException(e2, 2002);
            } catch (IOException e3) {
                throw new UdpDataSourceException(e3, 2001);
            }
        }
        int length2 = datagramPacket.getLength();
        int i5 = this.m;
        int iMin = Math.min(i5, i3);
        System.arraycopy(this.f14448f, length2 - i5, bArr, i2, iMin);
        this.m -= iMin;
        return iMin;
    }

    public UdpDataSource(int i2) {
        this(i2, 8000);
    }

    public UdpDataSource() {
        this(r.E);
    }
}
