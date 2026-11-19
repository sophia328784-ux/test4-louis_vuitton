package com.networkbench.agent.impl.instrumentation;

import android.os.Handler;
import android.os.Message;
import com.networkbench.agent.impl.asyncaction.g;
import com.networkbench.agent.impl.asyncaction.l;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;

/* JADX INFO: loaded from: classes2.dex */
public class NBSOSHandlerInstrument {
    private static final e log = f.a();
    private static l handlerController = new l();
    private static final g runnableController = new g();

    public static final boolean post(Handler handler, Runnable runnable) {
        try {
            g gVar = runnableController;
            if (gVar.a()) {
                runnable = gVar.a(runnable);
            }
            return handler.post(runnable);
        } catch (Throwable th) {
            try {
                log.a("error configInstrumentHandler ", th);
                return handler.post(runnable);
            } catch (Throwable unused) {
                return handler.post(runnable);
            }
        }
    }

    public static final boolean postAtFrontOfQueue(Handler handler, Runnable runnable) {
        try {
            g gVar = runnableController;
            if (gVar.a()) {
                runnable = gVar.a(runnable);
            }
            return handler.postAtFrontOfQueue(runnable);
        } catch (Throwable th) {
            try {
                log.a("error configInstrumentHandler ", th);
                return handler.postAtFrontOfQueue(runnable);
            } catch (Throwable unused) {
                return handler.postAtFrontOfQueue(runnable);
            }
        }
    }

    public static final boolean postAtTime(Handler handler, Runnable runnable, long j2) {
        try {
            g gVar = runnableController;
            if (gVar.a()) {
                runnable = gVar.a(runnable);
            }
            return handler.postAtTime(runnable, j2);
        } catch (Throwable th) {
            try {
                log.a("error configInstrumentHandler ", th);
                return handler.postAtTime(runnable, j2);
            } catch (Throwable unused) {
                return handler.postAtTime(runnable, j2);
            }
        }
    }

    public static final boolean postDelayed(Handler handler, Runnable runnable, long j2) {
        try {
            g gVar = runnableController;
            if (gVar.a()) {
                runnable = gVar.a(runnable);
            }
            return handler.postDelayed(runnable, j2);
        } catch (Throwable th) {
            try {
                log.a("error configInstrumentHandler ", th);
                return handler.postDelayed(runnable, j2);
            } catch (Throwable unused) {
                return handler.postDelayed(runnable, j2);
            }
        }
    }

    public static final boolean sendEmptyMessage(Handler handler, int i2) {
        try {
            handlerController.a(handler);
            return handler.sendEmptyMessage(i2);
        } catch (Throwable th) {
            try {
                log.a("error sendEmptyMessage ", th);
                return handler.sendEmptyMessage(i2);
            } catch (Throwable unused) {
                return handler.sendEmptyMessage(i2);
            }
        }
    }

    public static final boolean sendEmptyMessageAtTime(Handler handler, int i2, long j2) {
        try {
            handlerController.a(handler);
            return handler.sendEmptyMessageAtTime(i2, j2);
        } catch (Throwable th) {
            try {
                log.a("error configInstrumentHandler", th);
                return handler.sendEmptyMessageAtTime(i2, j2);
            } catch (Throwable unused) {
                return handler.sendEmptyMessageAtTime(i2, j2);
            }
        }
    }

    public static final boolean sendEmptyMessageDelayed(Handler handler, int i2, long j2) {
        try {
            handlerController.a(handler);
            return handler.sendEmptyMessageDelayed(i2, j2);
        } catch (Throwable th) {
            try {
                log.a("error configInstrumentHandler", th);
                return handler.sendEmptyMessageDelayed(i2, j2);
            } catch (Throwable unused) {
                return handler.sendEmptyMessageDelayed(i2, j2);
            }
        }
    }

    public static final boolean sendMessage(Handler handler, Message message) {
        try {
            handlerController.a(handler);
            return handler.sendMessage(message);
        } catch (Throwable th) {
            try {
                log.a("error sendMessage ", th);
                return handler.sendMessage(message);
            } catch (Throwable unused) {
                return handler.sendMessage(message);
            }
        }
    }

    public static final boolean sendMessageAtFrontOfQueue(Handler handler, Message message) {
        try {
            handlerController.a(handler);
            return handler.sendMessageAtFrontOfQueue(message);
        } catch (Throwable th) {
            try {
                log.a("error configInstrumentHandler ", th);
                return handler.sendMessageAtFrontOfQueue(message);
            } catch (Throwable unused) {
                return handler.sendMessageAtFrontOfQueue(message);
            }
        }
    }

    public static boolean sendMessageAtTime(Handler handler, Message message, long j2) {
        try {
            handlerController.a(handler);
            return handler.sendMessageAtTime(message, j2);
        } catch (Throwable th) {
            try {
                log.a("error configInstrumentHandler ", th);
                return handler.sendMessageAtTime(message, j2);
            } catch (Throwable unused) {
                return handler.sendMessageAtTime(message, j2);
            }
        }
    }

    public static final boolean sendMessageDelayed(Handler handler, Message message, long j2) {
        try {
            handlerController.a(handler);
            return handler.sendMessageDelayed(message, j2);
        } catch (Throwable th) {
            try {
                log.a("error configInstrumentHandler ", th);
                return handler.sendMessageDelayed(message, j2);
            } catch (Throwable unused) {
                return handler.sendMessageDelayed(message, j2);
            }
        }
    }

    public static final boolean postAtTime(Handler handler, Runnable runnable, Object obj, long j2) {
        try {
            g gVar = runnableController;
            if (gVar.a()) {
                runnable = gVar.a(runnable);
            }
            return handler.postAtTime(runnable, obj, j2);
        } catch (Throwable th) {
            try {
                log.a("error configInstrumentHandler ", th);
                return handler.postAtTime(runnable, obj, j2);
            } catch (Throwable unused) {
                return handler.postAtTime(runnable, obj, j2);
            }
        }
    }

    public static final boolean postDelayed(Handler handler, Runnable runnable, Object obj, long j2) {
        try {
            g gVar = runnableController;
            if (gVar.a()) {
                runnable = gVar.a(runnable);
            }
            return handler.postDelayed(runnable, obj, j2);
        } catch (Throwable th) {
            try {
                log.a("error configInstrumentHandler ", th);
                return handler.postDelayed(runnable, obj, j2);
            } catch (Throwable unused) {
                return handler.postDelayed(runnable, obj, j2);
            }
        }
    }
}
