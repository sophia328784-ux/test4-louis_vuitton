package com.vuitton.android.presentation.screen.connectivity.lightup.sneakers;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailFragment;
import dagger.hilt.android.flags.FragmentGetContextFix;
import dagger.hilt.android.internal.managers.FragmentComponentManager;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import dagger.hilt.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_SneakerDetailFragment extends LightUpDetailFragment {
    private ContextWrapper S;
    private boolean T = false;
    private boolean V = false;

    private void M() {
        if (this.S == null) {
            this.S = new ViewComponentManager$FragmentContextWrapper(super.getContext(), this);
            this.T = FragmentGetContextFix.a(super.getContext());
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.Hilt_LightUpDetailFragment
    public void N() {
        if (this.V) {
            return;
        }
        this.V = true;
        SneakerDetailFragment_GeneratedInjector sneakerDetailFragment_GeneratedInjector = (SneakerDetailFragment_GeneratedInjector) C();
        sneakerDetailFragment_GeneratedInjector.getClass();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.Hilt_LightUpDetailFragment, androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() == null && !this.T) {
            return null;
        }
        M();
        return this.S;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.Hilt_LightUpDetailFragment, androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.S;
        Preconditions.a(contextWrapper == null || FragmentComponentManager.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        M();
        N();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.Hilt_LightUpDetailFragment, androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater layoutInflaterOnGetLayoutInflater = super.onGetLayoutInflater(bundle);
        return layoutInflaterOnGetLayoutInflater.cloneInContext(new ViewComponentManager$FragmentContextWrapper(layoutInflaterOnGetLayoutInflater, this));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.Hilt_LightUpDetailFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        M();
        N();
    }
}
