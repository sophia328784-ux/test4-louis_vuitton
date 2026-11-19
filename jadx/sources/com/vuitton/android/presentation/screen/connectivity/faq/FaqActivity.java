package com.vuitton.android.presentation.screen.connectivity.faq;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.LinearLayout;
import androidx.activity.EdgeToEdge;
import androidx.activity.SystemBarStyle;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ActivityFaqBinding;
import com.vuitton.android.presentation.databinding.ToolbarSimpleBinding;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import com.vuitton.android.presentation.screen.connectivity.faq.FaqActivity;
import com.vuitton.android.presentation.screen.connectivity.faq.models.FaqTrackingUiModel;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqItem;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.et;
import defpackage.mt;
import defpackage.r81;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0006B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqView;", "Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class FaqActivity extends Hilt_FaqActivity implements FaqView, FaqAdapter.Listener {
    public static final Companion t = new Companion(null);
    public final Lazy p;
    public final Lazy q;
    public ActivityFaqBinding r;
    public final ViewModelLazy s;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqActivity$Companion;", "", "", "KEY_FAQ_TYPE", "Ljava/lang/String;", "KEY_ITEMS", "KEY_CATEGORY_ID", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static Intent a(Context context, FaqType faqType) {
            context.getClass();
            faqType.getClass();
            Intent intentPutExtra = new Intent(context, (Class<?>) FaqActivity.class).putExtra("FAQ_TYPE", faqType);
            intentPutExtra.getClass();
            return intentPutExtra;
        }

        public static Intent b(Context context, ArrayList arrayList, String str, FaqType faqType) {
            context.getClass();
            faqType.getClass();
            Intent intentPutExtra = new Intent(context, (Class<?>) FaqActivity.class).putParcelableArrayListExtra("ITEMS", new ArrayList<>(arrayList)).putExtra("CATEGORY_ID", str).putExtra("FAQ_TYPE", faqType);
            intentPutExtra.getClass();
            return intentPutExtra;
        }
    }

    public FaqActivity() {
        final int i2 = 0;
        this.p = LazyKt.b(new Function0(this) { // from class: ax

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FaqActivity f20649c;

            {
                this.f20649c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                FaqActivity faqActivity = this.f20649c;
                switch (i3) {
                    case 0:
                        return FaqActivity.H(faqActivity);
                    default:
                        FaqActivity.Companion companion = FaqActivity.t;
                        return faqActivity.getIntent().getStringExtra("CATEGORY_ID");
                }
            }
        });
        final int i3 = 1;
        this.q = LazyKt.b(new Function0(this) { // from class: ax

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FaqActivity f20649c;

            {
                this.f20649c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                FaqActivity faqActivity = this.f20649c;
                switch (i4) {
                    case 0:
                        return FaqActivity.H(faqActivity);
                    default:
                        FaqActivity.Companion companion = FaqActivity.t;
                        return faqActivity.getIntent().getStringExtra("CATEGORY_ID");
                }
            }
        });
        final Function0 function0 = null;
        this.s = new ViewModelLazy(Reflection.f71922a.b(FaqViewModel.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.faq.FaqActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.faq.FaqActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.faq.FaqActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    public static FaqType H(FaqActivity faqActivity) {
        Object serializableExtra;
        Intent intent = faqActivity.getIntent();
        if (intent != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                serializableExtra = intent.getSerializableExtra("FAQ_TYPE", FaqType.class);
            } else {
                Object serializableExtra2 = intent.getSerializableExtra("FAQ_TYPE");
                if (!(serializableExtra2 instanceof FaqType)) {
                    serializableExtra2 = null;
                }
                serializableExtra = (FaqType) serializableExtra2;
            }
            FaqType faqType = (FaqType) serializableExtra;
            if (faqType != null) {
                return faqType;
            }
        }
        return FaqType.EARPHONES;
    }

    public final FaqType I() {
        return (FaqType) this.p.getF71699b();
    }

    public final FaqViewModel J() {
        return (FaqViewModel) this.s.getF71699b();
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.faq.FaqView
    public final void a(InAppDispatch inAppDispatch, List list) {
        inAppDispatch.getClass();
        list.getClass();
        ActivityFaqBinding activityFaqBinding = this.r;
        if (activityFaqBinding == null) {
            Intrinsics.h("binding");
            throw null;
        }
        ExpandableListAdapter expandableListAdapter = activityFaqBinding.d.getExpandableListAdapter();
        FaqAdapter faqAdapter = expandableListAdapter instanceof FaqAdapter ? (FaqAdapter) expandableListAdapter : null;
        if (faqAdapter != null) {
            faqAdapter.d = inAppDispatch;
            ArrayList arrayList = faqAdapter.f55990e;
            arrayList.clear();
            arrayList.addAll(list);
            faqAdapter.notifyDataSetChanged();
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.faq.FaqAdapter.Listener
    public final void d(int i2, String str) {
        J().Cc(new FaqTrackingUiModel.OpenFaqQuestionEvent(I(), i2, str));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.faq.FaqAdapter.Listener
    public final void h(int i2, String str) {
        J().Cc(new FaqTrackingUiModel.CloseFaqQuestionEvent(I(), i2, str));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.faq.FaqView
    public final void i(Throwable th) {
        th.getClass();
        runOnUiThread(new et(this, 8));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.faq.FaqAdapter.Listener
    public final void k(int i2) {
        J().Cc(new FaqTrackingUiModel.CloseFaqItemEvent(I(), i2, (String) this.q.getF71699b()));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.faq.FaqAdapter.Listener
    public final void l(int i2) {
        J().Cc(new FaqTrackingUiModel.OpenFaqItemEvent(I(), i2, (String) this.q.getF71699b()));
    }

    /* JADX WARN: Code duplicated, block: B:23:0x00da  */
    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        ArrayList<FaqItemUiModel> arrayList;
        super.onCreate(bundle);
        J().yc(this, this);
        FaqViewModel faqViewModelJ = J();
        FaqType faqTypeI = I();
        Lazy lazy = this.q;
        faqViewModelJ.Cc(new FaqTrackingUiModel.FaqPageScreen(faqTypeI, (String) lazy.getF71699b()));
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_faq, (ViewGroup) null, false);
        int i2 = R.id.layout_toolbar;
        View viewA = ViewBindings.a(R.id.layout_toolbar, viewInflate);
        if (viewA != null) {
            ToolbarSimpleBinding toolbarSimpleBindingA = ToolbarSimpleBinding.a(viewA);
            ExpandableListView expandableListView = (ExpandableListView) ViewBindings.a(R.id.list_faq, viewInflate);
            if (expandableListView != null) {
                LinearLayout linearLayout = (LinearLayout) viewInflate;
                ActivityFaqBinding activityFaqBinding = new ActivityFaqBinding(linearLayout, toolbarSimpleBindingA, expandableListView);
                setContentView(linearLayout);
                this.r = activityFaqBinding;
                SystemBarStyle.f684e.getClass();
                EdgeToEdge.a(this, SystemBarStyle.Companion.b(0, 0), SystemBarStyle.Companion.b(0, 0));
                ActivityExtKt.d(this);
                ActivityFaqBinding activityFaqBinding2 = this.r;
                if (activityFaqBinding2 == null) {
                    Intrinsics.h("binding");
                    throw null;
                }
                ViewCompat.x(activityFaqBinding2.f51198b, new mt(18));
                ActivityFaqBinding activityFaqBinding3 = this.r;
                if (activityFaqBinding3 == null) {
                    Intrinsics.h("binding");
                    throw null;
                }
                AppCompatTextView appCompatTextView = activityFaqBinding3.f51199c.f51464c.f51466c;
                appCompatTextView.setText(getString(R.string.rml_faq));
                appCompatTextView.setAccessibilityHeading(true);
                activityFaqBinding3.d.setAdapter(new FaqAdapter(I(), (String) lazy.getF71699b(), this));
                Intent intent = getIntent();
                if (intent == null) {
                    arrayList = null;
                } else {
                    ArrayList parcelableArrayListExtra = Build.VERSION.SDK_INT > 33 ? intent.getParcelableArrayListExtra("ITEMS", Parcelable.class) : intent.getParcelableArrayListExtra("ITEMS");
                    if (parcelableArrayListExtra != null) {
                        arrayList = new ArrayList();
                        for (Object obj : parcelableArrayListExtra) {
                            if (obj instanceof FaqItemUiModel) {
                                arrayList.add(obj);
                            }
                        }
                    } else {
                        arrayList = null;
                    }
                }
                if (arrayList == null) {
                    FaqViewModel faqViewModelJ2 = J();
                    FaqType faqTypeI2 = I();
                    faqTypeI2.getClass();
                    LVViewModel.Bc(faqViewModelJ2, new FaqViewModel$getFaqItemList$1(faqViewModelJ2, null), new FaqViewModel$getFaqItemList$2(faqViewModelJ2, faqTypeI2, null), 2);
                    return;
                }
                FaqViewModel faqViewModelJ3 = J();
                ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                for (FaqItemUiModel faqItemUiModel : arrayList) {
                    faqItemUiModel.getClass();
                    arrayList2.add(new FaqItem(faqItemUiModel.f55992b, faqItemUiModel.f55993c));
                }
                LVViewModel.Bc(faqViewModelJ3, null, new FaqViewModel$displayItemList$1(faqViewModelJ3, arrayList2, null), 3);
                return;
            }
            i2 = R.id.list_faq;
        }
        r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        J().Ac(this);
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public final boolean onSupportNavigateUp() {
        finish();
        return true;
    }
}
