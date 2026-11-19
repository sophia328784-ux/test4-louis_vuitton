package com.vuitton.android.presentation.screen.connectivity.faqcategory;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.snackbar.Snackbar;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ActivityFaqCategoryListBinding;
import com.vuitton.android.presentation.databinding.ToolbarSimpleBinding;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import com.vuitton.android.presentation.screen.connectivity.earphone.models.EarphoneTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.earphone.models.EarphoneTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModel;
import com.vuitton.android.presentation.screen.connectivity.lightup.models.LVLightUpTrackingUiModelKt;
import com.vuitton.android.presentation.screen.connectivity.views.FixedAspectRatioImageView;
import com.vuitton.android.presentation.screen.connectivity.views.divider.SimpleGridDivider;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategory;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategoryType;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqPdf;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.bx;
import defpackage.c;
import defpackage.ck;
import defpackage.mt;
import defpackage.r81;
import defpackage.rs;
import defpackage.ss;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0005B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesView;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class FaqCategoriesActivity extends Hilt_FaqCategoriesActivity implements FaqCategoriesView {
    public static final Companion s = new Companion(null);
    public final Lazy p = LazyKt.b(new ss(this, 10));
    public ActivityFaqCategoryListBinding q;
    public final ViewModelLazy r;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesActivity$Companion;", "", "", "KEY_FAQ_CATEGORY_TYPE", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56021a;

        static {
            int[] iArr = new int[FaqCategoryType.values().length];
            try {
                iArr[FaqCategoryType.EARPHONES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FaqCategoryType.WATCH_V3.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FaqCategoryType.LIGHT_UP_KEEP_ALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FaqCategoryType.LIGHT_UP_SNEAKERS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[FaqCategoryType.SPEAKER_TRUNK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[FaqCategoryType.SPEAKER_HORIZON.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f56021a = iArr;
        }
    }

    public FaqCategoriesActivity() {
        final Function0 function0 = null;
        this.r = new ViewModelLazy(Reflection.f71922a.b(FaqCategoriesViewModel.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    public static FaqCategoryType H(FaqCategoriesActivity faqCategoriesActivity) {
        Object serializableExtra;
        Intent intent = faqCategoriesActivity.getIntent();
        if (intent != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                serializableExtra = intent.getSerializableExtra("FAQ_CATEGORY_TYPE", FaqCategoryType.class);
            } else {
                Object serializableExtra2 = intent.getSerializableExtra("FAQ_CATEGORY_TYPE");
                if (!(serializableExtra2 instanceof FaqCategoryType)) {
                    serializableExtra2 = null;
                }
                serializableExtra = (FaqCategoryType) serializableExtra2;
            }
            FaqCategoryType faqCategoryType = (FaqCategoryType) serializableExtra;
            if (faqCategoryType != null) {
                return faqCategoryType;
            }
        }
        return FaqCategoryType.EARPHONES;
    }

    public final FaqCategoriesViewModel I() {
        return (FaqCategoriesViewModel) this.r.getF71699b();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesView
    public final void b(List list) {
        list.getClass();
        ActivityFaqCategoryListBinding activityFaqCategoryListBinding = this.q;
        if (activityFaqCategoryListBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        int i2 = 0;
        activityFaqCategoryListBinding.f51203f.setVisibility(0);
        ActivityFaqCategoryListBinding activityFaqCategoryListBinding2 = this.q;
        if (activityFaqCategoryListBinding2 == null) {
            Intrinsics.h("binding");
            throw null;
        }
        RecyclerView.Adapter adapter = activityFaqCategoryListBinding2.f51203f.getAdapter();
        FaqCategoriesAdapter faqCategoriesAdapter = adapter instanceof FaqCategoriesAdapter ? (FaqCategoriesAdapter) adapter : null;
        if (faqCategoriesAdapter != null) {
            ArrayList arrayList = faqCategoriesAdapter.f56029f;
            arrayList.clear();
            arrayList.addAll(list);
            faqCategoriesAdapter.notifyDataSetChanged();
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            List<FaqPdf> list2 = ((FaqCategory) it.next()).f67310e;
            if (list2 != null && !list2.isEmpty()) {
                ActivityFaqCategoryListBinding activityFaqCategoryListBinding3 = this.q;
                if (activityFaqCategoryListBinding3 == null) {
                    Intrinsics.h("binding");
                    throw null;
                }
                activityFaqCategoryListBinding3.d.setVisibility(0);
                ActivityFaqCategoryListBinding activityFaqCategoryListBinding4 = this.q;
                if (activityFaqCategoryListBinding4 == null) {
                    Intrinsics.h("binding");
                    throw null;
                }
                activityFaqCategoryListBinding4.g.setVisibility(0);
                for (FaqPdf faqPdf : list2) {
                    String str = faqPdf.f67314b;
                    bx bxVar = new bx(this, faqPdf, i2);
                    View viewInflate = LayoutInflater.from(this).inflate(R.layout.item_list_selectable, (ViewGroup) null, false);
                    viewInflate.getClass();
                    TextView textView = (TextView) viewInflate;
                    textView.setText(str);
                    textView.setOnClickListener(bxVar);
                    ActivityFaqCategoryListBinding activityFaqCategoryListBinding5 = this.q;
                    if (activityFaqCategoryListBinding5 == null) {
                        Intrinsics.h("binding");
                        throw null;
                    }
                    activityFaqCategoryListBinding5.d.addView(viewInflate);
                }
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesView
    public final void j(Throwable th) {
        th.getClass();
        Snackbar.f(findViewById(android.R.id.content), R.string.error_generic, -1).h();
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        int i2;
        super.onCreate(bundle);
        Lazy lazy = this.p;
        FaqCategoryType faqCategoryType = (FaqCategoryType) lazy.getF71699b();
        int[] iArr = WhenMappings.f56021a;
        switch (iArr[faqCategoryType.ordinal()]) {
            case 1:
                I().d.a(EarphoneTrackingUiModelKt.a(EarphoneTrackingUiModel.FaqCategoriesScreen.f55979a));
                break;
            case 2:
            case 5:
            case 6:
                break;
            case 3:
                I().d.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.FaqScreen(LVLightUpDeviceType.KEEPALL)));
                break;
            case 4:
                I().d.a(LVLightUpTrackingUiModelKt.a(new LVLightUpTrackingUiModel.FaqScreen(LVLightUpDeviceType.X408PAIR)));
                break;
            default:
                v40.g();
                return;
        }
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_faq_category_list, (ViewGroup) null, false);
        int i3 = R.id.image_header;
        FixedAspectRatioImageView fixedAspectRatioImageView = (FixedAspectRatioImageView) ViewBindings.a(R.id.image_header, viewInflate);
        if (fixedAspectRatioImageView != null) {
            i3 = R.id.layout_documentation_subsection;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.a(R.id.layout_documentation_subsection, viewInflate);
            if (linearLayout != null) {
                i3 = R.id.layout_toolbar;
                View viewA = ViewBindings.a(R.id.layout_toolbar, viewInflate);
                if (viewA != null) {
                    ToolbarSimpleBinding toolbarSimpleBindingA = ToolbarSimpleBinding.a(viewA);
                    i3 = R.id.recycler_faq;
                    RecyclerView recyclerView = (RecyclerView) ViewBindings.a(R.id.recycler_faq, viewInflate);
                    if (recyclerView != null) {
                        i3 = R.id.text_documentation_title;
                        TextView textView = (TextView) ViewBindings.a(R.id.text_documentation_title, viewInflate);
                        if (textView != null) {
                            LinearLayout linearLayout2 = (LinearLayout) viewInflate;
                            ActivityFaqCategoryListBinding activityFaqCategoryListBinding = new ActivityFaqCategoryListBinding(linearLayout2, fixedAspectRatioImageView, linearLayout, toolbarSimpleBindingA, recyclerView, textView);
                            setContentView(linearLayout2);
                            this.q = activityFaqCategoryListBinding;
                            SystemBarStyle.f684e.getClass();
                            EdgeToEdge.a(this, SystemBarStyle.Companion.b(0, 0), SystemBarStyle.Companion.b(0, 0));
                            ActivityExtKt.d(this);
                            ActivityFaqCategoryListBinding activityFaqCategoryListBinding2 = this.q;
                            if (activityFaqCategoryListBinding2 == null) {
                                Intrinsics.h("binding");
                                throw null;
                            }
                            ViewCompat.x(activityFaqCategoryListBinding2.f51200b, new mt(19));
                            ActivityFaqCategoryListBinding activityFaqCategoryListBinding3 = this.q;
                            if (activityFaqCategoryListBinding3 == null) {
                                Intrinsics.h("binding");
                                throw null;
                            }
                            AppCompatTextView appCompatTextView = activityFaqCategoryListBinding3.f51202e.f51464c.f51466c;
                            appCompatTextView.setText(getString(R.string.rml_faq));
                            appCompatTextView.setAccessibilityHeading(true);
                            RecyclerView recyclerView2 = activityFaqCategoryListBinding3.f51203f;
                            recyclerView2.setLayoutManager(new GridLayoutManager(this, 2));
                            recyclerView2.setAdapter(new FaqCategoriesAdapter((FaqCategoryType) lazy.getF71699b(), new rs(this, activityFaqCategoryListBinding3, 10), new ck(this, 23), new c(this, 26)));
                            recyclerView2.addItemDecoration(new SimpleGridDivider(ContextCompat.getColor(this, R.color.off_white)));
                            switch (iArr[((FaqCategoryType) lazy.getF71699b()).ordinal()]) {
                                case 1:
                                    i2 = 2131231040;
                                    break;
                                case 2:
                                    i2 = 2131231039;
                                    break;
                                case 3:
                                    i2 = 2131231371;
                                    break;
                                case 4:
                                    i2 = 2131231374;
                                    break;
                                case 5:
                                    i2 = 2131231038;
                                    break;
                                case 6:
                                    i2 = 2131231037;
                                    break;
                                default:
                                    v40.g();
                                    return;
                            }
                            ActivityFaqCategoryListBinding activityFaqCategoryListBinding4 = this.q;
                            if (activityFaqCategoryListBinding4 == null) {
                                Intrinsics.h("binding");
                                throw null;
                            }
                            activityFaqCategoryListBinding4.f51201c.setImageResource(i2);
                            I().yc(this, this);
                            FaqCategoriesViewModel faqCategoriesViewModelI = I();
                            FaqCategoryType faqCategoryType2 = (FaqCategoryType) lazy.getF71699b();
                            faqCategoryType2.getClass();
                            LVViewModel.Bc(faqCategoriesViewModelI, new FaqCategoriesViewModel$getFaqCategoryList$1(faqCategoriesViewModelI, null), new FaqCategoriesViewModel$getFaqCategoryList$2(faqCategoriesViewModelI, faqCategoryType2, null), 2);
                            return;
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        I().Ac(this);
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public final boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}
