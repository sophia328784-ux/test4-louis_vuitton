package com.linkplay.bonjour.manage;

import com.linkplay.bonjour.presenter.UartPresenter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class UartManager {
    private static Map<String, UartPresenter> uartMap = new HashMap();

    public static void add(String str, UartPresenter uartPresenter) {
        synchronized (UartManager.class) {
            try {
                UartPresenter uartPresenterPut = uartMap.put(str, uartPresenter);
                if (uartPresenterPut != null) {
                    uartPresenterPut.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void clear() {
        synchronized (UartManager.class) {
            try {
                Iterator<Map.Entry<String, UartPresenter>> it = uartMap.entrySet().iterator();
                while (it.hasNext()) {
                    it.next().getValue().close();
                }
                uartMap.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static UartPresenter get(String str) {
        UartPresenter uartPresenter;
        synchronized (UartManager.class) {
            uartPresenter = uartMap.get(str);
        }
        return uartPresenter;
    }

    public static void remove(String str) {
        synchronized (UartManager.class) {
            try {
                UartPresenter uartPresenterRemove = uartMap.remove(str);
                if (uartPresenterRemove != null) {
                    uartPresenterRemove.close();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
