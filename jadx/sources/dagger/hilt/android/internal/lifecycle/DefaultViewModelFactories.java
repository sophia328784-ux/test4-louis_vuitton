package dagger.hilt.android.internal.lifecycle;

import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import dagger.Module;
import dagger.hilt.EntryPoints;
import dagger.hilt.android.internal.builders.ViewModelComponentBuilder;
import dagger.internal.LazyClassKeyMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DefaultViewModelFactories {

    public interface ActivityEntryPoint {
        InternalFactoryFactory a();
    }

    @Module
    public interface ActivityModule {
    }

    public interface FragmentEntryPoint {
        InternalFactoryFactory a();
    }

    public static final class InternalFactoryFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LazyClassKeyMap f68494a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ViewModelComponentBuilder f68495b;

        public InternalFactoryFactory(LazyClassKeyMap lazyClassKeyMap, ViewModelComponentBuilder viewModelComponentBuilder) {
            this.f68494a = lazyClassKeyMap;
            this.f68495b = viewModelComponentBuilder;
        }
    }

    public static HiltViewModelFactory a(AppCompatActivity appCompatActivity, ViewModelProvider.Factory factory) {
        InternalFactoryFactory internalFactoryFactoryA = ((ActivityEntryPoint) EntryPoints.a(ActivityEntryPoint.class, appCompatActivity)).a();
        LazyClassKeyMap lazyClassKeyMap = internalFactoryFactoryA.f68494a;
        factory.getClass();
        return new HiltViewModelFactory(lazyClassKeyMap, factory, internalFactoryFactoryA.f68495b);
    }

    public static HiltViewModelFactory b(Fragment fragment, ViewModelProvider.Factory factory) {
        InternalFactoryFactory internalFactoryFactoryA = ((FragmentEntryPoint) EntryPoints.a(FragmentEntryPoint.class, fragment)).a();
        LazyClassKeyMap lazyClassKeyMap = internalFactoryFactoryA.f68494a;
        factory.getClass();
        return new HiltViewModelFactory(lazyClassKeyMap, factory, internalFactoryFactoryA.f68495b);
    }
}
