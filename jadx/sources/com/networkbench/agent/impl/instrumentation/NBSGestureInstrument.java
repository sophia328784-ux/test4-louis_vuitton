package com.networkbench.agent.impl.instrumentation;

import android.view.KeyEvent;
import android.view.MotionEvent;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.g.a.c;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.r;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class NBSGestureInstrument {
    private static final String TAG = "NBSGestureInstrument";
    private static List<c> listeners = new CopyOnWriteArrayList();

    public static void dispatchKeyEvent(KeyEvent keyEvent) {
        try {
            if (!isGestureCollect()) {
                Logger.debug(TAG, "gesture collect not collect");
                return;
            }
            Iterator<c> it = listeners.iterator();
            while (it.hasNext()) {
                it.next().a(keyEvent);
            }
        } catch (Throwable th) {
            Logger.error(TAG, "error in dispatchKeyEvent", th);
        }
    }

    public static void dispatchTouchEvent(MotionEvent motionEvent) {
        try {
            if (!isGestureCollect()) {
                Logger.debug(TAG, "gesture collect not collect");
                return;
            }
            Iterator<c> it = listeners.iterator();
            while (it.hasNext()) {
                it.next().a(motionEvent);
            }
        } catch (Throwable th) {
            g.b("dispatchTouchEvent has an error : ", th);
        }
    }

    private static boolean isGestureCollect() {
        return r.u().af();
    }

    public static void registerMotionEventListener(c cVar) {
        Logger.debug(TAG, "NBSGestureInstrument  registerMotionEventListener !");
        listeners.add(cVar);
    }

    public static void removeMotionEventListener(c cVar) {
        listeners.remove(cVar);
    }
}
