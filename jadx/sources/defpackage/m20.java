package defpackage;

import android.view.View;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.PickVisualMediaRequest;
import androidx.activity.result.contract.ActivityResultContracts$PickMultipleVisualMedia;
import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia;
import androidx.fragment.app.FragmentActivity;
import com.otaliastudios.cameraview.CameraView;
import com.otaliastudios.cameraview.PictureResult;
import com.vuitton.android.presentation.databinding.FragmentImagePickerBinding;
import com.vuitton.android.presentation.screen.imagepicker.ImagePickerActivity;
import com.vuitton.android.presentation.screen.imagepicker.ImagePickerFragment;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class m20 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76151b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ImagePickerFragment f76152c;

    public /* synthetic */ m20(ImagePickerFragment imagePickerFragment, int i2) {
        this.f76151b = i2;
        this.f76152c = imagePickerFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f76151b;
        ImagePickerFragment imagePickerFragment = this.f76152c;
        switch (i2) {
            case 0:
                ((View) obj).getClass();
                CameraView cameraView = imagePickerFragment.I;
                if (cameraView == null) {
                    Intrinsics.h("camera");
                    throw null;
                }
                cameraView.p.g0(new PictureResult.Stub());
                return Unit.f71739a;
            case 1:
                ((View) obj).getClass();
                FragmentActivity activity = imagePickerFragment.getActivity();
                activity.getClass();
                ActivityResultLauncher activityResultLauncher = ((ImagePickerActivity) activity).p;
                if (activityResultLauncher == null) {
                    Intrinsics.h("pickImageLauncher");
                    throw null;
                }
                ActivityResultContracts$PickMultipleVisualMedia.f766b.getClass();
                int iA = ActivityResultContracts$PickMultipleVisualMedia.Companion.a();
                ActivityResultContracts$PickVisualMedia.DefaultTab.PhotosTab photosTab = ActivityResultContracts$PickVisualMedia.DefaultTab.PhotosTab.f769a;
                photosTab.getClass();
                PickVisualMediaRequest.Builder builder = new PickVisualMediaRequest.Builder();
                builder.f758a = ActivityResultContracts$PickVisualMedia.ImageOnly.f772a;
                builder.f759b = iA;
                builder.f760c = photosTab;
                activityResultLauncher.a(builder.a());
                return Unit.f71739a;
            default:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                FragmentImagePickerBinding fragmentImagePickerBinding = imagePickerFragment.F;
                if (zBooleanValue) {
                    fragmentImagePickerBinding.getClass();
                    fragmentImagePickerBinding.f51265f.setEnabled(true);
                    FragmentImagePickerBinding fragmentImagePickerBinding2 = imagePickerFragment.F;
                    fragmentImagePickerBinding2.getClass();
                    fragmentImagePickerBinding2.f51262b.setEnabled(true);
                    CameraView cameraView2 = imagePickerFragment.I;
                    if (cameraView2 == null) {
                        Intrinsics.h("camera");
                        throw null;
                    }
                    if (cameraView2.d()) {
                        CameraView cameraView3 = imagePickerFragment.I;
                        if (cameraView3 == null) {
                            Intrinsics.h("camera");
                            throw null;
                        }
                        cameraView3.close();
                    }
                    CameraView cameraView4 = imagePickerFragment.I;
                    if (cameraView4 == null) {
                        Intrinsics.h("camera");
                        throw null;
                    }
                    cameraView4.open();
                } else {
                    fragmentImagePickerBinding.getClass();
                    fragmentImagePickerBinding.f51265f.setEnabled(false);
                    FragmentImagePickerBinding fragmentImagePickerBinding3 = imagePickerFragment.F;
                    fragmentImagePickerBinding3.getClass();
                    fragmentImagePickerBinding3.f51262b.setEnabled(false);
                }
                return Unit.f71739a;
        }
    }
}
