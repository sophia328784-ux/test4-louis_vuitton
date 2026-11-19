package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.LegacySavedStateHandleController;
import androidx.savedstate.internal.SavedStateRegistryImpl;
import defpackage.md;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001:\u0002\u0006\u0007B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Landroidx/savedstate/SavedStateRegistry;", "", "Landroidx/savedstate/internal/SavedStateRegistryImpl;", "impl", "<init>", "(Landroidx/savedstate/internal/SavedStateRegistryImpl;)V", "SavedStateProvider", "AutoRecreated", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class SavedStateRegistry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SavedStateRegistryImpl f19784a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Recreator.SavedStateProvider f19785b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/savedstate/SavedStateRegistry$AutoRecreated;", "", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface AutoRecreated {
        void a(SavedStateRegistryOwner savedStateRegistryOwner);
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;", "", "savedstate"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public interface SavedStateProvider {
        Bundle saveState();
    }

    public SavedStateRegistry(SavedStateRegistryImpl savedStateRegistryImpl) {
        savedStateRegistryImpl.getClass();
        this.f19784a = savedStateRegistryImpl;
    }

    public final Bundle a(String str) {
        SavedStateRegistryImpl savedStateRegistryImpl = this.f19784a;
        savedStateRegistryImpl.getClass();
        if (!savedStateRegistryImpl.g) {
            md.k("You can 'consumeRestoredStateForKey' only after the corresponding component has moved to the 'CREATED' state");
            return null;
        }
        Bundle bundle = savedStateRegistryImpl.f19798f;
        if (bundle == null) {
            return null;
        }
        Bundle bundleJ = bundle.containsKey(str) ? SavedStateReader.j(str, bundle) : null;
        bundle.remove(str);
        if (bundle.isEmpty()) {
            savedStateRegistryImpl.f19798f = null;
        }
        return bundleJ;
    }

    public final SavedStateProvider b(String str) {
        SavedStateProvider savedStateProvider;
        SavedStateRegistryImpl savedStateRegistryImpl = this.f19784a;
        savedStateRegistryImpl.getClass();
        synchronized (savedStateRegistryImpl.f19796c) {
            Iterator it = savedStateRegistryImpl.d.entrySet().iterator();
            do {
                savedStateProvider = null;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String str2 = (String) entry.getKey();
                SavedStateProvider savedStateProvider2 = (SavedStateProvider) entry.getValue();
                if (Intrinsics.c(str2, str)) {
                    savedStateProvider = savedStateProvider2;
                }
            } while (savedStateProvider == null);
        }
        return savedStateProvider;
    }

    public final void c(String str, SavedStateProvider savedStateProvider) {
        str.getClass();
        savedStateProvider.getClass();
        SavedStateRegistryImpl savedStateRegistryImpl = this.f19784a;
        savedStateRegistryImpl.getClass();
        synchronized (savedStateRegistryImpl.f19796c) {
            if (savedStateRegistryImpl.d.containsKey(str)) {
                throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
            }
            savedStateRegistryImpl.d.put(str, savedStateProvider);
        }
    }

    public final void d() {
        if (!this.f19784a.f19799h) {
            md.k("Can not perform this action after onSaveInstanceState");
            return;
        }
        Recreator.SavedStateProvider savedStateProvider = this.f19785b;
        if (savedStateProvider == null) {
            savedStateProvider = new Recreator.SavedStateProvider(this);
        }
        this.f19785b = savedStateProvider;
        try {
            LegacySavedStateHandleController.OnRecreation.class.getDeclaredConstructor(null);
            Recreator.SavedStateProvider savedStateProvider2 = this.f19785b;
            if (savedStateProvider2 != null) {
                savedStateProvider2.f19783a.add(LegacySavedStateHandleController.OnRecreation.class.getName());
            }
        } catch (NoSuchMethodException e2) {
            throw new IllegalArgumentException("Class " + LegacySavedStateHandleController.OnRecreation.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
        }
    }
}
