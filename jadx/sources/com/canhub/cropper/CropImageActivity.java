package com.canhub.cropper;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.Pair;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedDispatcherKt;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContract;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AlertController;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.BlendModeColorFilterCompat;
import androidx.core.graphics.BlendModeCompat;
import com.canhub.cropper.CropImageActivity;
import com.canhub.cropper.CropImageView;
import com.canhub.cropper.databinding.CropImageActivityBinding;
import com.canhub.cropper.utils.GetUriForFileKt;
import com.dynatrace.android.callback.Callback;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.vuitton.android.R;
import defpackage.ck;
import defpackage.md;
import defpackage.r81;
import defpackage.v40;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobSupport;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0017\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0002\u0006\u0007B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Lcom/canhub/cropper/CropImageActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Lcom/canhub/cropper/CropImageView$OnSetImageUriCompleteListener;", "Lcom/canhub/cropper/CropImageView$OnCropImageCompleteListener;", "<init>", "()V", "Source", "Companion", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class CropImageActivity extends AppCompatActivity implements CropImageView.OnSetImageUriCompleteListener, CropImageView.OnCropImageCompleteListener {
    public static final /* synthetic */ int p = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Uri f25048i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public CropImageOptions f25049j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public CropImageView f25050k;
    public CropImageActivityBinding l;
    public Uri m;
    public final ActivityResultLauncher n;
    public final ActivityResultLauncher o;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/canhub/cropper/CropImageActivity$Companion;", "", "", "BUNDLE_KEY_TMP_URI", "Ljava/lang/String;", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/canhub/cropper/CropImageActivity$Source;", "", "CAMERA", "GALLERY", "cropper_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Source {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Source[] $VALUES;
        public static final Source CAMERA;
        public static final Source GALLERY;

        static {
            Source source = new Source("CAMERA", 0);
            CAMERA = source;
            Source source2 = new Source("GALLERY", 1);
            GALLERY = source2;
            Source[] sourceArr = {source, source2};
            $VALUES = sourceArr;
            $ENTRIES = EnumEntriesKt.a(sourceArr);
        }

        public static Source valueOf(String str) {
            return (Source) Enum.valueOf(Source.class, str);
        }

        public static Source[] values() {
            return (Source[]) $VALUES.clone();
        }
    }

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f25051a;

        static {
            int[] iArr = new int[Source.values().length];
            try {
                iArr[Source.CAMERA.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Source.GALLERY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f25051a = iArr;
        }
    }

    /* JADX INFO: renamed from: com.canhub.cropper.CropImageActivity$onCreate$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    final /* synthetic */ class AnonymousClass1 extends FunctionReferenceImpl implements Function1<Source, Unit> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) throws IOException {
            Source source = (Source) obj;
            source.getClass();
            CropImageActivity cropImageActivity = (CropImageActivity) this.receiver;
            int i2 = CropImageActivity.p;
            cropImageActivity.getClass();
            int i3 = WhenMappings.f25051a[source.ordinal()];
            if (i3 == 1) {
                File fileCreateTempFile = File.createTempFile("tmp_image_file", ".png", cropImageActivity.getCacheDir());
                fileCreateTempFile.createNewFile();
                fileCreateTempFile.deleteOnExit();
                Uri uriA = GetUriForFileKt.a(cropImageActivity, fileCreateTempFile);
                cropImageActivity.m = uriA;
                cropImageActivity.o.a(uriA);
            } else {
                if (i3 != 2) {
                    v40.g();
                    return null;
                }
                cropImageActivity.n.a("image/*");
            }
            return Unit.f71739a;
        }
    }

    static {
        new Companion(null);
    }

    public CropImageActivity() {
        final int i2 = 0;
        this.n = registerForActivityResult(new ActivityResultContract<String, Uri>() { // from class: androidx.activity.result.contract.ActivityResultContracts$GetContent
            @Override // androidx.activity.result.contract.ActivityResultContract
            public final Intent a(Context context, Object obj) {
                String str = (String) obj;
                str.getClass();
                Intent type = new Intent("android.intent.action.GET_CONTENT").addCategory("android.intent.category.OPENABLE").setType(str);
                type.getClass();
                return type;
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            public final ActivityResultContract.SynchronousResult b(Context context, Object obj) {
                ((String) obj).getClass();
                return null;
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            public final Object c(int i3, Intent intent) {
                if (i3 != -1) {
                    intent = null;
                }
                if (intent != null) {
                    return intent.getData();
                }
                return null;
            }
        }, new ActivityResultCallback(this) { // from class: nr

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CropImageActivity f76597c;

            {
                this.f76597c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                int i3 = i2;
                CropImageActivity cropImageActivity = this.f76597c;
                switch (i3) {
                    case 0:
                        Uri uri = (Uri) obj;
                        int i4 = CropImageActivity.p;
                        if (uri != null) {
                            cropImageActivity.f25048i = uri;
                            CropImageView cropImageView = cropImageActivity.f25050k;
                            if (cropImageView != null) {
                                cropImageView.setImageUriAsync(uri);
                            }
                        } else {
                            cropImageActivity.x();
                        }
                        break;
                    default:
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        int i5 = CropImageActivity.p;
                        if (!zBooleanValue) {
                            cropImageActivity.x();
                        } else {
                            Uri uri2 = cropImageActivity.m;
                            if (uri2 != null) {
                                cropImageActivity.f25048i = uri2;
                                CropImageView cropImageView2 = cropImageActivity.f25050k;
                                if (cropImageView2 != null) {
                                    cropImageView2.setImageUriAsync(uri2);
                                }
                            } else {
                                cropImageActivity.x();
                            }
                        }
                        break;
                }
            }
        });
        final int i3 = 1;
        this.o = registerForActivityResult(new ActivityResultContract<Uri, Boolean>() { // from class: androidx.activity.result.contract.ActivityResultContracts$TakePicture
            @Override // androidx.activity.result.contract.ActivityResultContract
            public final Intent a(Context context, Object obj) {
                Uri uri = (Uri) obj;
                uri.getClass();
                Intent intentAddFlags = new Intent("android.media.action.IMAGE_CAPTURE").putExtra("output", uri).addFlags(1).addFlags(2);
                intentAddFlags.getClass();
                return intentAddFlags;
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            public final ActivityResultContract.SynchronousResult b(Context context, Object obj) {
                ((Uri) obj).getClass();
                return null;
            }

            @Override // androidx.activity.result.contract.ActivityResultContract
            public final Object c(int i4, Intent intent) {
                return Boolean.valueOf(i4 == -1);
            }
        }, new ActivityResultCallback(this) { // from class: nr

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ CropImageActivity f76597c;

            {
                this.f76597c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                int i4 = i3;
                CropImageActivity cropImageActivity = this.f76597c;
                switch (i4) {
                    case 0:
                        Uri uri = (Uri) obj;
                        int i5 = CropImageActivity.p;
                        if (uri != null) {
                            cropImageActivity.f25048i = uri;
                            CropImageView cropImageView = cropImageActivity.f25050k;
                            if (cropImageView != null) {
                                cropImageView.setImageUriAsync(uri);
                            }
                        } else {
                            cropImageActivity.x();
                        }
                        break;
                    default:
                        boolean zBooleanValue = ((Boolean) obj).booleanValue();
                        int i6 = CropImageActivity.p;
                        if (!zBooleanValue) {
                            cropImageActivity.x();
                        } else {
                            Uri uri2 = cropImageActivity.m;
                            if (uri2 != null) {
                                cropImageActivity.f25048i = uri2;
                                CropImageView cropImageView2 = cropImageActivity.f25050k;
                                if (cropImageView2 != null) {
                                    cropImageView2.setImageUriAsync(uri2);
                                }
                            } else {
                                cropImageActivity.x();
                            }
                        }
                        break;
                }
            }
        });
    }

    public static void y(Menu menu, int i2, int i3) {
        Drawable icon;
        menu.getClass();
        MenuItem menuItemFindItem = menu.findItem(i2);
        if (menuItemFindItem == null || (icon = menuItemFindItem.getIcon()) == null) {
            return;
        }
        try {
            icon.mutate();
            icon.setColorFilter(BlendModeColorFilterCompat.a(i3, BlendModeCompat.SRC_ATOP));
            menuItemFindItem.setIcon(icon);
        } catch (Exception unused) {
        }
    }

    @Override // com.canhub.cropper.CropImageView.OnCropImageCompleteListener
    public final void g(CropImageView cropImageView, CropImageView.CropResult cropResult) {
        w(cropResult.f25081c, cropResult.d, cropResult.f25085i);
    }

    @Override // com.canhub.cropper.CropImageView.OnSetImageUriCompleteListener
    public final void m(CropImageView cropImageView, Uri uri, Exception exc) {
        CropImageView cropImageView2;
        CropImageView cropImageView3;
        uri.getClass();
        if (exc != null) {
            w(null, exc, 1);
            return;
        }
        CropImageOptions cropImageOptions = this.f25049j;
        if (cropImageOptions == null) {
            Intrinsics.h("cropImageOptions");
            throw null;
        }
        Rect rect = cropImageOptions.Y;
        if (rect != null && (cropImageView3 = this.f25050k) != null) {
            cropImageView3.setCropRect(rect);
        }
        CropImageOptions cropImageOptions2 = this.f25049j;
        if (cropImageOptions2 == null) {
            Intrinsics.h("cropImageOptions");
            throw null;
        }
        int i2 = cropImageOptions2.Z;
        if (i2 > 0 && (cropImageView2 = this.f25050k) != null) {
            cropImageView2.setRotatedDegrees(i2);
        }
        CropImageOptions cropImageOptions3 = this.f25049j;
        if (cropImageOptions3 == null) {
            Intrinsics.h("cropImageOptions");
            throw null;
        }
        if (cropImageOptions3.h1) {
            v();
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x005a  */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) throws IOException {
        Uri uri;
        CropImageOptions cropImageOptions;
        Uri uriA;
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.crop_image_activity, (ViewGroup) null, false);
        if (viewInflate == null) {
            r81.d("rootView");
            return;
        }
        CropImageView cropImageView = (CropImageView) viewInflate;
        this.l = new CropImageActivityBinding(cropImageView, cropImageView);
        setContentView(cropImageView);
        CropImageActivityBinding cropImageActivityBinding = this.l;
        if (cropImageActivityBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        this.f25050k = cropImageActivityBinding.f25116c;
        Bundle bundleExtra = getIntent().getBundleExtra("CROP_IMAGE_EXTRA_BUNDLE");
        if (bundleExtra != null) {
            Parcelable parcelable = bundleExtra.getParcelable("CROP_IMAGE_EXTRA_SOURCE");
            if (!(parcelable instanceof Uri)) {
                parcelable = null;
            }
            uri = (Uri) parcelable;
        } else {
            uri = null;
        }
        this.f25048i = uri;
        if (bundleExtra != null) {
            Parcelable parcelable2 = bundleExtra.getParcelable("CROP_IMAGE_EXTRA_OPTIONS");
            if (!(parcelable2 instanceof CropImageOptions)) {
                parcelable2 = null;
            }
            cropImageOptions = (CropImageOptions) parcelable2;
            if (cropImageOptions == null) {
                cropImageOptions = new CropImageOptions(false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -1, -1, 63, null);
            }
        } else {
            cropImageOptions = new CropImageOptions(false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, null, false, false, false, 0, false, false, false, false, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, false, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, 0, 0, 0, 0, 0, 0, 0, null, 0, null, null, null, 0, 0, 0, null, false, null, 0, false, false, false, 0, false, false, null, 0, false, false, null, null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0, null, 0, null, null, null, null, -1, -1, 63, null);
        }
        this.f25049j = cropImageOptions;
        if (bundle == null) {
            Uri uri2 = this.f25048i;
            if (uri2 == null || uri2.equals(Uri.EMPTY)) {
                CropImageOptions cropImageOptions2 = this.f25049j;
                if (cropImageOptions2 == null) {
                    Intrinsics.h("cropImageOptions");
                    throw null;
                }
                boolean z = cropImageOptions2.f25065c;
                if (cropImageOptions2.i1) {
                    CropImageIntentChooser cropImageIntentChooser = new CropImageIntentChooser(this, new CropImageIntentChooser.ResultCallback() { // from class: com.canhub.cropper.CropImageActivity$showIntentChooser$ciIntentChooser$1
                        @Override // com.canhub.cropper.CropImageIntentChooser.ResultCallback
                        public final void a(Uri uri3) {
                            CropImageActivity cropImageActivity = this.f25052a;
                            if (uri3 == null) {
                                cropImageActivity.x();
                                return;
                            }
                            cropImageActivity.f25048i = uri3;
                            CropImageView cropImageView2 = cropImageActivity.f25050k;
                            if (cropImageView2 != null) {
                                cropImageView2.setImageUriAsync(uri3);
                            }
                        }

                        @Override // com.canhub.cropper.CropImageIntentChooser.ResultCallback
                        public final void b() {
                            this.f25052a.x();
                        }
                    });
                    CropImageOptions cropImageOptions3 = this.f25049j;
                    if (cropImageOptions3 == null) {
                        Intrinsics.h("cropImageOptions");
                        throw null;
                    }
                    boolean z2 = cropImageOptions3.f25065c;
                    String str = cropImageOptions3.j1;
                    if (str != null) {
                        if (StringsKt.w(str)) {
                            str = null;
                        }
                        if (str != null) {
                            cropImageIntentChooser.f25061c = str;
                        }
                    }
                    List list = cropImageOptions3.k1;
                    if (list != null) {
                        if (list.isEmpty()) {
                            list = null;
                        }
                        if (list != null) {
                            cropImageIntentChooser.d = list;
                        }
                    }
                    if (z2) {
                        File fileCreateTempFile = File.createTempFile("tmp_image_file", ".png", getCacheDir());
                        fileCreateTempFile.createNewFile();
                        fileCreateTempFile.deleteOnExit();
                        uriA = GetUriForFileKt.a(this, fileCreateTempFile);
                    } else {
                        uriA = null;
                    }
                    cropImageIntentChooser.b(z2, cropImageOptions3.f25064b, uriA);
                } else {
                    boolean z3 = cropImageOptions2.f25064b;
                    if (z3 && z) {
                        final AnonymousClass1 anonymousClass1 = new AnonymousClass1(1, this, CropImageActivity.class, "openSource", "openSource(Lcom/canhub/cropper/CropImageActivity$Source;)V", 0);
                        AlertDialog.Builder builder = new AlertDialog.Builder(this);
                        AlertController.AlertParams alertParams = builder.f810a;
                        alertParams.l = false;
                        alertParams.o = new DialogInterface.OnKeyListener() { // from class: or
                            @Override // android.content.DialogInterface.OnKeyListener
                            public final boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                                int i3 = CropImageActivity.p;
                                if (i2 == 4 && keyEvent.getAction() == 1) {
                                    CropImageActivity cropImageActivity = this.f77526b;
                                    cropImageActivity.x();
                                    cropImageActivity.finish();
                                }
                                return true;
                            }
                        };
                        builder.f(R.string.pick_image_chooser_title);
                        builder.b(new String[]{getString(R.string.pick_image_camera), getString(R.string.pick_image_gallery)}, new DialogInterface.OnClickListener() { // from class: com.canhub.cropper.a
                            @Override // android.content.DialogInterface.OnClickListener
                            public final void onClick(DialogInterface dialogInterface, int i2) throws IOException {
                                int i3 = CropImageActivity.p;
                                ((CropImageActivity.AnonymousClass1) anonymousClass1).invoke(i2 == 0 ? CropImageActivity.Source.CAMERA : CropImageActivity.Source.GALLERY);
                                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
                            }
                        });
                        builder.g();
                    } else if (z3) {
                        this.n.a("image/*");
                    } else if (z) {
                        File fileCreateTempFile2 = File.createTempFile("tmp_image_file", ".png", getCacheDir());
                        fileCreateTempFile2.createNewFile();
                        fileCreateTempFile2.deleteOnExit();
                        Uri uriA2 = GetUriForFileKt.a(this, fileCreateTempFile2);
                        this.m = uriA2;
                        this.o.a(uriA2);
                    } else {
                        finish();
                    }
                }
            } else {
                CropImageView cropImageView2 = this.f25050k;
                if (cropImageView2 != null) {
                    cropImageView2.setImageUriAsync(this.f25048i);
                }
            }
        } else {
            String string = bundle.getString("bundle_key_tmp_uri");
            this.m = string != null ? Uri.parse(string) : null;
        }
        CropImageOptions cropImageOptions4 = this.f25049j;
        if (cropImageOptions4 == null) {
            Intrinsics.h("cropImageOptions");
            throw null;
        }
        int i2 = cropImageOptions4.o1;
        CropImageActivityBinding cropImageActivityBinding2 = this.l;
        if (cropImageActivityBinding2 == null) {
            Intrinsics.h("binding");
            throw null;
        }
        cropImageActivityBinding2.f25115b.setBackgroundColor(i2);
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            CropImageOptions cropImageOptions5 = this.f25049j;
            if (cropImageOptions5 == null) {
                Intrinsics.h("cropImageOptions");
                throw null;
            }
            CharSequence charSequence = cropImageOptions5.N;
            if (charSequence.length() == 0) {
                charSequence = "";
            }
            setTitle(charSequence);
            supportActionBar.setDisplayHomeAsUpEnabled(true);
            CropImageOptions cropImageOptions6 = this.f25049j;
            if (cropImageOptions6 == null) {
                Intrinsics.h("cropImageOptions");
                throw null;
            }
            Integer num = cropImageOptions6.p1;
            if (num != null) {
                supportActionBar.setBackgroundDrawable(new ColorDrawable(num.intValue()));
            }
            CropImageOptions cropImageOptions7 = this.f25049j;
            if (cropImageOptions7 == null) {
                Intrinsics.h("cropImageOptions");
                throw null;
            }
            Integer num2 = cropImageOptions7.q1;
            if (num2 != null) {
                int iIntValue = num2.intValue();
                SpannableString spannableString = new SpannableString(getTitle());
                spannableString.setSpan(new ForegroundColorSpan(iIntValue), 0, spannableString.length(), 33);
                setTitle(spannableString);
            }
            CropImageOptions cropImageOptions8 = this.f25049j;
            if (cropImageOptions8 == null) {
                Intrinsics.h("cropImageOptions");
                throw null;
            }
            Integer num3 = cropImageOptions8.r1;
            if (num3 != null) {
                int iIntValue2 = num3.intValue();
                try {
                    Drawable drawable = ContextCompat.getDrawable(this, R.drawable.ic_arrow_back_24);
                    if (drawable != null) {
                        drawable.setColorFilter(new PorterDuffColorFilter(iIntValue2, PorterDuff.Mode.SRC_ATOP));
                    }
                    supportActionBar.setHomeAsUpIndicator(drawable);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        OnBackPressedDispatcherKt.a(getOnBackPressedDispatcher(), null, new ck(this, 8), 3);
    }

    @Override // android.app.Activity
    public final boolean onCreateOptionsMenu(Menu menu) {
        Drawable drawable;
        CharSequence title;
        menu.getClass();
        CropImageOptions cropImageOptions = this.f25049j;
        if (cropImageOptions == null) {
            Intrinsics.h("cropImageOptions");
            throw null;
        }
        if (!cropImageOptions.h1) {
            getMenuInflater().inflate(R.menu.crop_image_menu, menu);
            CropImageOptions cropImageOptions2 = this.f25049j;
            if (cropImageOptions2 == null) {
                Intrinsics.h("cropImageOptions");
                throw null;
            }
            if (!cropImageOptions2.h0) {
                menu.removeItem(R.id.ic_rotate_left_24);
                menu.removeItem(R.id.ic_rotate_right_24);
            } else if (cropImageOptions2.b1) {
                menu.findItem(R.id.ic_rotate_left_24).setVisible(true);
            }
            CropImageOptions cropImageOptions3 = this.f25049j;
            if (cropImageOptions3 == null) {
                Intrinsics.h("cropImageOptions");
                throw null;
            }
            if (!cropImageOptions3.t0) {
                menu.removeItem(R.id.ic_flip_24);
            }
            CropImageOptions cropImageOptions4 = this.f25049j;
            if (cropImageOptions4 == null) {
                Intrinsics.h("cropImageOptions");
                throw null;
            }
            if (cropImageOptions4.f1 != null) {
                MenuItem menuItemFindItem = menu.findItem(R.id.crop_image_menu_crop);
                CropImageOptions cropImageOptions5 = this.f25049j;
                if (cropImageOptions5 == null) {
                    Intrinsics.h("cropImageOptions");
                    throw null;
                }
                menuItemFindItem.setTitle(cropImageOptions5.f1);
            }
            try {
                CropImageOptions cropImageOptions6 = this.f25049j;
                if (cropImageOptions6 == null) {
                    Intrinsics.h("cropImageOptions");
                    throw null;
                }
                int i2 = cropImageOptions6.g1;
                if (i2 != 0) {
                    drawable = ContextCompat.getDrawable(this, i2);
                    try {
                        menu.findItem(R.id.crop_image_menu_crop).setIcon(drawable);
                    } catch (Exception unused) {
                    }
                } else {
                    drawable = null;
                }
                CropImageOptions cropImageOptions7 = this.f25049j;
                if (cropImageOptions7 == null) {
                    Intrinsics.h("cropImageOptions");
                    throw null;
                }
                int i3 = cropImageOptions7.O;
                if (i3 != 0) {
                    y(menu, R.id.ic_rotate_left_24, i3);
                    CropImageOptions cropImageOptions8 = this.f25049j;
                    if (cropImageOptions8 == null) {
                        Intrinsics.h("cropImageOptions");
                        throw null;
                    }
                    y(menu, R.id.ic_rotate_right_24, cropImageOptions8.O);
                    CropImageOptions cropImageOptions9 = this.f25049j;
                    if (cropImageOptions9 == null) {
                        Intrinsics.h("cropImageOptions");
                        throw null;
                    }
                    y(menu, R.id.ic_flip_24, cropImageOptions9.O);
                    if (drawable != null) {
                        CropImageOptions cropImageOptions10 = this.f25049j;
                        if (cropImageOptions10 == null) {
                            Intrinsics.h("cropImageOptions");
                            throw null;
                        }
                        y(menu, R.id.crop_image_menu_crop, cropImageOptions10.O);
                    }
                }
                CropImageOptions cropImageOptions11 = this.f25049j;
                if (cropImageOptions11 == null) {
                    Intrinsics.h("cropImageOptions");
                    throw null;
                }
                Integer num = cropImageOptions11.P;
                if (num != null) {
                    int iIntValue = num.intValue();
                    Iterator it = CollectionsKt.P(Integer.valueOf(R.id.ic_rotate_left_24), Integer.valueOf(R.id.ic_rotate_right_24), Integer.valueOf(R.id.ic_flip_24), Integer.valueOf(R.id.ic_flip_24_horizontally), Integer.valueOf(R.id.ic_flip_24_vertically), Integer.valueOf(R.id.crop_image_menu_crop)).iterator();
                    while (it.hasNext()) {
                        MenuItem menuItemFindItem2 = menu.findItem(((Number) it.next()).intValue());
                        if (menuItemFindItem2 != null && (title = menuItemFindItem2.getTitle()) != null && (!StringsKt.w(title))) {
                            try {
                                SpannableString spannableString = new SpannableString(title);
                                spannableString.setSpan(new ForegroundColorSpan(iIntValue), 0, spannableString.length(), 33);
                                menuItemFindItem2.setTitle(spannableString);
                            } catch (Exception unused2) {
                            }
                        }
                    }
                }
            } catch (Exception unused3) {
            }
        }
        return true;
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        Callback.w(menuItem);
        try {
            menuItem.getClass();
            int itemId = menuItem.getItemId();
            boolean zOnOptionsItemSelected = true;
            if (itemId == R.id.crop_image_menu_crop) {
                v();
            } else if (itemId == R.id.ic_rotate_left_24) {
                CropImageOptions cropImageOptions = this.f25049j;
                if (cropImageOptions == null) {
                    Intrinsics.h("cropImageOptions");
                    throw null;
                }
                int i2 = -cropImageOptions.c1;
                CropImageView cropImageView = this.f25050k;
                if (cropImageView != null) {
                    cropImageView.g(i2);
                }
            } else if (itemId == R.id.ic_rotate_right_24) {
                CropImageOptions cropImageOptions2 = this.f25049j;
                if (cropImageOptions2 == null) {
                    Intrinsics.h("cropImageOptions");
                    throw null;
                }
                int i3 = cropImageOptions2.c1;
                CropImageView cropImageView2 = this.f25050k;
                if (cropImageView2 != null) {
                    cropImageView2.g(i3);
                }
            } else if (itemId == R.id.ic_flip_24_horizontally) {
                CropImageView cropImageView3 = this.f25050k;
                if (cropImageView3 != null) {
                    cropImageView3.m = !cropImageView3.m;
                    cropImageView3.b(cropImageView3.getWidth(), cropImageView3.getHeight(), true, false);
                }
            } else if (itemId == R.id.ic_flip_24_vertically) {
                CropImageView cropImageView4 = this.f25050k;
                if (cropImageView4 != null) {
                    cropImageView4.n = !cropImageView4.n;
                    cropImageView4.b(cropImageView4.getWidth(), cropImageView4.getHeight(), true, false);
                }
            } else if (itemId == 16908332) {
                x();
            } else {
                zOnOptionsItemSelected = super.onOptionsItemSelected(menuItem);
            }
            Callback.x();
            SensorsDataAutoTrackHelper.trackMenuItem(this, menuItem);
            return zOnOptionsItemSelected;
        } catch (Throwable th) {
            Callback.x();
            SensorsDataAutoTrackHelper.trackMenuItem(this, menuItem);
            throw th;
        }
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        bundle.putString("bundle_key_tmp_uri", String.valueOf(this.m));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStart() {
        super.onStart();
        CropImageView cropImageView = this.f25050k;
        if (cropImageView != null) {
            cropImageView.setOnSetImageUriCompleteListener(this);
        }
        CropImageView cropImageView2 = this.f25050k;
        if (cropImageView2 != null) {
            cropImageView2.setOnCropImageCompleteListener(this);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStop() {
        super.onStop();
        CropImageView cropImageView = this.f25050k;
        if (cropImageView != null) {
            cropImageView.setOnSetImageUriCompleteListener(null);
        }
        CropImageView cropImageView2 = this.f25050k;
        if (cropImageView2 != null) {
            cropImageView2.setOnCropImageCompleteListener(null);
        }
    }

    public final void v() {
        Uri uri;
        int i2;
        Uri uri2;
        boolean z;
        CropImageOptions cropImageOptions = this.f25049j;
        if (cropImageOptions == null) {
            Intrinsics.h("cropImageOptions");
            throw null;
        }
        if (cropImageOptions.X) {
            w(null, null, 1);
            return;
        }
        CropImageView cropImageView = this.f25050k;
        if (cropImageView != null) {
            Bitmap.CompressFormat compressFormat = cropImageOptions.R;
            int i3 = cropImageOptions.S;
            int i4 = cropImageOptions.T;
            int i5 = cropImageOptions.V;
            CropImageView.RequestSizeOptions requestSizeOptions = cropImageOptions.W;
            Uri uri3 = cropImageOptions.Q;
            compressFormat.getClass();
            requestSizeOptions.getClass();
            if (cropImageView.F == null) {
                md.n("mOnCropImageCompleteListener is not set");
                return;
            }
            CropOverlayView cropOverlayView = cropImageView.f25073c;
            Bitmap bitmap = cropImageView.f25078j;
            if (bitmap != null) {
                WeakReference weakReference = cropImageView.P;
                BitmapCroppingWorkerJob bitmapCroppingWorkerJob = weakReference != null ? (BitmapCroppingWorkerJob) weakReference.get() : null;
                if (bitmapCroppingWorkerJob != null) {
                    bitmapCroppingWorkerJob.u.cancel((CancellationException) null);
                }
                Pair pair = (cropImageView.H > 1 || requestSizeOptions == CropImageView.RequestSizeOptions.SAMPLING) ? new Pair(Integer.valueOf(bitmap.getWidth() * cropImageView.H), Integer.valueOf(bitmap.getHeight() * cropImageView.H)) : new Pair(0, 0);
                Integer num = (Integer) pair.first;
                Integer num2 = (Integer) pair.second;
                Context context = cropImageView.getContext();
                context.getClass();
                WeakReference weakReference2 = new WeakReference(cropImageView);
                Uri uri4 = cropImageView.imageUri;
                float[] cropPoints = cropImageView.getCropPoints();
                int i6 = cropImageView.l;
                num.getClass();
                int iIntValue = num.intValue();
                num2.getClass();
                int iIntValue2 = num2.intValue();
                cropOverlayView.getClass();
                boolean z2 = cropOverlayView.B;
                int i7 = i5;
                int c2 = cropOverlayView.getC();
                int d = cropOverlayView.getD();
                CropImageView.RequestSizeOptions requestSizeOptions2 = CropImageView.RequestSizeOptions.NONE;
                if (requestSizeOptions != requestSizeOptions2) {
                    i2 = i4;
                    uri = uri4;
                } else {
                    uri = uri4;
                    i2 = 0;
                }
                if (requestSizeOptions == requestSizeOptions2) {
                    i7 = 0;
                }
                boolean z3 = cropImageView.m;
                boolean z4 = cropImageView.n;
                if (uri3 == null) {
                    uri2 = cropImageView.customOutputUri;
                    z = z4;
                } else {
                    uri2 = uri3;
                    z = z4;
                }
                new WeakReference(new BitmapCroppingWorkerJob(context, weakReference2, uri, bitmap, cropPoints, i6, iIntValue, iIntValue2, z2, c2, d, i2, i7, z3, z, requestSizeOptions, compressFormat, i3, uri2));
                cropImageView.P = r13;
                Object obj = r13.get();
                obj.getClass();
                BitmapCroppingWorkerJob bitmapCroppingWorkerJob2 = (BitmapCroppingWorkerJob) obj;
                bitmapCroppingWorkerJob2.u = (JobSupport) BuildersKt.c(bitmapCroppingWorkerJob2, Dispatchers.f74659a, null, new BitmapCroppingWorkerJob$start$1(bitmapCroppingWorkerJob2, null), 2);
                cropImageView.j();
            }
        }
    }

    public final void w(Uri uri, Exception exc, int i2) {
        int i3 = exc != null ? 204 : -1;
        CropImageView cropImageView = this.f25050k;
        Uri imageUri = cropImageView != null ? cropImageView.getImageUri() : null;
        CropImageView cropImageView2 = this.f25050k;
        float[] cropPoints = cropImageView2 != null ? cropImageView2.getCropPoints() : null;
        CropImageView cropImageView3 = this.f25050k;
        Rect cropRect = cropImageView3 != null ? cropImageView3.getCropRect() : null;
        CropImageView cropImageView4 = this.f25050k;
        int l = cropImageView4 != null ? cropImageView4.getL() : 0;
        CropImageView cropImageView5 = this.f25050k;
        CropImage$ActivityResult cropImage$ActivityResult = new CropImage$ActivityResult(imageUri, uri, exc, cropPoints, cropRect, l, cropImageView5 != null ? cropImageView5.getWholeImageRect() : null, i2);
        Intent intent = new Intent();
        Bundle extras = intent.getExtras();
        if (extras != null) {
            intent.putExtras(extras);
        }
        intent.putExtra("CROP_IMAGE_EXTRA_RESULT", cropImage$ActivityResult);
        setResult(i3, intent);
        finish();
    }

    public final void x() {
        setResult(0);
        finish();
    }
}
