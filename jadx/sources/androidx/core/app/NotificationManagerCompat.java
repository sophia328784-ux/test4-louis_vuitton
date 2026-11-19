package androidx.core.app;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.provider.Settings;
import android.support.v4.app.INotificationSideChannel;
import android.util.Log;
import com.batch.android.Batch;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import defpackage.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayDeque;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class NotificationManagerCompat {
    public static String d;
    public static SideChannelManager g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f11954a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NotificationManager f11955b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Object f11951c = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static HashSet f11952e = new HashSet();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Object f11953f = new Object();

    @Retention(RetentionPolicy.SOURCE)
    public @interface InterruptionFilter {
    }

    public static class NotifyTask implements Task {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f11956a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f11957b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Notification f11958c;

        public NotifyTask(String str, int i2, Notification notification) {
            this.f11956a = str;
            this.f11957b = i2;
            this.f11958c = notification;
        }

        @Override // androidx.core.app.NotificationManagerCompat.Task
        public final void a(INotificationSideChannel iNotificationSideChannel) {
            iNotificationSideChannel.q2(this.f11956a, this.f11957b, this.f11958c);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("NotifyTask[packageName:");
            sb.append(this.f11956a);
            sb.append(", id:");
            return a.i(this.f11957b, ", tag:batch]", sb);
        }
    }

    public static class ServiceConnectedEvent {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ComponentName f11959a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final IBinder f11960b;

        public ServiceConnectedEvent(ComponentName componentName, IBinder iBinder) {
            this.f11959a = componentName;
            this.f11960b = iBinder;
        }
    }

    public static class SideChannelManager implements Handler.Callback, ServiceConnection {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Context f11961b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Handler f11962c;
        public final HashMap d = new HashMap();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public HashSet f11963e = new HashSet();

        public static class ListenerRecord {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final ComponentName f11964a;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public INotificationSideChannel f11966c;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public boolean f11965b = false;
            public final ArrayDeque d = new ArrayDeque();

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public int f11967e = 0;

            public ListenerRecord(ComponentName componentName) {
                this.f11964a = componentName;
            }
        }

        public SideChannelManager(Context context) {
            this.f11961b = context;
            HandlerThread handlerThread = new HandlerThread("NotificationManagerCompat");
            handlerThread.start();
            this.f11962c = new Handler(handlerThread.getLooper(), this);
        }

        public final void a(ListenerRecord listenerRecord) {
            boolean z;
            ArrayDeque arrayDeque = listenerRecord.d;
            ComponentName componentName = listenerRecord.f11964a;
            if (Log.isLoggable("NotifManCompat", 3)) {
                Objects.toString(componentName);
                arrayDeque.size();
            }
            if (arrayDeque.isEmpty()) {
                return;
            }
            if (listenerRecord.f11965b) {
                z = true;
            } else {
                Intent component = new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(componentName);
                Context context = this.f11961b;
                boolean zBindService = context.bindService(component, this, 33);
                listenerRecord.f11965b = zBindService;
                if (zBindService) {
                    listenerRecord.f11967e = 0;
                } else {
                    Objects.toString(componentName);
                    context.unbindService(this);
                }
                z = listenerRecord.f11965b;
            }
            if (!z || listenerRecord.f11966c == null) {
                b(listenerRecord);
                return;
            }
            while (true) {
                Task task = (Task) arrayDeque.peek();
                if (task == null) {
                    break;
                }
                try {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        task.toString();
                    }
                    task.a(listenerRecord.f11966c);
                    arrayDeque.remove();
                } catch (DeadObjectException unused) {
                    if (Log.isLoggable("NotifManCompat", 3)) {
                        Objects.toString(componentName);
                    }
                } catch (RemoteException unused2) {
                    Objects.toString(componentName);
                }
            }
            if (arrayDeque.isEmpty()) {
                return;
            }
            b(listenerRecord);
        }

        public final void b(ListenerRecord listenerRecord) {
            ComponentName componentName = listenerRecord.f11964a;
            ArrayDeque arrayDeque = listenerRecord.d;
            Handler handler = this.f11962c;
            if (handler.hasMessages(3, componentName)) {
                return;
            }
            int i2 = listenerRecord.f11967e;
            int i3 = i2 + 1;
            listenerRecord.f11967e = i3;
            if (i3 <= 6) {
                Log.isLoggable("NotifManCompat", 3);
                handler.sendMessageDelayed(handler.obtainMessage(3, componentName), (1 << i2) * 1000);
            } else {
                arrayDeque.size();
                Objects.toString(componentName);
                arrayDeque.clear();
            }
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            HashSet hashSet;
            int i2 = message.what;
            if (i2 == 0) {
                Task task = (Task) message.obj;
                Context context = this.f11961b;
                Object obj = NotificationManagerCompat.f11951c;
                String string = Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
                synchronized (NotificationManagerCompat.f11951c) {
                    if (string != null) {
                        try {
                            if (!string.equals(NotificationManagerCompat.d)) {
                                String[] strArrSplit = string.split(":", -1);
                                HashSet hashSet2 = new HashSet(strArrSplit.length);
                                for (String str : strArrSplit) {
                                    ComponentName componentNameUnflattenFromString = ComponentName.unflattenFromString(str);
                                    if (componentNameUnflattenFromString != null) {
                                        hashSet2.add(componentNameUnflattenFromString.getPackageName());
                                    }
                                }
                                NotificationManagerCompat.f11952e = hashSet2;
                                NotificationManagerCompat.d = string;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    hashSet = NotificationManagerCompat.f11952e;
                }
                if (!hashSet.equals(this.f11963e)) {
                    this.f11963e = hashSet;
                    List<ResolveInfo> listQueryIntentServices = this.f11961b.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 0);
                    HashSet<ComponentName> hashSet3 = new HashSet();
                    for (ResolveInfo resolveInfo : listQueryIntentServices) {
                        if (hashSet.contains(resolveInfo.serviceInfo.packageName)) {
                            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                            ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                            if (resolveInfo.serviceInfo.permission != null) {
                                componentName.toString();
                            } else {
                                hashSet3.add(componentName);
                            }
                        }
                    }
                    for (ComponentName componentName2 : hashSet3) {
                        if (!this.d.containsKey(componentName2)) {
                            if (Log.isLoggable("NotifManCompat", 3)) {
                                Objects.toString(componentName2);
                            }
                            this.d.put(componentName2, new ListenerRecord(componentName2));
                        }
                    }
                    Iterator it = this.d.entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry entry = (Map.Entry) it.next();
                        if (!hashSet3.contains(entry.getKey())) {
                            if (Log.isLoggable("NotifManCompat", 3)) {
                                Objects.toString(entry.getKey());
                            }
                            ListenerRecord listenerRecord = (ListenerRecord) entry.getValue();
                            if (listenerRecord.f11965b) {
                                this.f11961b.unbindService(this);
                                listenerRecord.f11965b = false;
                            }
                            listenerRecord.f11966c = null;
                            it.remove();
                        }
                    }
                }
                for (ListenerRecord listenerRecord2 : this.d.values()) {
                    listenerRecord2.d.add(task);
                    a(listenerRecord2);
                }
            } else if (i2 == 1) {
                ServiceConnectedEvent serviceConnectedEvent = (ServiceConnectedEvent) message.obj;
                ComponentName componentName3 = serviceConnectedEvent.f11959a;
                IBinder iBinder = serviceConnectedEvent.f11960b;
                ListenerRecord listenerRecord3 = (ListenerRecord) this.d.get(componentName3);
                if (listenerRecord3 != null) {
                    listenerRecord3.f11966c = INotificationSideChannel.Stub.E2(iBinder);
                    listenerRecord3.f11967e = 0;
                    a(listenerRecord3);
                    return true;
                }
            } else if (i2 == 2) {
                ListenerRecord listenerRecord4 = (ListenerRecord) this.d.get((ComponentName) message.obj);
                if (listenerRecord4 != null) {
                    if (listenerRecord4.f11965b) {
                        this.f11961b.unbindService(this);
                        listenerRecord4.f11965b = false;
                    }
                    listenerRecord4.f11966c = null;
                    return true;
                }
            } else {
                if (i2 != 3) {
                    return false;
                }
                ListenerRecord listenerRecord5 = (ListenerRecord) this.d.get((ComponentName) message.obj);
                if (listenerRecord5 != null) {
                    a(listenerRecord5);
                    return true;
                }
            }
            return true;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Objects.toString(componentName);
            }
            this.f11962c.obtainMessage(1, new ServiceConnectedEvent(componentName, iBinder)).sendToTarget();
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Objects.toString(componentName);
            }
            this.f11962c.obtainMessage(2, componentName).sendToTarget();
        }
    }

    public interface Task {
        void a(INotificationSideChannel iNotificationSideChannel);
    }

    public NotificationManagerCompat(Context context) {
        this.f11954a = context;
        this.f11955b = (NotificationManager) context.getSystemService("notification");
    }

    public final void a(int i2, Notification notification) {
        Bundle bundle = notification.extras;
        if (bundle == null || !bundle.getBoolean("android.support.useSideChannel")) {
            NotificationManager notificationManager = this.f11955b;
            notificationManager.notify(Batch.NOTIFICATION_TAG, i2, notification);
            PushAutoTrackHelper.onNotify(notificationManager, Batch.NOTIFICATION_TAG, i2, notification);
            return;
        }
        NotifyTask notifyTask = new NotifyTask(this.f11954a.getPackageName(), i2, notification);
        synchronized (f11953f) {
            try {
                if (g == null) {
                    g = new SideChannelManager(this.f11954a.getApplicationContext());
                }
                g.f11962c.obtainMessage(0, notifyTask).sendToTarget();
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f11955b.cancel(Batch.NOTIFICATION_TAG, i2);
    }
}
