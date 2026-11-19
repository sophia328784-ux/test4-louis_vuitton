package com.vuitton.android.presentation.screen.connectivity.faqcategory;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ItemFaqCategoryBinding;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.imageloading.xmlui.XmlUiKt;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategory;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategoryType;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqType;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import defpackage.iv;
import defpackage.n0;
import defpackage.r81;
import defpackage.rq;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\f\u0012\b\u0012\u00060\u0002R\u00020\u00000\u0001:\u0001\u0011B_\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0005\u0012\u0016\b\u0002\u0010\f\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\b0\n\u0012\u001c\b\u0002\u0010\u000e\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter$ViewHolder;", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;", "faqCategoryType", "Lkotlin/Function2;", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategory;", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;", "", "routeToFaq", "Lkotlin/Function1;", "", "trackFaqCategoryClick", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "trackLightUpFaqCategoryClick", "<init>", "(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqCategoryType;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V", "ViewHolder", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FaqCategoriesAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FaqCategoryType f56026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function2 f56027c;
    public final Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Function2 f56028e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f56029f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemFaqCategoryBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/faqcategory/FaqCategoriesAdapter;Lcom/vuitton/android/presentation/databinding/ItemFaqCategoryBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class ViewHolder extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemFaqCategoryBinding f56030b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(FaqCategoriesAdapter faqCategoriesAdapter, ItemFaqCategoryBinding itemFaqCategoryBinding) {
            super(itemFaqCategoryBinding.f51411b);
            itemFaqCategoryBinding.getClass();
            this.f56030b = itemFaqCategoryBinding;
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56031a;

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
            f56031a = iArr;
        }
    }

    public FaqCategoriesAdapter(FaqCategoryType faqCategoryType, Function2<? super FaqCategory, ? super FaqType, Unit> function2, Function1<? super String, Unit> function1, Function2<? super String, ? super LVLightUpDeviceType, Unit> function3) {
        faqCategoryType.getClass();
        function2.getClass();
        function1.getClass();
        function3.getClass();
        this.f56026b = faqCategoryType;
        this.f56027c = function2;
        this.d = function1;
        this.f56028e = function3;
        this.f56029f = new ArrayList();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f56029f.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        viewHolder2.getClass();
        Object obj = this.f56029f.get(i2);
        obj.getClass();
        FaqCategory faqCategory = (FaqCategory) obj;
        ItemFaqCategoryBinding itemFaqCategoryBinding = viewHolder2.f56030b;
        itemFaqCategoryBinding.d.setText(faqCategory.f67308b);
        XmlUiKt.a(itemFaqCategoryBinding.f51412c, faqCategory.f67309c, 0, 0, 126);
        int i3 = i2 % 2;
        LinearLayout linearLayout = itemFaqCategoryBinding.f51411b;
        if (i3 == 0) {
            ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
            layoutParams.getClass();
            ((ViewGroup.MarginLayoutParams) layoutParams).setMarginStart(ResourcesExtKt.a(16));
        } else {
            ViewGroup.LayoutParams layoutParams2 = linearLayout.getLayoutParams();
            layoutParams2.getClass();
            ((ViewGroup.MarginLayoutParams) layoutParams2).setMarginEnd(ResourcesExtKt.a(16));
        }
        ViewExtKt.d(linearLayout, new n0(this, faqCategory, itemFaqCategoryBinding, 28));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_faq_category, viewGroup, false);
        int i3 = R.id.image_faq_category;
        ImageView imageView = (ImageView) ViewBindings.a(R.id.image_faq_category, viewInflate);
        if (imageView != null) {
            i3 = R.id.text_faq_category_title;
            TextView textView = (TextView) ViewBindings.a(R.id.text_faq_category_title, viewInflate);
            if (textView != null) {
                return new ViewHolder(this, new ItemFaqCategoryBinding((LinearLayout) viewInflate, imageView, textView));
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
        return null;
    }

    public /* synthetic */ FaqCategoriesAdapter(FaqCategoryType faqCategoryType, Function2 function2, Function1 function1, Function2 function3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(faqCategoryType, function2, (i2 & 4) != 0 ? new iv(21) : function1, (i2 & 8) != 0 ? new rq(18) : function3);
    }
}
