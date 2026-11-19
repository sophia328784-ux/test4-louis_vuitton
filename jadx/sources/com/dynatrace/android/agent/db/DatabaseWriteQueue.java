package com.dynatrace.android.agent.db;

import com.dynatrace.android.agent.AdkSettings;
import com.dynatrace.android.agent.Core;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.util.Utility;
import java.util.LinkedList;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes2.dex */
public final class DatabaseWriteQueue extends Thread {
    private static final long POLL_BATCH_TIME = 250;
    private static final int STOP_THREAD_WAIT_TIME = 1000;
    private static final String TAG;
    private static AtomicBoolean active;
    private static volatile DatabaseWriteQueue theInstance;
    private BlockingQueue<DatabaseRecord> queue = new LinkedBlockingQueue();

    public static class DatabaseRecord {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f27508a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f27509b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Session f27510c;
        public final int d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f27511e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f27512f;
        public final String g;

        public DatabaseRecord(String str, String str2, Session session, int i2, long j2, int i3, String str3) {
            this.f27508a = str;
            this.f27509b = str2;
            this.f27510c = session;
            this.d = i2;
            this.f27511e = j2;
            this.f27512f = i3;
            this.g = str3;
        }
    }

    static {
        boolean z = Global.f27307a;
        TAG = "dtxDatabaseWriteQueue";
        active = new AtomicBoolean(false);
    }

    private DatabaseWriteQueue() {
        setName(TAG);
    }

    public static DatabaseWriteQueue getInstance() {
        if (theInstance == null) {
            synchronized (DatabaseWriteQueue.class) {
                try {
                    if (theInstance == null) {
                        theInstance = new DatabaseWriteQueue();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return theInstance;
    }

    public void accept(DatabaseRecord databaseRecord) {
        this.queue.add(databaseRecord);
    }

    public synchronized void flushQueue() {
        try {
            LinkedList linkedList = new LinkedList();
            DatabaseRecord databaseRecordPoll = this.queue.poll();
            while (databaseRecordPoll != null) {
                linkedList.add(databaseRecordPoll);
                databaseRecordPoll = this.queue.poll();
            }
            if (!linkedList.isEmpty()) {
                Core.g.c(linkedList, AdkSettings.f27249k.g);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (Global.f27307a) {
            Utility.n("Database write queue running ...");
        }
        while (active.get()) {
            try {
                Thread.sleep(POLL_BATCH_TIME);
                flushQueue();
            } catch (Exception e2) {
                if (Global.f27307a) {
                    e2.toString();
                    Utility.g();
                    return;
                }
                return;
            }
        }
    }

    @Override // java.lang.Thread
    public void start() {
        if (active.get()) {
            return;
        }
        active.set(true);
        super.start();
    }

    public void stopThread() {
        active.set(false);
        synchronized (DatabaseWriteQueue.class) {
            theInstance = null;
        }
        if (isAlive()) {
            try {
                join(1000L);
            } catch (InterruptedException e2) {
                if (Global.f27307a) {
                    e2.toString();
                    Utility.g();
                }
            }
            if (isAlive() && Global.f27307a) {
                Utility.n("could not stop thread " + getName());
            }
        }
    }
}
