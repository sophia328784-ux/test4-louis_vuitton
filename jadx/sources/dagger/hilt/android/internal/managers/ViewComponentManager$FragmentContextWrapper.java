package dagger.hilt.android.internal.managers;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;

/* JADX INFO: loaded from: classes4.dex */
public final class ViewComponentManager$FragmentContextWrapper extends ContextWrapper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public LayoutInflater f68519a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LayoutInflater f68520b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LifecycleEventObserver f68521c;

    /* JADX WARN: Illegal instructions before constructor call */
    public ViewComponentManager$FragmentContextWrapper(LayoutInflater layoutInflater, Fragment fragment) {
        layoutInflater.getClass();
        Context context = layoutInflater.getContext();
        context.getClass();
        super(context);
        LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper.1
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    ViewComponentManager$FragmentContextWrapper viewComponentManager$FragmentContextWrapper = ViewComponentManager$FragmentContextWrapper.this;
                    viewComponentManager$FragmentContextWrapper.f68519a = null;
                    viewComponentManager$FragmentContextWrapper.f68520b = null;
                }
            }
        };
        this.f68521c = lifecycleEventObserver;
        this.f68519a = layoutInflater;
        fragment.getClass();
        fragment.getF13561b().a(lifecycleEventObserver);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f68520b == null) {
            if (this.f68519a == null) {
                this.f68519a = (LayoutInflater) getBaseContext().getSystemService("layout_inflater");
            }
            this.f68520b = this.f68519a.cloneInContext(this);
        }
        return this.f68520b;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewComponentManager$FragmentContextWrapper(Context context, Fragment fragment) {
        super(context);
        context.getClass();
        LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper.1
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    ViewComponentManager$FragmentContextWrapper viewComponentManager$FragmentContextWrapper = ViewComponentManager$FragmentContextWrapper.this;
                    viewComponentManager$FragmentContextWrapper.f68519a = null;
                    viewComponentManager$FragmentContextWrapper.f68520b = null;
                }
            }
        };
        this.f68521c = lifecycleEventObserver;
        this.f68519a = null;
        fragment.getClass();
        fragment.getF13561b().a(lifecycleEventObserver);
    }
}
