package dagger.hilt.android.internal.managers;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import androidx.fragment.app.Fragment;
import dagger.hilt.EntryPoints;
import dagger.hilt.android.components.FragmentComponent;
import dagger.hilt.android.internal.builders.FragmentComponentBuilder;
import dagger.hilt.internal.GeneratedComponentManager;
import dagger.hilt.internal.GeneratedComponentManagerHolder;
import dagger.hilt.internal.Preconditions;
import defpackage.r81;

/* JADX INFO: loaded from: classes4.dex */
public class FragmentComponentManager implements GeneratedComponentManager<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public volatile FragmentComponent f68513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f68514c = new Object();
    public final Fragment d;

    public interface FragmentComponentBuilderEntryPoint {
        FragmentComponentBuilder q0();
    }

    public FragmentComponentManager(Fragment fragment) {
        this.d = fragment;
    }

    public static final Context b(Context context) {
        while ((context instanceof ContextWrapper) && !(context instanceof Activity)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        return context;
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public final Object C() {
        if (this.f68513b == null) {
            synchronized (this.f68514c) {
                try {
                    if (this.f68513b == null) {
                        this.f68513b = a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.f68513b;
    }

    public final FragmentComponent a() {
        Fragment fragment = this.d;
        if (fragment.getHost() == null) {
            r81.d("Hilt Fragments must be attached before creating the component.");
            return null;
        }
        Preconditions.a(fragment.getHost() instanceof GeneratedComponentManagerHolder, "Hilt Fragments must be attached to an @AndroidEntryPoint Activity. Found: %s", fragment.getHost().getClass());
        FragmentComponentBuilder fragmentComponentBuilderQ0 = ((FragmentComponentBuilderEntryPoint) EntryPoints.a(FragmentComponentBuilderEntryPoint.class, fragment.getHost())).q0();
        fragmentComponentBuilderQ0.a(fragment);
        return fragmentComponentBuilderQ0.build();
    }
}
