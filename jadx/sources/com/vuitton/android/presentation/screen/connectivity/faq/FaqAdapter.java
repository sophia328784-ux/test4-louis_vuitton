package com.vuitton.android.presentation.screen.connectivity.faq;

import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ItemFaqAnswerBinding;
import com.vuitton.android.presentation.databinding.ItemFaqQuestionBinding;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.extensions.TextViewExtKt;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqItem;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqType;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatchExtKt;
import com.vuitton.foundation.model.domain.model.dispatch.locale.component.RegionCode;
import defpackage.r81;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001:\u0002\n\u000bB#\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter;", "Landroid/widget/BaseExpandableListAdapter;", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;", "faqType", "", "categoryId", "Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;", "listener", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;)V", "Companion", "Listener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FaqAdapter extends BaseExpandableListAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FaqType f55987a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55988b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Listener f55989c;
    public InAppDispatch d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f55990e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ItemFaqQuestionBinding f55991f;
    public ItemFaqAnswerBinding g;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Companion;", "", "", "SPECIAL_THAILAND_SPACING", "I", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqAdapter$Listener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface Listener {
        void d(int i2, String str);

        void h(int i2, String str);

        void k(int i2);

        void l(int i2);
    }

    static {
        new Companion(null);
    }

    public FaqAdapter(FaqType faqType, String str, Listener listener) {
        listener.getClass();
        this.f55987a = faqType;
        this.f55988b = str;
        this.f55989c = listener;
        this.f55990e = new ArrayList();
    }

    @Override // android.widget.ExpandableListAdapter
    public final Object getChild(int i2, int i3) {
        return ((FaqItem) this.f55990e.get(i2)).f67312b;
    }

    @Override // android.widget.ExpandableListAdapter
    public final long getChildId(int i2, int i3) {
        return i3;
    }

    @Override // android.widget.ExpandableListAdapter
    public final View getChildView(int i2, int i3, boolean z, View view, ViewGroup viewGroup) {
        viewGroup.getClass();
        if (view == null) {
            View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_faq_answer, viewGroup, false);
            TextView textView = (TextView) ViewBindings.a(R.id.text_answer, viewInflate);
            if (textView == null) {
                r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(R.id.text_answer)));
                return null;
            }
            LinearLayout linearLayout = (LinearLayout) viewInflate;
            this.g = new ItemFaqAnswerBinding(linearLayout, textView);
            linearLayout.getClass();
            view = linearLayout;
        } else {
            Object tag = view.getTag();
            tag.getClass();
            this.g = (ItemFaqAnswerBinding) tag;
        }
        ItemFaqAnswerBinding itemFaqAnswerBinding = this.g;
        if (itemFaqAnswerBinding == null) {
            Intrinsics.h("childViewBinding");
            throw null;
        }
        TextView textView2 = itemFaqAnswerBinding.f51410b;
        textView2.setMovementMethod(LinkMovementMethod.getInstance());
        TextViewExtKt.a(textView2, StringsKt.J(((FaqItem) this.f55990e.get(i2)).f67312b, "\n", "<br />"));
        InAppDispatch inAppDispatch = this.d;
        if (inAppDispatch != null) {
            List list = InAppDispatchExtKt.f67487a;
            String str = inAppDispatch.f67483j;
            RegionCode.f67513b.getClass();
            if (Intrinsics.c(str, RegionCode.C)) {
                textView2.setLineSpacing(ResourcesExtKt.a(8), 1.0f);
            }
        }
        ItemFaqAnswerBinding itemFaqAnswerBinding2 = this.g;
        if (itemFaqAnswerBinding2 != null) {
            view.setTag(itemFaqAnswerBinding2);
            return view;
        }
        Intrinsics.h("childViewBinding");
        throw null;
    }

    @Override // android.widget.ExpandableListAdapter
    public final int getChildrenCount(int i2) {
        return 1;
    }

    @Override // android.widget.ExpandableListAdapter
    public final Object getGroup(int i2) {
        return Integer.valueOf(i2);
    }

    @Override // android.widget.ExpandableListAdapter
    public final int getGroupCount() {
        return this.f55990e.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public final long getGroupId(int i2) {
        return i2;
    }

    @Override // android.widget.ExpandableListAdapter
    public final View getGroupView(int i2, boolean z, View view, ViewGroup viewGroup) {
        View view2;
        viewGroup.getClass();
        if (view == null) {
            View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_faq_question, viewGroup, false);
            int i3 = R.id.image_indicator;
            ImageView imageView = (ImageView) ViewBindings.a(R.id.image_indicator, viewInflate);
            if (imageView != null) {
                i3 = R.id.text_question;
                TextView textView = (TextView) ViewBindings.a(R.id.text_question, viewInflate);
                if (textView != null) {
                    ConstraintLayout constraintLayout = (ConstraintLayout) viewInflate;
                    this.f55991f = new ItemFaqQuestionBinding(constraintLayout, imageView, textView);
                    constraintLayout.getClass();
                    view2 = constraintLayout;
                }
            }
            r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
            return null;
        }
        Object tag = view.getTag();
        tag.getClass();
        this.f55991f = (ItemFaqQuestionBinding) tag;
        view2 = view;
        ItemFaqQuestionBinding itemFaqQuestionBinding = this.f55991f;
        if (itemFaqQuestionBinding == null) {
            Intrinsics.h("parentViewBinding");
            throw null;
        }
        itemFaqQuestionBinding.f51414c.setText(((FaqItem) this.f55990e.get(i2)).f67311a);
        itemFaqQuestionBinding.f51413b.setImageResource(z ? R.drawable.ic_less_legacy : R.drawable.ic_plus);
        ItemFaqQuestionBinding itemFaqQuestionBinding2 = this.f55991f;
        if (itemFaqQuestionBinding2 != null) {
            view2.setTag(itemFaqQuestionBinding2);
            return view2;
        }
        Intrinsics.h("parentViewBinding");
        throw null;
    }

    @Override // android.widget.ExpandableListAdapter
    public final boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.ExpandableListAdapter
    public final boolean isChildSelectable(int i2, int i3) {
        return false;
    }

    @Override // android.widget.BaseExpandableListAdapter, android.widget.ExpandableListAdapter
    public final void onGroupCollapsed(int i2) {
        super.onGroupCollapsed(i2);
        FaqType faqType = FaqType.LIGHT_UP_SNEAKERS;
        Listener listener = this.f55989c;
        FaqType faqType2 = this.f55987a;
        if (faqType == faqType2 || FaqType.LIGHT_UP_KEEP_ALL == faqType2) {
            listener.h(i2, this.f55988b);
        } else {
            listener.k(i2);
        }
    }

    @Override // android.widget.BaseExpandableListAdapter, android.widget.ExpandableListAdapter
    public final void onGroupExpanded(int i2) {
        super.onGroupExpanded(i2);
        FaqType faqType = FaqType.LIGHT_UP_SNEAKERS;
        Listener listener = this.f55989c;
        FaqType faqType2 = this.f55987a;
        if (faqType == faqType2 || FaqType.LIGHT_UP_KEEP_ALL == faqType2) {
            listener.d(i2, this.f55988b);
        } else {
            listener.l(i2);
        }
    }
}
