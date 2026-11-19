package com.vuitton.android.presentation.screen.connectivity.views.divider;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.v40;
import java.util.WeakHashMap;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001:\u0001\bB\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/views/divider/MiddleDividersItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "Landroid/graphics/drawable/Drawable;", "divider", "Lcom/vuitton/android/presentation/screen/connectivity/views/divider/MiddleDividersItemDecoration$ListType;", "listType", "<init>", "(Landroid/graphics/drawable/Drawable;Lcom/vuitton/android/presentation/screen/connectivity/views/divider/MiddleDividersItemDecoration$ListType;)V", "ListType", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class MiddleDividersItemDecoration extends RecyclerView.ItemDecoration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Drawable f56686a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ListType f56687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f56688c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/views/divider/MiddleDividersItemDecoration$ListType;", "", "HORIZONTAL", "VERTICAL", "GRID", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class ListType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ ListType[] $VALUES;
        public static final ListType GRID;
        public static final ListType HORIZONTAL;
        public static final ListType VERTICAL;

        static {
            ListType listType = new ListType("HORIZONTAL", 0);
            HORIZONTAL = listType;
            ListType listType2 = new ListType("VERTICAL", 1);
            VERTICAL = listType2;
            ListType listType3 = new ListType("GRID", 2);
            GRID = listType3;
            ListType[] listTypeArr = {listType, listType2, listType3};
            $VALUES = listTypeArr;
            $ENTRIES = EnumEntriesKt.a(listTypeArr);
        }

        public static ListType valueOf(String str) {
            return (ListType) Enum.valueOf(ListType.class, str);
        }

        public static ListType[] values() {
            return (ListType[]) $VALUES.clone();
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f56689a;

        static {
            int[] iArr = new int[ListType.values().length];
            try {
                iArr[ListType.HORIZONTAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ListType.VERTICAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ListType.GRID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f56689a = iArr;
        }
    }

    public MiddleDividersItemDecoration(Drawable drawable, ListType listType) {
        listType.getClass();
        this.f56686a = drawable;
        this.f56687b = listType;
        this.f56688c = new Rect();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.getClass();
        state.getClass();
        super.getItemOffsets(rect, view, recyclerView, state);
        int childAdapterPosition = recyclerView.getChildAdapterPosition(view);
        int i2 = WhenMappings.f56689a[this.f56687b.ordinal()];
        Drawable drawable = this.f56686a;
        if (i2 == 1) {
            RecyclerView.Adapter adapter = recyclerView.getAdapter();
            adapter.getClass();
            if (childAdapterPosition < adapter.getItemCount() - 1) {
                drawable.getClass();
                rect.right = drawable.getIntrinsicWidth();
                return;
            }
            return;
        }
        if (i2 == 2) {
            RecyclerView.Adapter adapter2 = recyclerView.getAdapter();
            adapter2.getClass();
            if (childAdapterPosition < adapter2.getItemCount() - 1) {
                drawable.getClass();
                rect.bottom = drawable.getIntrinsicWidth();
                return;
            }
            return;
        }
        if (i2 != 3) {
            v40.g();
            return;
        }
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        layoutManager.getClass();
        int i3 = ((GridLayoutManager) layoutManager).F;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        layoutParams.getClass();
        int i4 = ((GridLayoutManager.LayoutParams) layoutParams).f19197e;
        RecyclerView.Adapter adapter3 = recyclerView.getAdapter();
        adapter3.getClass();
        if (childAdapterPosition < adapter3.getItemCount() - i3) {
            drawable.getClass();
            rect.bottom = drawable.getIntrinsicWidth();
        }
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        if (recyclerView.getLayoutDirection() == 0) {
            if (i4 < i3 - 1) {
                drawable.getClass();
                rect.right = drawable.getIntrinsicWidth();
                return;
            }
            return;
        }
        if (i4 > 0) {
            drawable.getClass();
            rect.right = drawable.getIntrinsicWidth();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        Drawable drawable;
        int height;
        int paddingTop;
        int width;
        int paddingLeft;
        canvas.getClass();
        recyclerView.getClass();
        state.getClass();
        RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
        if (layoutManager == null || (drawable = this.f56686a) == null) {
            return;
        }
        int i2 = WhenMappings.f56689a[this.f56687b.ordinal()];
        int i3 = 0;
        Rect rect = this.f56688c;
        if (i2 == 1) {
            int iSave = canvas.save();
            try {
                if (recyclerView.getClipToPadding()) {
                    paddingTop = recyclerView.getPaddingTop();
                    height = recyclerView.getHeight() - recyclerView.getPaddingBottom();
                    canvas.clipRect(recyclerView.getPaddingLeft(), paddingTop, recyclerView.getWidth() - recyclerView.getPaddingRight(), height);
                } else {
                    height = recyclerView.getHeight();
                    paddingTop = 0;
                }
                int childCount = recyclerView.getChildCount() - 1;
                while (i3 < childCount) {
                    View childAt = recyclerView.getChildAt(i3);
                    layoutManager.C(childAt, rect);
                    int iC = rect.right + MathKt.c(childAt.getTranslationX());
                    drawable.setBounds(iC - drawable.getIntrinsicWidth(), paddingTop, iC, height);
                    drawable.draw(canvas);
                    i3++;
                }
                return;
            } finally {
                canvas.restoreToCount(iSave);
            }
        }
        if (i2 == 2) {
            int iSave2 = canvas.save();
            try {
                if (recyclerView.getClipToPadding()) {
                    paddingLeft = recyclerView.getPaddingLeft();
                    width = recyclerView.getWidth() - recyclerView.getPaddingRight();
                    canvas.clipRect(paddingLeft, recyclerView.getPaddingTop(), width, recyclerView.getHeight() - recyclerView.getPaddingBottom());
                } else {
                    width = recyclerView.getWidth();
                    paddingLeft = 0;
                }
                int childCount2 = recyclerView.getChildCount() - 1;
                while (i3 < childCount2) {
                    View childAt2 = recyclerView.getChildAt(i3);
                    layoutManager.C(childAt2, rect);
                    int iC2 = rect.bottom + MathKt.c(childAt2.getTranslationY());
                    drawable.setBounds(paddingLeft, iC2 - drawable.getIntrinsicHeight(), width, iC2);
                    drawable.draw(canvas);
                    i3++;
                }
                return;
            } finally {
                canvas.restoreToCount(iSave2);
            }
        }
        if (i2 != 3) {
            v40.g();
            return;
        }
        int iSave3 = canvas.save();
        try {
            RecyclerView.LayoutManager layoutManager2 = recyclerView.getLayoutManager();
            layoutManager2.getClass();
            int i4 = ((GridLayoutManager) layoutManager2).F;
            int childCount3 = recyclerView.getChildCount() - 1;
            for (int i5 = 0; i5 < childCount3; i5++) {
                View childAt3 = recyclerView.getChildAt(i5);
                ViewGroup.LayoutParams layoutParams = childAt3.getLayoutParams();
                layoutParams.getClass();
                int i6 = ((GridLayoutManager.LayoutParams) layoutParams).f19197e;
                layoutManager.C(childAt3, rect);
                RecyclerView.Adapter adapter = recyclerView.getAdapter();
                adapter.getClass();
                if (i5 < adapter.getItemCount() - i4) {
                    int iC3 = rect.bottom + MathKt.c(childAt3.getTranslationY());
                    drawable.setBounds(0, iC3 - drawable.getIntrinsicHeight(), recyclerView.getWidth(), iC3);
                    drawable.draw(canvas);
                }
                if (i6 < i4 - 1) {
                    int iC4 = rect.right + MathKt.c(childAt3.getTranslationX());
                    drawable.setBounds(iC4 - drawable.getIntrinsicWidth(), 0, iC4, recyclerView.getHeight());
                    drawable.draw(canvas);
                }
            }
        } finally {
            canvas.restoreToCount(iSave3);
        }
    }
}
