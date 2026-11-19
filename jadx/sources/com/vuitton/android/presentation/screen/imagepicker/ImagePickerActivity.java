package com.vuitton.android.presentation.screen.imagepicker;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$PickVisualMedia;
import androidx.activity.result.contract.ActivityResultContracts$RequestPermission;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentContainerView;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.imagepicker.ImagePickerActivity;
import com.vuitton.android.presentation.screen.imagepicker.ImagePickerViewModel;
import com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/imagepicker/ImagePickerActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ImagePickerActivity extends Hilt_ImagePickerActivity {
    public static final /* synthetic */ int u = 0;
    public ActivityResultLauncher p;
    public ActivityResultLauncher q;
    public final ViewModelLazy r;
    public GenericBottomSheet s;
    public boolean t;

    public ImagePickerActivity() {
        final Function0 function0 = null;
        this.r = new ViewModelLazy(Reflection.f71922a.b(ImagePickerViewModel.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.imagepicker.ImagePickerActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.imagepicker.ImagePickerActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.imagepicker.ImagePickerActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    public final void H() {
        if (ContextCompat.checkSelfPermission(getApplicationContext(), "android.permission.CAMERA") == 0) {
            ((ImagePickerViewModel) this.r.getF71699b()).f58208a.setValue(Boolean.TRUE);
            return;
        }
        ActivityResultLauncher activityResultLauncher = this.q;
        if (activityResultLauncher != null) {
            activityResultLauncher.a("android.permission.CAMERA");
        } else {
            Intrinsics.h("permissionCameraResultLauncher");
            throw null;
        }
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final int i2 = 0;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_image_picker, (ViewGroup) null, false);
        ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
        if (((FragmentContainerView) ViewBindings.a(R.id.nav_host_fragment, viewInflate)) == null) {
            r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(R.id.nav_host_fragment)));
            return;
        }
        constraintLayout.getClass();
        setContentView(constraintLayout);
        ActivityResultLauncher activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts$PickVisualMedia(), new ActivityResultCallback(this) { // from class: l20

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ImagePickerActivity f75924c;

            {
                this.f75924c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                int i3 = i2;
                ImagePickerActivity imagePickerActivity = this.f75924c;
                switch (i3) {
                    case 0:
                        Uri uri = (Uri) obj;
                        int i4 = ImagePickerActivity.u;
                        if (uri != null) {
                            try {
                                Result.Companion companion = Result.INSTANCE;
                                imagePickerActivity.getContentResolver().takePersistableUriPermission(uri, 1);
                                break;
                            } catch (Throwable th) {
                                Result.Companion companion2 = Result.INSTANCE;
                                new Result.Failure(th);
                            }
                            Intent intent = new Intent();
                            intent.putExtra("IMAGE_RESULT", uri.toString());
                            intent.addFlags(1);
                            intent.setData(uri);
                            imagePickerActivity.setResult(-1, intent);
                            imagePickerActivity.finish();
                            return;
                        }
                        return;
                    default:
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        int i5 = ImagePickerActivity.u;
                        ViewModelLazy viewModelLazy = imagePickerActivity.r;
                        if (zBooleanValue) {
                            ((ImagePickerViewModel) viewModelLazy.getF71699b()).f58208a.setValue(Boolean.TRUE);
                            return;
                        }
                        ((ImagePickerViewModel) viewModelLazy.getF71699b()).f58208a.setValue(Boolean.FALSE);
                        GenericBottomSheet genericBottomSheet = imagePickerActivity.s;
                        if (genericBottomSheet != null) {
                            genericBottomSheet.show(imagePickerActivity.getSupportFragmentManager(), GenericBottomSheet.S);
                            return;
                        } else {
                            Intrinsics.h("bottomSheetCamera");
                            throw null;
                        }
                }
            }
        });
        activityResultLauncherRegisterForActivityResult.getClass();
        this.p = activityResultLauncherRegisterForActivityResult;
        GenericBottomSheet.Companion companion = GenericBottomSheet.R;
        String string = getString(R.string.camera_access_subtitle);
        string.getClass();
        String string2 = getString(R.string.button_no);
        String string3 = getString(R.string.cta_open_settings);
        String string4 = getString(R.string.camera_access_title);
        companion.getClass();
        GenericBottomSheet genericBottomSheetA = GenericBottomSheet.Companion.a(string, string2, string3, string4);
        this.s = genericBottomSheetA;
        genericBottomSheetA.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.imagepicker.ImagePickerActivity.onCreate.2
            @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
            public final void a() {
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                ImagePickerActivity imagePickerActivity = ImagePickerActivity.this;
                intent.setData(Uri.fromParts("package", imagePickerActivity.getPackageName(), null));
                imagePickerActivity.startActivity(intent);
            }
        };
        genericBottomSheetA.P = new GenericBottomSheet.OnNegativeClickListener() { // from class: com.vuitton.android.presentation.screen.imagepicker.ImagePickerActivity.onCreate.3
            @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnNegativeClickListener
            public final void a() {
                int i3 = ImagePickerActivity.u;
                ((ImagePickerViewModel) ImagePickerActivity.this.r.getF71699b()).f58208a.setValue(Boolean.FALSE);
            }
        };
        final int i3 = 1;
        this.q = registerForActivityResult(new ActivityResultContracts$RequestPermission(), new ActivityResultCallback(this) { // from class: l20

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ImagePickerActivity f75924c;

            {
                this.f75924c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                int i4 = i3;
                ImagePickerActivity imagePickerActivity = this.f75924c;
                switch (i4) {
                    case 0:
                        Uri uri = (Uri) obj;
                        int i5 = ImagePickerActivity.u;
                        if (uri != null) {
                            try {
                                Result.Companion companion2 = Result.INSTANCE;
                                imagePickerActivity.getContentResolver().takePersistableUriPermission(uri, 1);
                                break;
                            } catch (Throwable th) {
                                Result.Companion companion3 = Result.INSTANCE;
                                new Result.Failure(th);
                            }
                            Intent intent = new Intent();
                            intent.putExtra("IMAGE_RESULT", uri.toString());
                            intent.addFlags(1);
                            intent.setData(uri);
                            imagePickerActivity.setResult(-1, intent);
                            imagePickerActivity.finish();
                            return;
                        }
                        return;
                    default:
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        int i6 = ImagePickerActivity.u;
                        ViewModelLazy viewModelLazy = imagePickerActivity.r;
                        if (zBooleanValue) {
                            ((ImagePickerViewModel) viewModelLazy.getF71699b()).f58208a.setValue(Boolean.TRUE);
                            return;
                        }
                        ((ImagePickerViewModel) viewModelLazy.getF71699b()).f58208a.setValue(Boolean.FALSE);
                        GenericBottomSheet genericBottomSheet = imagePickerActivity.s;
                        if (genericBottomSheet != null) {
                            genericBottomSheet.show(imagePickerActivity.getSupportFragmentManager(), GenericBottomSheet.S);
                            return;
                        } else {
                            Intrinsics.h("bottomSheetCamera");
                            throw null;
                        }
                }
            }
        });
        H();
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        if (this.t) {
            GenericBottomSheet genericBottomSheet = this.s;
            if (genericBottomSheet == null) {
                Intrinsics.h("bottomSheetCamera");
                throw null;
            }
            if (genericBottomSheet.isAdded()) {
                return;
            }
            H();
            this.t = false;
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        super.onStop();
        this.t = true;
    }
}
