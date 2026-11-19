package com.sightcall.mediacapture.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.button.MaterialButton;
import com.sightcall.mediacapture.R;
import defpackage.r81;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentMultiMediaBinding implements ViewBinding {
    public final FrameLayout main;
    public final MaterialButton photoLibrary;
    private final ConstraintLayout rootView;
    public final MaterialButton videoLibrary;

    private FragmentMultiMediaBinding(ConstraintLayout constraintLayout, FrameLayout frameLayout, MaterialButton materialButton, MaterialButton materialButton2) {
        this.rootView = constraintLayout;
        this.main = frameLayout;
        this.photoLibrary = materialButton;
        this.videoLibrary = materialButton2;
    }

    public static FragmentMultiMediaBinding bind(View view) {
        int i2 = R.id.main;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.a(i2, view);
        if (frameLayout != null) {
            i2 = R.id.photoLibrary;
            MaterialButton materialButton = (MaterialButton) ViewBindings.a(i2, view);
            if (materialButton != null) {
                i2 = R.id.videoLibrary;
                MaterialButton materialButton2 = (MaterialButton) ViewBindings.a(i2, view);
                if (materialButton2 != null) {
                    return new FragmentMultiMediaBinding((ConstraintLayout) view, frameLayout, materialButton, materialButton2);
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }

    public static FragmentMultiMediaBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_multi_media, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentMultiMediaBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
