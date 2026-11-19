package androidx.lifecycle;

import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.internal.JvmViewModelProviders;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.md;
import defpackage.mt;
import java.lang.reflect.Constructor;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\t\b\u0016¢\u0006\u0004\b\u0003\u0010\u0004B\u001b\b\u0016\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0003\u0010\tB%\b\u0017\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0003\u0010\f¨\u0006\r"}, d2 = {"Landroidx/lifecycle/SavedStateViewModelFactory;", "Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "<init>", "()V", "Landroid/app/Application;", "application", "Landroidx/savedstate/SavedStateRegistryOwner;", "owner", "(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;)V", "Landroid/os/Bundle;", "defaultArgs", "(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V", "lifecycle-viewmodel-savedstate"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SavedStateViewModelFactory extends ViewModelProvider.OnRequeryFactory implements ViewModelProvider.Factory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Application f13512a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ViewModelProvider.AndroidViewModelFactory f13513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Bundle f13514c;
    public final Lifecycle d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final SavedStateRegistry f13515e;

    public SavedStateViewModelFactory(Application application, SavedStateRegistryOwner savedStateRegistryOwner, Bundle bundle) {
        ViewModelProvider.AndroidViewModelFactory androidViewModelFactory;
        savedStateRegistryOwner.getClass();
        this.f13515e = savedStateRegistryOwner.getF13586b();
        this.d = savedStateRegistryOwner.getD();
        this.f13514c = bundle;
        this.f13512a = application;
        if (application != null) {
            ViewModelProvider.AndroidViewModelFactory.d.getClass();
            if (ViewModelProvider.AndroidViewModelFactory.f13531e == null) {
                ViewModelProvider.AndroidViewModelFactory.f13531e = new ViewModelProvider.AndroidViewModelFactory(application);
            }
            androidViewModelFactory = ViewModelProvider.AndroidViewModelFactory.f13531e;
            androidViewModelFactory.getClass();
        } else {
            androidViewModelFactory = new ViewModelProvider.AndroidViewModelFactory();
        }
        this.f13513b = androidViewModelFactory;
    }

    @Override // androidx.lifecycle.ViewModelProvider.OnRequeryFactory
    public final void a(ViewModel viewModel) {
        viewModel.getClass();
        Lifecycle lifecycle = this.d;
        if (lifecycle != null) {
            SavedStateRegistry savedStateRegistry = this.f13515e;
            savedStateRegistry.getClass();
            LegacySavedStateHandleController.a(viewModel, savedStateRegistry, lifecycle);
        }
    }

    public final ViewModel b(Class cls, String str) {
        cls.getClass();
        Lifecycle lifecycle = this.d;
        if (lifecycle == null) {
            mt.i("SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras).");
            return null;
        }
        boolean zIsAssignableFrom = AndroidViewModel.class.isAssignableFrom(cls);
        Application application = this.f13512a;
        Constructor constructorA = (!zIsAssignableFrom || application == null) ? SavedStateViewModelFactory_androidKt.a(SavedStateViewModelFactory_androidKt.f13517b, cls) : SavedStateViewModelFactory_androidKt.a(SavedStateViewModelFactory_androidKt.f13516a, cls);
        if (constructorA == null) {
            if (application != null) {
                return this.f13513b.create(cls);
            }
            ViewModelProvider.NewInstanceFactory.f13534a.getClass();
            if (ViewModelProvider.NewInstanceFactory.f13535b == null) {
                ViewModelProvider.NewInstanceFactory.f13535b = new ViewModelProvider.NewInstanceFactory();
            }
            ViewModelProvider.NewInstanceFactory.f13535b.getClass();
            return JvmViewModelProviders.a(cls);
        }
        SavedStateRegistry savedStateRegistry = this.f13515e;
        savedStateRegistry.getClass();
        Bundle bundleA = savedStateRegistry.a(str);
        SavedStateHandle.f13499c.getClass();
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, SavedStateHandle.Companion.a(bundleA, this.f13514c));
        savedStateHandleController.c(lifecycle, savedStateRegistry);
        LegacySavedStateHandleController.b(lifecycle, savedStateRegistry);
        SavedStateHandle savedStateHandle = savedStateHandleController.f13504c;
        ViewModel viewModelB = (!zIsAssignableFrom || application == null) ? SavedStateViewModelFactory_androidKt.b(cls, constructorA, savedStateHandle) : SavedStateViewModelFactory_androidKt.b(cls, constructorA, application, savedStateHandle);
        viewModelB.addCloseable("androidx.lifecycle.savedstate.vm.tag", savedStateHandleController);
        return viewModelB;
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public final ViewModel create(Class cls, CreationExtras creationExtras) {
        creationExtras.getClass();
        String str = (String) creationExtras.a(ViewModelProvider.f13529c);
        if (str == null) {
            md.k("VIEW_MODEL_KEY must always be provided by ViewModelProvider");
            return null;
        }
        if (creationExtras.a(SavedStateHandleSupport.f13505a) == null || creationExtras.a(SavedStateHandleSupport.f13506b) == null) {
            if (this.d != null) {
                return b(cls, str);
            }
            md.k("SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel.");
            return null;
        }
        Application application = (Application) creationExtras.a(ViewModelProvider.AndroidViewModelFactory.f13532f);
        boolean zIsAssignableFrom = AndroidViewModel.class.isAssignableFrom(cls);
        Constructor constructorA = (!zIsAssignableFrom || application == null) ? SavedStateViewModelFactory_androidKt.a(SavedStateViewModelFactory_androidKt.f13517b, cls) : SavedStateViewModelFactory_androidKt.a(SavedStateViewModelFactory_androidKt.f13516a, cls);
        if (constructorA == null) {
            return this.f13513b.create(cls, creationExtras);
        }
        return (!zIsAssignableFrom || application == null) ? SavedStateViewModelFactory_androidKt.b(cls, constructorA, SavedStateHandleSupport.a(creationExtras)) : SavedStateViewModelFactory_androidKt.b(cls, constructorA, application, SavedStateHandleSupport.a(creationExtras));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SavedStateViewModelFactory(Application application, SavedStateRegistryOwner savedStateRegistryOwner) {
        this(application, savedStateRegistryOwner, null);
        savedStateRegistryOwner.getClass();
    }

    public SavedStateViewModelFactory() {
        this.f13513b = new ViewModelProvider.AndroidViewModelFactory();
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public final ViewModel create(KClass kClass, CreationExtras creationExtras) {
        kClass.getClass();
        return create(JvmClassMappingKt.b(kClass), creationExtras);
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public final ViewModel create(Class cls) {
        cls.getClass();
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return b(cls, canonicalName);
        }
        md.n("Local and anonymous classes can not be ViewModels");
        return null;
    }
}
