package com.sightcall.mediacapture.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.camera.view.PreviewView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.chip.Chip;
import com.google.android.material.progressindicator.CircularProgressIndicator;
import com.sightcall.graphik.MaskView;
import com.sightcall.mediacapture.R;
import com.sightcall.mediacapture.presenter.views.collimator.CollimatorView;
import defpackage.r81;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentCameraBinding implements ViewBinding {
    public final MaterialButton back;
    public final PreviewView cameraPreview;
    public final CircularProgressIndicator circularProgressIndicator;
    public final CollimatorView collimatorView;
    public final MaterialButton flashlight;
    public final MaterialButton mainAction;
    public final MaskView maskView;
    private final ConstraintLayout rootView;
    public final MaterialButton switchCamera;
    public final Chip timer;

    private FragmentCameraBinding(ConstraintLayout constraintLayout, MaterialButton materialButton, PreviewView previewView, CircularProgressIndicator circularProgressIndicator, CollimatorView collimatorView, MaterialButton materialButton2, MaterialButton materialButton3, MaskView maskView, MaterialButton materialButton4, Chip chip) {
        this.rootView = constraintLayout;
        this.back = materialButton;
        this.cameraPreview = previewView;
        this.circularProgressIndicator = circularProgressIndicator;
        this.collimatorView = collimatorView;
        this.flashlight = materialButton2;
        this.mainAction = materialButton3;
        this.maskView = maskView;
        this.switchCamera = materialButton4;
        this.timer = chip;
    }

    public static FragmentCameraBinding bind(View view) {
        int i2 = R.id.back;
        MaterialButton materialButton = (MaterialButton) ViewBindings.a(i2, view);
        if (materialButton != null) {
            i2 = R.id.cameraPreview;
            PreviewView previewView = (PreviewView) ViewBindings.a(i2, view);
            if (previewView != null) {
                i2 = R.id.circularProgressIndicator;
                CircularProgressIndicator circularProgressIndicator = (CircularProgressIndicator) ViewBindings.a(i2, view);
                if (circularProgressIndicator != null) {
                    CollimatorView collimatorView = (CollimatorView) ViewBindings.a(R.id.collimatorView, view);
                    i2 = R.id.flashlight;
                    MaterialButton materialButton2 = (MaterialButton) ViewBindings.a(i2, view);
                    if (materialButton2 != null) {
                        i2 = R.id.mainAction;
                        MaterialButton materialButton3 = (MaterialButton) ViewBindings.a(i2, view);
                        if (materialButton3 != null) {
                            MaskView maskView = (MaskView) ViewBindings.a(R.id.maskView, view);
                            i2 = R.id.switchCamera;
                            MaterialButton materialButton4 = (MaterialButton) ViewBindings.a(i2, view);
                            if (materialButton4 != null) {
                                i2 = R.id.timer;
                                Chip chip = (Chip) ViewBindings.a(i2, view);
                                if (chip != null) {
                                    return new FragmentCameraBinding((ConstraintLayout) view, materialButton, previewView, circularProgressIndicator, collimatorView, materialButton2, materialButton3, maskView, materialButton4, chip);
                                }
                            }
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }

    public static FragmentCameraBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_camera, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCameraBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
