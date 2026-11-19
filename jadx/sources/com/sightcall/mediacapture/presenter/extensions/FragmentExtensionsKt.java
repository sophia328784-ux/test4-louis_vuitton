package com.sightcall.mediacapture.presenter.extensions;

import androidx.fragment.app.Fragment;
import com.sightcall.mediacapture.presenter.MediaCaptureFragment;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00018@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"viewModelOwner", "Landroidx/fragment/app/Fragment;", "getViewModelOwner", "(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;", "lib_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class FragmentExtensionsKt {
    public static final Fragment getViewModelOwner(Fragment fragment) {
        fragment.getClass();
        if (fragment instanceof MediaCaptureFragment) {
            return fragment;
        }
        Fragment fragmentRequireParentFragment = fragment.requireParentFragment();
        fragmentRequireParentFragment.getClass();
        if (fragmentRequireParentFragment instanceof MediaCaptureFragment) {
            return fragmentRequireParentFragment;
        }
        Fragment fragmentRequireParentFragment2 = fragmentRequireParentFragment.requireParentFragment();
        fragmentRequireParentFragment2.getClass();
        return fragmentRequireParentFragment2;
    }
}
