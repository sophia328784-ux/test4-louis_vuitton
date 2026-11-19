package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/lifecycle/ProcessLifecycleInitializer;", "Landroidx/startup/Initializer;", "Landroidx/lifecycle/LifecycleOwner;", "<init>", "()V", "lifecycle-process"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ProcessLifecycleInitializer implements Initializer<LifecycleOwner> {
    @Override // androidx.startup.Initializer
    public final List a() {
        return EmptyList.f71768b;
    }

    @Override // androidx.startup.Initializer
    public final Object b(Context context) {
        context.getClass();
        AppInitializer appInitializerC = AppInitializer.c(context);
        appInitializerC.getClass();
        if (!appInitializerC.f19924b.contains(ProcessLifecycleInitializer.class)) {
            md.k("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml");
            return null;
        }
        if (!LifecycleDispatcher.f13447a.getAndSet(true)) {
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            ((Application) applicationContext).registerActivityLifecycleCallbacks(new LifecycleDispatcher.DispatcherActivityCallback());
        }
        ProcessLifecycleOwner.f13468i.getClass();
        final ProcessLifecycleOwner processLifecycleOwner = ProcessLifecycleOwner.f13469j;
        processLifecycleOwner.getClass();
        processLifecycleOwner.f13473f = new Handler();
        processLifecycleOwner.g.g(Lifecycle.Event.ON_CREATE);
        Context applicationContext2 = context.getApplicationContext();
        applicationContext2.getClass();
        ((Application) applicationContext2).registerActivityLifecycleCallbacks(new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner$attach$1
            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
                activity.getClass();
            }

            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(Activity activity) {
                activity.getClass();
                ProcessLifecycleOwner processLifecycleOwner2 = processLifecycleOwner;
                int i2 = processLifecycleOwner2.f13471c - 1;
                processLifecycleOwner2.f13471c = i2;
                if (i2 == 0) {
                    Handler handler = processLifecycleOwner2.f13473f;
                    handler.getClass();
                    handler.postDelayed(processLifecycleOwner2.f13474h, 700L);
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPreCreated(Activity activity, Bundle savedInstanceState) {
                activity.getClass();
                final ProcessLifecycleOwner processLifecycleOwner2 = processLifecycleOwner;
                EmptyActivityLifecycleCallbacks emptyActivityLifecycleCallbacks = new EmptyActivityLifecycleCallbacks() { // from class: androidx.lifecycle.ProcessLifecycleOwner$attach$1$onActivityPreCreated$1
                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostResumed(Activity activity2) {
                        activity2.getClass();
                        ProcessLifecycleOwner processLifecycleOwner3 = processLifecycleOwner2;
                        int i2 = processLifecycleOwner3.f13471c + 1;
                        processLifecycleOwner3.f13471c = i2;
                        if (i2 == 1) {
                            if (processLifecycleOwner3.d) {
                                processLifecycleOwner3.g.g(Lifecycle.Event.ON_RESUME);
                                processLifecycleOwner3.d = false;
                            } else {
                                Handler handler = processLifecycleOwner3.f13473f;
                                handler.getClass();
                                handler.removeCallbacks(processLifecycleOwner3.f13474h);
                            }
                        }
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public void onActivityPostStarted(Activity activity2) {
                        activity2.getClass();
                        ProcessLifecycleOwner processLifecycleOwner3 = processLifecycleOwner2;
                        int i2 = processLifecycleOwner3.f13470b + 1;
                        processLifecycleOwner3.f13470b = i2;
                        if (i2 == 1 && processLifecycleOwner3.f13472e) {
                            processLifecycleOwner3.g.g(Lifecycle.Event.ON_START);
                            processLifecycleOwner3.f13472e = false;
                        }
                    }
                };
                activity.getClass();
                activity.registerActivityLifecycleCallbacks(emptyActivityLifecycleCallbacks);
            }

            @Override // androidx.lifecycle.EmptyActivityLifecycleCallbacks, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(Activity activity) {
                activity.getClass();
                ProcessLifecycleOwner processLifecycleOwner2 = processLifecycleOwner;
                int i2 = processLifecycleOwner2.f13470b - 1;
                processLifecycleOwner2.f13470b = i2;
                if (i2 == 0 && processLifecycleOwner2.d) {
                    processLifecycleOwner2.g.g(Lifecycle.Event.ON_STOP);
                    processLifecycleOwner2.f13472e = true;
                }
            }
        });
        return processLifecycleOwner;
    }
}
