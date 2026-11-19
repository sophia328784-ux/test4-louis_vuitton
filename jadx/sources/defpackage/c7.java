package defpackage;

import android.content.Context;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.profileinstaller.ProfileInstaller;
import com.batch.android.v0.l;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c7 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f21084c;

    public /* synthetic */ c7(Context context, int i2) {
        this.f21083b = i2;
        this.f21084c = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f21083b;
        Context context = this.f21084c;
        switch (i2) {
            case 0:
                AppCompatDelegate.q(context);
                break;
            case 1:
                new ThreadPoolExecutor(0, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue()).execute(new c7(context, 2));
                break;
            case 2:
                ProfileInstaller.b(context, new l8(1), ProfileInstaller.f19114a, false);
                break;
            default:
                l.g(context);
                break;
        }
    }
}
