package androidx.appcompat.app;

import android.app.LocaleManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.ActionMode;
import androidx.collection.ArraySet;
import androidx.collection.IndexBasedArrayIterator;
import androidx.core.app.AppLocalesStorageHelper;
import androidx.core.os.LocaleListCompat;
import defpackage.c7;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public abstract class AppCompatDelegate {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SerialExecutor f815b = new SerialExecutor(new ThreadPerTaskExecutor());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f816c = -100;
    public static LocaleListCompat d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static LocaleListCompat f817e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static Boolean f818f = null;
    public static boolean g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ArraySet f819h = new ArraySet();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Object f820i = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final Object f821j = new Object();

    public static class Api24Impl {
        public static LocaleList a(String str) {
            return LocaleList.forLanguageTags(str);
        }
    }

    public static class Api33Impl {
        public static LocaleList a(Object obj) {
            return ((LocaleManager) obj).getApplicationLocales();
        }

        public static void b(Object obj, LocaleList localeList) {
            ((LocaleManager) obj).setApplicationLocales(localeList);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface NightMode {
    }

    public static class SerialExecutor implements Executor {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object f822b = new Object();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayDeque f823c = new ArrayDeque();
        public final Executor d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Runnable f824e;

        public SerialExecutor(Executor executor) {
            this.d = executor;
        }

        @Override // java.util.concurrent.Executor
        public final void execute(final Runnable runnable) {
            synchronized (this.f822b) {
                try {
                    this.f823c.add(new Runnable() { // from class: androidx.appcompat.app.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            AppCompatDelegate.SerialExecutor serialExecutor = this.f886b;
                            try {
                                runnable.run();
                            } finally {
                                serialExecutor.h();
                            }
                        }
                    });
                    if (this.f824e == null) {
                        h();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void h() {
            synchronized (this.f822b) {
                try {
                    Runnable runnable = (Runnable) this.f823c.poll();
                    this.f824e = runnable;
                    if (runnable != null) {
                        ((ThreadPerTaskExecutor) this.d).execute(runnable);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static class ThreadPerTaskExecutor implements Executor {
        @Override // java.util.concurrent.Executor
        public final void execute(Runnable runnable) {
            new Thread(runnable).start();
        }
    }

    public static void c() {
        LocaleListCompat localeListCompat;
        Iterator it = f819h.iterator();
        while (true) {
            IndexBasedArrayIterator indexBasedArrayIterator = (IndexBasedArrayIterator) it;
            if (!indexBasedArrayIterator.hasNext()) {
                return;
            }
            AppCompatDelegate appCompatDelegate = (AppCompatDelegate) ((WeakReference) indexBasedArrayIterator.next()).get();
            if (appCompatDelegate != null) {
                AppCompatDelegateImpl appCompatDelegateImpl = (AppCompatDelegateImpl) appCompatDelegate;
                Context context = appCompatDelegateImpl.l;
                if (f(context) && (localeListCompat = d) != null && !localeListCompat.equals(f817e)) {
                    f815b.execute(new c7(context, 0));
                }
                appCompatDelegateImpl.r(true, true);
            }
        }
    }

    public static Object d() {
        Context context;
        Iterator it = f819h.iterator();
        while (true) {
            IndexBasedArrayIterator indexBasedArrayIterator = (IndexBasedArrayIterator) it;
            if (!indexBasedArrayIterator.hasNext()) {
                return null;
            }
            AppCompatDelegate appCompatDelegate = (AppCompatDelegate) ((WeakReference) indexBasedArrayIterator.next()).get();
            if (appCompatDelegate != null && (context = ((AppCompatDelegateImpl) appCompatDelegate).l) != null) {
                return context.getSystemService("locale");
            }
        }
    }

    public static boolean f(Context context) {
        if (f818f == null) {
            try {
                int i2 = AppLocalesMetadataHolderService.f862b;
                Bundle bundle = context.getPackageManager().getServiceInfo(new ComponentName(context, (Class<?>) AppLocalesMetadataHolderService.class), AppLocalesMetadataHolderService.Api24Impl.a() | 128).metaData;
                if (bundle != null) {
                    f818f = Boolean.valueOf(bundle.getBoolean("autoStoreLocales"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
                f818f = Boolean.FALSE;
            }
        }
        return f818f.booleanValue();
    }

    public static void i(AppCompatDelegate appCompatDelegate) {
        synchronized (f820i) {
            try {
                Iterator it = f819h.iterator();
                while (true) {
                    IndexBasedArrayIterator indexBasedArrayIterator = (IndexBasedArrayIterator) it;
                    if (indexBasedArrayIterator.hasNext()) {
                        AppCompatDelegate appCompatDelegate2 = (AppCompatDelegate) ((WeakReference) indexBasedArrayIterator.next()).get();
                        if (appCompatDelegate2 == appCompatDelegate || appCompatDelegate2 == null) {
                            indexBasedArrayIterator.remove();
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void k(LocaleListCompat localeListCompat) {
        Objects.requireNonNull(localeListCompat);
        if (Build.VERSION.SDK_INT >= 33) {
            Object objD = d();
            if (objD != null) {
                Api33Impl.b(objD, Api24Impl.a(localeListCompat.e()));
                return;
            }
            return;
        }
        if (localeListCompat.equals(d)) {
            return;
        }
        synchronized (f820i) {
            d = localeListCompat;
            c();
        }
    }

    public static void q(final Context context) {
        if (f(context)) {
            if (Build.VERSION.SDK_INT >= 33) {
                if (g) {
                    return;
                }
                f815b.execute(new Runnable() { // from class: androidx.appcompat.app.a
                    /* JADX WARN: Code duplicated, block: B:13:0x0032  */
                    @Override // java.lang.Runnable
                    public final void run() {
                        LocaleListCompat localeListCompatF;
                        int i2 = Build.VERSION.SDK_INT;
                        if (i2 >= 33) {
                            AppCompatDelegate.SerialExecutor serialExecutor = AppCompatDelegate.f815b;
                            Context context2 = context;
                            ComponentName componentName = new ComponentName(context2, "androidx.appcompat.app.AppLocalesMetadataHolderService");
                            if (context2.getPackageManager().getComponentEnabledSetting(componentName) != 1) {
                                if (i2 >= 33) {
                                    Object objD = AppCompatDelegate.d();
                                    if (objD != null) {
                                        localeListCompatF = LocaleListCompat.f(AppCompatDelegate.Api33Impl.a(objD));
                                    } else {
                                        localeListCompatF = LocaleListCompat.f12082b;
                                    }
                                } else {
                                    localeListCompatF = AppCompatDelegate.d;
                                    if (localeListCompatF == null) {
                                        localeListCompatF = LocaleListCompat.f12082b;
                                    }
                                }
                                if (localeListCompatF.c()) {
                                    String strB = AppLocalesStorageHelper.b(context2);
                                    Object systemService = context2.getSystemService("locale");
                                    if (systemService != null) {
                                        AppCompatDelegate.Api33Impl.b(systemService, AppCompatDelegate.Api24Impl.a(strB));
                                    }
                                }
                                context2.getPackageManager().setComponentEnabledSetting(componentName, 1, 1);
                            }
                        }
                        AppCompatDelegate.g = true;
                    }
                });
                return;
            }
            synchronized (f821j) {
                try {
                    LocaleListCompat localeListCompat = d;
                    if (localeListCompat == null) {
                        if (f817e == null) {
                            f817e = LocaleListCompat.a(AppLocalesStorageHelper.b(context));
                        }
                        if (f817e.c()) {
                        } else {
                            d = f817e;
                        }
                    } else if (!localeListCompat.equals(f817e)) {
                        LocaleListCompat localeListCompat2 = d;
                        f817e = localeListCompat2;
                        AppLocalesStorageHelper.a(context, localeListCompat2.e());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public abstract void e();

    public abstract void g();

    public abstract void h();

    public abstract boolean j(int i2);

    public abstract void l(int i2);

    public abstract void m(View view);

    public abstract void n(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void o(CharSequence charSequence);

    public abstract ActionMode p(ActionMode.Callback callback);
}
