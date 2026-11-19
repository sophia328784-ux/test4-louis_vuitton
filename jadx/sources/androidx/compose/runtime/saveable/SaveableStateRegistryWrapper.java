package androidx.compose.runtime.saveable;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleRegistry;
import androidx.savedstate.SavedStateRegistry;
import androidx.savedstate.SavedStateRegistryController;
import androidx.savedstate.SavedStateRegistryOwner;
import defpackage.xn0;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;", "Landroidx/compose/runtime/saveable/SaveableStateRegistry;", "Landroidx/savedstate/SavedStateRegistryOwner;", "base", "<init>", "(Landroidx/compose/runtime/saveable/SaveableStateRegistry;)V", "runtime-saveable"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SaveableStateRegistryWrapper implements SaveableStateRegistry, SavedStateRegistryOwner {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SaveableStateRegistry f8435b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LifecycleRegistry f8436c;
    public SavedStateRegistryController d;

    public SaveableStateRegistryWrapper(SaveableStateRegistry saveableStateRegistry) {
        this.f8435b = saveableStateRegistry;
        Object objE = saveableStateRegistry.e("androidx.savedstate.SavedStateRegistry");
        Bundle bundle = objE instanceof Bundle ? (Bundle) objE : null;
        if (bundle != null && this.d == null) {
            SavedStateRegistryController.f19786c.getClass();
            SavedStateRegistryController savedStateRegistryControllerA = SavedStateRegistryController.Companion.a(this);
            this.d = savedStateRegistryControllerA;
            savedStateRegistryControllerA.a(bundle);
        }
        b("androidx.savedstate.SavedStateRegistry", new xn0(this, 21));
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final boolean a(Object obj) {
        return this.f8435b.a(obj);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final SaveableStateRegistry.Entry b(String str, Function0 function0) {
        return this.f8435b.b(str, function0);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final Map d() {
        return this.f8435b.d();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final Object e(String str) {
        return this.f8435b.e(str);
    }

    @Override // androidx.lifecycle.LifecycleOwner
    /* JADX INFO: renamed from: getLifecycle */
    public final Lifecycle getD() {
        LifecycleRegistry lifecycleRegistry = this.f8436c;
        if (lifecycleRegistry != null) {
            return lifecycleRegistry;
        }
        LifecycleRegistry.f13448k.getClass();
        LifecycleRegistry lifecycleRegistry2 = new LifecycleRegistry(this, false, null);
        this.f8436c = lifecycleRegistry2;
        return lifecycleRegistry2;
    }

    @Override // androidx.savedstate.SavedStateRegistryOwner
    /* JADX INFO: renamed from: getSavedStateRegistry */
    public final SavedStateRegistry getF13586b() {
        SavedStateRegistryController savedStateRegistryControllerA = this.d;
        if (savedStateRegistryControllerA == null) {
            SavedStateRegistryController.f19786c.getClass();
            savedStateRegistryControllerA = SavedStateRegistryController.Companion.a(this);
            this.d = savedStateRegistryControllerA;
            savedStateRegistryControllerA.a(null);
        }
        return savedStateRegistryControllerA.f19788b;
    }
}
