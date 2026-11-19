package dagger.hilt.android.internal.lifecycle;

import androidx.activity.ComponentActivity;
import androidx.lifecycle.SavedStateHandleSupport;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import dagger.Module;
import dagger.hilt.EntryPoints;
import dagger.hilt.android.components.ViewModelComponent;
import dagger.hilt.android.internal.builders.ViewModelComponentBuilder;
import dagger.internal.LazyClassKeyMap;
import defpackage.md;
import defpackage.n00;
import java.io.Closeable;
import java.util.Map;
import javax.inject.Provider;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final class HiltViewModelFactory implements ViewModelProvider.Factory {
    public static final CreationExtras.Key d = new AnonymousClass1();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map f68496a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ViewModelProvider.Factory f68497b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ViewModelProvider.Factory f68498c;

    /* JADX INFO: renamed from: dagger.hilt.android.internal.lifecycle.HiltViewModelFactory$1, reason: invalid class name */
    public class AnonymousClass1 implements CreationExtras.Key<Function1<Object, ViewModel>> {
    }

    /* JADX INFO: renamed from: dagger.hilt.android.internal.lifecycle.HiltViewModelFactory$2, reason: invalid class name */
    public class AnonymousClass2 implements ViewModelProvider.Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ViewModelComponentBuilder f68499a;

        public AnonymousClass2(ViewModelComponentBuilder viewModelComponentBuilder) {
            this.f68499a = viewModelComponentBuilder;
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public final ViewModel create(Class cls, CreationExtras creationExtras) {
            ViewModel viewModel;
            final RetainedLifecycleImpl retainedLifecycleImpl = new RetainedLifecycleImpl();
            ViewModelComponentBuilder viewModelComponentBuilderA = this.f68499a.a(SavedStateHandleSupport.a(creationExtras));
            viewModelComponentBuilderA.b(retainedLifecycleImpl);
            ViewModelComponent viewModelComponentBuild = viewModelComponentBuilderA.build();
            Provider provider = (Provider) ((ViewModelFactoriesEntryPoint) EntryPoints.a(ViewModelFactoriesEntryPoint.class, viewModelComponentBuild)).a().get(cls);
            Function1 function1 = (Function1) creationExtras.a(HiltViewModelFactory.d);
            Object obj = ((ViewModelFactoriesEntryPoint) EntryPoints.a(ViewModelFactoriesEntryPoint.class, viewModelComponentBuild)).b().get(cls);
            if (obj == null) {
                if (function1 != null) {
                    md.k(n00.p(cls, new StringBuilder("Found creation callback but class "), " does not have an assisted factory specified in @HiltViewModel."));
                    return null;
                }
                if (provider == null) {
                    md.k(n00.p(cls, new StringBuilder("Expected the @HiltViewModel-annotated class "), " to be available in the multi-binding of @HiltViewModelMap but none was found."));
                    return null;
                }
                viewModel = (ViewModel) provider.get();
            } else {
                if (provider != null) {
                    md.h(n00.p(cls, new StringBuilder("Found the @HiltViewModel-annotated class "), " in both the multi-bindings of @HiltViewModelMap and @HiltViewModelAssistedMap."));
                    return null;
                }
                if (function1 == null) {
                    md.k(n00.p(cls, new StringBuilder("Found @HiltViewModel-annotated class "), " using @AssistedInject but no creation callback was provided in CreationExtras."));
                    return null;
                }
                viewModel = (ViewModel) function1.invoke(obj);
            }
            viewModel.addCloseable(new Closeable() { // from class: k10
                @Override // java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                    retainedLifecycleImpl.a();
                }
            });
            return viewModel;
        }
    }

    public interface ActivityCreatorEntryPoint {
        LazyClassKeyMap k();

        ViewModelComponentBuilder p0();
    }

    public interface ViewModelFactoriesEntryPoint {
        LazyClassKeyMap a();

        LazyClassKeyMap b();
    }

    @Module
    public interface ViewModelModule {
    }

    public HiltViewModelFactory(Map<Class<?>, Boolean> map, ViewModelProvider.Factory factory, ViewModelComponentBuilder viewModelComponentBuilder) {
        this.f68496a = map;
        this.f68497b = factory;
        this.f68498c = new AnonymousClass2(viewModelComponentBuilder);
    }

    public static HiltViewModelFactory a(ComponentActivity componentActivity, ViewModelProvider.Factory factory) {
        ActivityCreatorEntryPoint activityCreatorEntryPoint = (ActivityCreatorEntryPoint) EntryPoints.a(ActivityCreatorEntryPoint.class, componentActivity);
        return new HiltViewModelFactory(activityCreatorEntryPoint.k(), factory, activityCreatorEntryPoint.p0());
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public final ViewModel create(Class cls, CreationExtras creationExtras) {
        return this.f68496a.containsKey(cls) ? ((AnonymousClass2) this.f68498c).create(cls, creationExtras) : this.f68497b.create(cls, creationExtras);
    }

    @Override // androidx.lifecycle.ViewModelProvider.Factory
    public final ViewModel create(Class cls) {
        if (!this.f68496a.containsKey(cls)) {
            return this.f68497b.create(cls);
        }
        this.f68498c.create(cls);
        throw null;
    }
}
