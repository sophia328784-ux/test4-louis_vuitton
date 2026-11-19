package androidx.navigation;

import android.content.Context;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.InitializerViewModelFactory;
import androidx.navigation.internal.NavControllerImpl;
import defpackage.k2;
import defpackage.md;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/navigation/NavHostController;", "Landroidx/navigation/NavController;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "navigation-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class NavHostController extends NavController {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostController(Context context) {
        super(context);
        context.getClass();
    }

    public final void i(LifecycleOwner lifecycleOwner) {
        Lifecycle f13561b;
        lifecycleOwner.getClass();
        NavControllerImpl navControllerImpl = this.f18122b;
        k2 k2Var = navControllerImpl.s;
        if (lifecycleOwner.equals(navControllerImpl.o)) {
            return;
        }
        LifecycleOwner lifecycleOwner2 = navControllerImpl.o;
        if (lifecycleOwner2 != null && (f13561b = lifecycleOwner2.getF13561b()) != null) {
            f13561b.d(k2Var);
        }
        navControllerImpl.o = lifecycleOwner;
        lifecycleOwner.getF13561b().a(k2Var);
    }

    public final void j(ViewModelStore viewModelStore) {
        viewModelStore.getClass();
        NavControllerImpl navControllerImpl = this.f18122b;
        navControllerImpl.getClass();
        NavControllerViewModel navControllerViewModel = navControllerImpl.p;
        NavControllerViewModel.f18128b.getClass();
        ViewModelProvider.Companion companion = ViewModelProvider.f13528b;
        InitializerViewModelFactory initializerViewModelFactory = NavControllerViewModelKt.f18130a;
        CreationExtras.Empty empty = CreationExtras.Empty.f13578c;
        companion.getClass();
        initializerViewModelFactory.getClass();
        empty.getClass();
        ViewModelProvider viewModelProvider = new ViewModelProvider(viewModelStore, initializerViewModelFactory, empty);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        if (Intrinsics.c(navControllerViewModel, (NavControllerViewModel) viewModelProvider.a(reflectionFactory.b(NavControllerViewModel.class)))) {
            return;
        }
        if (!navControllerImpl.f18336f.isEmpty()) {
            md.k("ViewModelStore should be set before setGraph call");
            return;
        }
        companion.getClass();
        initializerViewModelFactory.getClass();
        empty.getClass();
        navControllerImpl.p = (NavControllerViewModel) new ViewModelProvider(viewModelStore, initializerViewModelFactory, empty).a(reflectionFactory.b(NavControllerViewModel.class));
    }
}
