package dagger.android;

import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.ContentProvider;
import defpackage.r81;
import defpackage.tr;
import defpackage.v7;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DaggerContentProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        ComponentCallbacks2 componentCallbacks2 = (Application) getContext().getApplicationContext();
        if (!(componentCallbacks2 instanceof HasAndroidInjector)) {
            v7.h(tr.h(componentCallbacks2.getClass().getCanonicalName(), " does not implement ", HasAndroidInjector.class.getCanonicalName()));
            return false;
        }
        HasAndroidInjector hasAndroidInjector = (HasAndroidInjector) componentCallbacks2;
        AndroidInjector androidInjectorA = hasAndroidInjector.a();
        Class<?> cls = hasAndroidInjector.getClass();
        if (androidInjectorA != null) {
            androidInjectorA.a();
            return true;
        }
        r81.d("%s.androidInjector() returned null".replace("%s", String.valueOf(cls.getCanonicalName())));
        return false;
    }
}
