package com.vuitton.android.presentation.screen.connectivity.tutorial;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ItemTutorialBinding;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.utils.TrackingFrom;
import com.vuitton.foundation.model.domain.model.connectivity.common.Tutorial;
import defpackage.m21;
import defpackage.r81;
import defpackage.y41;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB?\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0005\u0012\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\b0\n¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;", "tutorialType", "Lkotlin/Function2;", "Lcom/vuitton/foundation/model/domain/model/connectivity/common/Tutorial;", "Lcom/vuitton/android/presentation/utils/TrackingFrom;", "", "openTutorialScreen", "Lkotlin/Function1;", "", "trackTutorialClick", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialType;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V", "TutorialHolder", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TutorialAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TutorialType f56651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function2 f56652c;
    public final Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f56653e;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialAdapter$TutorialHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "Lcom/vuitton/android/presentation/databinding/ItemTutorialBinding;", "binding", "<init>", "(Lcom/vuitton/android/presentation/screen/connectivity/tutorial/TutorialAdapter;Lcom/vuitton/android/presentation/databinding/ItemTutorialBinding;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public final class TutorialHolder extends RecyclerView.ViewHolder {
        public static final /* synthetic */ int d = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ItemTutorialBinding f56654b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ TutorialAdapter f56655c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final /* synthetic */ class WhenMappings {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final /* synthetic */ int[] f56656a;

            static {
                int[] iArr = new int[TutorialType.values().length];
                try {
                    iArr[TutorialType.EARPHONE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[TutorialType.WATCH_V3.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[TutorialType.HORIZON_SPEAKER.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f56656a = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TutorialHolder(TutorialAdapter tutorialAdapter, ItemTutorialBinding itemTutorialBinding) {
            super(itemTutorialBinding.f51451b);
            itemTutorialBinding.getClass();
            this.f56655c = tutorialAdapter;
            this.f56654b = itemTutorialBinding;
        }
    }

    public TutorialAdapter(TutorialType tutorialType, Function2<? super Tutorial, ? super TrackingFrom, Unit> function2, Function1<? super String, Unit> function1) {
        tutorialType.getClass();
        function2.getClass();
        function1.getClass();
        this.f56651b = tutorialType;
        this.f56652c = function2;
        this.d = function1;
        this.f56653e = new ArrayList();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f56653e.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
        viewHolder.getClass();
        TutorialHolder tutorialHolder = (TutorialHolder) viewHolder;
        Object obj = this.f56653e.get(i2);
        obj.getClass();
        Tutorial tutorial = (Tutorial) obj;
        ItemTutorialBinding itemTutorialBinding = tutorialHolder.f56654b;
        TutorialAdapter tutorialAdapter = tutorialHolder.f56655c;
        itemTutorialBinding.f51452c.setText(tutorial.f67317a);
        ViewExtKt.d(itemTutorialBinding.f51451b, new m21(tutorialAdapter, tutorial, 23));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2) {
        viewGroup.getClass();
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_tutorial, viewGroup, false);
        if (viewInflate != null) {
            TextView textView = (TextView) viewInflate;
            return new TutorialHolder(this, new ItemTutorialBinding(textView, textView));
        }
        r81.d("rootView");
        return null;
    }

    public /* synthetic */ TutorialAdapter(TutorialType tutorialType, Function2 function2, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(tutorialType, function2, (i2 & 4) != 0 ? new y41(2) : function1);
    }
}
