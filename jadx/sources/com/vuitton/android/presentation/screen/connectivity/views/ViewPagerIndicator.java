package com.vuitton.android.presentation.screen.connectivity.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.vuitton.android.presentation.R$styleable;
import com.vuitton.android.presentation.databinding.ViewViewPagerIndicatorBinding;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bB!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u0015\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/views/ViewPagerIndicator;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroidx/viewpager2/widget/ViewPager2;", "viewPager2", "", "setViewPager2", "(Landroidx/viewpager2/widget/ViewPager2;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ViewPagerIndicator extends FrameLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ViewViewPagerIndicatorBinding f56679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f56680c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ViewPagerIndicator$listener2$1 f56681e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPagerIndicator(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        attributeSet.getClass();
        this.f56679b = ViewViewPagerIndicatorBinding.a(LayoutInflater.from(getContext()), this);
        this.f56681e = new ViewPagerIndicator$listener2$1(this);
        a(context, attributeSet);
    }

    public final void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f50540b, 0, 0);
            this.d = typedArrayObtainStyledAttributes.getBoolean(0, false);
            typedArrayObtainStyledAttributes.recycle();
        }
        setVisibility(this.d ? 4 : 8);
    }

    public final void setViewPager2(ViewPager2 viewPager2) {
        viewPager2.getClass();
        ViewPagerIndicator$listener2$1 viewPagerIndicator$listener2$1 = this.f56681e;
        viewPager2.e(viewPagerIndicator$listener2$1);
        viewPager2.b(viewPagerIndicator$listener2$1);
        viewPagerIndicator$listener2$1.c(viewPager2.getCurrentItem());
        RecyclerView.Adapter adapter = viewPager2.getAdapter();
        int i2 = 0;
        int itemCount = adapter != null ? adapter.getItemCount() : 0;
        this.f56680c = itemCount;
        if (itemCount <= 1) {
            i2 = this.d ? 4 : 8;
        }
        setVisibility(i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPagerIndicator(Context context) {
        super(context);
        context.getClass();
        this.f56679b = ViewViewPagerIndicatorBinding.a(LayoutInflater.from(getContext()), this);
        this.f56681e = new ViewPagerIndicator$listener2$1(this);
        a(context, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewPagerIndicator(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        context.getClass();
        attributeSet.getClass();
        this.f56679b = ViewViewPagerIndicatorBinding.a(LayoutInflater.from(getContext()), this);
        this.f56681e = new ViewPagerIndicator$listener2$1(this);
        a(context, attributeSet);
    }
}
