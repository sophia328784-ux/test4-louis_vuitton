package androidx.lifecycle.viewmodel.internal;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.MutableCreationExtras;
import com.appsflyer.sdk_base.referrer.Payload;
import kotlin.Metadata;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/lifecycle/viewmodel/internal/ViewModelProviderImpl;", "", "Landroidx/lifecycle/ViewModelStore;", Payload.TYPE_STORE, "Landroidx/lifecycle/ViewModelProvider$Factory;", "factory", "Landroidx/lifecycle/viewmodel/CreationExtras;", "defaultExtras", "<init>", "(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)V", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ViewModelProviderImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ViewModelStore f13614a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ViewModelProvider.Factory f13615b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CreationExtras f13616c;
    public final SynchronizedObject d;

    public ViewModelProviderImpl(ViewModelStore viewModelStore, ViewModelProvider.Factory factory, CreationExtras creationExtras) {
        viewModelStore.getClass();
        factory.getClass();
        creationExtras.getClass();
        this.f13614a = viewModelStore;
        this.f13615b = factory;
        this.f13616c = creationExtras;
        this.d = new SynchronizedObject();
    }

    public final ViewModel a(String str, KClass kClass) {
        ViewModel viewModel;
        ViewModel viewModelCreate;
        kClass.getClass();
        synchronized (this.d) {
            try {
                viewModel = (ViewModel) this.f13614a.f13536a.get(str);
                if (kClass.t(viewModel)) {
                    Object obj = this.f13615b;
                    if (obj instanceof ViewModelProvider.OnRequeryFactory) {
                        viewModel.getClass();
                        ((ViewModelProvider.OnRequeryFactory) obj).a(viewModel);
                    }
                    viewModel.getClass();
                } else {
                    MutableCreationExtras mutableCreationExtras = new MutableCreationExtras(this.f13616c);
                    mutableCreationExtras.b(ViewModelProvider.f13529c, str);
                    ViewModelProvider.Factory factory = this.f13615b;
                    factory.getClass();
                    try {
                        try {
                            viewModelCreate = factory.create(kClass, mutableCreationExtras);
                        } catch (AbstractMethodError unused) {
                            viewModelCreate = factory.create(JvmClassMappingKt.b(kClass));
                        }
                    } catch (AbstractMethodError unused2) {
                        viewModelCreate = factory.create(JvmClassMappingKt.b(kClass), mutableCreationExtras);
                    }
                    viewModel = viewModelCreate;
                    ViewModelStore viewModelStore = this.f13614a;
                    viewModelStore.getClass();
                    viewModel.getClass();
                    ViewModel viewModel2 = (ViewModel) viewModelStore.f13536a.put(str, viewModel);
                    if (viewModel2 != null) {
                        viewModel2.clear$lifecycle_viewmodel();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return viewModel;
    }
}
