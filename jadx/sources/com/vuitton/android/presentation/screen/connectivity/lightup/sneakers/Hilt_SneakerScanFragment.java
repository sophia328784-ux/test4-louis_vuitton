package com.vuitton.android.presentation.screen.connectivity.lightup.sneakers;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.BaseLightUpScanFragment;
import dagger.hilt.android.flags.FragmentGetContextFix;
import dagger.hilt.android.internal.managers.FragmentComponentManager;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import dagger.hilt.internal.Preconditions;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_SneakerScanFragment extends BaseLightUpScanFragment {
    private ContextWrapper K;
    private boolean L;
    private boolean M;

    public Hilt_SneakerScanFragment(int i2) {
        super(i2);
        this.L = false;
        this.M = false;
    }

    private void M() {
        if (this.K == null) {
            this.K = new ViewComponentManager$FragmentContextWrapper(super.getContext(), this);
            this.L = FragmentGetContextFix.a(super.getContext());
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.Hilt_BaseLightUpScanFragment
    public void N() {
        if (this.M) {
            return;
        }
        this.M = true;
        SneakerScanFragment_GeneratedInjector sneakerScanFragment_GeneratedInjector = (SneakerScanFragment_GeneratedInjector) C();
        sneakerScanFragment_GeneratedInjector.getClass();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.LightUpScanView
    public abstract /* synthetic */ void g(List list);

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.Hilt_BaseLightUpScanFragment, androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() == null && !this.L) {
            return null;
        }
        M();
        return this.K;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.Hilt_BaseLightUpScanFragment, androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.K;
        Preconditions.a(contextWrapper == null || FragmentComponentManager.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        M();
        N();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.Hilt_BaseLightUpScanFragment, androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater layoutInflaterOnGetLayoutInflater = super.onGetLayoutInflater(bundle);
        return layoutInflaterOnGetLayoutInflater.cloneInContext(new ViewComponentManager$FragmentContextWrapper(layoutInflaterOnGetLayoutInflater, this));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.interfaces.LightUpFragmentInterface
    public abstract /* synthetic */ void t();

    @Override // com.vuitton.android.presentation.screen.connectivity.lightup.common.scan.Hilt_BaseLightUpScanFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        M();
        N();
    }
}
