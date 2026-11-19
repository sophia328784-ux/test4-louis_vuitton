package androidx.media3.session;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import androidx.media3.common.util.BackgroundExecutor;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
final class AndroidAutoConnectionStateObserver {
    public static final Uri g = Uri.parse("content://androidx.car.app.connection");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f17225a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Runnable f17226b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f17227c;
    public final AndroidAutoChangeReceiver d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f17228e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f17229f;

    public final class AndroidAutoChangeReceiver extends BroadcastReceiver {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int f17230b = 0;

        public AndroidAutoChangeReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            AndroidAutoConnectionStateObserver androidAutoConnectionStateObserver = AndroidAutoConnectionStateObserver.this;
            androidAutoConnectionStateObserver.f17227c.execute(new a(androidAutoConnectionStateObserver, 2));
        }
    }

    public AndroidAutoConnectionStateObserver(Context context, Runnable runnable) {
        this.f17225a = context.getApplicationContext();
        this.f17226b = runnable;
        Executor executorA = BackgroundExecutor.a();
        this.f17227c = executorA;
        this.d = new AndroidAutoChangeReceiver();
        this.f17228e = new AtomicBoolean();
        this.f17229f = new AtomicBoolean();
        executorA.execute(new a(this, 1));
    }

    public final void a() {
        AtomicBoolean atomicBoolean = this.f17228e;
        boolean z = atomicBoolean.get();
        boolean z2 = false;
        try {
            Cursor cursorQuery = this.f17225a.getContentResolver().query(g, new String[]{"CarConnectionState"}, null, null, null);
            if (cursorQuery != null) {
                try {
                    int columnIndex = cursorQuery.getColumnIndex("CarConnectionState");
                    if (columnIndex != -1 && cursorQuery.moveToNext()) {
                        boolean z3 = cursorQuery.getInt(columnIndex) != 0;
                        cursorQuery.close();
                        z2 = z3;
                    } else {
                        cursorQuery.close();
                    }
                } catch (Throwable th) {
                    try {
                        cursorQuery.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
                }
            } else if (cursorQuery != null) {
                cursorQuery.close();
            }
        } catch (Exception unused) {
        }
        atomicBoolean.set(z2);
        if (z == z2 || this.f17229f.get()) {
            return;
        }
        this.f17226b.run();
    }
}
