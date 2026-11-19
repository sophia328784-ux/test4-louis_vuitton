package androidx.browser.customtabs;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.support.customtabs.ICustomTabsService;
import defpackage.md;

/* JADX INFO: loaded from: classes.dex */
public abstract class CustomTabsServiceConnection implements ServiceConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Context f1382b;

    /* JADX INFO: renamed from: androidx.browser.customtabs.CustomTabsServiceConnection$1, reason: invalid class name */
    class AnonymousClass1 extends CustomTabsClient {
    }

    public abstract void a(ComponentName componentName, CustomTabsClient customTabsClient);

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (this.f1382b != null) {
            a(componentName, new AnonymousClass1(ICustomTabsService.Stub.E2(iBinder)));
        } else {
            md.k("Custom Tabs Service connected before an applicationcontext has been provided.");
        }
    }
}
