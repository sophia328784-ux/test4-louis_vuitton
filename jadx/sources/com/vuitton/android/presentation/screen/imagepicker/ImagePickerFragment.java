package com.vuitton.android.presentation.screen.imagepicker;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.viewbinding.ViewBindings;
import com.otaliastudios.cameraview.CameraListener;
import com.otaliastudios.cameraview.CameraView;
import com.otaliastudios.cameraview.PictureResult;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentImagePickerBinding;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.utils.FileUtils;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.fw;
import defpackage.hi;
import defpackage.m20;
import defpackage.r81;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ImagePickerFragment extends Hilt_ImagePickerFragment {
    public FragmentImagePickerBinding F;
    public File G;
    public final ViewModelLazy H;
    public CameraView I;

    public ImagePickerFragment() {
        final Function0 function0 = null;
        this.H = new ViewModelLazy(Reflection.f71922a.b(ImagePickerViewModel.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.imagepicker.ImagePickerFragment$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.requireActivity().getF13587c();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.imagepicker.ImagePickerFragment$special$$inlined$activityViewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.requireActivity().getF13588e();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.imagepicker.ImagePickerFragment$special$$inlined$activityViewModels$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.requireActivity().getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        layoutInflater.getClass();
        View viewInflate = layoutInflater.inflate(R.layout.fragment_image_picker, viewGroup, false);
        int i2 = R.id.border_camera_button;
        View viewA = ViewBindings.a(R.id.border_camera_button, viewInflate);
        if (viewA != null) {
            i2 = R.id.bottom_buttons_container;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.a(R.id.bottom_buttons_container, viewInflate);
            if (relativeLayout != null) {
                i2 = R.id.bottom_spacing;
                View viewA2 = ViewBindings.a(R.id.bottom_spacing, viewInflate);
                if (viewA2 != null) {
                    i2 = R.id.camera;
                    CameraView cameraView = (CameraView) ViewBindings.a(R.id.camera, viewInflate);
                    if (cameraView != null) {
                        i2 = R.id.camera_button;
                        View viewA3 = ViewBindings.a(R.id.camera_button, viewInflate);
                        if (viewA3 != null) {
                            i2 = R.id.camera_capture_button;
                            FrameLayout frameLayout = (FrameLayout) ViewBindings.a(R.id.camera_capture_button, viewInflate);
                            if (frameLayout != null) {
                                i2 = R.id.close_button;
                                AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.a(R.id.close_button, viewInflate);
                                if (appCompatImageView != null) {
                                    i2 = R.id.gallery_button;
                                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.a(R.id.gallery_button, viewInflate);
                                    if (appCompatImageView2 != null) {
                                        i2 = R.id.top_buttons_container;
                                        FrameLayout frameLayout2 = (FrameLayout) ViewBindings.a(R.id.top_buttons_container, viewInflate);
                                        if (frameLayout2 != null) {
                                            ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
                                            this.F = new FragmentImagePickerBinding(constraintLayout, viewA, relativeLayout, viewA2, cameraView, viewA3, frameLayout, appCompatImageView, appCompatImageView2, frameLayout2);
                                            constraintLayout.getClass();
                                            return constraintLayout;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onDestroyView() {
        super.onDestroyView();
        CameraView cameraView = this.I;
        if (cameraView == null) {
            Intrinsics.h("camera");
            throw null;
        }
        cameraView.close();
        this.F = null;
    }

    @Override // com.vuitton.android.presentation.screen.imagepicker.Hilt_ImagePickerFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        FragmentImagePickerBinding fragmentImagePickerBinding = this.F;
        fragmentImagePickerBinding.getClass();
        ViewExtKt.b(1, fragmentImagePickerBinding.f51268j);
        FragmentImagePickerBinding fragmentImagePickerBinding2 = this.F;
        fragmentImagePickerBinding2.getClass();
        int i2 = 2;
        ViewExtKt.b(2, fragmentImagePickerBinding2.f51263c);
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        this.G = FileUtils.b(contextRequireContext);
        FragmentImagePickerBinding fragmentImagePickerBinding3 = this.F;
        fragmentImagePickerBinding3.getClass();
        this.I = fragmentImagePickerBinding3.f51264e;
        FragmentImagePickerBinding fragmentImagePickerBinding4 = this.F;
        fragmentImagePickerBinding4.getClass();
        ViewExtKt.d(fragmentImagePickerBinding4.g, new m20(this, 0));
        FragmentImagePickerBinding fragmentImagePickerBinding5 = this.F;
        fragmentImagePickerBinding5.getClass();
        ViewExtKt.d(fragmentImagePickerBinding5.f51267i, new m20(this, 1));
        ((ImagePickerViewModel) this.H.getF71699b()).f58208a.observe(getViewLifecycleOwner(), new ImagePickerFragment$sam$androidx_lifecycle_Observer$0(new m20(this, 2)));
        CameraView cameraView = this.I;
        if (cameraView == null) {
            Intrinsics.h("camera");
            throw null;
        }
        cameraView.t.add(new CameraListener() { // from class: com.vuitton.android.presentation.screen.imagepicker.ImagePickerFragment.onViewCreated.4
            @Override // com.otaliastudios.cameraview.CameraListener
            public final void a(PictureResult pictureResult) {
                ImagePickerFragment imagePickerFragment = ImagePickerFragment.this;
                File file = imagePickerFragment.G;
                if (file != null) {
                    pictureResult.a(file, new fw(imagePickerFragment, 9));
                } else {
                    Intrinsics.h("file");
                    throw null;
                }
            }
        });
        FragmentImagePickerBinding fragmentImagePickerBinding6 = this.F;
        fragmentImagePickerBinding6.getClass();
        fragmentImagePickerBinding6.f51266h.setOnClickListener(new hi(this, i2));
    }
}
