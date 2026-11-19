package net.rtccloud.sdk.event;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.sightcall.pratik.utils.SdkUtilsKt;
import com.sightcall.universal.media.offline.FileUtils;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import net.rtccloud.sdk.event.util.DeadEvent;
import net.rtccloud.sdk.event.util.ExceptionEvent;
import net.rtccloud.sdk.internal.util.Strings;
import net.rtccloud.sdk.util.OldLogger;
import net.rtccloud.sdk.util.Pools;

/* JADX INFO: loaded from: classes4.dex */
public final class EventBus {
    private final InvokeHandler handlerBg;
    private final InvokeHandler handlerUi;
    private final Set<Object> listeners;
    private final Map<Class<?>, Set<MethodCall>> mapOfTargets;
    private final Map<Object, Set<Method>> methods;
    private static final OldLogger log = OldLogger.get(OldLogger.Internal.EVENT_BUS);
    private static final Map<Class<?>, Set<Method>> cache = Collections.synchronizedMap(new HashMap());

    /* JADX INFO: renamed from: net.rtccloud.sdk.event.EventBus$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$event$Event$Thread;

        static {
            int[] iArr = new int[Event.Thread.values().length];
            $SwitchMap$net$rtccloud$sdk$event$Event$Thread = iArr;
            try {
                iArr[Event.Thread.BACKGROUND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$event$Event$Thread[Event.Thread.MAIN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static final class MethodCall {
        private final int hashCode;
        private final Method method;
        private final WeakReference<Object> reference;
        private final Event.Thread thread;

        public MethodCall(Object obj, Method method) {
            this.reference = new WeakReference<>(obj);
            this.method = method;
            Event.Thread thread = ((Event) method.getAnnotation(Event.class)).thread();
            this.thread = thread;
            this.hashCode = thread.hashCode() + ((method.hashCode() + (obj.hashCode() * 31)) * 31);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && MethodCall.class == obj.getClass()) {
                MethodCall methodCall = (MethodCall) obj;
                Object obj2 = this.reference.get();
                if (obj2 != null && obj2.equals(methodCall.reference.get()) && this.method.equals(methodCall.method) && this.thread == methodCall.thread) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return this.hashCode;
        }

        public void invoke(Object obj) throws IllegalAccessException, InvocationTargetException {
            Object obj2 = this.reference.get();
            if (obj2 == null) {
                EventBus.log.e("Unable to invoke [%s], the target was GC'ed...", this.method.toGenericString());
            } else {
                this.method.invoke(obj2, obj);
            }
        }
    }

    public static final class Wrapper {
        private static final Pools.SynchronizedPool<Wrapper> POOL = new Pools.SynchronizedPool<>(20);
        private MethodCall call;
        private Object event;
        private long timestamp;

        private Wrapper(MethodCall methodCall, Object obj, long j2) {
            this.call = methodCall;
            this.event = obj;
            this.timestamp = j2;
        }

        public static Wrapper obtain(MethodCall methodCall, Object obj) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            Wrapper wrapperAcquire = POOL.acquire();
            if (wrapperAcquire == null) {
                return new Wrapper(methodCall, obj, jElapsedRealtime);
            }
            wrapperAcquire.call = methodCall;
            wrapperAcquire.event = obj;
            wrapperAcquire.timestamp = jElapsedRealtime;
            return wrapperAcquire;
        }

        public void recycle() {
            POOL.release(this);
            this.call = null;
            this.event = null;
            this.timestamp = 0L;
        }
    }

    public EventBus() {
        this.listeners = Collections.synchronizedSet(new HashSet());
        this.methods = Collections.synchronizedMap(new HashMap());
        this.mapOfTargets = Collections.synchronizedMap(new HashMap());
        this.handlerUi = newInvokeHandler(Event.Thread.MAIN);
        this.handlerBg = newInvokeHandler(Event.Thread.BACKGROUND);
    }

    private synchronized void addTarget(Class<?> cls, Object obj, Method method) {
        Set<MethodCall> setFindTargets = findTargets(cls);
        synchronized (setFindTargets) {
            setFindTargets.add(new MethodCall(obj, method));
        }
    }

    private synchronized Set<MethodCall> findTargets(Class<?> cls) {
        Set<MethodCall> linkedHashSet;
        linkedHashSet = this.mapOfTargets.get(cls);
        if (linkedHashSet == null) {
            linkedHashSet = new LinkedHashSet<>();
            this.mapOfTargets.put(cls, linkedHashSet);
        }
        return linkedHashSet;
    }

    private static synchronized Set<Method> getAnnotatedMethodsOf(Object obj) throws IllegalArgumentException {
        try {
            Class<?> cls = obj.getClass();
            Set<Method> set = cache.get(cls);
            if (set != null) {
                return set;
            }
            Set<Method> setSynchronizedSet = Collections.synchronizedSet(new HashSet());
            for (Method method : cls.getMethods()) {
                if (method.isAnnotationPresent(Event.class) && !method.isBridge()) {
                    String string = method.toString();
                    if (method.getParameterTypes().length != 1) {
                        throw new IllegalArgumentException("@Event methods must have exactly one argument: " + string);
                    }
                    if (Modifier.isAbstract(method.getParameterTypes()[0].getModifiers())) {
                        throw new IllegalArgumentException("@Event methods parameter must be a concrete subclass of Event: " + string);
                    }
                    if (!Modifier.isPublic(method.getModifiers())) {
                        throw new IllegalArgumentException("@Event methods must be declared as public: " + string);
                    }
                    if (!Void.TYPE.equals(method.getReturnType()) && !Boolean.TYPE.equals(method.getReturnType())) {
                        throw new IllegalArgumentException("@Event methods return type must be void: " + string);
                    }
                    setSynchronizedSet.add(method);
                }
            }
            cache.put(cls, setSynchronizedSet);
            return setSynchronizedSet;
        } catch (Throwable th) {
            throw th;
        }
    }

    private static void logAppendNoMethod(StringBuilder sb) {
        sb.append('\n');
        sb.append(Strings.BOX_LIGHT_UP_AND_RIGHT);
        sb.append(Strings.BOX_LIGHT_HORIZONTAL);
        sb.append(Strings.BOX_LIGHT_HORIZONTAL);
        sb.append("No @Event annotated method found");
    }

    private static void logCallableMethod(StringBuilder sb, boolean z, MethodCall methodCall) {
        Object obj = methodCall.reference.get();
        sb.append('\n');
        sb.append(z ? Strings.BOX_LIGHT_UP_AND_RIGHT : Strings.BOX_LIGHT_VERTICAL_AND_RIGHT);
        sb.append(Strings.BOX_LIGHT_HORIZONTAL);
        sb.append(Strings.BOX_LIGHT_HORIZONTAL);
        sb.append(obj != null ? obj.getClass().getSimpleName() : "null");
        sb.append(FileUtils.HIDDEN_PREFIX);
        sb.append(methodCall.method.getName());
        sb.append("()");
    }

    private static void logDeadEvent(StringBuilder sb, String str) {
        sb.append('\n');
        sb.append(Strings.BOX_LIGHT_UP_AND_RIGHT);
        sb.append(Strings.BOX_LIGHT_HORIZONTAL);
        sb.append(str);
    }

    private static void logListenerIgnored(StringBuilder sb, String str) {
        sb.append('\n');
        sb.append(Strings.BOX_LIGHT_UP_AND_RIGHT);
        sb.append(Strings.BOX_LIGHT_HORIZONTAL);
        sb.append(Strings.BOX_LIGHT_HORIZONTAL);
        sb.append(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String logMethodInvoke(Wrapper wrapper, MethodCall methodCall, Object obj) {
        Object obj2 = methodCall.reference.get();
        return String.format(Locale.getDefault(), "✉→ %s.%s(%s@%s) [%s] [%dms]", obj2 != null ? obj2.getClass().getSimpleName() : "null", methodCall.method.getName(), obj.getClass().getSimpleName(), Integer.toHexString(obj.hashCode()), methodCall.thread, Long.valueOf(SystemClock.elapsedRealtime() - wrapper.timestamp));
    }

    private static StringBuilder logPosting(Object obj) {
        StringBuilder sb = new StringBuilder(String.valueOf(Strings.BOX_LIGHT_DOWN_AND_RIGHT));
        sb.append("─post(");
        sb.append(obj.getClass().getName());
        if (obj instanceof DeadEvent) {
            Object objEvent = ((DeadEvent) obj).event();
            sb.append("<");
            sb.append(objEvent.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(objEvent.hashCode()));
            sb.append(">");
        }
        sb.append("@");
        sb.append(Integer.toHexString(obj.hashCode()));
        sb.append(')');
        return sb;
    }

    private static void logRegisteredMethod(StringBuilder sb, boolean z, Method method, Class<?> cls) {
        sb.append('\n');
        sb.append(z ? Strings.BOX_LIGHT_UP_AND_RIGHT : Strings.BOX_LIGHT_VERTICAL_AND_RIGHT);
        sb.append(Strings.BOX_LIGHT_HORIZONTAL);
        sb.append(Strings.BOX_LIGHT_HORIZONTAL);
        sb.append(method.getName());
        sb.append('(');
        sb.append(cls.getName());
        sb.append(')');
    }

    private static StringBuilder logRegistering(Object obj, boolean z) {
        StringBuilder sb = new StringBuilder(String.valueOf(Strings.BOX_LIGHT_DOWN_AND_RIGHT));
        sb.append(Strings.BOX_LIGHT_HORIZONTAL);
        sb.append(z ? "register(" : "unregister(");
        sb.append(obj.toString());
        sb.append(")");
        return sb;
    }

    private InvokeHandler newInvokeHandler(Event.Thread thread) {
        int i2 = 0;
        if (AnonymousClass1.$SwitchMap$net$rtccloud$sdk$event$Event$Thread[thread.ordinal()] != 1) {
            return new InvokeHandler(this, Looper.getMainLooper(), i2);
        }
        HandlerThread handlerThread = new HandlerThread("event-bus-bg");
        handlerThread.start();
        return new InvokeHandler(this, handlerThread.getLooper(), i2);
    }

    private synchronized void removeTarget(Class<?> cls, Object obj, Method method) {
        Set<MethodCall> setFindTargets = findTargets(cls);
        synchronized (setFindTargets) {
            setFindTargets.remove(new MethodCall(obj, method));
        }
    }

    public synchronized void clear() {
        this.handlerUi.removeCallbacksAndMessages(null);
        this.handlerBg.removeCallbacksAndMessages(null);
        this.listeners.clear();
        this.methods.clear();
        this.mapOfTargets.clear();
    }

    public synchronized Set<Object> listeners() {
        return Collections.unmodifiableSet(this.listeners);
    }

    public synchronized Set<Method> methods(Object obj) {
        Set<Method> set;
        set = this.methods.get(obj);
        if (set == null) {
            set = Collections.EMPTY_SET;
        }
        return Collections.unmodifiableSet(set);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public synchronized <T> void post(T t) {
        try {
            if (t == 0) {
                throw new NullPointerException("[event] must not be null");
            }
            Class<?> cls = t.getClass();
            if (Modifier.isAbstract(cls.getModifiers())) {
                throw new IllegalArgumentException("[event] must be a concrete subclass of Event");
            }
            OldLogger oldLogger = log;
            StringBuilder sbLogPosting = oldLogger.d() ? logPosting(t) : null;
            Set<MethodCall> setFindTargets = findTargets(cls);
            synchronized (setFindTargets) {
                try {
                    if (setFindTargets.isEmpty()) {
                        if (t instanceof DeadEvent) {
                            if (sbLogPosting != null) {
                                logDeadEvent(sbLogPosting, "Dead event ignored!");
                                oldLogger.d(sbLogPosting.toString());
                            }
                        } else if (!(t instanceof ExceptionEvent) || !(((ExceptionEvent) t).event() instanceof DeadEvent)) {
                            if (sbLogPosting != null) {
                                logDeadEvent(sbLogPosting, "Dead event detected!");
                                oldLogger.d(sbLogPosting.toString());
                            }
                            if (!findTargets(DeadEvent.class).isEmpty()) {
                                post(new DeadEvent(t));
                            }
                        } else if (sbLogPosting != null) {
                            logDeadEvent(sbLogPosting, "Dead event Exception thrown!");
                            oldLogger.d(sbLogPosting.toString());
                        }
                        return;
                    }
                    int size = setFindTargets.size();
                    int i2 = 0;
                    for (MethodCall methodCall : setFindTargets) {
                        if (sbLogPosting != null) {
                            i2++;
                            logCallableMethod(sbLogPosting, i2 == size, methodCall);
                        }
                        Message messageObtain = Message.obtain();
                        if (SdkUtilsKt.isAtLeastSdk22()) {
                            messageObtain.setAsynchronous(true);
                        }
                        messageObtain.obj = Wrapper.obtain(methodCall, t);
                        if (AnonymousClass1.$SwitchMap$net$rtccloud$sdk$event$Event$Thread[methodCall.thread.ordinal()] != 1) {
                            messageObtain.setTarget(this.handlerUi);
                        } else {
                            messageObtain.setTarget(this.handlerBg);
                        }
                        messageObtain.sendToTarget();
                    }
                    if (sbLogPosting != null) {
                        log.d(sbLogPosting.toString());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized <T> void register(T t) {
        try {
            if (t == null) {
                throw new NullPointerException("[listener] must not be null");
            }
            StringBuilder sbLogRegistering = logRegistering(t, true);
            if (this.listeners.contains(t)) {
                OldLogger oldLogger = log;
                if (oldLogger.w()) {
                    logListenerIgnored(sbLogRegistering, "already registered");
                    oldLogger.w(sbLogRegistering.toString());
                }
                return;
            }
            Set<Method> annotatedMethodsOf = getAnnotatedMethodsOf(t);
            this.listeners.add(t);
            this.methods.put(t, annotatedMethodsOf);
            int size = annotatedMethodsOf.size();
            int i2 = 0;
            for (Method method : annotatedMethodsOf) {
                Class<?> cls = method.getParameterTypes()[0];
                if (log.d()) {
                    i2++;
                    logRegisteredMethod(sbLogRegistering, i2 == size, method, cls);
                }
                addTarget(cls, t, method);
            }
            OldLogger oldLogger2 = log;
            if (oldLogger2.d()) {
                if (annotatedMethodsOf.isEmpty()) {
                    logAppendNoMethod(sbLogRegistering);
                }
                oldLogger2.d(sbLogRegistering.toString());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized Set<MethodCall> targets(Class<?> cls) {
        return Collections.unmodifiableSet(findTargets(cls));
    }

    public synchronized <T> void unregister(T t) {
        try {
            if (t == null) {
                throw new NullPointerException("[listener] must not be null");
            }
            StringBuilder sbLogRegistering = logRegistering(t, false);
            if (!this.listeners.contains(t)) {
                OldLogger oldLogger = log;
                if (oldLogger.w()) {
                    logListenerIgnored(sbLogRegistering, "not registered yet");
                    oldLogger.w(sbLogRegistering.toString());
                }
                return;
            }
            Set<Method> annotatedMethodsOf = getAnnotatedMethodsOf(t);
            this.listeners.remove(t);
            this.methods.remove(t);
            int size = annotatedMethodsOf.size();
            int i2 = 0;
            for (Method method : annotatedMethodsOf) {
                Class<?> cls = method.getParameterTypes()[0];
                if (log.d()) {
                    i2++;
                    logRegisteredMethod(sbLogRegistering, i2 == size, method, cls);
                }
                removeTarget(cls, t, method);
            }
            OldLogger oldLogger2 = log;
            if (oldLogger2.d()) {
                if (annotatedMethodsOf.isEmpty()) {
                    logAppendNoMethod(sbLogRegistering);
                }
                oldLogger2.d(sbLogRegistering.toString());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final class InvokeHandler extends Handler {
        private InvokeHandler(Looper looper) {
            super(looper);
        }

        private void invoke(Wrapper wrapper) {
            Object obj = wrapper.event;
            MethodCall methodCall = wrapper.call;
            if (obj == null || methodCall == null) {
                return;
            }
            if (EventBus.log.d()) {
                EventBus.log.d(EventBus.this.logMethodInvoke(wrapper, methodCall, obj));
            }
            try {
                methodCall.invoke(obj);
            } catch (Exception e2) {
                EventBus.log.e("Exception detected while invoking the Event receiver method!", e2.getCause());
                if (obj instanceof ExceptionEvent) {
                    EventBus.log.i("ExceptionEvent throws an Error, do not re-create an ExceptionEvent...");
                } else {
                    EventBus.this.post(new ExceptionEvent(e2, obj, methodCall.method, methodCall.reference.get()));
                }
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            Object obj = message.obj;
            if (obj instanceof Wrapper) {
                Wrapper wrapper = (Wrapper) obj;
                invoke(wrapper);
                wrapper.recycle();
            }
        }

        public /* synthetic */ InvokeHandler(EventBus eventBus, Looper looper, int i2) {
            this(looper);
        }
    }

    public EventBus(Looper looper) {
        this.listeners = Collections.synchronizedSet(new HashSet());
        this.methods = Collections.synchronizedMap(new HashMap());
        this.mapOfTargets = Collections.synchronizedMap(new HashMap());
        this.handlerUi = new InvokeHandler(this, looper, 0);
        this.handlerBg = newInvokeHandler(Event.Thread.BACKGROUND);
    }

    public EventBus(Looper looper, Looper looper2) {
        this.listeners = Collections.synchronizedSet(new HashSet());
        this.methods = Collections.synchronizedMap(new HashMap());
        this.mapOfTargets = Collections.synchronizedMap(new HashMap());
        int i2 = 0;
        this.handlerUi = new InvokeHandler(this, looper, i2);
        this.handlerBg = new InvokeHandler(this, looper2, i2);
    }
}
