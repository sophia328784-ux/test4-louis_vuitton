package com.vuitton.android.presentation.screen.imageviewer;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.core.type.SystemIcons;
import com.vuitton.android.presentation.compose.components.EdgeToEdgeKt;
import com.vuitton.android.presentation.screen.imageviewer.ImageViewerActivity;
import com.vuitton.foundation.model.domain.model.product.universal.ProductBackground;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.rv;
import java.util.ArrayList;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007²\u0006\f\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "", "isNavigationSimplified", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class ImageViewerActivity extends Hilt_ImageViewerActivity {
    public static final Companion t = new Companion(null);
    public final Lazy p;
    public final Lazy q;
    public final Lazy r;
    public final ViewModelLazy s;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;", "", "", "KEY_IMAGE_LIST", "Ljava/lang/String;", "KEY_PRODUCT_BACKGROUND", "KEY_IMAGE_POSITION", "KEY_TRACKING_SCREEN_NAME", "KEY_TRACKING_EVENT_CATEGORY", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Companion companion, Context context, ArrayList arrayList, int i2, Bundle bundle, ProductBackground productBackground, int i3) {
            if ((i3 & 4) != 0) {
                i2 = 0;
            }
            if ((i3 & 8) != 0) {
                bundle = null;
            }
            if ((i3 & 16) != 0) {
                productBackground = null;
            }
            companion.getClass();
            context.getClass();
            Intent intent = new Intent(context, (Class<?>) ImageViewerActivity.class);
            intent.putExtra("IMAGE_LIST", arrayList);
            intent.putExtra("PRODUCT_BACKGROUND", productBackground);
            intent.putExtra("IMAGE_POSITION", i2);
            if (bundle != null) {
                intent.putExtras(bundle);
            }
            return intent;
        }
    }

    public ImageViewerActivity() {
        final int i2 = 0;
        this.p = LazyKt.b(new Function0(this) { // from class: o20

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ImageViewerActivity f76672c;

            {
                this.f76672c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                ImageViewerActivity imageViewerActivity = this.f76672c;
                switch (i3) {
                    case 0:
                        return ImageViewerActivity.H(imageViewerActivity);
                    case 1:
                        ImageViewerActivity.Companion companion = ImageViewerActivity.t;
                        return Integer.valueOf(imageViewerActivity.getIntent().getIntExtra("IMAGE_POSITION", 0));
                    default:
                        return ImageViewerActivity.I(imageViewerActivity);
                }
            }
        });
        final int i3 = 1;
        this.q = LazyKt.b(new Function0(this) { // from class: o20

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ImageViewerActivity f76672c;

            {
                this.f76672c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                ImageViewerActivity imageViewerActivity = this.f76672c;
                switch (i4) {
                    case 0:
                        return ImageViewerActivity.H(imageViewerActivity);
                    case 1:
                        ImageViewerActivity.Companion companion = ImageViewerActivity.t;
                        return Integer.valueOf(imageViewerActivity.getIntent().getIntExtra("IMAGE_POSITION", 0));
                    default:
                        return ImageViewerActivity.I(imageViewerActivity);
                }
            }
        });
        final int i4 = 2;
        this.r = LazyKt.b(new Function0(this) { // from class: o20

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ImageViewerActivity f76672c;

            {
                this.f76672c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i5 = i4;
                ImageViewerActivity imageViewerActivity = this.f76672c;
                switch (i5) {
                    case 0:
                        return ImageViewerActivity.H(imageViewerActivity);
                    case 1:
                        ImageViewerActivity.Companion companion = ImageViewerActivity.t;
                        return Integer.valueOf(imageViewerActivity.getIntent().getIntExtra("IMAGE_POSITION", 0));
                    default:
                        return ImageViewerActivity.I(imageViewerActivity);
                }
            }
        });
        final Function0 function0 = null;
        this.s = new ViewModelLazy(Reflection.f71922a.b(ImageViewerViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.imageviewer.ImageViewerActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.imageviewer.ImageViewerActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.imageviewer.ImageViewerActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    public static ArrayList H(ImageViewerActivity imageViewerActivity) {
        Object serializableExtra;
        Intent intent = imageViewerActivity.getIntent();
        if (intent != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                serializableExtra = intent.getSerializableExtra("IMAGE_LIST", ArrayList.class);
            } else {
                Object serializableExtra2 = intent.getSerializableExtra("IMAGE_LIST");
                if (!(serializableExtra2 instanceof ArrayList)) {
                    serializableExtra2 = null;
                }
                serializableExtra = (ArrayList) serializableExtra2;
            }
            ArrayList arrayList = (ArrayList) serializableExtra;
            if (arrayList != null) {
                return arrayList;
            }
        }
        return new ArrayList();
    }

    public static ProductBackground I(ImageViewerActivity imageViewerActivity) {
        Object serializableExtra;
        Intent intent = imageViewerActivity.getIntent();
        if (intent == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            serializableExtra = intent.getSerializableExtra("PRODUCT_BACKGROUND", ProductBackground.class);
        } else {
            Object serializableExtra2 = intent.getSerializableExtra("PRODUCT_BACKGROUND");
            serializableExtra = (ProductBackground) (serializableExtra2 instanceof ProductBackground ? serializableExtra2 : null);
        }
        return (ProductBackground) serializableExtra;
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        SystemIcons.f43533b.getClass();
        boolean z = SystemIcons.f43534c;
        EdgeToEdgeKt.a(this, z, z);
        EdgeToEdgeKt.c(this, false, 2);
        Intent intent = getIntent();
        String stringExtra = intent != null ? intent.getStringExtra("TRACKING_SCREEN_NAME") : null;
        if (stringExtra == null) {
            stringExtra = "";
        }
        Intent intent2 = getIntent();
        String stringExtra2 = intent2 != null ? intent2.getStringExtra("TRACKING_EVENT_CATEGORY") : null;
        String str = stringExtra2 != null ? stringExtra2 : "";
        ((ImageViewerViewModel) this.s.getF71699b()).Y5(new ImageViewerTrackingUiModel.ImageViewerScreen(stringExtra));
        ComponentActivityKt.a(this, new ComposableLambdaImpl(-1875131750, true, new rv(this, stringExtra, str, 10)));
    }
}
