package com.vuitton.android.presentation.screen.imagepicker;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import com.canhub.cropper.CropImageView;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentImageCropBinding;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import dagger.hilt.android.AndroidEntryPoint;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/imagepicker/ImageCropFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ImageCropFragment extends Hilt_ImageCropFragment {
    public static final /* synthetic */ KProperty[] G = {Reflection.f71922a.h(new PropertyReference1Impl(ImageCropFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentImageCropBinding;", 0))};
    public final FragmentViewBindingDelegate F;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/imagepicker/ImageCropFragment$Companion;", "", "", "WIDTH", "I", "HEIGHT", "JPEG_COMPRESSION_QUALITY", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public ImageCropFragment() {
        super(R.layout.fragment_image_crop);
        this.F = FragmentExtKt.d(this, ImageCropFragment$binding$2.f58194b);
    }

    @Override // com.vuitton.android.presentation.screen.imagepicker.Hilt_ImageCropFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        KProperty[] kPropertyArr = G;
        KProperty kProperty = kPropertyArr[0];
        FragmentViewBindingDelegate fragmentViewBindingDelegate = this.F;
        ViewExtKt.b(2, ((FragmentImageCropBinding) fragmentViewBindingDelegate.c(this, kProperty)).f51260b);
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        Bundle arguments = getArguments();
        ref$ObjectRef.f71921b = arguments != null ? arguments.getString("uri") : null;
        final FragmentImageCropBinding fragmentImageCropBinding = (FragmentImageCropBinding) fragmentViewBindingDelegate.c(this, kPropertyArr[0]);
        ViewExtKt.d(fragmentImageCropBinding.f51261c, new Function1() { // from class: com.vuitton.android.presentation.screen.imagepicker.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                KProperty[] kPropertyArr2 = ImageCropFragment.G;
                ((View) obj).getClass();
                Bitmap bitmapD = fragmentImageCropBinding.d.d(CropImageView.RequestSizeOptions.NONE);
                if (bitmapD != null) {
                    ContextScope contextScopeB = CoroutineScopeKt.b();
                    DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                    BuildersKt.c(contextScopeB, DefaultIoScheduler.f75161b, null, new ImageCropFragment$onViewCreated$1$1$1$1(this, ref$ObjectRef, bitmapD, null), 2);
                }
                return Unit.f71739a;
            }
        });
        CropImageView cropImageView = fragmentImageCropBinding.d;
        String str = (String) ref$ObjectRef.f71921b;
        cropImageView.setImageUriAsync(str != null ? Uri.parse(str) : null);
    }
}
