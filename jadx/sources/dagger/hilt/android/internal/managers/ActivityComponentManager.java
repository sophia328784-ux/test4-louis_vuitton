package dagger.hilt.android.internal.managers;

import android.app.Activity;
import android.app.Application;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import dagger.hilt.EntryPoints;
import dagger.hilt.android.components.ActivityComponent;
import dagger.hilt.android.internal.builders.ActivityComponentBuilder;
import dagger.hilt.internal.GeneratedComponentManager;
import dagger.hilt.internal.Preconditions;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
public class ActivityComponentManager implements GeneratedComponentManager<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile ActivityComponent f68501b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f68502c = new Object();
    public final Activity d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GeneratedComponentManager f68503e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SavedStateHandleHolder f68504f;

    public interface ActivityComponentBuilderEntryPoint {
        ActivityComponentBuilder a();
    }

    public ActivityComponentManager(Activity activity) {
        this.d = activity;
        this.f68503e = new ActivityRetainedComponentManager((ComponentActivity) activity);
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public final Object C() {
        if (this.f68501b == null) {
            synchronized (this.f68502c) {
                try {
                    if (this.f68501b == null) {
                        this.f68501b = b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f68501b;
    }

    public final void a() {
        SavedStateHandleHolder savedStateHandleHolder = this.f68504f;
        if (savedStateHandleHolder != null) {
            savedStateHandleHolder.f68515a = null;
        }
    }

    public final ActivityComponent b() {
        String str;
        Activity activity = this.d;
        if (activity.getApplication() instanceof GeneratedComponentManager) {
            ActivityComponentBuilder activityComponentBuilderA = ((ActivityComponentBuilderEntryPoint) EntryPoints.a(ActivityComponentBuilderEntryPoint.class, this.f68503e)).a();
            activityComponentBuilderA.a(activity);
            return activityComponentBuilderA.build();
        }
        if (Application.class.equals(activity.getApplication().getClass())) {
            str = "Did you forget to specify your Application's class name in your manifest's <application />'s android:name attribute?";
        } else {
            str = "Found: " + activity.getApplication().getClass();
        }
        throw new IllegalStateException("Hilt Activity must be attached to an @HiltAndroidApp Application. ".concat(str));
    }

    public final void c() {
        ActivityRetainedComponentManager activityRetainedComponentManager = (ActivityRetainedComponentManager) this.f68503e;
        SavedStateHandleHolder savedStateHandleHolder = ((ActivityRetainedComponentManager.ActivityRetainedComponentViewModel) new ViewModelProvider(activityRetainedComponentManager.f68505b, new ActivityRetainedComponentManager.AnonymousClass1(activityRetainedComponentManager.f68506c)).a(Reflection.f71922a.b(ActivityRetainedComponentManager.ActivityRetainedComponentViewModel.class))).f68510b;
        this.f68504f = savedStateHandleHolder;
        if (savedStateHandleHolder.f68515a == null) {
            CreationExtras defaultViewModelCreationExtras = ((ComponentActivity) this.d).getDefaultViewModelCreationExtras();
            Preconditions.a(savedStateHandleHolder.f68516b, "setExtras should only be called for an Activity that extends ComponentActivity", new Object[0]);
            savedStateHandleHolder.f68515a = defaultViewModelCreationExtras;
        }
    }
}
