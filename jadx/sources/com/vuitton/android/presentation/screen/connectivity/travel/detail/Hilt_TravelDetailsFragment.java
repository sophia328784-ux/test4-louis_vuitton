package com.vuitton.android.presentation.screen.connectivity.travel.detail;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import dagger.hilt.android.flags.FragmentGetContextFix;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.hilt.android.internal.managers.FragmentComponentManager;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import dagger.hilt.internal.GeneratedComponentManagerHolder;
import dagger.hilt.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_TravelDetailsFragment extends Fragment implements GeneratedComponentManagerHolder {
    private ContextWrapper A;
    private boolean B;
    private volatile FragmentComponentManager C;
    private final Object D;
    private boolean E;

    public Hilt_TravelDetailsFragment() {
        this.B = false;
        this.D = new Object();
        this.E = false;
    }

    private void M() {
        if (this.A == null) {
            this.A = new ViewComponentManager$FragmentContextWrapper(super.getContext(), this);
            this.B = FragmentGetContextFix.a(super.getContext());
        }
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public final Object C() {
        return K().C();
    }

    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public final FragmentComponentManager K() {
        if (this.C == null) {
            synchronized (this.D) {
                try {
                    if (this.C == null) {
                        this.C = L();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.C;
    }

    public FragmentComponentManager L() {
        return new FragmentComponentManager(this);
    }

    public void N() {
        if (this.E) {
            return;
        }
        this.E = true;
        TravelDetailsFragment_GeneratedInjector travelDetailsFragment_GeneratedInjector = (TravelDetailsFragment_GeneratedInjector) C();
        travelDetailsFragment_GeneratedInjector.getClass();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() == null && !this.B) {
            return null;
        }
        M();
        return this.A;
    }

    @Override // androidx.fragment.app.Fragment, androidx.lifecycle.HasDefaultViewModelProviderFactory
    /* JADX INFO: renamed from: getDefaultViewModelProviderFactory */
    public ViewModelProvider.Factory getF13588e() {
        return DefaultViewModelFactories.b(this, super.getF13588e());
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.A;
        Preconditions.a(contextWrapper == null || FragmentComponentManager.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        M();
        N();
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater layoutInflaterOnGetLayoutInflater = super.onGetLayoutInflater(bundle);
        return layoutInflaterOnGetLayoutInflater.cloneInContext(new ViewComponentManager$FragmentContextWrapper(layoutInflaterOnGetLayoutInflater, this));
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        FragmentTrackHelper.trackOnHiddenChanged(this, z);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        FragmentTrackHelper.trackFragmentPause(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        FragmentTrackHelper.onFragmentViewCreated(this, view, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }

    public Hilt_TravelDetailsFragment(int i2) {
        super(i2);
        this.B = false;
        this.D = new Object();
        this.E = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        M();
        N();
    }
}
