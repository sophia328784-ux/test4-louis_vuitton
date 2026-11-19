package coil3.util;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import coil3.Extras;
import coil3.ImageLoaders_androidKt;
import coil3.RealImageLoader;
import coil3.memory.MemoryCache;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001:\u0003\u0006\u0007\bB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\t"}, d2 = {"Lcoil3/util/AndroidSystemCallbacks;", "Lcoil3/util/SystemCallbacks;", "Lcoil3/RealImageLoader;", "strongImageLoaderReference", "<init>", "(Lcoil3/RealImageLoader;)V", "ActivityCallbacks", "ComponentCallbacks", "Companion", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class AndroidSystemCallbacks implements SystemCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WeakReference f21716a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ActivityCallbacks f21717b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ComponentCallbacks f21718c = new ComponentCallbacks();
    public Context d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f21719e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcoil3/util/AndroidSystemCallbacks$ActivityCallbacks;", "Lcoil3/util/DefaultActivityLifecycleCallbacks;", "Lcoil3/RealImageLoader;", "strongImageLoaderReference", "<init>", "(Lcoil3/util/AndroidSystemCallbacks;Lcoil3/RealImageLoader;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public final class ActivityCallbacks implements DefaultActivityLifecycleCallbacks {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final double f21720b;

        public ActivityCallbacks(RealImageLoader realImageLoader) {
            RealImageLoader.Options options = realImageLoader.f21235a;
            Extras.Key key = ImageLoaders_androidKt.f21231a;
            Extras extras = options.f21240b.n;
            Extras.Key key2 = ImageLoaders_androidKt.d;
            Object obj = extras.f21218a.get(key2);
            this.f21720b = ((Number) (obj == null ? key2.f21221a : obj)).doubleValue();
        }

        public final void a(Context context) {
            double d = this.f21720b;
            if (d == 1.0d) {
                return;
            }
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
            AndroidSystemCallbacks androidSystemCallbacks = AndroidSystemCallbacks.this;
            RealImageLoader realImageLoader = (RealImageLoader) androidSystemCallbacks.f21716a.get();
            if (realImageLoader == null) {
                androidSystemCallbacks.b();
                return;
            }
            MemoryCache memoryCacheE = realImageLoader.e();
            if (memoryCacheE != null) {
                memoryCacheE.b((long) (d * memoryCacheE.d()));
                Logger logger = realImageLoader.f21235a.f21244h;
                if (logger != null) {
                    if (logger.a().compareTo(Logger.Level.Verbose) <= 0) {
                        memoryCacheE.e();
                        memoryCacheE.toString();
                        logger.b();
                    }
                }
            }
        }

        public final void b(Context context) {
            if (this.f21720b == 1.0d) {
                return;
            }
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            ((Application) applicationContext).unregisterActivityLifecycleCallbacks(this);
            AndroidSystemCallbacks androidSystemCallbacks = AndroidSystemCallbacks.this;
            RealImageLoader realImageLoader = (RealImageLoader) androidSystemCallbacks.f21716a.get();
            if (realImageLoader == null) {
                androidSystemCallbacks.b();
                return;
            }
            MemoryCache memoryCacheE = realImageLoader.e();
            if (memoryCacheE != null) {
                memoryCacheE.b(memoryCacheE.d());
                Logger logger = realImageLoader.f21235a.f21244h;
                if (logger != null) {
                    if (logger.a().compareTo(Logger.Level.Verbose) <= 0) {
                        memoryCacheE.e();
                        memoryCacheE.toString();
                        logger.b();
                    }
                }
            }
        }

        @Override // coil3.util.DefaultActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            b(activity);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcoil3/util/AndroidSystemCallbacks$Companion;", "", "", "TAG", "Ljava/lang/String;", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcoil3/util/AndroidSystemCallbacks$ComponentCallbacks;", "Landroid/content/ComponentCallbacks2;", "<init>", "(Lcoil3/util/AndroidSystemCallbacks;)V", "io.coil-kt.coil3:coil-core"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public final class ComponentCallbacks implements ComponentCallbacks2 {
        public ComponentCallbacks() {
        }

        @Override // android.content.ComponentCallbacks
        public final void onConfigurationChanged(Configuration configuration) {
            AndroidSystemCallbacks androidSystemCallbacks = AndroidSystemCallbacks.this;
            synchronized (androidSystemCallbacks) {
                if (((RealImageLoader) androidSystemCallbacks.f21716a.get()) == null) {
                    androidSystemCallbacks.b();
                }
            }
        }

        @Override // android.content.ComponentCallbacks
        public final void onLowMemory() {
            onTrimMemory(80);
        }

        @Override // android.content.ComponentCallbacks2
        public final void onTrimMemory(int i2) {
            MemoryCache memoryCacheE;
            AndroidSystemCallbacks androidSystemCallbacks = AndroidSystemCallbacks.this;
            synchronized (androidSystemCallbacks) {
                try {
                    RealImageLoader realImageLoader = (RealImageLoader) androidSystemCallbacks.f21716a.get();
                    if (realImageLoader != null) {
                        Logger logger = realImageLoader.f21235a.f21244h;
                        if (logger != null) {
                            if (logger.a().compareTo(Logger.Level.Verbose) <= 0) {
                                logger.b();
                            }
                        }
                        if (i2 >= 40) {
                            MemoryCache memoryCacheE2 = realImageLoader.e();
                            if (memoryCacheE2 != null) {
                                memoryCacheE2.clear();
                            }
                        } else if (i2 >= 20) {
                            androidSystemCallbacks.f21717b.a(realImageLoader.f21235a.f21239a);
                        } else if (i2 >= 10 && (memoryCacheE = realImageLoader.e()) != null) {
                            memoryCacheE.g(memoryCacheE.getSize() / 2);
                        }
                    } else {
                        androidSystemCallbacks.b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    static {
        new Companion(null);
    }

    public AndroidSystemCallbacks(RealImageLoader realImageLoader) {
        this.f21716a = new WeakReference(realImageLoader);
        this.f21717b = new ActivityCallbacks(realImageLoader);
    }

    @Override // coil3.util.SystemCallbacks
    public final synchronized void a() {
        try {
            RealImageLoader realImageLoader = (RealImageLoader) this.f21716a.get();
            if (realImageLoader == null) {
                b();
            } else if (this.d == null) {
                Context context = realImageLoader.f21235a.f21239a;
                this.d = context;
                context.registerComponentCallbacks(this.f21718c);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b() {
        try {
            if (this.f21719e) {
                return;
            }
            this.f21719e = true;
            Context context = this.d;
            if (context != null) {
                this.f21717b.b(context);
                context.unregisterComponentCallbacks(this.f21718c);
            }
            this.f21716a.clear();
        } catch (Throwable th) {
            throw th;
        }
    }
}
