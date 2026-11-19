package com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.tutorial.wifilist;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.BaseBottomSheet;
import dagger.hilt.android.flags.FragmentGetContextFix;
import dagger.hilt.android.internal.managers.FragmentComponentManager;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import dagger.hilt.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
abstract class Hilt_WifiListBottomSheet extends BaseBottomSheet {
    private ContextWrapper L;
    private boolean M;
    private boolean N;

    public Hilt_WifiListBottomSheet(int i2) {
        super(i2);
        this.M = false;
        this.N = false;
    }

    private void M() {
        if (this.L == null) {
            this.L = new ViewComponentManager$FragmentContextWrapper(super.getContext(), this);
            this.M = FragmentGetContextFix.a(super.getContext());
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.Hilt_BaseBottomSheet
    public void N() {
        if (this.N) {
            return;
        }
        this.N = true;
        WifiListBottomSheet_GeneratedInjector wifiListBottomSheet_GeneratedInjector = (WifiListBottomSheet_GeneratedInjector) C();
        wifiListBottomSheet_GeneratedInjector.getClass();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.Hilt_BaseBottomSheet, androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() == null && !this.M) {
            return null;
        }
        M();
        return this.L;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.Hilt_BaseBottomSheet, androidx.fragment.app.Fragment
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.L;
        Preconditions.a(contextWrapper == null || FragmentComponentManager.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        M();
        N();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.Hilt_BaseBottomSheet, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater layoutInflaterOnGetLayoutInflater = super.onGetLayoutInflater(bundle);
        return layoutInflaterOnGetLayoutInflater.cloneInContext(new ViewComponentManager$FragmentContextWrapper(layoutInflaterOnGetLayoutInflater, this));
    }

    public Hilt_WifiListBottomSheet() {
        this.M = false;
        this.N = false;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.views.bottomsheets.Hilt_BaseBottomSheet, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        M();
        N();
    }
}
