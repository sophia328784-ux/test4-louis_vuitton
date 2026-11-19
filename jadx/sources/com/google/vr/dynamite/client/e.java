package com.google.vr.dynamite.client;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import defpackage.az;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: classes2.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f35678a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ILoadedInstanceCreator f35679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f f35680c;

    public e(f fVar) {
        this.f35680c = fVar;
    }

    public static IBinder c(ClassLoader classLoader) {
        try {
            return (IBinder) classLoader.loadClass("com.google.vr.dynamite.LoadedInstanceCreator").getDeclaredConstructor(null).newInstance(null);
        } catch (ClassNotFoundException e2) {
            az.s("Unable to find dynamic class ".concat("com.google.vr.dynamite.LoadedInstanceCreator"), e2);
            return null;
        } catch (IllegalAccessException e3) {
            az.s("Unable to call the default constructor of ".concat("com.google.vr.dynamite.LoadedInstanceCreator"), e3);
            return null;
        } catch (InstantiationException e4) {
            az.s("Unable to instantiate the remote class ".concat("com.google.vr.dynamite.LoadedInstanceCreator"), e4);
            return null;
        } catch (NoSuchMethodException e5) {
            az.s("No constructor for dynamic class ".concat("com.google.vr.dynamite.LoadedInstanceCreator"), e5);
            return null;
        } catch (InvocationTargetException e6) {
            az.s("Unable to invoke constructor of dynamic class ".concat("com.google.vr.dynamite.LoadedInstanceCreator"), e6);
            return null;
        }
    }

    public final synchronized ILoadedInstanceCreator a(Context context) {
        ILoadedInstanceCreator aVar;
        try {
            if (this.f35679b == null) {
                IBinder iBinderC = c(b(context).getClassLoader());
                if (iBinderC == null) {
                    aVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = iBinderC.queryLocalInterface("com.google.vr.dynamite.client.ILoadedInstanceCreator");
                    aVar = iInterfaceQueryLocalInterface instanceof ILoadedInstanceCreator ? (ILoadedInstanceCreator) iInterfaceQueryLocalInterface : new a(iBinderC, "com.google.vr.dynamite.client.ILoadedInstanceCreator");
                }
                this.f35679b = aVar;
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f35679b;
    }

    public final synchronized Context b(Context context) {
        if (this.f35678a == null) {
            try {
                this.f35678a = context.createPackageContext(this.f35680c.f35681a, 3);
            } catch (PackageManager.NameNotFoundException unused) {
                throw new d();
            }
        }
        return this.f35678a;
    }
}
