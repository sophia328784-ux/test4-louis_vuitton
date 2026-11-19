package com.vuitton.android.presentation.screen.connectivity.views.bottomsheets;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.lifecycle.ViewModelProvider;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import dagger.hilt.android.flags.FragmentGetContextFix;
import dagger.hilt.android.internal.lifecycle.DefaultViewModelFactories;
import dagger.hilt.android.internal.managers.FragmentComponentManager;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import dagger.hilt.internal.GeneratedComponentManagerHolder;
import dagger.hilt.internal.Preconditions;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_BaseBottomSheet extends BottomSheetDialogFragment implements GeneratedComponentManagerHolder {
    private ContextWrapper B;
    private boolean C;
    private volatile FragmentComponentManager D;
    private final Object E;
    private boolean F;

    public Hilt_BaseBottomSheet() {
        this.C = false;
        this.E = new Object();
        this.F = false;
    }

    private void M() {
        if (this.B == null) {
            this.B = new ViewComponentManager$FragmentContextWrapper(super.getContext(), this);
            this.C = FragmentGetContextFix.a(super.getContext());
        }
    }

    @Override // dagger.hilt.internal.GeneratedComponentManager
    public final Object C() {
        return K().C();
    }

    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public final FragmentComponentManager K() {
        if (this.D == null) {
            synchronized (this.E) {
                try {
                    if (this.D == null) {
                        this.D = L();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.D;
    }

    public FragmentComponentManager L() {
        return new FragmentComponentManager(this);
    }

    public void N() {
        if (this.F) {
            return;
        }
        this.F = true;
        BaseBottomSheet_GeneratedInjector baseBottomSheet_GeneratedInjector = (BaseBottomSheet_GeneratedInjector) C();
        baseBottomSheet_GeneratedInjector.getClass();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() == null && !this.C) {
            return null;
        }
        M();
        return this.B;
    }

    @Override // androidx.fragment.app.Fragment, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return DefaultViewModelFactories.b(this, super.getDefaultViewModelProviderFactory());
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.B;
        Preconditions.a(contextWrapper == null || FragmentComponentManager.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        M();
        N();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
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

    public Hilt_BaseBottomSheet(int i2) {
        super(i2);
        this.C = false;
        this.E = new Object();
        this.F = false;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        M();
        N();
    }
}
