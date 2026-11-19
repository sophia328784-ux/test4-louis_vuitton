package com.vuitton.android.presentation.screen.connectivity.views.divider;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/views/divider/SimpleGridDivider;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "", "color", "<init>", "(I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SimpleGridDivider extends RecyclerView.ItemDecoration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f56690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f56691b = ResourcesExtKt.a(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Paint f56692c = new Paint();

    public SimpleGridDivider(int i2) {
        this.f56690a = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.getClass();
        state.getClass();
        super.getItemOffsets(rect, view, recyclerView, state);
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        layoutManager.getClass();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.getClass();
        int i2 = ((GridLayoutManager) layoutManager).F;
        int i3 = ((GridLayoutManager.LayoutParams) layoutParams).f19197e;
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        int i4 = this.f56691b;
        if (i3 == 0) {
            rect.left = i4;
        }
        if (childAdapterPosition < i2) {
            rect.top = i4;
        }
        rect.right = i4;
        rect.bottom = i4;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        canvas.getClass();
        recyclerView.getClass();
        state.getClass();
        int i2 = this.f56690a;
        Paint paint = this.f56692c;
        paint.setColor(i2);
        int i3 = this.f56691b;
        paint.setStrokeWidth(i3);
        if (((GridLayoutManager) recyclerView.getLayoutManager()) != null) {
            int childCount = recyclerView.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = recyclerView.getChildAt(i4);
                float right = childAt.getRight() + i3;
                canvas.drawLine(right, childAt.getTop(), right, childAt.getBottom() + i3, paint);
            }
        }
        if (((GridLayoutManager) recyclerView.getLayoutManager()) != null) {
            int childCount2 = recyclerView.getChildCount();
            for (int i5 = 0; i5 < childCount2; i5++) {
                View childAt2 = recyclerView.getChildAt(i5);
                int left = childAt2.getLeft();
                float bottom = childAt2.getBottom() + i3;
                canvas.drawLine(left, bottom, childAt2.getRight() + i3, bottom, paint);
            }
        }
    }
}
