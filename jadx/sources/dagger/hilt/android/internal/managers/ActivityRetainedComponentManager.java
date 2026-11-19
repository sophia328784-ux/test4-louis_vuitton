package dagger.hilt.android.internal.managers;

import android.content.Context;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import dagger.hilt.EntryPoints;
import dagger.hilt.android.ActivityRetainedLifecycle;
import dagger.hilt.android.EntryPointAccessors;
import dagger.hilt.android.components.ActivityRetainedComponent;
import dagger.hilt.android.internal.builders.ActivityRetainedComponentBuilder;
import dagger.hilt.android.internal.lifecycle.RetainedLifecycleImpl;
import dagger.hilt.internal.GeneratedComponentManager;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
final class ActivityRetainedComponentManager implements GeneratedComponentManager<ActivityRetainedComponent> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ComponentActivity f68505b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ComponentActivity f68506c;
    public volatile ActivityRetainedComponent d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f68507e = new Object();

    /* JADX INFO: renamed from: dagger.hilt.android.internal.managers.ActivityRetainedComponentManager$1, reason: invalid class name */
    class AnonymousClass1 implements ViewModelProvider.Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f68508a;

        public AnonymousClass1(Context context) {
            this.f68508a = context;
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public final ViewModel create(Class cls, CreationExtras creationExtras) {
            SavedStateHandleHolder savedStateHandleHolder = new SavedStateHandleHolder(creationExtras);
            ActivityRetainedComponentBuilder activityRetainedComponentBuilderS = ((ActivityRetainedComponentBuilderEntryPoint) EntryPointAccessors.a(this.f68508a, ActivityRetainedComponentBuilderEntryPoint.class)).s();
            activityRetainedComponentBuilderS.a(savedStateHandleHolder);
            return new ActivityRetainedComponentViewModel(activityRetainedComponentBuilderS.build(), savedStateHandleHolder);
        }
    }

    public interface ActivityRetainedComponentBuilderEntryPoint {
        ActivityRetainedComponentBuilder s();
    }

    public static final class ActivityRetainedComponentViewModel extends ViewModel {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ActivityRetainedComponent f68509a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SavedStateHandleHolder f68510b;

        public ActivityRetainedComponentViewModel(ActivityRetainedComponent activityRetainedComponent, SavedStateHandleHolder savedStateHandleHolder) {
            this.f68509a = activityRetainedComponent;
            this.f68510b = savedStateHandleHolder;
        }

        @Override // androidx.lifecycle.ViewModel
        public final void onCleared() {
            super.onCleared();
            ((RetainedLifecycleImpl) ((ActivityRetainedLifecycleEntryPoint) EntryPoints.a(ActivityRetainedLifecycleEntryPoint.class, this.f68509a)).b()).a();
        }
    }

    public interface ActivityRetainedLifecycleEntryPoint {
        ActivityRetainedLifecycle b();
    }

    public ActivityRetainedComponentManager(ComponentActivity componentActivity) {
        this.f68505b = componentActivity;
        this.f68506c = componentActivity;
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public final Object C() {
        if (this.d == null) {
            synchronized (this.f68507e) {
                try {
                    if (this.d == null) {
                        this.d = ((ActivityRetainedComponentViewModel) new ViewModelProvider(this.f68505b, new AnonymousClass1(this.f68506c)).a(Reflection.f71922a.b(ActivityRetainedComponentViewModel.class))).f68509a;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.d;
    }
}
