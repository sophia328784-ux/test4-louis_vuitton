package com.linkplay.bonjour.presenter;

import com.linkplay.bonjour.model.HeartBeat;
import com.linkplay.bonjour.utils.BonjourLog;
import com.linkplay.bonjour.utils.ThreadUtils;
import defpackage.n00;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class UartPresenter {
    private static final int ERROR_FINISH_CONNECT = 3;
    private static final int ERROR_INIT = 1;
    private static final int ERROR_READ = 4;
    private static final int ERROR_SELECT = 2;
    private static final int HEART_DELAY = 500;
    private static final int HEART_PRIOD = 2000;
    private static final int HEART_TIMEOUT = 15000;
    private static final int SLEEP_TIME = 50;
    private static final String TAG = "UartPresenter";
    private static ExecutorService mCachedThreadPool;
    private String IP;
    private int PORT;
    private AtomicBoolean aBoolean;
    IUartPresenter iUartPresenter;
    private Selector selector;
    private SocketChannel socketChannel;
    Timer heartbeatTimer = null;
    HeartBeat heartBeat = new HeartBeat();

    public UartPresenter(String str, int i2, IUartPresenter iUartPresenter) {
        this.IP = "";
        this.PORT = 8899;
        this.iUartPresenter = null;
        this.IP = str;
        this.PORT = i2;
        this.iUartPresenter = iUartPresenter;
        if (mCachedThreadPool == null) {
            mCachedThreadPool = Executors.newCachedThreadPool();
        }
    }

    private void cancelTimer() {
        Timer timer = this.heartbeatTimer;
        if (timer != null) {
            timer.cancel();
            this.heartbeatTimer = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void close(AtomicBoolean atomicBoolean) {
        if (atomicBoolean != null) {
            try {
                atomicBoolean.compareAndSet(true, false);
            } catch (Throwable th) {
                throw th;
            }
        }
        cancelTimer();
        closeSocket();
    }

    private void closeSocket() {
        StringBuilder sb;
        n00.C(new StringBuilder(), getUrl(), "  closeSocket", "UartPresenter");
        try {
            Selector selector = this.selector;
            if (selector != null) {
                selector.close();
                this.selector = null;
            }
            SocketChannel socketChannel = this.socketChannel;
            if (socketChannel != null) {
                Socket socket = socketChannel.socket();
                if (socket != null && !socket.isClosed()) {
                    if (!socket.isInputShutdown()) {
                        socket.shutdownInput();
                    }
                    if (!socket.isOutputShutdown()) {
                        socket.shutdownOutput();
                    }
                    socket.close();
                }
                this.socketChannel.close();
                this.socketChannel = null;
            }
            System.gc();
            Selector selector2 = this.selector;
            if (selector2 != null) {
                try {
                    selector2.close();
                    this.selector = null;
                } catch (IOException e2) {
                    e2.printStackTrace();
                    BonjourLog.i("UartPresenter", getUrl() + "  finally selector.close() IOException:" + e2.getLocalizedMessage());
                }
            }
            SocketChannel socketChannel2 = this.socketChannel;
            if (socketChannel2 != null) {
                try {
                    Socket socket2 = socketChannel2.socket();
                    if (socket2 != null && !socket2.isClosed()) {
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
                } catch (IOException e3) {
                    e = e3;
                    sb = new StringBuilder();
                    sb.append(getUrl());
                    sb.append("  finally socketChannel.close() IOException:");
                    sb.append(e.getLocalizedMessage());
                    String string = sb.toString();
                }
            }
        } catch (IOException e4) {
            BonjourLog.i("UartPresenter", getUrl() + "  closeSocket IOException:" + e4.getLocalizedMessage());
            System.gc();
            Selector selector3 = this.selector;
            if (selector3 != null) {
                try {
                    selector3.close();
                    this.selector = null;
                } catch (IOException e5) {
                    e5.printStackTrace();
                    BonjourLog.i("UartPresenter", getUrl() + "  finally selector.close() IOException:" + e5.getLocalizedMessage());
                }
            }
            SocketChannel socketChannel3 = this.socketChannel;
            if (socketChannel3 != null) {
                try {
                    Socket socket3 = socketChannel3.socket();
                    if (socket3 != null && !socket3.isClosed()) {
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
                } catch (IOException e6) {
                    e = e6;
                    sb = new StringBuilder();
                    sb.append(getUrl());
                    sb.append("  finally socketChannel.close() IOException:");
                    sb.append(e.getLocalizedMessage());
                    String string2 = sb.toString();
                }
            }
        } finally {
            System.gc();
            Selector selector4 = this.selector;
            if (selector4 != null) {
                try {
                    selector4.close();
                    this.selector = null;
                } catch (IOException e7) {
                    e7.printStackTrace();
                    BonjourLog.i("UartPresenter", getUrl() + "  finally selector.close() IOException:" + e7.getLocalizedMessage());
                }
            }
            SocketChannel socketChannel4 = this.socketChannel;
            if (socketChannel4 != null) {
                try {
                    Socket socket4 = socketChannel4.socket();
                    if (socket4 != null && !socket4.isClosed()) {
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
                    this.socketChannel.close();
                    this.socketChannel = null;
                } catch (IOException e8) {
                    BonjourLog.i("UartPresenter", getUrl() + "  finally socketChannel.close() IOException:" + e8.getLocalizedMessage());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HeartBeat getHeartBeat() {
        return this.heartBeat;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getUrl() {
        return this.IP + ":" + this.PORT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initClient(AtomicBoolean atomicBoolean) {
        Selector selector;
        try {
            SocketChannel socketChannelOpen = SocketChannel.open();
            this.socketChannel = socketChannelOpen;
            socketChannelOpen.configureBlocking(false);
            this.socketChannel.connect(new InetSocketAddress(this.IP, this.PORT));
            Selector selectorOpen = Selector.open();
            this.selector = selectorOpen;
            this.socketChannel.register(selectorOpen, 9);
            while (atomicBoolean.get()) {
                if (!atomicBoolean.get() || (selector = this.selector) == null || !selector.isOpen()) {
                    n00.C(new StringBuilder(), getUrl(), "  1111111111111111111, break.", "UartPresenter");
                    break;
                } else if (select(atomicBoolean) <= 0) {
                    ThreadUtils.sleep(50L);
                } else {
                    Set<SelectionKey> setSelectionKeys = selectionKeys(atomicBoolean);
                    if (setSelectionKeys == null) {
                        ThreadUtils.sleep(50L);
                    } else {
                        selectedKeys(atomicBoolean, setSelectionKeys);
                    }
                }
            }
            BonjourLog.i("UartPresenter", getUrl() + "  TCP finished. " + atomicBoolean.get());
        } catch (IOException e2) {
            e2.printStackTrace();
            BonjourLog.i("UartPresenter", getUrl() + "  initClient IOException: " + e2.getLocalizedMessage());
            IUartPresenter iUartPresenter = this.iUartPresenter;
            if (iUartPresenter != null) {
                iUartPresenter.onException(e2, 1);
            }
            reConnectDevice(atomicBoolean);
        }
    }

    private void reConnectDevice(AtomicBoolean atomicBoolean) {
    }

    private synchronized int select(AtomicBoolean atomicBoolean) {
        int iSelect;
        Selector selector;
        iSelect = 0;
        try {
            if (atomicBoolean.get() && (selector = this.selector) != null) {
                iSelect = selector.select(2000L);
            }
        } catch (IOException e2) {
            e2.printStackTrace();
            BonjourLog.i("UartPresenter", getUrl() + "  select() IOException:" + e2.getLocalizedMessage());
            IUartPresenter iUartPresenter = this.iUartPresenter;
            if (iUartPresenter != null) {
                iUartPresenter.onException(e2, 2);
            }
            reConnectDevice(atomicBoolean);
        }
        return iSelect;
    }

    private synchronized void selectedKeys(AtomicBoolean atomicBoolean, Set<SelectionKey> set) {
        try {
            Iterator<SelectionKey> it = set.iterator();
            while (atomicBoolean.get() && it.hasNext()) {
                SelectionKey next = it.next();
                it.remove();
                SocketChannel socketChannel = (SocketChannel) next.channel();
                if (atomicBoolean.get() && next.isConnectable()) {
                    if (socketChannel.isConnectionPending()) {
                        try {
                            socketChannel.finishConnect();
                            BonjourLog.i("UartPresenter", getUrl() + "  connectionSuccessful");
                            IUartPresenter iUartPresenter = this.iUartPresenter;
                            if (iUartPresenter != null) {
                                iUartPresenter.connectionSuccessful(this);
                            }
                            startTimer(atomicBoolean);
                        } catch (IOException e2) {
                            IUartPresenter iUartPresenter2 = this.iUartPresenter;
                            if (iUartPresenter2 != null) {
                                iUartPresenter2.onException(e2, 3);
                            }
                            BonjourLog.i("UartPresenter", getUrl() + "  finishConnect IOException:" + e2.getLocalizedMessage());
                            close(atomicBoolean);
                        }
                    } else {
                        ThreadUtils.sleep(50L);
                    }
                } else if (atomicBoolean.get() && next.isReadable()) {
                    byte[] bArr = new byte[256];
                    ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                    try {
                        int i2 = socketChannel.read(byteBufferWrap);
                        if (i2 > 0) {
                            String str = new String(bArr, 0, i2);
                            setHeartBeat(str, System.currentTimeMillis());
                            sendCommand(str);
                            BonjourLog.i("UartPresenter", getUrl() + "  " + str + "  " + new SimpleDateFormat("HH:mm:ss").format(Long.valueOf(System.currentTimeMillis())));
                            IUartPresenter iUartPresenter3 = this.iUartPresenter;
                            if (iUartPresenter3 != null) {
                                iUartPresenter3.receivedMessage(str);
                            }
                        }
                        byteBufferWrap.clear();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                        BonjourLog.i("UartPresenter", getUrl() + "  read() IOException:" + e3.getLocalizedMessage());
                        if (this.iUartPresenter != null) {
                            this.iUartPresenter.onException(e3, 4);
                        }
                        reConnectDevice(atomicBoolean);
                        return;
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private synchronized Set<SelectionKey> selectionKeys(AtomicBoolean atomicBoolean) {
        Selector selector;
        if (!atomicBoolean.get() || (selector = this.selector) == null) {
            return null;
        }
        return selector.selectedKeys();
    }

    private void setHeartBeat(String str, long j2) {
        if (this.heartBeat == null) {
            this.heartBeat = new HeartBeat().setHeart(str).setTime(j2);
        }
        this.heartBeat.setHeart(str).setTime(j2);
    }

    private void startTimer(final AtomicBoolean atomicBoolean) {
        Timer timer = this.heartbeatTimer;
        if (timer != null) {
            timer.cancel();
            this.heartbeatTimer = null;
        }
        Timer timer2 = new Timer();
        this.heartbeatTimer = timer2;
        timer2.schedule(new TimerTask() { // from class: com.linkplay.bonjour.presenter.UartPresenter.2
            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                HeartBeat heartBeat = UartPresenter.this.getHeartBeat();
                if (heartBeat == null || heartBeat.getHeart().length() <= 0 || System.currentTimeMillis() - heartBeat.getTime() <= 15000) {
                    return;
                }
                BonjourLog.i("UartPresenter", UartPresenter.this.getUrl() + "  heartbeatTimeout");
                UartPresenter.this.close(atomicBoolean);
                IUartPresenter iUartPresenter = UartPresenter.this.iUartPresenter;
                if (iUartPresenter != null) {
                    iUartPresenter.heartbeatTimeout();
                }
            }
        }, 500L, 2000L);
    }

    public void connectDevice() {
        String str = this.IP;
        if (str == null || str.length() <= 0) {
            BonjourLog.i("UartPresenter", "IP不正确:null");
        } else {
            mCachedThreadPool.execute(new Runnable() { // from class: com.linkplay.bonjour.presenter.UartPresenter.1
                @Override // java.lang.Runnable
                public void run() {
                    UartPresenter.this.aBoolean = new AtomicBoolean(true);
                    UartPresenter uartPresenter = UartPresenter.this;
                    uartPresenter.initClient(uartPresenter.aBoolean);
                }
            });
        }
    }

    public synchronized void sendCommand(String str) {
        byte[] bytes = str.getBytes();
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bytes, 0, bytes.length);
        if (this.socketChannel == null) {
            return;
        }
        if (this.aBoolean.get() && this.socketChannel.isOpen() && this.socketChannel.isConnected()) {
            try {
                this.socketChannel.write(byteBufferWrap);
            } catch (IOException e2) {
                e2.printStackTrace();
                BonjourLog.i("UartPresenter", "sendCommand IOException:" + e2.getLocalizedMessage());
            }
            byteBufferWrap.clear();
        }
    }

    public synchronized void close() {
        close(this.aBoolean);
    }
}
