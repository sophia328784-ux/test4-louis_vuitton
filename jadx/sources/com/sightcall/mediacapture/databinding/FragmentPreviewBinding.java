package com.sightcall.mediacapture.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.VideoView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.slider.Slider;
import com.google.android.material.textview.MaterialTextView;
import com.sightcall.mediacapture.R;
import defpackage.r81;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentPreviewBinding implements ViewBinding {
    public final MaterialButton cancel;
    public final MaterialTextView currentTime;
    public final MaterialButton mainAction;
    public final AppCompatImageView preview;
    public final ProgressBar progressBar;
    public final ConstraintLayout progressLayout;
    public final MaterialTextView remainingTime;
    private final ConstraintLayout rootView;
    public final MaterialButton send;
    public final Slider timeSlider;
    public final ConstraintLayout timelineLayout;
    public final VideoView videoView;

    private FragmentPreviewBinding(ConstraintLayout constraintLayout, MaterialButton materialButton, MaterialTextView materialTextView, MaterialButton materialButton2, AppCompatImageView appCompatImageView, ProgressBar progressBar, ConstraintLayout constraintLayout2, MaterialTextView materialTextView2, MaterialButton materialButton3, Slider slider, ConstraintLayout constraintLayout3, VideoView videoView) {
        this.rootView = constraintLayout;
        this.cancel = materialButton;
        this.currentTime = materialTextView;
        this.mainAction = materialButton2;
        this.preview = appCompatImageView;
        this.progressBar = progressBar;
        this.progressLayout = constraintLayout2;
        this.remainingTime = materialTextView2;
        this.send = materialButton3;
        this.timeSlider = slider;
        this.timelineLayout = constraintLayout3;
        this.videoView = videoView;
    }

    public static FragmentPreviewBinding bind(View view) {
        int i2 = R.id.cancel;
        MaterialButton materialButton = (MaterialButton) ViewBindings.a(i2, view);
        if (materialButton != null) {
            i2 = R.id.currentTime;
            MaterialTextView materialTextView = (MaterialTextView) ViewBindings.a(i2, view);
            if (materialTextView != null) {
                i2 = R.id.mainAction;
                MaterialButton materialButton2 = (MaterialButton) ViewBindings.a(i2, view);
                if (materialButton2 != null) {
                    i2 = R.id.preview;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.a(i2, view);
                    if (appCompatImageView != null) {
                        i2 = R.id.progressBar;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.a(i2, view);
                        if (progressBar != null) {
                            i2 = R.id.progressLayout;
                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.a(i2, view);
                            if (constraintLayout != null) {
                                i2 = R.id.remainingTime;
                                MaterialTextView materialTextView2 = (MaterialTextView) ViewBindings.a(i2, view);
                                if (materialTextView2 != null) {
                                    i2 = R.id.send;
                                    MaterialButton materialButton3 = (MaterialButton) ViewBindings.a(i2, view);
                                    if (materialButton3 != null) {
                                        i2 = R.id.timeSlider;
                                        Slider slider = (Slider) ViewBindings.a(i2, view);
                                        if (slider != null) {
                                            i2 = R.id.timelineLayout;
                                            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.a(i2, view);
                                            if (constraintLayout2 != null) {
                                                i2 = R.id.videoView;
                                                VideoView videoView = (VideoView) ViewBindings.a(i2, view);
                                                if (videoView != null) {
                                                    return new FragmentPreviewBinding((ConstraintLayout) view, materialButton, materialTextView, materialButton2, appCompatImageView, progressBar, constraintLayout, materialTextView2, materialButton3, slider, constraintLayout2, videoView);
                                                }
                                            }
                                        }
                                    }
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

    public static FragmentPreviewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_preview, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentPreviewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }
}
