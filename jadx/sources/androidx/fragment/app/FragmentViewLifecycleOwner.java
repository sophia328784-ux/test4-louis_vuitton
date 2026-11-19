package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.SavedStateViewModelFactory;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.et;

/* JADX INFO: loaded from: classes.dex */
class FragmentViewLifecycleOwner implements HasDefaultViewModelProviderFactory, SavedStateRegistryOwner, ViewModelStoreOwner {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Fragment f13355b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ViewModelStore f13356c;
    public final et d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ViewModelProvider.Factory f13357e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public LifecycleRegistry f13358f = null;
    public SavedStateRegistryController g = null;

    public FragmentViewLifecycleOwner(Fragment fragment, ViewModelStore viewModelStore, et etVar) {
        this.f13355b = fragment;
        this.f13356c = viewModelStore;
        this.d = etVar;
    }

    public final void a(Lifecycle.Event event) {
        this.f13358f.g(event);
    }

    public final void b() {
        if (this.f13358f == null) {
            this.f13358f = new LifecycleRegistry(this);
            SavedStateRegistryController.f19786c.getClass();
            SavedStateRegistryController savedStateRegistryControllerA = SavedStateRegistryController.Companion.a(this);
            this.g = savedStateRegistryControllerA;
            savedStateRegistryControllerA.f19787a.a();
            this.d.run();
        }
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    public final CreationExtras getDefaultViewModelCreationExtras() {
        Application application;
        Fragment fragment = this.f13355b;
        Context applicationContext = fragment.requireContext().getApplicationContext();
        while (true) {
            if (!(applicationContext instanceof ContextWrapper)) {
                application = null;
                break;
            }
            if (applicationContext instanceof Application) {
                application = (Application) applicationContext;
                break;
            }
            applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
        }
        MutableCreationExtras mutableCreationExtras = new MutableCreationExtras();
        if (application != null) {
            mutableCreationExtras.b(ViewModelProvider.AndroidViewModelFactory.f13532f, application);
        }
        mutableCreationExtras.b(SavedStateHandleSupport.f13505a, fragment);
        mutableCreationExtras.b(SavedStateHandleSupport.f13506b, this);
        if (fragment.getArguments() != null) {
            mutableCreationExtras.b(SavedStateHandleSupport.f13507c, fragment.getArguments());
        }
        return mutableCreationExtras;
    }

    @Override // androidx.lifecycle.HasDefaultViewModelProviderFactory
    /* JADX INFO: renamed from: getDefaultViewModelProviderFactory */
    public final ViewModelProvider.Factory getF13588e() {
        Application application;
        Fragment fragment = this.f13355b;
        ViewModelProvider.Factory defaultViewModelProviderFactory = fragment.getF13588e();
        if (!defaultViewModelProviderFactory.equals(fragment.mDefaultFactory)) {
            this.f13357e = defaultViewModelProviderFactory;
            return defaultViewModelProviderFactory;
        }
        if (this.f13357e == null) {
            Context applicationContext = fragment.requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    application = null;
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            this.f13357e = new SavedStateViewModelFactory(application, fragment, fragment.getArguments());
        }
        return this.f13357e;
    }

    @Override // androidx.lifecycle.LifecycleOwner
    /* JADX INFO: renamed from: getLifecycle */
    public final Lifecycle getD() {
        b();
        return this.f13358f;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    /* JADX INFO: renamed from: getSavedStateRegistry */
    public final SavedStateRegistry getF13586b() {
        b();
        return this.g.f19788b;
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    /* JADX INFO: renamed from: getViewModelStore */
    public final ViewModelStore getF13587c() {
        b();
        return this.f13356c;
    }
}
