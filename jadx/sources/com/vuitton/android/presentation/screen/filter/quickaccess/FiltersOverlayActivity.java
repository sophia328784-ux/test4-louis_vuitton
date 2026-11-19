package com.vuitton.android.presentation.screen.filter.quickaccess;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.Window;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.activity.compose.ComponentActivityKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.vuitton.android.R;
import com.vuitton.android.presentation.screen.base.BaseActivity;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersDropDownType;
import com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayActivity;
import com.vuitton.android.presentation.screen.filter.quickaccess.QafSource;
import defpackage.c;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0007²\u0006\f\u0010\u0006\u001a\u00020\u00058\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FilterOverlayViewState;", "viewState", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FiltersOverlayActivity extends BaseActivity {
    public static final Companion s = new Companion(null);
    public boolean o;
    public final Lazy p;
    public final Lazy q;
    public final ViewModelLazy r;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/filter/quickaccess/FiltersOverlayActivity$Companion;", "", "", "SCREEN_TYPE", "Ljava/lang/String;", "FILTER_ID", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public FiltersOverlayActivity() {
        final int i2 = 0;
        this.p = LazyKt.b(new Function0(this) { // from class: qy

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FiltersOverlayActivity f79188c;

            {
                this.f79188c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                String stringExtra;
                String stringExtra2;
                int i3 = i2;
                FiltersOverlayActivity filtersOverlayActivity = this.f79188c;
                switch (i3) {
                    case 0:
                        FiltersOverlayActivity.Companion companion = FiltersOverlayActivity.s;
                        Intent intent = filtersOverlayActivity.getIntent();
                        if (intent == null || (stringExtra = intent.getStringExtra("KEY_QAF_SOURCE")) == null) {
                            return null;
                        }
                        return QafSource.valueOf(stringExtra);
                    default:
                        FiltersOverlayActivity.Companion companion2 = FiltersOverlayActivity.s;
                        Intent intent2 = filtersOverlayActivity.getIntent();
                        if (intent2 == null || (stringExtra2 = intent2.getStringExtra("SCREEN_TYPE")) == null) {
                            return null;
                        }
                        return FiltersDropDownType.valueOf(stringExtra2);
                }
            }
        });
        final int i3 = 1;
        this.q = LazyKt.b(new Function0(this) { // from class: qy

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FiltersOverlayActivity f79188c;

            {
                this.f79188c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                String stringExtra;
                String stringExtra2;
                int i4 = i3;
                FiltersOverlayActivity filtersOverlayActivity = this.f79188c;
                switch (i4) {
                    case 0:
                        FiltersOverlayActivity.Companion companion = FiltersOverlayActivity.s;
                        Intent intent = filtersOverlayActivity.getIntent();
                        if (intent == null || (stringExtra = intent.getStringExtra("KEY_QAF_SOURCE")) == null) {
                            return null;
                        }
                        return QafSource.valueOf(stringExtra);
                    default:
                        FiltersOverlayActivity.Companion companion2 = FiltersOverlayActivity.s;
                        Intent intent2 = filtersOverlayActivity.getIntent();
                        if (intent2 == null || (stringExtra2 = intent2.getStringExtra("SCREEN_TYPE")) == null) {
                            return null;
                        }
                        return FiltersDropDownType.valueOf(stringExtra2);
                }
            }
        });
        final Function0 function0 = null;
        this.r = new ViewModelLazy(Reflection.f71922a.b(FiltersOverlayViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.filter.quickaccess.FiltersOverlayActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    public final FiltersOverlayViewModel H() {
        return (FiltersOverlayViewModel) this.r.getF71699b();
    }

    public final QafSource I() {
        return (QafSource) this.p.getF71699b();
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
        Window window = getWindow();
        window.getDecorView().setBackgroundColor(0);
        if (Build.VERSION.SDK_INT >= 31) {
            window.setBackgroundBlurRadius(200);
            this.o = window.getWindowManager().isCrossWindowBlurEnabled();
        }
        SystemBarStyle.f684e.getClass();
        EdgeToEdge.a(this, SystemBarStyle.Companion.b(0, 0), SystemBarStyle.Companion.b(0, 0));
        ComponentActivityKt.a(this, new ComposableLambdaImpl(-356339512, true, new c(this, 28)));
    }
}
