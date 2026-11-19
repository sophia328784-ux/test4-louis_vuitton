package com.sightcall.mediacapture.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.viewbinding.ViewBinding;
import com.sightcall.mediacapture.R;
import defpackage.r81;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentMediaCaptureBinding implements ViewBinding {
    public final FrameLayout container;
    private final FrameLayout rootView;

    private FragmentMediaCaptureBinding(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.rootView = frameLayout;
        this.container = frameLayout2;
    }

    public static FragmentMediaCaptureBinding bind(View view) {
        if (view != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            return new FragmentMediaCaptureBinding(frameLayout, frameLayout);
        }
        r81.d("rootView");
        return null;
    }

    public static FragmentMediaCaptureBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_media_capture, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static FragmentMediaCaptureBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
