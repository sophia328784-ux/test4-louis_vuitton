package com.vuitton.android.presentation.screen.connectivity.views.divider;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.vuitton.android.presentation.extensions.ResourcesExtKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/views/divider/SimpleVerticalDivider;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "", "color", "<init>", "(I)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SimpleVerticalDivider extends RecyclerView.ItemDecoration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f56696a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f56697b = ResourcesExtKt.a(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Paint f56698c = new Paint();

    public SimpleVerticalDivider(int i2) {
        this.f56696a = i2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.getClass();
        state.getClass();
        super.getItemOffsets(rect, view, recyclerView, state);
        rect.right = this.f56697b;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        canvas.getClass();
        recyclerView.getClass();
        state.getClass();
        int i2 = this.f56696a;
        Paint paint = this.f56698c;
        paint.setColor(i2);
        int i3 = this.f56697b;
        paint.setStrokeWidth(i3);
        if (recyclerView.getLayoutManager() != null) {
            int childCount = recyclerView.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = recyclerView.getChildAt(i4);
                canvas.drawLine(childAt.getRight() - i3, childAt.getTop(), childAt.getRight(), childAt.getBottom(), paint);
            }
        }
    }
}
