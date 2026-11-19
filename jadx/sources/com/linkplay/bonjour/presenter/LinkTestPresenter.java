package com.linkplay.bonjour.presenter;

import com.linkplay.bonjour.utils.BonjourLog;
import com.linkplay.bonjour.utils.ThreadUtils;
import defpackage.n00;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public class LinkTestPresenter {
    private static final int ERROR_FINISH_CONNECT = 3;
    private static final int ERROR_INIT = 1;
    private static final int ERROR_READ = 4;
    private static final int ERROR_SELECT = 2;
    private static final int SLEEP_TIME = 50;
    private static final String TAG = "LinkTestPresenter";
    private static ExecutorService mCachedThreadPool;
    private String IP;
    private int PORT;
    private AtomicBoolean aBoolean;
    ILinkTest iLinkTest;
    private Selector selector;
    private SocketChannel socketChannel;

    public LinkTestPresenter(String str, int i2, ILinkTest iLinkTest) {
        this.IP = str;
        this.PORT = i2;
        this.iLinkTest = iLinkTest;
        if (mCachedThreadPool == null) {
            mCachedThreadPool = Executors.newCachedThreadPool();
        }
    }

    private synchronized void close(AtomicBoolean atomicBoolean) {
        if (atomicBoolean != null) {
            try {
                atomicBoolean.compareAndSet(true, false);
            } catch (Throwable th) {
                throw th;
            }
        }
        closeSocket();
    }

    private void closeSocket() {
        StringBuilder sb;
        n00.C(new StringBuilder(), getUrl(), "  closeSocket", TAG);
        try {
            Selector selector = this.selector;
            if (selector != null) {
                selector.close();
                this.selector = null;
            }
            SocketChannel socketChannel = this.socketChannel;
            if (socketChannel != null) {
                Socket socket = socketChannel.socket();
                if (socket != null) {
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
                    BonjourLog.i(TAG, getUrl() + "  finally selector.close() IOException:" + e2.getLocalizedMessage());
                }
            }
            SocketChannel socketChannel2 = this.socketChannel;
            if (socketChannel2 != null) {
                try {
                    Socket socket2 = socketChannel2.socket();
                    if (socket2 != null) {
                        if (!socket2.isInputShutdown()) {
                            socket2.shutdownInput();
                        }
                        if (!socket2.isOutputShutdown()) {
                            socket2.shutdownOutput();
                        }
                        socket2.close();
                    }
                } catch (IOException e3) {
                    e = e3;
                    e.printStackTrace();
                    sb = new StringBuilder();
                    sb.append(getUrl());
                    sb.append("  finally socketChannel.close() IOException:");
                    sb.append(e.getLocalizedMessage());
                    String string = sb.toString();
                }
            }
        } catch (IOException e4) {
            e4.printStackTrace();
            BonjourLog.i(TAG, getUrl() + "  closeSocket IOException:" + e4.getLocalizedMessage());
            System.gc();
            Selector selector3 = this.selector;
            if (selector3 != null) {
                try {
                    selector3.close();
                    this.selector = null;
                } catch (IOException e5) {
                    e5.printStackTrace();
                    BonjourLog.i(TAG, getUrl() + "  finally selector.close() IOException:" + e5.getLocalizedMessage());
                }
            }
            SocketChannel socketChannel3 = this.socketChannel;
            if (socketChannel3 != null) {
                try {
                    Socket socket3 = socketChannel3.socket();
                    if (socket3 != null) {
                        if (!socket3.isInputShutdown()) {
                            socket3.shutdownInput();
                        }
                        if (!socket3.isOutputShutdown()) {
                            socket3.shutdownOutput();
                        }
                        socket3.close();
                    }
                } catch (IOException e6) {
                    e = e6;
                    e.printStackTrace();
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
                    BonjourLog.i(TAG, getUrl() + "  finally selector.close() IOException:" + e7.getLocalizedMessage());
                }
            }
            SocketChannel socketChannel4 = this.socketChannel;
            if (socketChannel4 != null) {
                try {
                    Socket socket4 = socketChannel4.socket();
                    if (socket4 != null) {
                        if (!socket4.isInputShutdown()) {
                            socket4.shutdownInput();
                        }
                        if (!socket4.isOutputShutdown()) {
                            socket4.shutdownOutput();
                        }
                        socket4.close();
                    }
                    this.socketChannel.close();
                    this.socketChannel = null;
                } catch (IOException e8) {
                    e8.printStackTrace();
                    BonjourLog.i(TAG, getUrl() + "  finally socketChannel.close() IOException:" + e8.getLocalizedMessage());
                }
            }
        }
    }

    private String getUrl() {
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
                    n00.C(new StringBuilder(), getUrl(), "  1111111111111111111, break.", TAG);
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
            BonjourLog.i(TAG, getUrl() + "  TCP finished. " + atomicBoolean.get());
        } catch (IOException e2) {
            e2.printStackTrace();
            BonjourLog.i(TAG, getUrl() + "  initClient IOException: " + e2.getLocalizedMessage());
            ILinkTest iLinkTest = this.iLinkTest;
            if (iLinkTest != null) {
                iLinkTest.onException(e2, 1);
            }
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
            BonjourLog.i(TAG, getUrl() + "  select() IOException:" + e2.getLocalizedMessage());
            ILinkTest iLinkTest = this.iLinkTest;
            if (iLinkTest != null) {
                iLinkTest.onException(e2, 2);
            }
            close(atomicBoolean);
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
                if (!atomicBoolean.get() || !next.isConnectable()) {
                    ThreadUtils.sleep(50L);
                } else if (socketChannel.isConnectionPending()) {
                    try {
                        socketChannel.finishConnect();
                        BonjourLog.i(TAG, getUrl() + "  connectionSuccessful");
                        ILinkTest iLinkTest = this.iLinkTest;
                        if (iLinkTest != null) {
                            iLinkTest.connectionSuccessful(this);
                        }
                        close(atomicBoolean);
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        ILinkTest iLinkTest2 = this.iLinkTest;
                        if (iLinkTest2 != null) {
                            iLinkTest2.onException(e2, 3);
                        }
                        BonjourLog.i(TAG, getUrl() + "  finishConnect IOException:" + e2.getLocalizedMessage());
                        close(atomicBoolean);
                    }
                } else {
                    ThreadUtils.sleep(50L);
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

    public void connectDevice() {
        String str = this.IP;
        if (str == null || str.length() <= 0) {
            BonjourLog.i(TAG, "IP不正确:null");
        } else {
            mCachedThreadPool.execute(new Runnable() { // from class: com.linkplay.bonjour.presenter.LinkTestPresenter.1
                @Override // java.lang.Runnable
                public void run() {
                    LinkTestPresenter.this.aBoolean = new AtomicBoolean(true);
                    LinkTestPresenter linkTestPresenter = LinkTestPresenter.this;
                    linkTestPresenter.initClient(linkTestPresenter.aBoolean);
                }
            });
        }
    }
}
