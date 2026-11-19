package com.linkplay.passthrough;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.linkplay.core.device.LPDevice;
import defpackage.a;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes2.dex */
public class LPPassthrough extends HandlerThread {
    private static final int ERROR_FINISH_CONNECT = 2;
    private static final int ERROR_INIT = 1;
    private static final int ERROR_READ = 3;
    public static final int MAX_BUFFER_LENGTH = 256;
    private static final int SLEEP_TIME = 6;
    public static final String TAG = "LPPassthrough";
    private static ExecutorService cachedThreadPool = Executors.newCachedThreadPool();
    private String IP;
    private int PORT;
    LPPassthroughListener iUartPresenter;
    private boolean isRunning;
    private Handler mHandler;
    private Selector selector;
    private SocketChannel socketChannel;

    public LPPassthrough(LPDevice lPDevice, LPPassthroughListener lPPassthroughListener) {
        super("1111");
        this.IP = "";
        this.PORT = 8899;
        this.iUartPresenter = null;
        this.isRunning = true;
        this.IP = lPDevice.getIp();
        this.PORT = lPDevice.getDeviceStatus().getUartPassPort();
        this.iUartPresenter = lPPassthroughListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUrl() {
        StringBuilder sb = new StringBuilder("[Thread ID ");
        sb.append(Thread.currentThread().getId());
        sb.append("] ");
        sb.append(this.IP);
        sb.append(":");
        return a.i(this.PORT, "  ", sb);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isRunning() {
        return this.isRunning;
    }

    private String parseMCUMsg(byte[] bArr) {
        int iConvertByteArray2Int = ConvertUtil.convertByteArray2Int(bArr, 4);
        if (iConvertByteArray2Int > 256 || iConvertByteArray2Int < 0) {
            return "";
        }
        byte[] bArr2 = new byte[iConvertByteArray2Int];
        for (int i2 = 0; i2 < iConvertByteArray2Int; i2++) {
            int i3 = i2 + 20;
            if (i3 >= 256) {
                break;
            }
            bArr2[i2] = bArr[i3];
        }
        try {
            return new String(bArr2, "utf-8");
        } catch (UnsupportedEncodingException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void read() {
        while (isRunning()) {
            try {
                if (this.selector.select(2000L) <= 0) {
                    ThreadUtils.sleep(6L);
                } else {
                    Set<SelectionKey> setSelectedKeys = this.selector.selectedKeys();
                    if (!isRunning() || setSelectedKeys == null) {
                        ThreadUtils.sleep(6L);
                    } else {
                        Iterator<SelectionKey> it = setSelectedKeys.iterator();
                        while (isRunning() && it.hasNext()) {
                            SelectionKey next = it.next();
                            it.remove();
                            SocketChannel socketChannel = (SocketChannel) next.channel();
                            if (isRunning() && next.isConnectable()) {
                                if (socketChannel.isConnectionPending()) {
                                    socketChannel.finishConnect();
                                    LPUartLogUtil.log("i", TAG, getUrl() + "connectionSuccessful");
                                    LPPassthroughListener lPPassthroughListener = this.iUartPresenter;
                                    if (lPPassthroughListener != null) {
                                        lPPassthroughListener.connectionStateChanged(true);
                                    }
                                } else {
                                    LPUartLogUtil.log("i", TAG, getUrl() + "isConnectionPending = false");
                                    disConnect();
                                    ThreadUtils.sleep(6L);
                                }
                            } else if (isRunning() && next.isReadable()) {
                                ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[256]);
                                if (socketChannel.read(byteBufferWrap) > 0 && this.iUartPresenter != null) {
                                    this.iUartPresenter.passThroughMessageCome(parseMCUMsg(byteBufferWrap.array()));
                                }
                                byteBufferWrap.clear();
                            }
                        }
                    }
                }
            } catch (IOException e2) {
                e2.printStackTrace();
                LPUartLogUtil.log("i", TAG, getUrl() + "read IOException:" + e2.getLocalizedMessage());
                disConnect();
                ThreadUtils.sleep(6L);
            } catch (Exception e3) {
                e3.printStackTrace();
                LPUartLogUtil.log("e", TAG, getUrl() + "read Exception:" + e3.getLocalizedMessage());
                disConnect();
                ThreadUtils.sleep(6L);
            }
        }
        LPUartLogUtil.log("i", TAG, getUrl() + "finished");
    }

    private void sendCommand(final ByteBuffer byteBuffer) {
        Handler handler = this.mHandler;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.linkplay.passthrough.LPPassthrough.2
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r5v3, types: [java.nio.ByteBuffer] */
            @Override // java.lang.Runnable
            public void run() {
                SocketChannel socketChannel;
                if (LPPassthrough.this.isRunning()) {
                    LPPassthrough lPPassthrough = LPPassthrough.this;
                    if (lPPassthrough.selector == null || (socketChannel = lPPassthrough.socketChannel) == null) {
                        return;
                    }
                    try {
                        if (socketChannel.isConnected()) {
                            try {
                                LPPassthrough.this.socketChannel.write(byteBuffer);
                            } catch (IOException e2) {
                                e2.printStackTrace();
                                LPUartLogUtil.log("e", LPPassthrough.TAG, LPPassthrough.this.getUrl() + "SocketChannel.write() IOException:" + e2.getLocalizedMessage());
                            }
                        }
                    } finally {
                        byteBuffer.clear();
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setRunning(boolean z) {
        this.isRunning = z;
    }

    public void connect() {
        start();
    }

    public synchronized void disConnect() {
        Handler handler = this.mHandler;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.linkplay.passthrough.LPPassthrough.3
            @Override // java.lang.Runnable
            public void run() {
                LPPassthrough.this.setRunning(false);
                try {
                    try {
                        if (LPPassthrough.this.selector != null) {
                            LPUartLogUtil.log("i", LPPassthrough.TAG, LPPassthrough.this.getUrl() + "closeSocket");
                            LPPassthrough.this.selector.close();
                            LPPassthrough.this.selector = null;
                        }
                        SocketChannel socketChannel = LPPassthrough.this.socketChannel;
                        if (socketChannel != null) {
                            Socket socket = socketChannel.socket();
                            if (socket != null && !socket.isClosed() && socket.isConnected()) {
                                if (!socket.isInputShutdown()) {
                                    socket.shutdownInput();
                                }
                                if (!socket.isOutputShutdown()) {
                                    socket.shutdownOutput();
                                }
                                socket.close();
                            }
                            LPPassthrough.this.socketChannel.close();
                            LPPassthrough.this.socketChannel = null;
                        }
                        System.gc();
                        try {
                            Selector selector = LPPassthrough.this.selector;
                            if (selector != null) {
                                selector.close();
                                LPPassthrough.this.selector = null;
                            }
                            SocketChannel socketChannel2 = LPPassthrough.this.socketChannel;
                            if (socketChannel2 != null) {
                                Socket socket2 = socketChannel2.socket();
                                if (socket2 != null && !socket2.isClosed() && socket2.isConnected()) {
                                    if (!socket2.isInputShutdown()) {
                                        socket2.shutdownInput();
                                    }
                                    if (!socket2.isOutputShutdown()) {
                                        socket2.shutdownOutput();
                                    }
                                    if (!socket2.isClosed()) {
                                        socket2.close();
                                    }
                                }
                                LPPassthrough.this.socketChannel.close();
                                LPPassthrough.this.socketChannel = null;
                            }
                        } catch (IOException e2) {
                            LPUartLogUtil.log("e", LPPassthrough.TAG, LPPassthrough.this.getUrl() + "finally closeSocket IOException:" + e2.getLocalizedMessage());
                        }
                    } catch (Throwable th) {
                        System.gc();
                        try {
                            Selector selector2 = LPPassthrough.this.selector;
                            if (selector2 != null) {
                                selector2.close();
                                LPPassthrough.this.selector = null;
                            }
                            SocketChannel socketChannel3 = LPPassthrough.this.socketChannel;
                            if (socketChannel3 != null) {
                                Socket socket3 = socketChannel3.socket();
                                if (socket3 != null && !socket3.isClosed() && socket3.isConnected()) {
                                    if (!socket3.isInputShutdown()) {
                                        socket3.shutdownInput();
                                    }
                                    if (!socket3.isOutputShutdown()) {
                                        socket3.shutdownOutput();
                                    }
                                    if (!socket3.isClosed()) {
                                        socket3.close();
                                    }
                                }
                                LPPassthrough.this.socketChannel.close();
                                LPPassthrough.this.socketChannel = null;
                            }
                        } catch (IOException e3) {
                            LPUartLogUtil.log("e", LPPassthrough.TAG, LPPassthrough.this.getUrl() + "finally closeSocket IOException:" + e3.getLocalizedMessage());
                        }
                        throw th;
                    }
                } catch (IOException e4) {
                    e4.printStackTrace();
                    LPUartLogUtil.log("e", LPPassthrough.TAG, LPPassthrough.this.getUrl() + "closeSocket IOException:" + e4.getLocalizedMessage());
                    System.gc();
                    try {
                        Selector selector3 = LPPassthrough.this.selector;
                        if (selector3 != null) {
                            selector3.close();
                            LPPassthrough.this.selector = null;
                        }
                        SocketChannel socketChannel4 = LPPassthrough.this.socketChannel;
                        if (socketChannel4 != null) {
                            Socket socket4 = socketChannel4.socket();
                            if (socket4 != null && !socket4.isClosed() && socket4.isConnected()) {
                                if (!socket4.isInputShutdown()) {
                                    socket4.shutdownInput();
                                }
                                if (!socket4.isOutputShutdown()) {
                                    socket4.shutdownOutput();
                                }
                                if (!socket4.isClosed()) {
                                    socket4.close();
                                }
                            }
                            LPPassthrough.this.socketChannel.close();
                            LPPassthrough.this.socketChannel = null;
                        }
                    } catch (IOException e5) {
                        LPUartLogUtil.log("e", LPPassthrough.TAG, LPPassthrough.this.getUrl() + "finally closeSocket IOException:" + e5.getLocalizedMessage());
                    }
                }
            }
        });
    }

    @Override // android.os.HandlerThread
    public void onLooperPrepared() {
        super.onLooperPrepared();
        Handler handler = new Handler(Looper.myLooper());
        this.mHandler = handler;
        handler.post(new Runnable() { // from class: com.linkplay.passthrough.LPPassthrough.1
            @Override // java.lang.Runnable
            public void run() {
                LPPassthrough.this.setRunning(true);
                try {
                    LPPassthrough.this.socketChannel = SocketChannel.open();
                    LPPassthrough.this.socketChannel.configureBlocking(false);
                    SocketChannel socketChannel = LPPassthrough.this.socketChannel;
                    LPPassthrough lPPassthrough = LPPassthrough.this;
                    socketChannel.connect(new InetSocketAddress(lPPassthrough.IP, lPPassthrough.PORT));
                    LPPassthrough.this.selector = Selector.open();
                    LPPassthrough lPPassthrough2 = LPPassthrough.this;
                    lPPassthrough2.socketChannel.register(lPPassthrough2.selector, 9);
                    LPPassthrough.cachedThreadPool.execute(new Runnable() { // from class: com.linkplay.passthrough.LPPassthrough.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            LPPassthrough.this.read();
                        }
                    });
                } catch (IOException e2) {
                    e2.printStackTrace();
                    LPPassthroughListener lPPassthroughListener = LPPassthrough.this.iUartPresenter;
                    if (lPPassthroughListener != null) {
                        lPPassthroughListener.onException(e2, 1);
                    }
                    LPUartLogUtil.log("e", LPPassthrough.TAG, LPPassthrough.this.getUrl() + "initialization IOException: " + e2.getLocalizedMessage());
                }
            }
        });
    }

    public synchronized void write(String str) {
        try {
            int length = str.getBytes().length;
            byte[] bArr = new byte[256];
            int unsignedInt = (int) ConvertUtil.getUnsignedInt(538482200);
            int unsignedInt2 = (int) ConvertUtil.getUnsignedInt(length);
            int unsignedInt3 = (int) ConvertUtil.getUnsignedInt(0);
            ConvertUtil.convertInt2ByteArray(bArr, 0, unsignedInt);
            ConvertUtil.convertInt2ByteArray(bArr, 4, unsignedInt2);
            ConvertUtil.convertInt2ByteArray(bArr, 8, unsignedInt3);
            for (int i2 = 12; i2 < 20; i2++) {
                bArr[i2] = 0;
            }
            byte[] bytes = str.getBytes();
            for (int i3 = 0; i3 < bytes.length; i3++) {
                bArr[i3 + 20] = bytes[i3];
            }
            int length2 = 20 + bytes.length;
            char[] cArr = new char[length2];
            for (int i4 = 0; i4 < length2; i4++) {
                cArr[i4] = (char) bArr[i4];
            }
            sendCommand(ByteBuffer.wrap(bArr, 0, length2));
        } catch (Throwable th) {
            throw th;
        }
    }
}
