package androidx.lifecycle;

import android.app.Application;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.internal.JvmViewModelProviders;
import androidx.lifecycle.viewmodel.internal.ViewModelProviderImpl;
import com.appsflyer.sdk_base.referrer.Payload;
import defpackage.d21;
import defpackage.md;
import defpackage.mt;
import defpackage.pq0;
import defpackage.r81;
import java.lang.reflect.InvocationTargetException;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import kotlin.text.CharsKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0016\u0018\u00002\u00020\u0001:\u0005\u000e\u000f\u0010\u0011\u0012B#\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\b\u0010\fB\u0019\b\u0016\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\b\u0010\r¨\u0006\u0013"}, d2 = {"Landroidx/lifecycle/ViewModelProvider;", "", "Landroidx/lifecycle/ViewModelStore;", Payload.TYPE_STORE, "Landroidx/lifecycle/ViewModelProvider$Factory;", "factory", "Landroidx/lifecycle/viewmodel/CreationExtras;", "defaultCreationExtras", "<init>", "(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V", "Landroidx/lifecycle/ViewModelStoreOwner;", "owner", "(Landroidx/lifecycle/ViewModelStoreOwner;)V", "(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V", "Factory", "OnRequeryFactory", "NewInstanceFactory", "AndroidViewModelFactory", "Companion", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class ViewModelProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f13528b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ViewModelProvider$special$$inlined$Key$1 f13529c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewModelProviderImpl f13530a;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$Companion;", "", "Landroidx/lifecycle/viewmodel/CreationExtras$Key;", "", "VIEW_MODEL_KEY", "Landroidx/lifecycle/viewmodel/CreationExtras$Key;", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;", "", "<init>", "()V", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static class OnRequeryFactory {
        public void a(ViewModel viewModel) {
            viewModel.getClass();
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.lifecycle.ViewModelProvider$special$$inlined$Key$1] */
    static {
        int i2 = CreationExtras.f13576b;
        f13529c = new CreationExtras.Key<String>() { // from class: androidx.lifecycle.ViewModelProvider$special$$inlined$Key$1
            public final String toString() {
                String string = Integer.toString(hashCode(), CharsKt.checkRadix(16));
                string.getClass();
                return d21.l("CreationExtras.Key@", string, "<", Reflection.f71922a.b(String.class).B(), ">");
            }
        };
    }

    public ViewModelProvider(ViewModelStore viewModelStore, Factory factory, CreationExtras creationExtras) {
        viewModelStore.getClass();
        factory.getClass();
        creationExtras.getClass();
        this.f13530a = new ViewModelProviderImpl(viewModelStore, factory, creationExtras);
    }

    public final ViewModel a(KClass kClass) {
        kClass.getClass();
        String strW = kClass.w();
        if (strW != null) {
            return this.f13530a.a("androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(strW), kClass);
        }
        md.n("Local and anonymous classes can not be ViewModels");
        return null;
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0007B\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006¨\u0006\b"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;", "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;", "<init>", "()V", "Landroid/app/Application;", "application", "(Landroid/app/Application;)V", "Companion", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static class AndroidViewModelFactory extends NewInstanceFactory {
        public static final Companion d = new Companion(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static AndroidViewModelFactory f13531e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final ViewModelProvider$AndroidViewModelFactory$special$$inlined$Key$1 f13532f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Application f13533c;

        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory$Companion;", "", "Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;", "_instance", "Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;", "Landroidx/lifecycle/viewmodel/CreationExtras$Key;", "Landroid/app/Application;", "APPLICATION_KEY", "Landroidx/lifecycle/viewmodel/CreationExtras$Key;", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [androidx.lifecycle.ViewModelProvider$AndroidViewModelFactory$special$$inlined$Key$1] */
        static {
            int i2 = CreationExtras.f13576b;
            f13532f = new CreationExtras.Key<Application>() { // from class: androidx.lifecycle.ViewModelProvider$AndroidViewModelFactory$special$$inlined$Key$1
                public final String toString() {
                    String string = Integer.toString(hashCode(), CharsKt.checkRadix(16));
                    string.getClass();
                    return d21.l("CreationExtras.Key@", string, "<", Reflection.f71922a.b(Application.class).B(), ">");
                }
            };
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public AndroidViewModelFactory(Application application) {
            this(application, 0);
            application.getClass();
        }

        public final ViewModel a(Class cls, Application application) {
            if (!AndroidViewModel.class.isAssignableFrom(cls)) {
                return super.create(cls);
            }
            try {
                ViewModel viewModel = (ViewModel) cls.getConstructor(Application.class).newInstance(application);
                viewModel.getClass();
                return viewModel;
            } catch (IllegalAccessException e2) {
                r81.g(pq0.m(cls, "Cannot create an instance of "), e2);
                return null;
            } catch (InstantiationException e3) {
                r81.g(pq0.m(cls, "Cannot create an instance of "), e3);
                return null;
            } catch (NoSuchMethodException e4) {
                r81.g(pq0.m(cls, "Cannot create an instance of "), e4);
                return null;
            } catch (InvocationTargetException e5) {
                r81.g(pq0.m(cls, "Cannot create an instance of "), e5);
                return null;
            }
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        public final ViewModel create(Class cls, CreationExtras creationExtras) {
            creationExtras.getClass();
            if (this.f13533c != null) {
                return create(cls);
            }
            Application application = (Application) creationExtras.a(f13532f);
            if (application != null) {
                return a(cls, application);
            }
            if (!AndroidViewModel.class.isAssignableFrom(cls)) {
                return JvmViewModelProviders.a(cls);
            }
            md.n("CreationExtras must have an application by `APPLICATION_KEY`");
            return null;
        }

        public AndroidViewModelFactory() {
            this(null, 0);
        }

        public AndroidViewModelFactory(Application application, int i2) {
            this.f13533c = application;
        }

        @Override // androidx.lifecycle.ViewModelProvider.NewInstanceFactory, androidx.lifecycle.ViewModelProvider.Factory
        public final ViewModel create(Class cls) {
            cls.getClass();
            Application application = this.f13533c;
            if (application != null) {
                return a(cls, application);
            }
            mt.i("AndroidViewModelFactory constructed with empty constructor works only with create(modelClass: Class<T>, extras: CreationExtras).");
            return null;
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "<init>", "()V", "Companion", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static class NewInstanceFactory implements Factory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Companion f13534a = new Companion(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static NewInstanceFactory f13535b;

        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001a\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory$Companion;", "", "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;", "_instance", "Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;", "Landroidx/lifecycle/viewmodel/CreationExtras$Key;", "", "VIEW_MODEL_KEY", "Landroidx/lifecycle/viewmodel/CreationExtras$Key;", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }

        static {
            Companion companion = ViewModelProvider.f13528b;
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public final ViewModel create(KClass kClass, CreationExtras creationExtras) {
            kClass.getClass();
            return create(JvmClassMappingKt.b(kClass), creationExtras);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public ViewModel create(Class cls, CreationExtras creationExtras) {
            creationExtras.getClass();
            return create(cls);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public ViewModel create(Class cls) {
            cls.getClass();
            return JvmViewModelProviders.a(cls);
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/lifecycle/ViewModelProvider$Factory;", "", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Factory {
        default ViewModel create(KClass kClass, CreationExtras creationExtras) {
            kClass.getClass();
            creationExtras.getClass();
            return create(JvmClassMappingKt.b(kClass), creationExtras);
        }

        default ViewModel create(Class cls, CreationExtras creationExtras) {
            cls.getClass();
            creationExtras.getClass();
            return create(cls);
        }

        default ViewModel create(Class cls) {
            cls.getClass();
            throw new UnsupportedOperationException("`Factory.create(String, CreationExtras)` is not implemented. You may need to override the method and provide a custom implementation. Note that using `Factory.create(String)` is not supported and considered an error.");
        }
    }

    public /* synthetic */ ViewModelProvider(ViewModelStore viewModelStore, Factory factory, CreationExtras creationExtras, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(viewModelStore, factory, (i2 & 4) != 0 ? CreationExtras.Empty.f13578c : creationExtras);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelProvider(ViewModelStore viewModelStore, Factory factory) {
        this(viewModelStore, factory, null, 4, null);
        viewModelStore.getClass();
        factory.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelProvider(ViewModelStoreOwner viewModelStoreOwner) {
        this(viewModelStoreOwner.getViewModelStore(), ViewModelStoreOwnerDefaults.b(viewModelStoreOwner), ViewModelStoreOwnerDefaults.a(viewModelStoreOwner));
        viewModelStoreOwner.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelProvider(ViewModelStoreOwner viewModelStoreOwner, Factory factory) {
        this(viewModelStoreOwner.getViewModelStore(), factory, ViewModelStoreOwnerDefaults.a(viewModelStoreOwner));
        viewModelStoreOwner.getClass();
        factory.getClass();
    }
}
