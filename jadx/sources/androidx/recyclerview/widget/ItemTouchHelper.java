package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.Interpolator;
import androidx.core.view.ViewCompat;
import com.vuitton.android.R;
import defpackage.md;
import defpackage.tr;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class ItemTouchHelper extends RecyclerView.ItemDecoration implements RecyclerView.OnChildAttachStateChangeListener {
    public Rect A;
    public long B;
    public float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f19204e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public float f19205f;
    public float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f19206h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public float f19207i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public float f19208j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f19209k;
    public final Callback m;
    public int o;
    public int q;
    public RecyclerView r;
    public VelocityTracker t;
    public ArrayList u;
    public ArrayList v;
    public GestureDetector x;
    public ItemTouchHelperGestureListener y;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f19201a = new ArrayList();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f19202b = new float[2];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public RecyclerView.ViewHolder f19203c = null;
    public int l = -1;
    public int n = 0;
    public final ArrayList p = new ArrayList();
    public final Runnable s = new Runnable() { // from class: androidx.recyclerview.widget.ItemTouchHelper.1
        /* JADX WARN: Code duplicated, block: B:27:0x0080  */
        /* JADX WARN: Code duplicated, block: B:39:0x00c6  */
        @Override // java.lang.Runnable
        public void run() {
            int iInterpolateOutOfBoundsScroll;
            int iInterpolateOutOfBoundsScroll2;
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            RecyclerView.ViewHolder viewHolder = itemTouchHelper.f19203c;
            if (viewHolder != null) {
                if (viewHolder == null) {
                    itemTouchHelper.B = Long.MIN_VALUE;
                    return;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                long j2 = itemTouchHelper.B;
                long j3 = j2 == Long.MIN_VALUE ? 0L : jCurrentTimeMillis - j2;
                RecyclerView.LayoutManager layoutManager = itemTouchHelper.r.getLayoutManager();
                if (itemTouchHelper.A == null) {
                    itemTouchHelper.A = new Rect();
                }
                layoutManager.e(itemTouchHelper.f19203c.itemView, itemTouchHelper.A);
                if (layoutManager.f()) {
                    int i2 = (int) (itemTouchHelper.f19208j + itemTouchHelper.f19206h);
                    int paddingLeft = (i2 - itemTouchHelper.A.left) - itemTouchHelper.r.getPaddingLeft();
                    float f2 = itemTouchHelper.f19206h;
                    if ((f2 >= Call.Parameters.DEFAULT_CAMERA_ZOOM || paddingLeft >= 0) && (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM || (paddingLeft = ((itemTouchHelper.f19203c.itemView.getWidth() + i2) + itemTouchHelper.A.right) - (itemTouchHelper.r.getWidth() - itemTouchHelper.r.getPaddingRight())) <= 0)) {
                        iInterpolateOutOfBoundsScroll = 0;
                    } else {
                        iInterpolateOutOfBoundsScroll = paddingLeft;
                    }
                } else {
                    iInterpolateOutOfBoundsScroll = 0;
                }
                if (layoutManager.g()) {
                    int i3 = (int) (itemTouchHelper.f19209k + itemTouchHelper.f19207i);
                    iInterpolateOutOfBoundsScroll2 = (i3 - itemTouchHelper.A.top) - itemTouchHelper.r.getPaddingTop();
                    float f3 = itemTouchHelper.f19207i;
                    if ((f3 >= Call.Parameters.DEFAULT_CAMERA_ZOOM || iInterpolateOutOfBoundsScroll2 >= 0) && (f3 <= Call.Parameters.DEFAULT_CAMERA_ZOOM || (iInterpolateOutOfBoundsScroll2 = ((itemTouchHelper.f19203c.itemView.getHeight() + i3) + itemTouchHelper.A.bottom) - (itemTouchHelper.r.getHeight() - itemTouchHelper.r.getPaddingBottom())) <= 0)) {
                        iInterpolateOutOfBoundsScroll2 = 0;
                    }
                } else {
                    iInterpolateOutOfBoundsScroll2 = 0;
                }
                if (iInterpolateOutOfBoundsScroll != 0) {
                    iInterpolateOutOfBoundsScroll = itemTouchHelper.m.interpolateOutOfBoundsScroll(itemTouchHelper.r, itemTouchHelper.f19203c.itemView.getWidth(), iInterpolateOutOfBoundsScroll, itemTouchHelper.r.getWidth(), j3);
                }
                int i4 = iInterpolateOutOfBoundsScroll;
                if (iInterpolateOutOfBoundsScroll2 != 0) {
                    iInterpolateOutOfBoundsScroll2 = itemTouchHelper.m.interpolateOutOfBoundsScroll(itemTouchHelper.r, itemTouchHelper.f19203c.itemView.getHeight(), iInterpolateOutOfBoundsScroll2, itemTouchHelper.r.getHeight(), j3);
                }
                if (i4 == 0 && iInterpolateOutOfBoundsScroll2 == 0) {
                    itemTouchHelper.B = Long.MIN_VALUE;
                    return;
                }
                if (itemTouchHelper.B == Long.MIN_VALUE) {
                    itemTouchHelper.B = jCurrentTimeMillis;
                }
                itemTouchHelper.r.scrollBy(i4, iInterpolateOutOfBoundsScroll2);
                ItemTouchHelper itemTouchHelper2 = ItemTouchHelper.this;
                RecyclerView.ViewHolder viewHolder2 = itemTouchHelper2.f19203c;
                if (viewHolder2 != null) {
                    itemTouchHelper2.n(viewHolder2);
                }
                ItemTouchHelper itemTouchHelper3 = ItemTouchHelper.this;
                itemTouchHelper3.r.removeCallbacks(itemTouchHelper3.s);
                RecyclerView recyclerView = ItemTouchHelper.this.r;
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                recyclerView.postOnAnimation(this);
            }
        }
    };
    public View w = null;
    public final RecyclerView.OnItemTouchListener z = new RecyclerView.OnItemTouchListener() { // from class: androidx.recyclerview.widget.ItemTouchHelper.2
        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void a(MotionEvent motionEvent) {
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            Runnable runnable = itemTouchHelper.s;
            itemTouchHelper.x.onTouchEvent(motionEvent);
            VelocityTracker velocityTracker = itemTouchHelper.t;
            if (velocityTracker != null) {
                velocityTracker.addMovement(motionEvent);
            }
            if (itemTouchHelper.l == -1) {
                return;
            }
            int actionMasked = motionEvent.getActionMasked();
            int iFindPointerIndex = motionEvent.findPointerIndex(itemTouchHelper.l);
            if (iFindPointerIndex >= 0) {
                itemTouchHelper.h(motionEvent, actionMasked, iFindPointerIndex);
            }
            RecyclerView.ViewHolder viewHolder = itemTouchHelper.f19203c;
            if (viewHolder == null) {
                return;
            }
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (iFindPointerIndex >= 0) {
                        itemTouchHelper.p(motionEvent, itemTouchHelper.o, iFindPointerIndex);
                        itemTouchHelper.n(viewHolder);
                        itemTouchHelper.r.removeCallbacks(runnable);
                        runnable.run();
                        itemTouchHelper.r.invalidate();
                        return;
                    }
                    return;
                }
                if (actionMasked != 3) {
                    if (actionMasked != 6) {
                        return;
                    }
                    int actionIndex = motionEvent.getActionIndex();
                    if (motionEvent.getPointerId(actionIndex) == itemTouchHelper.l) {
                        itemTouchHelper.l = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
                        itemTouchHelper.p(motionEvent, itemTouchHelper.o, actionIndex);
                        return;
                    }
                    return;
                }
                VelocityTracker velocityTracker2 = itemTouchHelper.t;
                if (velocityTracker2 != null) {
                    velocityTracker2.clear();
                }
            }
            itemTouchHelper.o(null, 0);
            itemTouchHelper.l = -1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final void d(boolean z) {
            if (z) {
                ItemTouchHelper.this.o(null, 0);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnItemTouchListener
        public final boolean e(MotionEvent motionEvent) {
            int iFindPointerIndex;
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            itemTouchHelper.x.onTouchEvent(motionEvent);
            int actionMasked = motionEvent.getActionMasked();
            RecoverAnimation recoverAnimation = null;
            if (actionMasked == 0) {
                itemTouchHelper.l = motionEvent.getPointerId(0);
                itemTouchHelper.d = motionEvent.getX();
                itemTouchHelper.f19204e = motionEvent.getY();
                VelocityTracker velocityTracker = itemTouchHelper.t;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                }
                itemTouchHelper.t = VelocityTracker.obtain();
                if (itemTouchHelper.f19203c == null) {
                    ArrayList arrayList = itemTouchHelper.p;
                    if (!arrayList.isEmpty()) {
                        View viewK = itemTouchHelper.k(motionEvent);
                        for (int size = arrayList.size() - 1; size >= 0; size--) {
                            RecoverAnimation recoverAnimation2 = (RecoverAnimation) arrayList.get(size);
                            if (recoverAnimation2.f19216e.itemView == viewK) {
                                recoverAnimation = recoverAnimation2;
                                break;
                            }
                        }
                    }
                    if (recoverAnimation != null) {
                        RecyclerView.ViewHolder viewHolder = recoverAnimation.f19216e;
                        itemTouchHelper.d -= recoverAnimation.f19219i;
                        itemTouchHelper.f19204e -= recoverAnimation.f19220j;
                        itemTouchHelper.j(viewHolder, true);
                        if (itemTouchHelper.f19201a.remove(viewHolder.itemView)) {
                            itemTouchHelper.m.clearView(itemTouchHelper.r, viewHolder);
                        }
                        itemTouchHelper.o(viewHolder, recoverAnimation.f19217f);
                        itemTouchHelper.p(motionEvent, itemTouchHelper.o, 0);
                    }
                }
            } else if (actionMasked == 3 || actionMasked == 1) {
                itemTouchHelper.l = -1;
                itemTouchHelper.o(null, 0);
            } else {
                int i2 = itemTouchHelper.l;
                if (i2 != -1 && (iFindPointerIndex = motionEvent.findPointerIndex(i2)) >= 0) {
                    itemTouchHelper.h(motionEvent, actionMasked, iFindPointerIndex);
                }
            }
            VelocityTracker velocityTracker2 = itemTouchHelper.t;
            if (velocityTracker2 != null) {
                velocityTracker2.addMovement(motionEvent);
            }
            return itemTouchHelper.f19203c != null;
        }
    };

    public static abstract class Callback {
        private static final int ABS_HORIZONTAL_DIR_FLAGS = 789516;
        public static final int DEFAULT_DRAG_ANIMATION_DURATION = 200;
        public static final int DEFAULT_SWIPE_ANIMATION_DURATION = 250;
        private static final long DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS = 2000;
        static final int RELATIVE_DIR_FLAGS = 3158064;
        private static final Interpolator sDragScrollInterpolator = new AnonymousClass1();
        private static final Interpolator sDragViewScrollCapInterpolator = new AnonymousClass2();
        private int mCachedMaxScrollSpeed = -1;

        /* JADX INFO: renamed from: androidx.recyclerview.widget.ItemTouchHelper$Callback$1, reason: invalid class name */
        public class AnonymousClass1 implements Interpolator {
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f2) {
                return f2 * f2 * f2 * f2 * f2;
            }
        }

        /* JADX INFO: renamed from: androidx.recyclerview.widget.ItemTouchHelper$Callback$2, reason: invalid class name */
        public class AnonymousClass2 implements Interpolator {
            @Override // android.animation.TimeInterpolator
            public final float getInterpolation(float f2) {
                float f3 = f2 - 1.0f;
                return (f3 * f3 * f3 * f3 * f3) + 1.0f;
            }
        }

        public static int convertToRelativeDirection(int i2, int i3) {
            int i4;
            int i5 = i2 & ABS_HORIZONTAL_DIR_FLAGS;
            if (i5 == 0) {
                return i2;
            }
            int i6 = i2 & (~i5);
            if (i3 == 0) {
                i4 = i5 << 2;
            } else {
                int i7 = i5 << 1;
                i6 |= (-789517) & i7;
                i4 = (i7 & ABS_HORIZONTAL_DIR_FLAGS) << 2;
            }
            return i6 | i4;
        }

        public static ItemTouchUIUtil getDefaultUIUtil() {
            return ItemTouchUIUtilImpl.f19223a;
        }

        public static int makeFlag(int i2, int i3) {
            return i3 << (i2 * 8);
        }

        public static int makeMovementFlags(int i2, int i3) {
            return makeFlag(2, i2) | makeFlag(1, i3) | makeFlag(0, i3 | i2);
        }

        public boolean canDropOver(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2) {
            return true;
        }

        public RecyclerView.ViewHolder chooseDropTarget(RecyclerView.ViewHolder viewHolder, List<RecyclerView.ViewHolder> list, int i2, int i3) {
            int bottom;
            int iAbs;
            int top;
            int iAbs2;
            int left;
            int iAbs3;
            int right;
            int iAbs4;
            int width = viewHolder.itemView.getWidth() + i2;
            int height = viewHolder.itemView.getHeight() + i3;
            int left2 = i2 - viewHolder.itemView.getLeft();
            int top2 = i3 - viewHolder.itemView.getTop();
            int size = list.size();
            RecyclerView.ViewHolder viewHolder2 = null;
            int i4 = -1;
            for (int i5 = 0; i5 < size; i5++) {
                RecyclerView.ViewHolder viewHolder3 = list.get(i5);
                if (left2 > 0 && (right = viewHolder3.itemView.getRight() - width) < 0 && viewHolder3.itemView.getRight() > viewHolder.itemView.getRight() && (iAbs4 = Math.abs(right)) > i4) {
                    viewHolder2 = viewHolder3;
                    i4 = iAbs4;
                }
                if (left2 < 0 && (left = viewHolder3.itemView.getLeft() - i2) > 0 && viewHolder3.itemView.getLeft() < viewHolder.itemView.getLeft() && (iAbs3 = Math.abs(left)) > i4) {
                    viewHolder2 = viewHolder3;
                    i4 = iAbs3;
                }
                if (top2 < 0 && (top = viewHolder3.itemView.getTop() - i3) > 0 && viewHolder3.itemView.getTop() < viewHolder.itemView.getTop() && (iAbs2 = Math.abs(top)) > i4) {
                    viewHolder2 = viewHolder3;
                    i4 = iAbs2;
                }
                if (top2 > 0 && (bottom = viewHolder3.itemView.getBottom() - height) < 0 && viewHolder3.itemView.getBottom() > viewHolder.itemView.getBottom() && (iAbs = Math.abs(bottom)) > i4) {
                    viewHolder2 = viewHolder3;
                    i4 = iAbs;
                }
            }
            return viewHolder2;
        }

        public void clearView(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            View view = viewHolder.itemView;
            Object tag = view.getTag(R.id.item_touch_helper_previous_elevation);
            if (tag instanceof Float) {
                float fFloatValue = ((Float) tag).floatValue();
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                view.setElevation(fFloatValue);
            }
            view.setTag(R.id.item_touch_helper_previous_elevation, null);
            view.setTranslationX(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            view.setTranslationY(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }

        public int convertToAbsoluteDirection(int i2, int i3) {
            int i4;
            int i5 = i2 & RELATIVE_DIR_FLAGS;
            if (i5 == 0) {
                return i2;
            }
            int i6 = i2 & (~i5);
            if (i3 == 0) {
                i4 = i5 >> 2;
            } else {
                int i7 = i5 >> 1;
                i6 |= (-3158065) & i7;
                i4 = (RELATIVE_DIR_FLAGS & i7) >> 2;
            }
            return i4 | i6;
        }

        public final int getAbsoluteMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return convertToAbsoluteDirection(getMovementFlags(recyclerView, viewHolder), recyclerView.getLayoutDirection());
        }

        public long getAnimationDuration(RecyclerView recyclerView, int i2, float f2, float f3) {
            RecyclerView.ItemAnimator itemAnimator = recyclerView.getItemAnimator();
            if (itemAnimator == null) {
                return i2 == 8 ? 200L : 250L;
            }
            return i2 == 8 ? itemAnimator.f19265e : itemAnimator.d;
        }

        public int getBoundingBoxMargin() {
            return 0;
        }

        public float getMoveThreshold(RecyclerView.ViewHolder viewHolder) {
            return 0.5f;
        }

        public abstract int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder);

        public float getSwipeEscapeVelocity(float f2) {
            return f2;
        }

        public float getSwipeThreshold(RecyclerView.ViewHolder viewHolder) {
            return 0.5f;
        }

        public float getSwipeVelocityThreshold(float f2) {
            return f2;
        }

        public boolean hasDragFlag(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return (getAbsoluteMovementFlags(recyclerView, viewHolder) & 16711680) != 0;
        }

        public boolean hasSwipeFlag(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return (getAbsoluteMovementFlags(recyclerView, viewHolder) & 65280) != 0;
        }

        public int interpolateOutOfBoundsScroll(RecyclerView recyclerView, int i2, int i3, int i4, long j2) {
            if (this.mCachedMaxScrollSpeed == -1) {
                this.mCachedMaxScrollSpeed = recyclerView.getResources().getDimensionPixelSize(R.dimen.item_touch_helper_max_drag_scroll_per_frame);
            }
            int interpolation = (int) (sDragScrollInterpolator.getInterpolation(j2 <= DRAG_SCROLL_ACCELERATION_LIMIT_TIME_MS ? j2 / 2000.0f : 1.0f) * ((int) (sDragViewScrollCapInterpolator.getInterpolation(Math.min(1.0f, (Math.abs(i3) * 1.0f) / i2)) * ((int) Math.signum(i3)) * this.mCachedMaxScrollSpeed)));
            if (interpolation == 0) {
                return i3 > 0 ? 1 : -1;
            }
            return interpolation;
        }

        public boolean isItemViewSwipeEnabled() {
            return true;
        }

        public boolean isLongPressDragEnabled() {
            return true;
        }

        public void onChildDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f2, float f3, int i2, boolean z) {
            View view = viewHolder.itemView;
            if (z && view.getTag(R.id.item_touch_helper_previous_elevation) == null) {
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                Float fValueOf = Float.valueOf(view.getElevation());
                int childCount = recyclerView.getChildCount();
                float f4 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                for (int i3 = 0; i3 < childCount; i3++) {
                    View childAt = recyclerView.getChildAt(i3);
                    if (childAt != view) {
                        WeakHashMap weakHashMap2 = ViewCompat.f12200a;
                        float elevation = childAt.getElevation();
                        if (elevation > f4) {
                            f4 = elevation;
                        }
                    }
                }
                view.setElevation(f4 + 1.0f);
                view.setTag(R.id.item_touch_helper_previous_elevation, fValueOf);
            }
            view.setTranslationX(f2);
            view.setTranslationY(f3);
        }

        public void onChildDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, float f2, float f3, int i2, boolean z) {
            View view = viewHolder.itemView;
        }

        public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, List<RecoverAnimation> list, int i2, float f2, float f3) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                RecoverAnimation recoverAnimation = list.get(i3);
                RecyclerView.ViewHolder viewHolder2 = recoverAnimation.f19216e;
                float f4 = recoverAnimation.f19213a;
                float f5 = recoverAnimation.f19215c;
                if (f4 == f5) {
                    recoverAnimation.f19219i = viewHolder2.itemView.getTranslationX();
                } else {
                    recoverAnimation.f19219i = tr.a(f5, f4, recoverAnimation.m, f4);
                }
                float f6 = recoverAnimation.f19214b;
                float f7 = recoverAnimation.d;
                if (f6 == f7) {
                    recoverAnimation.f19220j = viewHolder2.itemView.getTranslationY();
                } else {
                    recoverAnimation.f19220j = tr.a(f7, f6, recoverAnimation.m, f6);
                }
                int iSave = canvas.save();
                onChildDraw(canvas, recyclerView, recoverAnimation.f19216e, recoverAnimation.f19219i, recoverAnimation.f19220j, recoverAnimation.f19217f, false);
                canvas.restoreToCount(iSave);
            }
            if (viewHolder != null) {
                int iSave2 = canvas.save();
                onChildDraw(canvas, recyclerView, viewHolder, f2, f3, i2, true);
                canvas.restoreToCount(iSave2);
            }
        }

        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, List<RecoverAnimation> list, int i2, float f2, float f3) {
            int size = list.size();
            boolean z = false;
            for (int i3 = 0; i3 < size; i3++) {
                RecoverAnimation recoverAnimation = list.get(i3);
                int iSave = canvas.save();
                onChildDrawOver(canvas, recyclerView, recoverAnimation.f19216e, recoverAnimation.f19219i, recoverAnimation.f19220j, recoverAnimation.f19217f, false);
                canvas.restoreToCount(iSave);
            }
            if (viewHolder != null) {
                int iSave2 = canvas.save();
                onChildDrawOver(canvas, recyclerView, viewHolder, f2, f3, i2, true);
                canvas.restoreToCount(iSave2);
            }
            for (int i4 = size - 1; i4 >= 0; i4--) {
                RecoverAnimation recoverAnimation2 = list.get(i4);
                boolean z2 = recoverAnimation2.l;
                if (z2 && !recoverAnimation2.f19218h) {
                    list.remove(i4);
                } else if (!z2) {
                    z = true;
                }
            }
            if (z) {
                recyclerView.invalidate();
            }
        }

        public abstract boolean onMove(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, RecyclerView.ViewHolder viewHolder2);

        /* JADX WARN: Multi-variable type inference failed */
        public void onMoved(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder, int i2, RecyclerView.ViewHolder viewHolder2, int i3, int i4, int i5) {
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof ViewDropHandler) {
                ((ViewDropHandler) layoutManager).b(viewHolder.itemView, viewHolder2.itemView);
                return;
            }
            if (layoutManager.f()) {
                if (RecyclerView.LayoutManager.D(viewHolder2.itemView) <= recyclerView.getPaddingLeft()) {
                    recyclerView.scrollToPosition(i3);
                }
                if (RecyclerView.LayoutManager.G(viewHolder2.itemView) >= recyclerView.getWidth() - recyclerView.getPaddingRight()) {
                    recyclerView.scrollToPosition(i3);
                }
            }
            if (layoutManager.g()) {
                if (RecyclerView.LayoutManager.H(viewHolder2.itemView) <= recyclerView.getPaddingTop()) {
                    recyclerView.scrollToPosition(i3);
                }
                if (RecyclerView.LayoutManager.B(viewHolder2.itemView) >= recyclerView.getHeight() - recyclerView.getPaddingBottom()) {
                    recyclerView.scrollToPosition(i3);
                }
            }
        }

        public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i2) {
        }

        public abstract void onSwiped(RecyclerView.ViewHolder viewHolder, int i2);
    }

    public class ItemTouchHelperGestureListener extends GestureDetector.SimpleOnGestureListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f19211b = true;

        public ItemTouchHelperGestureListener() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final boolean onDown(MotionEvent motionEvent) {
            return true;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
        public final void onLongPress(MotionEvent motionEvent) {
            View viewK;
            RecyclerView.ViewHolder childViewHolder;
            ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
            Callback callback = itemTouchHelper.m;
            if (this.f19211b && (viewK = itemTouchHelper.k(motionEvent)) != null && (childViewHolder = itemTouchHelper.r.getChildViewHolder(viewK)) != null && callback.hasDragFlag(itemTouchHelper.r, childViewHolder)) {
                int pointerId = motionEvent.getPointerId(0);
                int i2 = itemTouchHelper.l;
                if (pointerId == i2) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(i2);
                    float x = motionEvent.getX(iFindPointerIndex);
                    float y = motionEvent.getY(iFindPointerIndex);
                    itemTouchHelper.d = x;
                    itemTouchHelper.f19204e = y;
                    itemTouchHelper.f19207i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    itemTouchHelper.f19206h = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    if (callback.isLongPressDragEnabled()) {
                        itemTouchHelper.o(childViewHolder, 2);
                    }
                }
            }
        }
    }

    public static class RecoverAnimation implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final float f19213a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final float f19214b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float f19215c;
        public final float d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final RecyclerView.ViewHolder f19216e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f19217f;
        public final ValueAnimator g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f19218h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public float f19219i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public float f19220j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f19221k = false;
        public boolean l = false;
        public float m;

        public RecoverAnimation(RecyclerView.ViewHolder viewHolder, int i2, float f2, float f3, float f4, float f5) {
            this.f19217f = i2;
            this.f19216e = viewHolder;
            this.f19213a = f2;
            this.f19214b = f3;
            this.f19215c = f4;
            this.d = f5;
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
            this.g = valueAnimatorOfFloat;
            valueAnimatorOfFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: androidx.recyclerview.widget.ItemTouchHelper.RecoverAnimation.1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    RecoverAnimation.this.m = valueAnimator.getAnimatedFraction();
                }
            });
            valueAnimatorOfFloat.setTarget(viewHolder.itemView);
            valueAnimatorOfFloat.addListener(this);
            this.m = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.m = 1.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.l) {
                this.f19216e.setIsRecyclable(true);
            }
            this.l = true;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
        }
    }

    public static abstract class SimpleCallback extends Callback {
        private int mDefaultDragDirs;
        private int mDefaultSwipeDirs;

        public SimpleCallback(int i2, int i3) {
            this.mDefaultSwipeDirs = i3;
            this.mDefaultDragDirs = i2;
        }

        public int getDragDirs(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return this.mDefaultDragDirs;
        }

        @Override // androidx.recyclerview.widget.ItemTouchHelper.Callback
        public int getMovementFlags(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return Callback.makeMovementFlags(getDragDirs(recyclerView, viewHolder), getSwipeDirs(recyclerView, viewHolder));
        }

        public int getSwipeDirs(RecyclerView recyclerView, RecyclerView.ViewHolder viewHolder) {
            return this.mDefaultSwipeDirs;
        }

        public void setDefaultDragDirs(int i2) {
            this.mDefaultDragDirs = i2;
        }

        public void setDefaultSwipeDirs(int i2) {
            this.mDefaultSwipeDirs = i2;
        }
    }

    public interface ViewDropHandler {
        void b(View view, View view2);
    }

    public ItemTouchHelper(Callback callback) {
        this.m = callback;
    }

    public static boolean m(View view, float f2, float f3, float f4, float f5) {
        return f2 >= f4 && f2 <= f4 + ((float) view.getWidth()) && f3 >= f5 && f3 <= f5 + ((float) view.getHeight());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public final void b(View view) {
        if (view == this.w) {
            this.w = null;
        }
        RecyclerView.ViewHolder childViewHolder = this.r.getChildViewHolder(view);
        if (childViewHolder == null) {
            return;
        }
        RecyclerView.ViewHolder viewHolder = this.f19203c;
        if (viewHolder != null && childViewHolder == viewHolder) {
            o(null, 0);
            return;
        }
        j(childViewHolder, false);
        if (this.f19201a.remove(childViewHolder.itemView)) {
            this.m.clearView(this.r, childViewHolder);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
    public final void c(View view) {
    }

    public final void f(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.r;
        if (recyclerView2 == recyclerView) {
            return;
        }
        RecyclerView.OnItemTouchListener onItemTouchListener = this.z;
        if (recyclerView2 != null) {
            recyclerView2.removeItemDecoration(this);
            this.r.removeOnItemTouchListener(onItemTouchListener);
            this.r.removeOnChildAttachStateChangeListener(this);
            ArrayList arrayList = this.p;
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                RecoverAnimation recoverAnimation = (RecoverAnimation) arrayList.get(0);
                recoverAnimation.g.cancel();
                this.m.clearView(this.r, recoverAnimation.f19216e);
            }
            arrayList.clear();
            this.w = null;
            VelocityTracker velocityTracker = this.t;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.t = null;
            }
            ItemTouchHelperGestureListener itemTouchHelperGestureListener = this.y;
            if (itemTouchHelperGestureListener != null) {
                itemTouchHelperGestureListener.f19211b = false;
                this.y = null;
            }
            if (this.x != null) {
                this.x = null;
            }
        }
        this.r = recyclerView;
        if (recyclerView != null) {
            Resources resources = recyclerView.getResources();
            this.f19205f = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_velocity);
            this.g = resources.getDimension(R.dimen.item_touch_helper_swipe_escape_max_velocity);
            this.q = ViewConfiguration.get(this.r.getContext()).getScaledTouchSlop();
            this.r.addItemDecoration(this);
            this.r.addOnItemTouchListener(onItemTouchListener);
            this.r.addOnChildAttachStateChangeListener(this);
            this.y = new ItemTouchHelperGestureListener();
            this.x = new GestureDetector(this.r.getContext(), this.y);
        }
    }

    public final int g(RecyclerView.ViewHolder viewHolder, int i2) {
        if ((i2 & 12) == 0) {
            return 0;
        }
        int i3 = this.f19206h > Call.Parameters.DEFAULT_CAMERA_ZOOM ? 8 : 4;
        VelocityTracker velocityTracker = this.t;
        Callback callback = this.m;
        if (velocityTracker != null && this.l > -1) {
            velocityTracker.computeCurrentVelocity(1000, callback.getSwipeVelocityThreshold(this.g));
            float xVelocity = this.t.getXVelocity(this.l);
            float yVelocity = this.t.getYVelocity(this.l);
            int i4 = xVelocity > Call.Parameters.DEFAULT_CAMERA_ZOOM ? 8 : 4;
            float fAbs = Math.abs(xVelocity);
            if ((i4 & i2) != 0 && i3 == i4 && fAbs >= callback.getSwipeEscapeVelocity(this.f19205f) && fAbs > Math.abs(yVelocity)) {
                return i4;
            }
        }
        float swipeThreshold = callback.getSwipeThreshold(viewHolder) * this.r.getWidth();
        if ((i2 & i3) == 0 || Math.abs(this.f19206h) <= swipeThreshold) {
            return 0;
        }
        return i3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        rect.setEmpty();
    }

    public final void h(MotionEvent motionEvent, int i2, int i3) {
        int absoluteMovementFlags;
        View viewK;
        if (this.f19203c == null && i2 == 2 && this.n != 2) {
            Callback callback = this.m;
            if (callback.isItemViewSwipeEnabled() && this.r.getScrollState() != 1) {
                RecyclerView.LayoutManager layoutManager = this.r.getLayoutManager();
                int i4 = this.l;
                RecyclerView.ViewHolder childViewHolder = null;
                if (i4 != -1) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(i4);
                    float x = motionEvent.getX(iFindPointerIndex) - this.d;
                    float y = motionEvent.getY(iFindPointerIndex) - this.f19204e;
                    float fAbs = Math.abs(x);
                    float fAbs2 = Math.abs(y);
                    float f2 = this.q;
                    if ((fAbs >= f2 || fAbs2 >= f2) && ((fAbs <= fAbs2 || !layoutManager.f()) && ((fAbs2 <= fAbs || !layoutManager.g()) && (viewK = k(motionEvent)) != null))) {
                        childViewHolder = this.r.getChildViewHolder(viewK);
                    }
                }
                if (childViewHolder == null || (absoluteMovementFlags = (callback.getAbsoluteMovementFlags(this.r, childViewHolder) & 65280) >> 8) == 0) {
                    return;
                }
                float x2 = motionEvent.getX(i3);
                float y2 = motionEvent.getY(i3);
                float f3 = x2 - this.d;
                float f4 = y2 - this.f19204e;
                float fAbs3 = Math.abs(f3);
                float fAbs4 = Math.abs(f4);
                float f5 = this.q;
                if (fAbs3 >= f5 || fAbs4 >= f5) {
                    if (fAbs3 > fAbs4) {
                        if (f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM && (absoluteMovementFlags & 4) == 0) {
                            return;
                        }
                        if (f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM && (absoluteMovementFlags & 8) == 0) {
                            return;
                        }
                    } else {
                        if (f4 < Call.Parameters.DEFAULT_CAMERA_ZOOM && (absoluteMovementFlags & 1) == 0) {
                            return;
                        }
                        if (f4 > Call.Parameters.DEFAULT_CAMERA_ZOOM && (absoluteMovementFlags & 2) == 0) {
                            return;
                        }
                    }
                    this.f19207i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    this.f19206h = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    this.l = motionEvent.getPointerId(0);
                    o(childViewHolder, 1);
                }
            }
        }
    }

    public final int i(RecyclerView.ViewHolder viewHolder, int i2) {
        if ((i2 & 3) == 0) {
            return 0;
        }
        int i3 = this.f19207i > Call.Parameters.DEFAULT_CAMERA_ZOOM ? 2 : 1;
        VelocityTracker velocityTracker = this.t;
        Callback callback = this.m;
        if (velocityTracker != null && this.l > -1) {
            velocityTracker.computeCurrentVelocity(1000, callback.getSwipeVelocityThreshold(this.g));
            float xVelocity = this.t.getXVelocity(this.l);
            float yVelocity = this.t.getYVelocity(this.l);
            int i4 = yVelocity > Call.Parameters.DEFAULT_CAMERA_ZOOM ? 2 : 1;
            float fAbs = Math.abs(yVelocity);
            if ((i4 & i2) != 0 && i4 == i3 && fAbs >= callback.getSwipeEscapeVelocity(this.f19205f) && fAbs > Math.abs(xVelocity)) {
                return i4;
            }
        }
        float swipeThreshold = callback.getSwipeThreshold(viewHolder) * this.r.getHeight();
        if ((i2 & i3) == 0 || Math.abs(this.f19207i) <= swipeThreshold) {
            return 0;
        }
        return i3;
    }

    public final void j(RecyclerView.ViewHolder viewHolder, boolean z) {
        ArrayList arrayList = this.p;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            RecoverAnimation recoverAnimation = (RecoverAnimation) arrayList.get(size);
            if (recoverAnimation.f19216e == viewHolder) {
                recoverAnimation.f19221k |= z;
                if (!recoverAnimation.l) {
                    recoverAnimation.g.cancel();
                }
                arrayList.remove(size);
                return;
            }
        }
    }

    public final View k(MotionEvent motionEvent) {
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        RecyclerView.ViewHolder viewHolder = this.f19203c;
        if (viewHolder != null) {
            View view = viewHolder.itemView;
            if (m(view, x, y, this.f19208j + this.f19206h, this.f19209k + this.f19207i)) {
                return view;
            }
        }
        ArrayList arrayList = this.p;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            RecoverAnimation recoverAnimation = (RecoverAnimation) arrayList.get(size);
            View view2 = recoverAnimation.f19216e.itemView;
            if (m(view2, x, y, recoverAnimation.f19219i, recoverAnimation.f19220j)) {
                return view2;
            }
        }
        return this.r.findChildViewUnder(x, y);
    }

    public final void l(float[] fArr) {
        if ((this.o & 12) != 0) {
            fArr[0] = (this.f19208j + this.f19206h) - this.f19203c.itemView.getLeft();
        } else {
            fArr[0] = this.f19203c.itemView.getTranslationX();
        }
        if ((this.o & 3) != 0) {
            fArr[1] = (this.f19209k + this.f19207i) - this.f19203c.itemView.getTop();
        } else {
            fArr[1] = this.f19203c.itemView.getTranslationY();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void n(RecyclerView.ViewHolder viewHolder) {
        int i2;
        if (this.r.isLayoutRequested()) {
            return;
        }
        char c2 = 2;
        if (this.n != 2) {
            return;
        }
        Callback callback = this.m;
        float moveThreshold = callback.getMoveThreshold(viewHolder);
        int i3 = (int) (this.f19208j + this.f19206h);
        int i4 = (int) (this.f19209k + this.f19207i);
        if (Math.abs(i4 - viewHolder.itemView.getTop()) >= viewHolder.itemView.getHeight() * moveThreshold || Math.abs(i3 - viewHolder.itemView.getLeft()) >= viewHolder.itemView.getWidth() * moveThreshold) {
            ArrayList arrayList = this.u;
            if (arrayList == null) {
                this.u = new ArrayList();
                this.v = new ArrayList();
            } else {
                arrayList.clear();
                this.v.clear();
            }
            int boundingBoxMargin = callback.getBoundingBoxMargin();
            int iRound = Math.round(this.f19208j + this.f19206h) - boundingBoxMargin;
            int iRound2 = Math.round(this.f19209k + this.f19207i) - boundingBoxMargin;
            int i5 = boundingBoxMargin * 2;
            int width = viewHolder.itemView.getWidth() + iRound + i5;
            int height = viewHolder.itemView.getHeight() + iRound2 + i5;
            int i6 = (iRound + width) / 2;
            int i7 = (iRound2 + height) / 2;
            RecyclerView.LayoutManager layoutManager = this.r.getLayoutManager();
            int iX = layoutManager.x();
            int i8 = 0;
            while (i8 < iX) {
                char c3 = c2;
                View viewW = layoutManager.w(i8);
                if (viewW != viewHolder.itemView && viewW.getBottom() >= iRound2 && viewW.getTop() <= height && viewW.getRight() >= iRound && viewW.getLeft() <= width) {
                    RecyclerView.ViewHolder childViewHolder = this.r.getChildViewHolder(viewW);
                    i2 = i6;
                    if (callback.canDropOver(this.r, this.f19203c, childViewHolder)) {
                        int iAbs = Math.abs(i2 - ((viewW.getRight() + viewW.getLeft()) / 2));
                        int iAbs2 = Math.abs(i7 - ((viewW.getBottom() + viewW.getTop()) / 2));
                        int i9 = (iAbs2 * iAbs2) + (iAbs * iAbs);
                        int size = this.u.size();
                        int i10 = 0;
                        int i11 = 0;
                        while (i10 < size) {
                            int i12 = size;
                            if (i9 <= ((Integer) this.v.get(i10)).intValue()) {
                                break;
                            }
                            i11++;
                            i10++;
                            size = i12;
                        }
                        this.u.add(i11, childViewHolder);
                        this.v.add(i11, Integer.valueOf(i9));
                    }
                    i8++;
                    c2 = c3;
                    iRound = iRound;
                    i6 = i2;
                    iRound2 = iRound2;
                } else {
                    i2 = i6;
                }
                i8++;
                c2 = c3;
                iRound = iRound;
                i6 = i2;
                iRound2 = iRound2;
            }
            ArrayList arrayList2 = this.u;
            if (arrayList2.size() == 0) {
                return;
            }
            RecyclerView.ViewHolder viewHolderChooseDropTarget = callback.chooseDropTarget(viewHolder, arrayList2, i3, i4);
            if (viewHolderChooseDropTarget == null) {
                this.u.clear();
                this.v.clear();
                return;
            }
            int absoluteAdapterPosition = viewHolderChooseDropTarget.getAbsoluteAdapterPosition();
            int absoluteAdapterPosition2 = viewHolder.getAbsoluteAdapterPosition();
            if (callback.onMove(this.r, viewHolder, viewHolderChooseDropTarget)) {
                this.m.onMoved(this.r, viewHolder, absoluteAdapterPosition2, viewHolderChooseDropTarget, absoluteAdapterPosition, i3, i4);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0045  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.recyclerview.widget.ItemTouchHelper$Callback] */
    /* JADX WARN: Type inference failed for: r0v6, types: [android.view.ViewParent] */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2, types: [androidx.recyclerview.widget.ItemTouchHelper$Callback] */
    /* JADX WARN: Type inference failed for: r13v3, types: [androidx.recyclerview.widget.ItemTouchHelper$Callback] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Type inference failed for: r13v5, types: [androidx.recyclerview.widget.ItemTouchHelper$Callback] */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10 */
    /* JADX WARN: Type inference failed for: r14v11 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r14v4 */
    /* JADX WARN: Type inference failed for: r14v5 */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7, types: [boolean] */
    /* JADX WARN: Type inference failed for: r14v9 */
    /* JADX WARN: Type inference failed for: r21v0, types: [androidx.recyclerview.widget.ItemTouchHelper] */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.recyclerview.widget.RecyclerView$ViewHolder] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public final void o(RecyclerView.ViewHolder viewHolder, int i2) {
        ?? r13;
        ?? r14;
        boolean z;
        ?? r15;
        ?? r16;
        RecyclerView.ViewHolder viewHolder2;
        ?? r17;
        final int i3;
        char c2;
        float fSignum;
        if (viewHolder == this.f19203c && i2 == this.n) {
            return;
        }
        this.B = Long.MIN_VALUE;
        int i4 = this.n;
        j(viewHolder, true);
        this.n = i2;
        if (i2 == 2) {
            if (viewHolder == null) {
                md.n("Must pass a ViewHolder when dragging");
                return;
            }
            this.w = viewHolder.itemView;
        }
        int i5 = (1 << ((i2 * 8) + 8)) - 1;
        final ?? r2 = this.f19203c;
        ?? r0 = this.m;
        if (r2 != 0) {
            if (r2.itemView.getParent() != null) {
                if (i4 == 2 || this.n == 2) {
                    i3 = 0;
                } else {
                    int movementFlags = r0.getMovementFlags(this.r, r2);
                    int iConvertToAbsoluteDirection = (r0.convertToAbsoluteDirection(movementFlags, this.r.getLayoutDirection()) & 65280) >> 8;
                    if (iConvertToAbsoluteDirection == 0) {
                        i3 = 0;
                    } else {
                        int i6 = (movementFlags & 65280) >> 8;
                        if (Math.abs(this.f19206h) > Math.abs(this.f19207i)) {
                            i3 = g(r2, iConvertToAbsoluteDirection);
                            if (i3 <= 0) {
                                i3 = i(r2, iConvertToAbsoluteDirection);
                                if (i3 <= 0) {
                                    i3 = 0;
                                }
                            } else if ((i6 & i3) == 0) {
                                i3 = Callback.convertToRelativeDirection(i3, this.r.getLayoutDirection());
                            }
                        } else {
                            i3 = i(r2, iConvertToAbsoluteDirection);
                            if (i3 <= 0) {
                                i3 = g(r2, iConvertToAbsoluteDirection);
                                if (i3 <= 0) {
                                    i3 = 0;
                                } else if ((i6 & i3) == 0) {
                                    i3 = Callback.convertToRelativeDirection(i3, this.r.getLayoutDirection());
                                }
                            }
                        }
                    }
                }
                VelocityTracker velocityTracker = this.t;
                if (velocityTracker != null) {
                    velocityTracker.recycle();
                    this.t = null;
                }
                int i7 = 4;
                float fSignum2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                if (i3 == 1 || i3 == 2) {
                    c2 = 0;
                    fSignum = Math.signum(this.f19207i) * this.r.getHeight();
                } else if (i3 == 4 || i3 == 8 || i3 == 16 || i3 == 32) {
                    c2 = 0;
                    fSignum = 0.0f;
                    fSignum2 = Math.signum(this.f19206h) * this.r.getWidth();
                } else {
                    fSignum = 0.0f;
                    c2 = 0;
                }
                if (i4 == 2) {
                    i7 = 8;
                } else if (i3 > 0) {
                    i7 = 2;
                }
                float[] fArr = this.f19202b;
                l(fArr);
                float f2 = fSignum2;
                float f3 = fSignum;
                float f4 = fArr[c2];
                float f5 = fArr[1];
                ?? r18 = c2;
                ?? r19 = r0;
                RecoverAnimation recoverAnimation = new RecoverAnimation(r2, i4, f4, f5, f2, f3) { // from class: androidx.recyclerview.widget.ItemTouchHelper.3
                    @Override // androidx.recyclerview.widget.ItemTouchHelper.RecoverAnimation, android.animation.Animator.AnimatorListener
                    public final void onAnimationEnd(Animator animator) {
                        super.onAnimationEnd(animator);
                        if (this.f19221k) {
                            return;
                        }
                        final int i8 = i3;
                        RecyclerView.ViewHolder viewHolder3 = r2;
                        final ItemTouchHelper itemTouchHelper = ItemTouchHelper.this;
                        if (i8 <= 0) {
                            itemTouchHelper.m.clearView(itemTouchHelper.r, viewHolder3);
                        } else {
                            itemTouchHelper.f19201a.add(viewHolder3.itemView);
                            this.f19218h = true;
                            if (i8 > 0) {
                                itemTouchHelper.r.post(new Runnable() { // from class: androidx.recyclerview.widget.ItemTouchHelper.4
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        RecyclerView recyclerView = ItemTouchHelper.this.r;
                                        if (recyclerView == null || !recyclerView.isAttachedToWindow()) {
                                            return;
                                        }
                                        RecoverAnimation recoverAnimation2 = this;
                                        if (recoverAnimation2.f19221k || recoverAnimation2.f19216e.getAbsoluteAdapterPosition() == -1) {
                                            return;
                                        }
                                        RecyclerView.ItemAnimator itemAnimator = ItemTouchHelper.this.r.getItemAnimator();
                                        if (itemAnimator == null || !itemAnimator.k()) {
                                            ArrayList arrayList = ItemTouchHelper.this.p;
                                            int size = arrayList.size();
                                            for (int i9 = 0; i9 < size; i9++) {
                                                if (((RecoverAnimation) arrayList.get(i9)).l) {
                                                }
                                            }
                                            ItemTouchHelper.this.m.onSwiped(this.f19216e, i8);
                                            return;
                                        }
                                        ItemTouchHelper.this.r.post(this);
                                    }
                                });
                            }
                        }
                        View view = itemTouchHelper.w;
                        View view2 = viewHolder3.itemView;
                        if (view == view2 && view2 == view) {
                            itemTouchHelper.w = null;
                        }
                    }
                };
                long animationDuration = r19.getAnimationDuration(this.r, i7, f2 - f4, f3 - f5);
                ValueAnimator valueAnimator = recoverAnimation.g;
                valueAnimator.setDuration(animationDuration);
                this.p.add(recoverAnimation);
                r2.setIsRecyclable(r18);
                valueAnimator.start();
                viewHolder2 = null;
                z = true;
                r17 = r19;
                r16 = r18;
            } else {
                ?? r110 = r0;
                r16 = 0;
                if (r2.itemView == this.w) {
                    viewHolder2 = null;
                    this.w = null;
                } else {
                    viewHolder2 = null;
                }
                r110.clearView(this.r, r2);
                z = false;
                r17 = r110;
            }
            this.f19203c = viewHolder2;
            r13 = r17;
            r14 = r16;
        } else {
            r13 = r0;
            r14 = 0;
            z = false;
        }
        if (viewHolder != null) {
            this.o = (r13.getAbsoluteMovementFlags(this.r, viewHolder) & i5) >> (this.n * 8);
            this.f19208j = viewHolder.itemView.getLeft();
            this.f19209k = viewHolder.itemView.getTop();
            this.f19203c = viewHolder;
            if (i2 == 2) {
                viewHolder.itemView.performHapticFeedback(r14 == true ? 1 : 0);
            }
        }
        ?? parent = this.r.getParent();
        if (parent != 0) {
            if (this.f19203c != null) {
                r15 = r14;
                r15 = 1;
            }
            r15 = r14;
            parent.requestDisallowInterceptTouchEvent(r15);
        }
        if (!z) {
            this.r.getLayoutManager().f19274f = true;
        }
        r13.onSelectedChanged(this.f19203c, this.n);
        this.r.invalidate();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        float f2;
        float f3;
        if (this.f19203c != null) {
            float[] fArr = this.f19202b;
            l(fArr);
            float f4 = fArr[0];
            f3 = fArr[1];
            f2 = f4;
        } else {
            f2 = 0.0f;
            f3 = 0.0f;
        }
        this.m.onDraw(canvas, recyclerView, this.f19203c, this.p, this.n, f2, f3);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
    public final void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
        float f2;
        float f3;
        if (this.f19203c != null) {
            float[] fArr = this.f19202b;
            l(fArr);
            float f4 = fArr[0];
            f3 = fArr[1];
            f2 = f4;
        } else {
            f2 = 0.0f;
            f3 = 0.0f;
        }
        this.m.onDrawOver(canvas, recyclerView, this.f19203c, this.p, this.n, f2, f3);
    }

    public final void p(MotionEvent motionEvent, int i2, int i3) {
        float x = motionEvent.getX(i3);
        float y = motionEvent.getY(i3);
        float f2 = x - this.d;
        this.f19206h = f2;
        this.f19207i = y - this.f19204e;
        if ((i2 & 4) == 0) {
            this.f19206h = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, f2);
        }
        if ((i2 & 8) == 0) {
            this.f19206h = Math.min(Call.Parameters.DEFAULT_CAMERA_ZOOM, this.f19206h);
        }
        if ((i2 & 1) == 0) {
            this.f19207i = Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, this.f19207i);
        }
        if ((i2 & 2) == 0) {
            this.f19207i = Math.min(Call.Parameters.DEFAULT_CAMERA_ZOOM, this.f19207i);
        }
    }
}
