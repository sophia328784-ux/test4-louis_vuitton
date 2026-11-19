package androidx.lifecycle;

import androidx.lifecycle.ViewModel;
import androidx.lifecycle.viewmodel.CreationExtras;
import defpackage.b51;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003BC\b\u0007\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u0006\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/lifecycle/ViewModelLazy;", "Landroidx/lifecycle/ViewModel;", "VM", "Lkotlin/Lazy;", "Lkotlin/reflect/KClass;", "viewModelClass", "Lkotlin/Function0;", "Landroidx/lifecycle/ViewModelStore;", "storeProducer", "Landroidx/lifecycle/ViewModelProvider$Factory;", "factoryProducer", "Landroidx/lifecycle/viewmodel/CreationExtras;", "extrasProducer", "<init>", "(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "lifecycle-viewmodel"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ViewModelLazy<VM extends ViewModel> implements Lazy<VM> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KClass f13524b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function0 f13525c;
    public final Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function0 f13526e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ViewModel f13527f;

    public ViewModelLazy(KClass<VM> kClass, Function0<? extends ViewModelStore> function0, Function0<? extends ViewModelProvider.Factory> function1, Function0<? extends CreationExtras> function2) {
        kClass.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        this.f13524b = kClass;
        this.f13525c = function0;
        this.d = function1;
        this.f13526e = function2;
    }

    @Override // kotlin.Lazy
    public final boolean a() {
        throw null;
    }

    @Override // kotlin.Lazy
    /* JADX INFO: renamed from: getValue */
    public final Object getF71699b() {
        ViewModel viewModel = this.f13527f;
        if (viewModel != null) {
            return viewModel;
        }
        ViewModelStore viewModelStore = (ViewModelStore) this.f13525c.mo47invoke();
        ViewModelProvider.Factory factory = (ViewModelProvider.Factory) this.d.mo47invoke();
        CreationExtras creationExtras = (CreationExtras) this.f13526e.mo47invoke();
        ViewModelProvider.f13528b.getClass();
        viewModelStore.getClass();
        factory.getClass();
        creationExtras.getClass();
        ViewModel viewModelA = new ViewModelProvider(viewModelStore, factory, creationExtras).a(this.f13524b);
        this.f13527f = viewModelA;
        return viewModelA;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ViewModelLazy(KClass<VM> kClass, Function0<? extends ViewModelStore> function0, Function0<? extends ViewModelProvider.Factory> function1) {
        this(kClass, function0, function1, null, 8, null);
        kClass.getClass();
        function0.getClass();
        function1.getClass();
    }

    public /* synthetic */ ViewModelLazy(KClass kClass, Function0 function0, Function0 function1, Function0 function2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(kClass, function0, function1, (i2 & 8) != 0 ? new b51(14) : function2);
    }
}
