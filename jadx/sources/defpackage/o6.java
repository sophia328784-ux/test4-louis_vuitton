package defpackage;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.profileinstaller.ProfileInstallerInitializer;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o6 implements Choreographer.FrameCallback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76707c;

    public /* synthetic */ o6(ProfileInstallerInitializer profileInstallerInitializer, Context context) {
        this.f76706b = 2;
        this.f76707c = context;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j2) {
        int i2 = this.f76706b;
        Object obj = this.f76707c;
        switch (i2) {
            case 0:
                ((Runnable) obj).run();
                break;
            case 1:
                ((Runnable) obj).run();
                break;
            default:
                Handler.createAsync(Looper.getMainLooper()).postDelayed(new c7((Context) obj, 1), new Random().nextInt(Math.max(1000, 1)) + 5000);
                break;
        }
    }

    public /* synthetic */ o6(Runnable runnable, int i2) {
        this.f76706b = i2;
        this.f76707c = runnable;
    }
}
