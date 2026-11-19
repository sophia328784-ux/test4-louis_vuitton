package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Preconditions;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.DifferentialMotionFlingController;
import androidx.core.view.DifferentialMotionFlingTarget;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.NestedScrollingChild2;
import androidx.core.view.NestedScrollingChild3;
import androidx.core.view.NestedScrollingChildHelper;
import androidx.core.view.ScrollingView;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.EdgeEffectCompat;
import androidx.customview.poolingcontainer.PoolingContainer;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.R$styleable;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.a61;
import defpackage.az;
import defpackage.b21;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.md;
import defpackage.mt;
import defpackage.n00;
import defpackage.no0;
import defpackage.x1;
import io.jsonwebtoken.JwtParser;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.WeakHashMap;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements ScrollingView, NestedScrollingChild2, NestedScrollingChild3 {
    static final int DEFAULT_ORIENTATION = 1;
    static final boolean DISPATCH_TEMP_DETACH = false;
    private static final float FLING_DESTRETCH_FACTOR = 4.0f;
    static final long FOREVER_NS = Long.MAX_VALUE;
    public static final int HORIZONTAL = 0;
    private static final float INFLEXION = 0.35f;
    private static final int INVALID_POINTER = -1;
    public static final int INVALID_TYPE = -1;
    private static final Class<?>[] LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE;
    static final String LOW_RES_ROTARY_ENCODER_FEATURE = "android.hardware.rotaryencoder.lowres";
    static final int MAX_SCROLL_DURATION = 2000;
    public static final long NO_ID = -1;
    public static final int NO_POSITION = -1;
    private static final float SCROLL_FRICTION = 0.015f;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    static final String TAG = "RecyclerView";
    public static final int TOUCH_SLOP_DEFAULT = 0;
    public static final int TOUCH_SLOP_PAGING = 1;
    static final String TRACE_CREATE_VIEW_TAG = "RV CreateView";
    private static final String TRACE_HANDLE_ADAPTER_UPDATES_TAG = "RV PartialInvalidate";
    private static final String TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG = "RV FullInvalidate";
    private static final String TRACE_ON_LAYOUT_TAG = "RV OnLayout";
    static final String TRACE_PREFETCH_TAG = "RV Prefetch";
    static final String TRACE_SCROLL_TAG = "RV Scroll";
    public static final int UNDEFINED_DURATION = Integer.MIN_VALUE;
    static final boolean VERBOSE_TRACING = false;
    public static final int VERTICAL = 1;
    static boolean sDebugAssertionsEnabled = false;
    static final StretchEdgeEffectFactory sDefaultEdgeEffectFactory;
    static final Interpolator sQuinticInterpolator;
    static boolean sVerboseLoggingEnabled = false;
    RecyclerViewAccessibilityDelegate mAccessibilityDelegate;
    private final AccessibilityManager mAccessibilityManager;
    Adapter mAdapter;
    AdapterHelper mAdapterHelper;
    boolean mAdapterUpdateDuringMeasure;
    private EdgeEffect mBottomGlow;
    private ChildDrawingOrderCallback mChildDrawingOrderCallback;
    ChildHelper mChildHelper;
    boolean mClipToPadding;
    boolean mDataSetHasChangedAfterLayout;
    DifferentialMotionFlingController mDifferentialMotionFlingController;
    private final DifferentialMotionFlingTarget mDifferentialMotionFlingTarget;
    boolean mDispatchItemsChangedEvent;
    private int mDispatchScrollCounter;
    private int mEatenAccessibilityChangeFlags;
    private EdgeEffectFactory mEdgeEffectFactory;
    boolean mEnableFastScroller;
    boolean mFirstLayoutComplete;
    GapWorker mGapWorker;
    boolean mHasFixedSize;
    private boolean mIgnoreMotionEventTillDown;
    private int mInitialTouchX;
    private int mInitialTouchY;
    private int mInterceptRequestLayoutDepth;
    private OnItemTouchListener mInterceptingOnItemTouchListener;
    boolean mIsAttached;
    ItemAnimator mItemAnimator;
    private ItemAnimator.ItemAnimatorListener mItemAnimatorListener;
    private Runnable mItemAnimatorRunner;
    final ArrayList<ItemDecoration> mItemDecorations;
    boolean mItemsAddedOrRemoved;
    boolean mItemsChanged;
    private int mLastAutoMeasureNonExactMeasuredHeight;
    private int mLastAutoMeasureNonExactMeasuredWidth;
    private boolean mLastAutoMeasureSkippedDueToExact;
    private int mLastTouchX;
    private int mLastTouchY;
    LayoutManager mLayout;
    private int mLayoutOrScrollCounter;
    boolean mLayoutSuppressed;
    boolean mLayoutWasDefered;
    private EdgeEffect mLeftGlow;
    boolean mLowResRotaryEncoderFeature;
    private final int mMaxFlingVelocity;
    private final int mMinFlingVelocity;
    private final int[] mMinMaxLayoutPositions;
    private final int[] mNestedOffsets;
    private final RecyclerViewDataObserver mObserver;
    private List<OnChildAttachStateChangeListener> mOnChildAttachStateListeners;
    private OnFlingListener mOnFlingListener;
    private final ArrayList<OnItemTouchListener> mOnItemTouchListeners;
    final List<ViewHolder> mPendingAccessibilityImportanceChange;
    SavedState mPendingSavedState;
    private final float mPhysicalCoef;
    boolean mPostedAnimatorRunner;
    GapWorker.LayoutPrefetchRegistryImpl mPrefetchRegistry;
    private boolean mPreserveFocusAfterLayout;
    final Recycler mRecycler;
    RecyclerListener mRecyclerListener;
    final List<RecyclerListener> mRecyclerListeners;
    final int[] mReusableIntPair;
    private EdgeEffect mRightGlow;
    float mScaledHorizontalScrollFactor;
    float mScaledVerticalScrollFactor;
    private OnScrollListener mScrollListener;
    private List<OnScrollListener> mScrollListeners;
    private final int[] mScrollOffset;
    private int mScrollPointerId;
    private int mScrollState;
    private NestedScrollingChildHelper mScrollingChildHelper;
    final State mState;
    final Rect mTempRect;
    private final Rect mTempRect2;
    final RectF mTempRectF;
    private EdgeEffect mTopGlow;
    private int mTouchSlop;
    final Runnable mUpdateChildViewsRunnable;
    private VelocityTracker mVelocityTracker;
    final ViewFlinger mViewFlinger;
    private final ViewInfoStore.ProcessCallback mViewInfoProcessCallback;
    final ViewInfoStore mViewInfoStore;
    private static final int[] NESTED_SCROLLING_ATTRS = {R.attr.nestedScrollingEnabled};
    private static final float DECELERATION_RATE = (float) (Math.log(0.78d) / Math.log(0.9d));
    static final boolean FORCE_INVALIDATE_DISPLAY_LIST = false;
    static final boolean ALLOW_SIZE_IN_UNSPECIFIED_SPEC = true;
    static final boolean ALLOW_THREAD_GAP_WORK = true;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$3, reason: invalid class name */
    public class AnonymousClass3 implements Interpolator {
        @Override // android.animation.TimeInterpolator
        public final float getInterpolation(float f2) {
            float f3 = f2 - 1.0f;
            return (f3 * f3 * f3 * f3 * f3) + 1.0f;
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$6, reason: invalid class name */
    class AnonymousClass6 implements ChildHelper.Callback {
        public AnonymousClass6() {
        }

        public final void a(View view) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState(RecyclerView.this);
            }
        }

        public final void b(int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            View childAt = recyclerView.getChildAt(i2);
            if (childAt != null) {
                recyclerView.dispatchChildDetached(childAt);
                childAt.clearAnimation();
            }
            recyclerView.removeViewAt(i2);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$7, reason: invalid class name */
    public class AnonymousClass7 implements AdapterHelper.Callback {
        public AnonymousClass7() {
        }

        public final void a(AdapterHelper.UpdateOp updateOp) {
            int i2 = updateOp.f19138a;
            RecyclerView recyclerView = RecyclerView.this;
            if (i2 == 1) {
                recyclerView.mLayout.f0(updateOp.f19139b, updateOp.d);
                return;
            }
            if (i2 == 2) {
                recyclerView.mLayout.i0(updateOp.f19139b, updateOp.d);
            } else if (i2 == 4) {
                recyclerView.mLayout.j0(updateOp.f19139b, updateOp.d);
            } else {
                if (i2 != 8) {
                    return;
                }
                recyclerView.mLayout.h0(updateOp.f19139b, updateOp.d);
            }
        }

        public final ViewHolder b(int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            ViewHolder viewHolderFindViewHolderForPosition = recyclerView.findViewHolderForPosition(i2, true);
            if (viewHolderFindViewHolderForPosition == null) {
                return null;
            }
            ChildHelper childHelper = recyclerView.mChildHelper;
            if (!childHelper.f19143c.contains(viewHolderFindViewHolderForPosition.itemView)) {
                return viewHolderFindViewHolderForPosition;
            }
            int i3 = RecyclerView.HORIZONTAL;
            return null;
        }

        public final void c(int i2, int i3, Object obj) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.viewRangeUpdate(i2, i3, obj);
            recyclerView.mItemsChanged = true;
        }

        public final void d(int i2, int i3) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.offsetPositionRecordsForInsert(i2, i3);
            recyclerView.mItemsAddedOrRemoved = true;
        }

        public final void e(int i2, int i3) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.offsetPositionRecordsForMove(i2, i3);
            recyclerView.mItemsAddedOrRemoved = true;
        }

        public final void f(int i2, int i3) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.offsetPositionRecordsForRemove(i2, i3, true);
            recyclerView.mItemsAddedOrRemoved = true;
            recyclerView.mState.f19313c += i3;
        }
    }

    public static class AdapterDataObservable extends Observable<AdapterDataObserver> {
        public final boolean a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        public final void b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onChanged();
            }
        }

        public final void c(int i2, int i3) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeMoved(i2, i3, 1);
            }
        }

        public final void d(int i2, int i3, Object obj) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeChanged(i2, i3, obj);
            }
        }

        public final void e(int i2, int i3) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeInserted(i2, i3);
            }
        }

        public final void f(int i2, int i3) {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onItemRangeRemoved(i2, i3);
            }
        }

        public final void g() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((AdapterDataObserver) ((Observable) this).mObservers.get(size)).onStateRestorationPolicyChanged();
            }
        }
    }

    public static final class Api35Impl {
        public static void a(View view, float f2) {
            try {
                view.setFrameContentVelocity(f2);
            } catch (LinkageError unused) {
            }
        }
    }

    public interface ChildDrawingOrderCallback {
        int a();
    }

    public static class EdgeEffectFactory {

        @Retention(RetentionPolicy.SOURCE)
        public @interface EdgeDirection {
        }

        public EdgeEffect a(RecyclerView recyclerView) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    public static abstract class ItemAnimator {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ItemAnimatorListener f19262a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final ArrayList f19263b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f19264c = 120;
        public final long d = 120;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final long f19265e = 250;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f19266f = 250;

        @Retention(RetentionPolicy.SOURCE)
        public @interface AdapterChanges {
        }

        public interface ItemAnimatorFinishedListener {
            void a();
        }

        public interface ItemAnimatorListener {
            void a(ViewHolder viewHolder);
        }

        public static class ItemHolderInfo {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f19267a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f19268b;
        }

        public static int e(ViewHolder viewHolder) {
            int i2 = viewHolder.mFlags;
            int i3 = i2 & 14;
            if (viewHolder.isInvalid()) {
                return 4;
            }
            if ((i2 & 4) == 0) {
                int oldPosition = viewHolder.getOldPosition();
                int absoluteAdapterPosition = viewHolder.getAbsoluteAdapterPosition();
                if (oldPosition != -1 && absoluteAdapterPosition != -1 && oldPosition != absoluteAdapterPosition) {
                    return i3 | 2048;
                }
            }
            return i3;
        }

        public abstract boolean a(ViewHolder viewHolder, ItemHolderInfo itemHolderInfo, ItemHolderInfo itemHolderInfo2);

        public abstract boolean b(ViewHolder viewHolder, ViewHolder viewHolder2, ItemHolderInfo itemHolderInfo, ItemHolderInfo itemHolderInfo2);

        public abstract boolean c(ViewHolder viewHolder, ItemHolderInfo itemHolderInfo, ItemHolderInfo itemHolderInfo2);

        public abstract boolean d(ViewHolder viewHolder, ItemHolderInfo itemHolderInfo, ItemHolderInfo itemHolderInfo2);

        public boolean f(ViewHolder viewHolder) {
            return true;
        }

        public boolean g(ViewHolder viewHolder, List list) {
            return f(viewHolder);
        }

        public final void h(ViewHolder viewHolder) {
            ItemAnimatorListener itemAnimatorListener = this.f19262a;
            if (itemAnimatorListener != null) {
                itemAnimatorListener.a(viewHolder);
            }
        }

        public abstract void i(ViewHolder viewHolder);

        public abstract void j();

        public abstract boolean k();

        public abstract void l();
    }

    public class ItemAnimatorRestoreListener implements ItemAnimator.ItemAnimatorListener {
        public ItemAnimatorRestoreListener() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemAnimator.ItemAnimatorListener
        public final void a(ViewHolder viewHolder) {
            viewHolder.setIsRecyclable(true);
            if (viewHolder.mShadowedHolder != null && viewHolder.mShadowingHolder == null) {
                viewHolder.mShadowedHolder = null;
            }
            viewHolder.mShadowingHolder = null;
            if (viewHolder.shouldBeKeptAsChild()) {
                return;
            }
            View view = viewHolder.itemView;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.removeAnimatingView(view) || !viewHolder.isTmpDetached()) {
                return;
            }
            recyclerView.removeDetachedView(viewHolder.itemView, false);
        }
    }

    public static abstract class LayoutManager {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ChildHelper f19270a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public RecyclerView f19271b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ViewBoundsCheck f19272c;
        public final ViewBoundsCheck d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public SmoothScroller f19273e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f19274f;
        public boolean g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final boolean f19275h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final boolean f19276i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f19277j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f19278k;
        public int l;
        public int m;
        public int n;
        public int o;

        public interface LayoutPrefetchRegistry {
        }

        public static class Properties {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f19281a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f19282b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f19283c;
            public boolean d;
        }

        public LayoutManager() {
            ViewBoundsCheck.Callback callback = new ViewBoundsCheck.Callback() { // from class: androidx.recyclerview.widget.RecyclerView.LayoutManager.1
                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int a(View view) {
                    return LayoutManager.D(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).leftMargin;
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int b() {
                    return LayoutManager.this.K();
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int c() {
                    LayoutManager layoutManager = LayoutManager.this;
                    return layoutManager.n - layoutManager.L();
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final View d(int i2) {
                    return LayoutManager.this.w(i2);
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int e(View view) {
                    return LayoutManager.G(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).rightMargin;
                }
            };
            ViewBoundsCheck.Callback callback2 = new ViewBoundsCheck.Callback() { // from class: androidx.recyclerview.widget.RecyclerView.LayoutManager.2
                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int a(View view) {
                    return LayoutManager.H(view) - ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).topMargin;
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int b() {
                    return LayoutManager.this.M();
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int c() {
                    LayoutManager layoutManager = LayoutManager.this;
                    return layoutManager.o - layoutManager.J();
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final View d(int i2) {
                    return LayoutManager.this.w(i2);
                }

                @Override // androidx.recyclerview.widget.ViewBoundsCheck.Callback
                public final int e(View view) {
                    return LayoutManager.B(view) + ((ViewGroup.MarginLayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
                }
            };
            this.f19272c = new ViewBoundsCheck(callback);
            this.d = new ViewBoundsCheck(callback2);
            this.f19274f = false;
            this.g = false;
            this.f19275h = true;
            this.f19276i = true;
        }

        public static int B(View view) {
            return view.getBottom() + ((LayoutParams) view.getLayoutParams()).f19285b.bottom;
        }

        public static int D(View view) {
            return view.getLeft() - ((LayoutParams) view.getLayoutParams()).f19285b.left;
        }

        public static int E(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f19285b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public static int F(View view) {
            Rect rect = ((LayoutParams) view.getLayoutParams()).f19285b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public static int G(View view) {
            return view.getRight() + ((LayoutParams) view.getLayoutParams()).f19285b.right;
        }

        public static int H(View view) {
            return view.getTop() - ((LayoutParams) view.getLayoutParams()).f19285b.top;
        }

        public static int N(View view) {
            return ((LayoutParams) view.getLayoutParams()).f19284a.getLayoutPosition();
        }

        public static Properties O(Context context, AttributeSet attributeSet, int i2, int i3) {
            Properties properties = new Properties();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.f19132a, i2, i3);
            properties.f19281a = typedArrayObtainStyledAttributes.getInt(0, 1);
            properties.f19282b = typedArrayObtainStyledAttributes.getInt(10, 1);
            properties.f19283c = typedArrayObtainStyledAttributes.getBoolean(9, false);
            properties.d = typedArrayObtainStyledAttributes.getBoolean(11, false);
            typedArrayObtainStyledAttributes.recycle();
            return properties;
        }

        public static boolean T(int i2, int i3, int i4) {
            int mode = View.MeasureSpec.getMode(i3);
            int size = View.MeasureSpec.getSize(i3);
            if (i4 > 0 && i2 != i4) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i2;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i2;
            }
            return true;
        }

        public static void U(View view, int i2, int i3, int i4, int i5) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            Rect rect = layoutParams.f19285b;
            view.layout(i2 + rect.left + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i3 + rect.top + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, (i4 - rect.right) - ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, (i5 - rect.bottom) - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
        }

        public static int i(int i2, int i3, int i4) {
            int mode = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (mode != Integer.MIN_VALUE) {
                return mode != 1073741824 ? Math.max(i3, i4) : size;
            }
            return Math.min(size, Math.max(i3, i4));
        }

        /* JADX WARN: Code duplicated, block: B:10:0x001a  */
        /* JADX WARN: Code duplicated, block: B:14:0x0022  */
        /* JADX WARN: Code duplicated, block: B:5:0x0010  */
        public static int y(int i2, int i3, boolean z, int i4, int i5) {
            int iMax = Math.max(0, i2 - i4);
            if (z) {
                if (i5 >= 0) {
                    i3 = 1073741824;
                } else if (i5 != -1 || (i3 != Integer.MIN_VALUE && (i3 == 0 || i3 != 1073741824))) {
                    i3 = 0;
                    i5 = 0;
                } else {
                    i5 = iMax;
                }
            } else if (i5 >= 0) {
                i3 = 1073741824;
            } else if (i5 == -1) {
                i5 = iMax;
            } else if (i5 != -2) {
                i3 = 0;
                i5 = 0;
            } else if (i3 == Integer.MIN_VALUE || i3 == 1073741824) {
                i5 = iMax;
                i3 = Integer.MIN_VALUE;
            } else {
                i5 = iMax;
                i3 = 0;
            }
            return View.MeasureSpec.makeMeasureSpec(i5, i3);
        }

        public int A(Recycler recycler, State state) {
            RecyclerView recyclerView = this.f19271b;
            if (recyclerView == null || recyclerView.mAdapter == null || !f()) {
                return 1;
            }
            return this.f19271b.mAdapter.getItemCount();
        }

        public final void A0(RecyclerView recyclerView) {
            B0(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }

        public final void B0(int i2, int i3) {
            this.n = View.MeasureSpec.getSize(i2);
            int mode = View.MeasureSpec.getMode(i2);
            this.l = mode;
            if (mode == 0 && !RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                this.n = 0;
            }
            this.o = View.MeasureSpec.getSize(i3);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.m = mode2;
            if (mode2 != 0 || RecyclerView.ALLOW_SIZE_IN_UNSPECIFIED_SPEC) {
                return;
            }
            this.o = 0;
        }

        public void C(View view, Rect rect) {
            RecyclerView.getDecoratedBoundsWithMarginsInt(view, rect);
        }

        public void C0(Rect rect, int i2, int i3) {
            int iL = L() + K() + rect.width();
            int iJ = J() + M() + rect.height();
            RecyclerView recyclerView = this.f19271b;
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            this.f19271b.setMeasuredDimension(i(i2, iL, recyclerView.getMinimumWidth()), i(i3, iJ, this.f19271b.getMinimumHeight()));
        }

        public final void D0(int i2, int i3) {
            int iX = x();
            if (iX == 0) {
                this.f19271b.defaultOnMeasure(i2, i3);
                return;
            }
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MAX_VALUE;
            int i6 = Integer.MIN_VALUE;
            int i7 = Integer.MAX_VALUE;
            for (int i8 = 0; i8 < iX; i8++) {
                View viewW = w(i8);
                Rect rect = this.f19271b.mTempRect;
                C(viewW, rect);
                int i9 = rect.left;
                if (i9 < i7) {
                    i7 = i9;
                }
                int i10 = rect.right;
                if (i10 > i4) {
                    i4 = i10;
                }
                int i11 = rect.top;
                if (i11 < i5) {
                    i5 = i11;
                }
                int i12 = rect.bottom;
                if (i12 > i6) {
                    i6 = i12;
                }
            }
            this.f19271b.mTempRect.set(i7, i5, i4, i6);
            C0(this.f19271b.mTempRect, i2, i3);
        }

        public final void E0(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f19271b = null;
                this.f19270a = null;
                this.n = 0;
                this.o = 0;
            } else {
                this.f19271b = recyclerView;
                this.f19270a = recyclerView.mChildHelper;
                this.n = recyclerView.getWidth();
                this.o = recyclerView.getHeight();
            }
            this.l = 1073741824;
            this.m = 1073741824;
        }

        public final boolean F0(View view, int i2, int i3, LayoutParams layoutParams) {
            return (!view.isLayoutRequested() && this.f19275h && T(view.getWidth(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).width) && T(view.getHeight(), i3, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
        }

        public boolean G0() {
            return false;
        }

        public final boolean H0(View view, int i2, int i3, LayoutParams layoutParams) {
            return (this.f19275h && T(view.getMeasuredWidth(), i2, ((ViewGroup.MarginLayoutParams) layoutParams).width) && T(view.getMeasuredHeight(), i3, ((ViewGroup.MarginLayoutParams) layoutParams).height)) ? false : true;
        }

        public final int I() {
            RecyclerView recyclerView = this.f19271b;
            Adapter adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.getItemCount();
            }
            return 0;
        }

        public void I0(RecyclerView recyclerView, int i2) {
        }

        public final int J() {
            RecyclerView recyclerView = this.f19271b;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public final void J0(SmoothScroller smoothScroller) {
            SmoothScroller smoothScroller2 = this.f19273e;
            if (smoothScroller2 != null && smoothScroller != smoothScroller2 && smoothScroller2.f19304e) {
                smoothScroller2.f();
            }
            this.f19273e = smoothScroller;
            RecyclerView recyclerView = this.f19271b;
            recyclerView.mViewFlinger.stop();
            smoothScroller.f19302b = recyclerView;
            smoothScroller.f19303c = this;
            int i2 = smoothScroller.f19301a;
            if (i2 == -1) {
                md.n("Invalid target position");
                return;
            }
            recyclerView.mState.f19311a = i2;
            smoothScroller.f19304e = true;
            smoothScroller.d = true;
            smoothScroller.f19305f = recyclerView.mLayout.s(i2);
            smoothScroller.f19302b.mViewFlinger.postOnAnimation();
        }

        public final int K() {
            RecyclerView recyclerView = this.f19271b;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public boolean K0() {
            return false;
        }

        public final int L() {
            RecyclerView recyclerView = this.f19271b;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        public final int M() {
            RecyclerView recyclerView = this.f19271b;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        public int P(Recycler recycler, State state) {
            RecyclerView recyclerView = this.f19271b;
            if (recyclerView == null || recyclerView.mAdapter == null || !g()) {
                return 1;
            }
            return this.f19271b.mAdapter.getItemCount();
        }

        public final void Q(View view, Rect rect) {
            Matrix matrix;
            Rect rect2 = ((LayoutParams) view.getLayoutParams()).f19285b;
            rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            if (this.f19271b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.f19271b.mTempRectF;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public boolean R() {
            return false;
        }

        public boolean S() {
            return false;
        }

        public void V(int i2) {
            RecyclerView recyclerView = this.f19271b;
            if (recyclerView != null) {
                recyclerView.offsetChildrenHorizontal(i2);
            }
        }

        public void W(int i2) {
            RecyclerView recyclerView = this.f19271b;
            if (recyclerView != null) {
                recyclerView.offsetChildrenVertical(i2);
            }
        }

        public void X() {
        }

        public void Y(RecyclerView recyclerView) {
        }

        public void Z(RecyclerView recyclerView) {
        }

        public View a0(View view, int i2, Recycler recycler, State state) {
            return null;
        }

        public void b0(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f19271b;
            Recycler recycler = recyclerView.mRecycler;
            State state = recyclerView.mState;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z = true;
            if (!recyclerView.canScrollVertically(1) && !this.f19271b.canScrollVertically(-1) && !this.f19271b.canScrollHorizontally(-1) && !this.f19271b.canScrollHorizontally(1)) {
                z = false;
            }
            accessibilityEvent.setScrollable(z);
            Adapter adapter = this.f19271b.mAdapter;
            if (adapter != null) {
                accessibilityEvent.setItemCount(adapter.getItemCount());
            }
        }

        public final void c(View view, int i2, boolean z) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (z || childViewHolderInt.isRemoved()) {
                SimpleArrayMap simpleArrayMap = this.f19271b.mViewInfoStore.f19358a;
                ViewInfoStore.InfoRecord infoRecordA = (ViewInfoStore.InfoRecord) simpleArrayMap.get(childViewHolderInt);
                if (infoRecordA == null) {
                    infoRecordA = ViewInfoStore.InfoRecord.a();
                    simpleArrayMap.put(childViewHolderInt, infoRecordA);
                }
                infoRecordA.f19360a |= 1;
            } else {
                this.f19271b.mViewInfoStore.c(childViewHolderInt);
            }
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (childViewHolderInt.wasReturnedFromScrap() || childViewHolderInt.isScrap()) {
                if (childViewHolderInt.isScrap()) {
                    childViewHolderInt.unScrap();
                } else {
                    childViewHolderInt.clearReturnedFromScrapFlag();
                }
                this.f19270a.a(view, i2, view.getLayoutParams(), false);
            } else {
                ViewParent parent = view.getParent();
                RecyclerView recyclerView = this.f19271b;
                ChildHelper childHelper = this.f19270a;
                if (parent == recyclerView) {
                    ChildHelper.Bucket bucket = childHelper.f19142b;
                    int iIndexOfChild = RecyclerView.this.indexOfChild(view);
                    int iB = (iIndexOfChild == -1 || bucket.d(iIndexOfChild)) ? -1 : iIndexOfChild - bucket.b(iIndexOfChild);
                    if (i2 == -1) {
                        i2 = this.f19270a.c();
                    }
                    if (iB == -1) {
                        StringBuilder sb = new StringBuilder("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:");
                        sb.append(this.f19271b.indexOfChild(view));
                        md.k(cj.g(this.f19271b, sb));
                        return;
                    }
                    if (iB != i2) {
                        LayoutManager layoutManager = this.f19271b.mLayout;
                        View viewW = layoutManager.w(iB);
                        if (viewW == null) {
                            throw new IllegalArgumentException("Cannot move a child from non-existing index:" + iB + layoutManager.f19271b.toString());
                        }
                        layoutManager.w(iB);
                        ChildHelper childHelper2 = layoutManager.f19270a;
                        int iD = childHelper2.d(iB);
                        childHelper2.f19142b.f(iD);
                        RecyclerView recyclerView2 = RecyclerView.this;
                        View childAt = recyclerView2.getChildAt(iD);
                        if (childAt != null) {
                            ViewHolder childViewHolderInt2 = RecyclerView.getChildViewHolderInt(childAt);
                            if (childViewHolderInt2 != null) {
                                if (childViewHolderInt2.isTmpDetached() && !childViewHolderInt2.shouldIgnore()) {
                                    StringBuilder sb2 = new StringBuilder("called detach on an already detached child ");
                                    sb2.append(childViewHolderInt2);
                                    md.n(cj.g(recyclerView2, sb2));
                                    return;
                                } else {
                                    if (RecyclerView.sVerboseLoggingEnabled) {
                                        childViewHolderInt2.toString();
                                    }
                                    childViewHolderInt2.addFlags(256);
                                }
                            }
                        } else if (RecyclerView.sDebugAssertionsEnabled) {
                            StringBuilder sb3 = new StringBuilder("No view at offset ");
                            sb3.append(iD);
                            md.n(cj.g(recyclerView2, sb3));
                            return;
                        }
                        recyclerView2.detachViewFromParent(iD);
                        LayoutParams layoutParams2 = (LayoutParams) viewW.getLayoutParams();
                        ViewHolder childViewHolderInt3 = RecyclerView.getChildViewHolderInt(viewW);
                        boolean zIsRemoved = childViewHolderInt3.isRemoved();
                        RecyclerView recyclerView3 = layoutManager.f19271b;
                        if (zIsRemoved) {
                            SimpleArrayMap simpleArrayMap2 = recyclerView3.mViewInfoStore.f19358a;
                            ViewInfoStore.InfoRecord infoRecordA2 = (ViewInfoStore.InfoRecord) simpleArrayMap2.get(childViewHolderInt3);
                            if (infoRecordA2 == null) {
                                infoRecordA2 = ViewInfoStore.InfoRecord.a();
                                simpleArrayMap2.put(childViewHolderInt3, infoRecordA2);
                            }
                            infoRecordA2.f19360a = 1 | infoRecordA2.f19360a;
                        } else {
                            recyclerView3.mViewInfoStore.c(childViewHolderInt3);
                        }
                        layoutManager.f19270a.a(viewW, i2, layoutParams2, childViewHolderInt3.isRemoved());
                    }
                } else {
                    RecyclerView recyclerView4 = RecyclerView.this;
                    int childCount = i2 < 0 ? recyclerView4.getChildCount() : childHelper.d(i2);
                    childHelper.f19142b.e(childCount, false);
                    recyclerView4.addView(view, childCount);
                    recyclerView4.dispatchChildAttached(view);
                    layoutParams.f19286c = true;
                    SmoothScroller smoothScroller = this.f19273e;
                    if (smoothScroller != null && smoothScroller.f19304e && smoothScroller.f19302b.getChildLayoutPosition(view) == smoothScroller.f19301a) {
                        smoothScroller.f19305f = view;
                    }
                }
            }
            if (layoutParams.d) {
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Objects.toString(layoutParams.f19284a);
                }
                childViewHolderInt.itemView.invalidate();
                layoutParams.d = false;
            }
        }

        public void c0(Recycler recycler, State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f12267a;
            if (this.f19271b.canScrollVertically(-1) || this.f19271b.canScrollHorizontally(-1)) {
                accessibilityNodeInfoCompat.a(8192);
                accessibilityNodeInfoCompat.m(true);
                Bundle extras = accessibilityNodeInfo.getExtras();
                if (extras != null) {
                    extras.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", (extras.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (-67108865)) | 67108864);
                }
            }
            if (this.f19271b.canScrollVertically(1) || this.f19271b.canScrollHorizontally(1)) {
                accessibilityNodeInfoCompat.a(4096);
                accessibilityNodeInfoCompat.m(true);
                Bundle extras2 = accessibilityNodeInfo.getExtras();
                if (extras2 != null) {
                    extras2.putInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", (extras2.getInt("androidx.view.accessibility.AccessibilityNodeInfoCompat.BOOLEAN_PROPERTY_KEY", 0) & (-67108865)) | 67108864);
                }
            }
            accessibilityNodeInfoCompat.j(AccessibilityNodeInfoCompat.CollectionInfoCompat.a(P(recycler, state), A(recycler, state), 0));
        }

        public void d(String str) {
            RecyclerView recyclerView = this.f19271b;
            if (recyclerView != null) {
                recyclerView.assertNotInLayoutOrScroll(str);
            }
        }

        public final void d0(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt == null || childViewHolderInt.isRemoved()) {
                return;
            }
            ChildHelper childHelper = this.f19270a;
            if (childHelper.f19143c.contains(childViewHolderInt.itemView)) {
                return;
            }
            RecyclerView recyclerView = this.f19271b;
            e0(recyclerView.mRecycler, recyclerView.mState, view, accessibilityNodeInfoCompat);
        }

        public final void e(View view, Rect rect) {
            RecyclerView recyclerView = this.f19271b;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.getItemDecorInsetsForChild(view));
            }
        }

        public void e0(Recycler recycler, State state, View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            accessibilityNodeInfoCompat.k(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(g() ? N(view) : 0, 1, false, f() ? N(view) : 0, 1));
        }

        public boolean f() {
            return false;
        }

        public void f0(int i2, int i3) {
        }

        public boolean g() {
            return false;
        }

        public void g0() {
        }

        public boolean h(LayoutParams layoutParams) {
            return layoutParams != null;
        }

        public void h0(int i2, int i3) {
        }

        public void i0(int i2, int i3) {
        }

        public void j(int i2, int i3, State state, LayoutPrefetchRegistry layoutPrefetchRegistry) {
        }

        public void j0(int i2, int i3) {
        }

        public void k(int i2, LayoutPrefetchRegistry layoutPrefetchRegistry) {
        }

        public void k0(Recycler recycler, State state) {
        }

        public int l(State state) {
            return 0;
        }

        public void l0(State state) {
        }

        public int m(State state) {
            return 0;
        }

        public void m0(Parcelable parcelable) {
        }

        public int n(State state) {
            return 0;
        }

        public Parcelable n0() {
            return null;
        }

        public int o(State state) {
            return 0;
        }

        public void o0(int i2) {
        }

        public int p(State state) {
            return 0;
        }

        public boolean p0(int i2, Bundle bundle) {
            RecyclerView recyclerView = this.f19271b;
            return q0(recyclerView.mRecycler, recyclerView.mState, i2, bundle);
        }

        public int q(State state) {
            return 0;
        }

        /* JADX WARN: Code duplicated, block: B:21:0x0061 A[PHI: r11
          0x0061: PHI (r11v8 int) = (r11v5 int), (r11v20 int) binds: [B:27:0x007d, B:19:0x0053] A[DONT_GENERATE, DONT_INLINE]] */
        public boolean q0(Recycler recycler, State state, int i2, Bundle bundle) {
            int iM;
            int iK;
            float f2;
            if (this.f19271b == null) {
                return false;
            }
            int iHeight = this.o;
            int iWidth = this.n;
            Rect rect = new Rect();
            if (this.f19271b.getMatrix().isIdentity() && this.f19271b.getGlobalVisibleRect(rect)) {
                iHeight = rect.height();
                iWidth = rect.width();
            }
            if (i2 == 4096) {
                iM = this.f19271b.canScrollVertically(1) ? (iHeight - M()) - J() : 0;
                if (this.f19271b.canScrollHorizontally(1)) {
                    iK = (iWidth - K()) - L();
                } else {
                    iK = 0;
                }
            } else if (i2 != 8192) {
                iM = 0;
                iK = 0;
            } else {
                iM = this.f19271b.canScrollVertically(-1) ? -((iHeight - M()) - J()) : 0;
                if (this.f19271b.canScrollHorizontally(-1)) {
                    iK = -((iWidth - K()) - L());
                } else {
                    iK = 0;
                }
            }
            if (iM == 0 && iK == 0) {
                return false;
            }
            if (bundle != null) {
                f2 = bundle.getFloat("androidx.core.view.accessibility.action.ARGUMENT_SCROLL_AMOUNT_FLOAT", 1.0f);
                if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    if (!RecyclerView.sDebugAssertionsEnabled) {
                        return false;
                    }
                    throw new IllegalArgumentException("attempting to use ACTION_ARGUMENT_SCROLL_AMOUNT_FLOAT with a negative value (" + f2 + ")");
                }
            } else {
                f2 = 1.0f;
            }
            if (Float.compare(f2, Float.POSITIVE_INFINITY) != 0) {
                if (Float.compare(1.0f, f2) != 0 && Float.compare(Call.Parameters.DEFAULT_CAMERA_ZOOM, f2) != 0) {
                    iK = (int) (iK * f2);
                    iM = (int) (iM * f2);
                }
                this.f19271b.smoothScrollBy(iK, iM, null, Integer.MIN_VALUE, true);
                return true;
            }
            RecyclerView recyclerView = this.f19271b;
            Adapter adapter = recyclerView.mAdapter;
            if (adapter == null) {
                return false;
            }
            if (i2 == 4096) {
                recyclerView.smoothScrollToPosition(adapter.getItemCount() - 1);
            } else if (i2 == 8192) {
                recyclerView.smoothScrollToPosition(0);
            }
            return true;
        }

        public final void r(Recycler recycler) {
            for (int iX = x() - 1; iX >= 0; iX--) {
                View viewW = w(iX);
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(viewW);
                if (childViewHolderInt.shouldIgnore()) {
                    if (RecyclerView.sVerboseLoggingEnabled) {
                        childViewHolderInt.toString();
                    }
                } else if (!childViewHolderInt.isInvalid() || childViewHolderInt.isRemoved() || this.f19271b.mAdapter.hasStableIds()) {
                    w(iX);
                    ChildHelper childHelper = this.f19270a;
                    int iD = childHelper.d(iX);
                    childHelper.f19142b.f(iD);
                    RecyclerView recyclerView = RecyclerView.this;
                    View childAt = recyclerView.getChildAt(iD);
                    if (childAt != null) {
                        ViewHolder childViewHolderInt2 = RecyclerView.getChildViewHolderInt(childAt);
                        if (childViewHolderInt2 != null) {
                            if (childViewHolderInt2.isTmpDetached() && !childViewHolderInt2.shouldIgnore()) {
                                StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                                sb.append(childViewHolderInt2);
                                md.n(cj.g(recyclerView, sb));
                                return;
                            } else {
                                if (RecyclerView.sVerboseLoggingEnabled) {
                                    childViewHolderInt2.toString();
                                }
                                childViewHolderInt2.addFlags(256);
                            }
                        }
                    } else if (RecyclerView.sDebugAssertionsEnabled) {
                        StringBuilder sb2 = new StringBuilder("No view at offset ");
                        sb2.append(iD);
                        md.n(cj.g(recyclerView, sb2));
                        return;
                    }
                    recyclerView.detachViewFromParent(iD);
                    recycler.l(viewW);
                    this.f19271b.mViewInfoStore.c(childViewHolderInt);
                } else {
                    u0(iX);
                    recycler.k(childViewHolderInt);
                }
            }
        }

        public final void r0(Recycler recycler) {
            for (int iX = x() - 1; iX >= 0; iX--) {
                if (!RecyclerView.getChildViewHolderInt(w(iX)).shouldIgnore()) {
                    View viewW = w(iX);
                    u0(iX);
                    recycler.j(viewW);
                }
            }
        }

        public View s(int i2) {
            int iX = x();
            for (int i3 = 0; i3 < iX; i3++) {
                View viewW = w(i3);
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(viewW);
                if (childViewHolderInt != null && childViewHolderInt.getLayoutPosition() == i2 && !childViewHolderInt.shouldIgnore() && (this.f19271b.mState.g || !childViewHolderInt.isRemoved())) {
                    return viewW;
                }
            }
            return null;
        }

        public final void s0(Recycler recycler) {
            ArrayList arrayList;
            int size = recycler.f19293a.size();
            int i2 = size - 1;
            while (true) {
                arrayList = recycler.f19293a;
                if (i2 < 0) {
                    break;
                }
                View view = ((ViewHolder) arrayList.get(i2)).itemView;
                ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
                if (!childViewHolderInt.shouldIgnore()) {
                    childViewHolderInt.setIsRecyclable(false);
                    if (childViewHolderInt.isTmpDetached()) {
                        this.f19271b.removeDetachedView(view, false);
                    }
                    ItemAnimator itemAnimator = this.f19271b.mItemAnimator;
                    if (itemAnimator != null) {
                        itemAnimator.i(childViewHolderInt);
                    }
                    childViewHolderInt.setIsRecyclable(true);
                    ViewHolder childViewHolderInt2 = RecyclerView.getChildViewHolderInt(view);
                    childViewHolderInt2.mScrapContainer = null;
                    childViewHolderInt2.mInChangeScrap = false;
                    childViewHolderInt2.clearReturnedFromScrapFlag();
                    recycler.k(childViewHolderInt2);
                }
                i2--;
            }
            arrayList.clear();
            ArrayList arrayList2 = recycler.f19294b;
            if (arrayList2 != null) {
                arrayList2.clear();
            }
            if (size > 0) {
                this.f19271b.invalidate();
            }
        }

        public abstract LayoutParams t();

        public final void t0(View view, Recycler recycler) {
            ChildHelper childHelper = this.f19270a;
            AnonymousClass6 anonymousClass6 = childHelper.f19141a;
            int i2 = childHelper.d;
            if (i2 == 1) {
                md.k("Cannot call removeView(At) within removeView(At)");
                return;
            }
            if (i2 == 2) {
                md.k("Cannot call removeView(At) within removeViewIfHidden");
                return;
            }
            try {
                childHelper.d = 1;
                childHelper.f19144e = view;
                int iIndexOfChild = RecyclerView.this.indexOfChild(view);
                if (iIndexOfChild >= 0) {
                    if (childHelper.f19142b.f(iIndexOfChild)) {
                        childHelper.e(view);
                    }
                    anonymousClass6.b(iIndexOfChild);
                }
                childHelper.d = 0;
                childHelper.f19144e = null;
                recycler.j(view);
            } catch (Throwable th) {
                childHelper.d = 0;
                childHelper.f19144e = null;
                throw th;
            }
        }

        public LayoutParams u(Context context, AttributeSet attributeSet) {
            return new LayoutParams(context, attributeSet);
        }

        public final void u0(int i2) {
            if (w(i2) != null) {
                ChildHelper childHelper = this.f19270a;
                AnonymousClass6 anonymousClass6 = childHelper.f19141a;
                int i3 = childHelper.d;
                if (i3 == 1) {
                    md.k("Cannot call removeView(At) within removeView(At)");
                    return;
                }
                if (i3 == 2) {
                    md.k("Cannot call removeView(At) within removeViewIfHidden");
                    return;
                }
                try {
                    int iD = childHelper.d(i2);
                    View childAt = RecyclerView.this.getChildAt(iD);
                    if (childAt == null) {
                        return;
                    }
                    childHelper.d = 1;
                    childHelper.f19144e = childAt;
                    if (childHelper.f19142b.f(iD)) {
                        childHelper.e(childAt);
                    }
                    anonymousClass6.b(iD);
                } finally {
                    childHelper.d = 0;
                    childHelper.f19144e = null;
                }
            }
        }

        public LayoutParams v(ViewGroup.LayoutParams layoutParams) {
            if (layoutParams instanceof LayoutParams) {
                return new LayoutParams((LayoutParams) layoutParams);
            }
            return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
        }

        /* JADX WARN: Code duplicated, block: B:28:0x00b0  */
        /* JADX WARN: Code duplicated, block: B:33:0x00b8  */
        /* JADX WARN: Code duplicated, block: B:35:0x00bc  */
        public boolean v0(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            int iK = K();
            int iM = M();
            int iL = this.n - L();
            int iJ = this.o - J();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int iWidth = rect.width() + left;
            int iHeight = rect.height() + top;
            int i2 = left - iK;
            int iMin = Math.min(0, i2);
            int i3 = top - iM;
            int iMin2 = Math.min(0, i3);
            int i4 = iWidth - iL;
            int iMax = Math.max(0, i4);
            int iMax2 = Math.max(0, iHeight - iJ);
            if (this.f19271b.getLayoutDirection() != 1) {
                if (iMin == 0) {
                    iMin = Math.min(i2, iMax);
                }
                iMax = iMin;
            } else if (iMax == 0) {
                iMax = Math.max(iMin, i4);
            }
            if (iMin2 == 0) {
                iMin2 = Math.min(i3, iMax2);
            }
            int[] iArr = {iMax, iMin2};
            int i5 = iArr[0];
            int i6 = iArr[1];
            if (z2) {
                View focusedChild = recyclerView.getFocusedChild();
                if (focusedChild != null) {
                    int iK2 = K();
                    int iM2 = M();
                    int iL2 = this.n - L();
                    int iJ2 = this.o - J();
                    Rect rect2 = this.f19271b.mTempRect;
                    C(focusedChild, rect2);
                    if (rect2.left - i5 < iL2 && rect2.right - i5 > iK2 && rect2.top - i6 < iJ2 && rect2.bottom - i6 > iM2) {
                        if (i5 == 0) {
                        }
                        if (z) {
                            recyclerView.scrollBy(i5, i6);
                            return true;
                        }
                        recyclerView.smoothScrollBy(i5, i6);
                        return true;
                    }
                }
            } else if (i5 == 0 || i6 != 0) {
                if (z) {
                    recyclerView.scrollBy(i5, i6);
                    return true;
                }
                recyclerView.smoothScrollBy(i5, i6);
                return true;
            }
            return false;
        }

        public final View w(int i2) {
            ChildHelper childHelper = this.f19270a;
            if (childHelper != null) {
                return childHelper.b(i2);
            }
            return null;
        }

        public final void w0() {
            RecyclerView recyclerView = this.f19271b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public final int x() {
            ChildHelper childHelper = this.f19270a;
            if (childHelper != null) {
                return childHelper.c();
            }
            return 0;
        }

        public int x0(int i2, Recycler recycler, State state) {
            return 0;
        }

        public void y0(int i2) {
            int i3 = RecyclerView.HORIZONTAL;
        }

        public final boolean z() {
            RecyclerView recyclerView = this.f19271b;
            return recyclerView != null && recyclerView.mClipToPadding;
        }

        public int z0(int i2, Recycler recycler, State state) {
            return 0;
        }
    }

    public interface OnChildAttachStateChangeListener {
        void b(View view);

        void c(View view);
    }

    public static abstract class OnFlingListener {
        public abstract boolean a(int i2, int i3);
    }

    public interface OnItemTouchListener {
        void a(MotionEvent motionEvent);

        void d(boolean z);

        boolean e(MotionEvent motionEvent);
    }

    public static abstract class OnScrollListener {
        public void a(int i2) {
        }

        public void b(RecyclerView recyclerView, int i2, int i3) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Orientation {
    }

    public static class RecycledViewPool {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SparseArray f19287a = new SparseArray();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f19288b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Set f19289c = Collections.newSetFromMap(new IdentityHashMap());

        public static class ScrapData {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final ArrayList f19290a = new ArrayList();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final int f19291b = 5;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public long f19292c = 0;
            public long d = 0;
        }

        public final ScrapData a(int i2) {
            SparseArray sparseArray = this.f19287a;
            ScrapData scrapData = (ScrapData) sparseArray.get(i2);
            if (scrapData != null) {
                return scrapData;
            }
            ScrapData scrapData2 = new ScrapData();
            sparseArray.put(i2, scrapData2);
            return scrapData2;
        }
    }

    public final class Recycler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ArrayList f19293a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ArrayList f19294b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f19295c;
        public final List d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f19296e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f19297f;
        public RecycledViewPool g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public ViewCacheExtension f19298h;

        public Recycler() {
            ArrayList arrayList = new ArrayList();
            this.f19293a = arrayList;
            this.f19294b = null;
            this.f19295c = new ArrayList();
            this.d = Collections.unmodifiableList(arrayList);
            this.f19296e = 2;
            this.f19297f = 2;
        }

        public static void e(ViewGroup viewGroup, boolean z) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    e((ViewGroup) childAt, true);
                }
            }
            if (z) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                } else {
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                }
            }
        }

        public final void a(ViewHolder viewHolder, boolean z) {
            RecyclerView.clearNestedRecyclerViewIfNotNested(viewHolder);
            View view = viewHolder.itemView;
            RecyclerView recyclerView = RecyclerView.this;
            RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate = recyclerView.mAccessibilityDelegate;
            if (recyclerViewAccessibilityDelegate != null) {
                RecyclerViewAccessibilityDelegate.ItemDelegate itemDelegate = recyclerViewAccessibilityDelegate.f19321f;
                ViewCompat.t(view, itemDelegate != null ? (AccessibilityDelegateCompat) itemDelegate.f19323f.remove(view) : null);
            }
            if (z) {
                RecyclerListener recyclerListener = recyclerView.mRecyclerListener;
                if (recyclerListener != null) {
                    recyclerListener.a();
                }
                int size = recyclerView.mRecyclerListeners.size();
                for (int i2 = 0; i2 < size; i2++) {
                    recyclerView.mRecyclerListeners.get(i2).a();
                }
                Adapter adapter = recyclerView.mAdapter;
                if (adapter != null) {
                    adapter.onViewRecycled(viewHolder);
                }
                if (recyclerView.mState != null) {
                    recyclerView.mViewInfoStore.d(viewHolder);
                }
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Objects.toString(viewHolder);
                }
            }
            viewHolder.mBindingAdapter = null;
            viewHolder.mOwnerRecyclerView = null;
            RecycledViewPool recycledViewPoolC = c();
            recycledViewPoolC.getClass();
            int itemViewType = viewHolder.getItemViewType();
            ArrayList arrayList = recycledViewPoolC.a(itemViewType).f19290a;
            if (((RecycledViewPool.ScrapData) recycledViewPoolC.f19287a.get(itemViewType)).f19291b <= arrayList.size()) {
                PoolingContainer.b(viewHolder.itemView);
            } else if (RecyclerView.sDebugAssertionsEnabled && arrayList.contains(viewHolder)) {
                md.n("this scrap item already exists");
            } else {
                viewHolder.resetInternal();
                arrayList.add(viewHolder);
            }
        }

        public final int b(int i2) {
            RecyclerView recyclerView = RecyclerView.this;
            if (i2 >= 0 && i2 < recyclerView.mState.b()) {
                return !recyclerView.mState.g ? i2 : recyclerView.mAdapterHelper.f(i2, 0);
            }
            StringBuilder sbQ = fc.q(i2, "invalid position ", ". State item count is ");
            sbQ.append(recyclerView.mState.b());
            sbQ.append(recyclerView.exceptionLabel());
            throw new IndexOutOfBoundsException(sbQ.toString());
        }

        public final RecycledViewPool c() {
            if (this.g == null) {
                this.g = new RecycledViewPool();
                f();
            }
            return this.g;
        }

        public final View d(int i2) {
            return m(i2, RecyclerView.FOREVER_NS).itemView;
        }

        public final void f() {
            if (this.g != null) {
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.mAdapter == null || !recyclerView.isAttachedToWindow()) {
                    return;
                }
                RecycledViewPool recycledViewPool = this.g;
                recycledViewPool.f19289c.add(recyclerView.mAdapter);
            }
        }

        public final void g(Adapter adapter, boolean z) {
            RecycledViewPool recycledViewPool = this.g;
            if (recycledViewPool != null) {
                SparseArray sparseArray = recycledViewPool.f19287a;
                Set set = recycledViewPool.f19289c;
                set.remove(adapter);
                if (set.size() != 0 || z) {
                    return;
                }
                for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                    ArrayList arrayList = ((RecycledViewPool.ScrapData) sparseArray.get(sparseArray.keyAt(i2))).f19290a;
                    for (int i3 = 0; i3 < arrayList.size(); i3++) {
                        PoolingContainer.b(((ViewHolder) arrayList.get(i3)).itemView);
                    }
                }
            }
        }

        public final void h() {
            ArrayList arrayList = this.f19295c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                i(size);
            }
            arrayList.clear();
            if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                GapWorker.LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = RecyclerView.this.mPrefetchRegistry;
                int[] iArr = layoutPrefetchRegistryImpl.f19192c;
                if (iArr != null) {
                    Arrays.fill(iArr, -1);
                }
                layoutPrefetchRegistryImpl.d = 0;
            }
        }

        public final void i(int i2) {
            int i3 = RecyclerView.HORIZONTAL;
            ArrayList arrayList = this.f19295c;
            ViewHolder viewHolder = (ViewHolder) arrayList.get(i2);
            if (RecyclerView.sVerboseLoggingEnabled) {
                Objects.toString(viewHolder);
            }
            a(viewHolder, true);
            arrayList.remove(i2);
        }

        public final void j(View view) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            boolean zIsTmpDetached = childViewHolderInt.isTmpDetached();
            RecyclerView recyclerView = RecyclerView.this;
            if (zIsTmpDetached) {
                recyclerView.removeDetachedView(view, false);
            }
            if (childViewHolderInt.isScrap()) {
                childViewHolderInt.unScrap();
            } else if (childViewHolderInt.wasReturnedFromScrap()) {
                childViewHolderInt.clearReturnedFromScrapFlag();
            }
            k(childViewHolderInt);
            if (recyclerView.mItemAnimator == null || childViewHolderInt.isRecyclable()) {
                return;
            }
            recyclerView.mItemAnimator.i(childViewHolderInt);
        }

        /* JADX WARN: Code duplicated, block: B:54:0x00a3  */
        /* JADX WARN: Code duplicated, block: B:56:0x00b1  */
        /* JADX WARN: Code duplicated, block: B:58:0x00b8  */
        /* JADX WARN: Code duplicated, block: B:61:0x00c1 A[LOOP:2: B:57:0x00b6->B:61:0x00c1, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:87:0x00c4 A[EDGE_INSN: B:87:0x00c4->B:62:0x00c4 BREAK  A[LOOP:1: B:53:0x00a1->B:60:0x00be], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:88:0x00c4 A[EDGE_INSN: B:88:0x00c4->B:62:0x00c4 BREAK  A[LOOP:1: B:53:0x00a1->B:60:0x00be, LOOP_LABEL: LOOP:1: B:53:0x00a1->B:60:0x00be], SYNTHETIC] */
        public final void k(ViewHolder viewHolder) {
            boolean z;
            int i2;
            int i3;
            GapWorker.LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl;
            int i4;
            int i5;
            boolean zIsScrap = viewHolder.isScrap();
            boolean z2 = false;
            boolean z3 = true;
            RecyclerView recyclerView = RecyclerView.this;
            if (zIsScrap || viewHolder.itemView.getParent() != null) {
                StringBuilder sb = new StringBuilder("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(viewHolder.isScrap());
                sb.append(" isAttached:");
                sb.append(viewHolder.itemView.getParent() != null);
                sb.append(recyclerView.exceptionLabel());
                throw new IllegalArgumentException(sb.toString());
            }
            if (viewHolder.isTmpDetached()) {
                StringBuilder sb2 = new StringBuilder("Tmp detached view should be removed from RecyclerView before it can be recycled: ");
                sb2.append(viewHolder);
                md.n(cj.g(recyclerView, sb2));
                return;
            }
            if (viewHolder.shouldIgnore()) {
                md.n(cj.g(recyclerView, new StringBuilder("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle.")));
                return;
            }
            boolean zDoesTransientStatePreventRecycling = viewHolder.doesTransientStatePreventRecycling();
            Adapter adapter = recyclerView.mAdapter;
            boolean z4 = adapter != null && zDoesTransientStatePreventRecycling && adapter.onFailedToRecycleView(viewHolder);
            boolean z5 = RecyclerView.sDebugAssertionsEnabled;
            ArrayList arrayList = this.f19295c;
            if (z5 && arrayList.contains(viewHolder)) {
                StringBuilder sb3 = new StringBuilder("cached view received recycle internal? ");
                sb3.append(viewHolder);
                md.n(cj.g(recyclerView, sb3));
                return;
            }
            if (z4 || viewHolder.isRecyclable()) {
                if (this.f19297f <= 0 || viewHolder.hasAnyOfTheFlags(526)) {
                    z = false;
                } else {
                    int size = arrayList.size();
                    if (size >= this.f19297f && size > 0) {
                        i(0);
                        size--;
                    }
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK && size > 0) {
                        GapWorker.LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl2 = recyclerView.mPrefetchRegistry;
                        int i6 = viewHolder.mPosition;
                        if (layoutPrefetchRegistryImpl2.f19192c != null) {
                            int i7 = layoutPrefetchRegistryImpl2.d * 2;
                            int i8 = 0;
                            while (true) {
                                if (i8 >= i7) {
                                    i2 = size - 1;
                                    loop1: while (i2 >= 0) {
                                        i3 = ((ViewHolder) arrayList.get(i2)).mPosition;
                                        layoutPrefetchRegistryImpl = recyclerView.mPrefetchRegistry;
                                        if (layoutPrefetchRegistryImpl.f19192c != null) {
                                            break;
                                        }
                                        i4 = layoutPrefetchRegistryImpl.d * 2;
                                        i5 = 0;
                                        while (true) {
                                            if (i5 < i4) {
                                                break loop1;
                                            } else if (layoutPrefetchRegistryImpl.f19192c[i5] == i3) {
                                                break;
                                            } else {
                                                i5 += 2;
                                            }
                                        }
                                        i2--;
                                    }
                                    size = i2 + 1;
                                } else if (layoutPrefetchRegistryImpl2.f19192c[i8] != i6) {
                                    i8 += 2;
                                }
                            }
                        } else {
                            i2 = size - 1;
                            loop1: while (i2 >= 0) {
                                i3 = ((ViewHolder) arrayList.get(i2)).mPosition;
                                layoutPrefetchRegistryImpl = recyclerView.mPrefetchRegistry;
                                if (layoutPrefetchRegistryImpl.f19192c != null) {
                                    break;
                                    break;
                                }
                                i4 = layoutPrefetchRegistryImpl.d * 2;
                                i5 = 0;
                                while (true) {
                                    if (i5 < i4) {
                                        break loop1;
                                        break loop1;
                                    } else if (layoutPrefetchRegistryImpl.f19192c[i5] == i3) {
                                        break;
                                    } else {
                                        i5 += 2;
                                    }
                                }
                                i2--;
                            }
                            size = i2 + 1;
                        }
                    }
                    arrayList.add(size, viewHolder);
                    z = true;
                }
                if (z) {
                    z3 = false;
                } else {
                    a(viewHolder, true);
                }
                z2 = z;
            } else {
                if (RecyclerView.sVerboseLoggingEnabled) {
                    recyclerView.exceptionLabel();
                }
                z3 = false;
            }
            recyclerView.mViewInfoStore.d(viewHolder);
            if (z2 || z3 || !zDoesTransientStatePreventRecycling) {
                return;
            }
            PoolingContainer.b(viewHolder.itemView);
            viewHolder.mBindingAdapter = null;
            viewHolder.mOwnerRecyclerView = null;
        }

        public final void l(View view) {
            ViewHolder childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            boolean zHasAnyOfTheFlags = childViewHolderInt.hasAnyOfTheFlags(12);
            RecyclerView recyclerView = RecyclerView.this;
            if (!zHasAnyOfTheFlags && childViewHolderInt.isUpdated() && !recyclerView.canReuseUpdatedViewHolder(childViewHolderInt)) {
                if (this.f19294b == null) {
                    this.f19294b = new ArrayList();
                }
                childViewHolderInt.setScrapContainer(this, true);
                this.f19294b.add(childViewHolderInt);
                return;
            }
            if (childViewHolderInt.isInvalid() && !childViewHolderInt.isRemoved() && !recyclerView.mAdapter.hasStableIds()) {
                md.n(cj.g(recyclerView, new StringBuilder("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool.")));
            } else {
                childViewHolderInt.setScrapContainer(this, false);
                this.f19293a.add(childViewHolderInt);
            }
        }

        /* JADX WARN: Code duplicated, block: B:101:0x0198  */
        /* JADX WARN: Code duplicated, block: B:103:0x01aa  */
        /* JADX WARN: Code duplicated, block: B:105:0x01b0  */
        /* JADX WARN: Code duplicated, block: B:107:0x01b6  */
        /* JADX WARN: Code duplicated, block: B:109:0x01bd  */
        /* JADX WARN: Code duplicated, block: B:121:0x01e7  */
        /* JADX WARN: Code duplicated, block: B:123:0x01ed  */
        /* JADX WARN: Code duplicated, block: B:125:0x01f1  */
        /* JADX WARN: Code duplicated, block: B:131:0x020c  */
        /* JADX WARN: Code duplicated, block: B:133:0x0210  */
        /* JADX WARN: Code duplicated, block: B:146:0x0249  */
        /* JADX WARN: Code duplicated, block: B:148:0x0253  */
        /* JADX WARN: Code duplicated, block: B:149:0x025c  */
        /* JADX WARN: Code duplicated, block: B:151:0x0262  */
        /* JADX WARN: Code duplicated, block: B:153:0x026a  */
        /* JADX WARN: Code duplicated, block: B:158:0x0285  */
        /* JADX WARN: Code duplicated, block: B:221:0x03b8 A[EDGE_INSN: B:221:0x03b8->B:222:0x03b9 BREAK  A[LOOP:5: B:216:0x03a0->B:220:0x03b5]] */
        /* JADX WARN: Code duplicated, block: B:250:0x0445  */
        /* JADX WARN: Code duplicated, block: B:258:0x0466  */
        /* JADX WARN: Code duplicated, block: B:264:0x049c  */
        /* JADX WARN: Code duplicated, block: B:266:0x04a2  */
        /* JADX WARN: Code duplicated, block: B:272:0x04b4  */
        /* JADX WARN: Code duplicated, block: B:274:0x04b8  */
        /* JADX WARN: Code duplicated, block: B:281:0x04e7  */
        /* JADX WARN: Code duplicated, block: B:283:0x04f3  */
        /* JADX WARN: Code duplicated, block: B:287:0x04fe  */
        /* JADX WARN: Code duplicated, block: B:288:0x0510  */
        /* JADX WARN: Code duplicated, block: B:291:0x0518  */
        /* JADX WARN: Code duplicated, block: B:295:0x0533  */
        /* JADX WARN: Code duplicated, block: B:298:0x0542  */
        /* JADX WARN: Code duplicated, block: B:300:0x054a  */
        /* JADX WARN: Code duplicated, block: B:301:0x0550  */
        /* JADX WARN: Code duplicated, block: B:305:0x0557  */
        /* JADX WARN: Code duplicated, block: B:307:0x055b  */
        /* JADX WARN: Code duplicated, block: B:312:0x056c  */
        /* JADX WARN: Code duplicated, block: B:315:0x0574  */
        /* JADX WARN: Code duplicated, block: B:319:0x057f  */
        /* JADX WARN: Code duplicated, block: B:320:0x058b  */
        /* JADX WARN: Code duplicated, block: B:322:0x0591  */
        /* JADX WARN: Code duplicated, block: B:323:0x059d  */
        /* JADX WARN: Code duplicated, block: B:326:0x05a3 A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:328:0x05a7  */
        /* JADX WARN: Code duplicated, block: B:339:0x00c4 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:345:0x00ef A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:350:0x01e4 A[SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:35:0x0083 A[EDGE_INSN: B:35:0x0083->B:36:0x0084 BREAK  A[LOOP:0: B:14:0x0027->B:20:0x0041]] */
        /* JADX WARN: Code duplicated, block: B:42:0x0090  */
        /* JADX WARN: Code duplicated, block: B:44:0x0097  */
        /* JADX WARN: Code duplicated, block: B:59:0x00cf  */
        /* JADX WARN: Code duplicated, block: B:69:0x00f2  */
        /* JADX WARN: Code duplicated, block: B:71:0x0104  */
        /* JADX WARN: Code duplicated, block: B:73:0x010a  */
        /* JADX WARN: Code duplicated, block: B:78:0x0126  */
        /* JADX WARN: Code duplicated, block: B:81:0x012f  */
        /* JADX WARN: Code duplicated, block: B:83:0x0144  */
        /* JADX WARN: Code duplicated, block: B:85:0x014a  */
        /* JADX WARN: Code duplicated, block: B:94:0x016d  */
        /* JADX WARN: Code duplicated, block: B:96:0x0176  */
        /* JADX WARN: Code duplicated, block: B:99:0x0186  */
        /* JADX WARN: Multi-variable type inference failed */
        public final ViewHolder m(int i2, long j2) {
            ViewHolder childViewHolder;
            int i3;
            ArrayList arrayList;
            ArrayList arrayList2;
            int i4;
            long j3;
            long j4;
            long j5;
            int itemViewType;
            int i5;
            long nanoTime;
            long j6;
            int i6;
            int i7;
            View view;
            RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate;
            RecyclerViewAccessibilityDelegate.ItemDelegate itemDelegate;
            AccessibilityDelegateCompat accessibilityDelegateCompatE;
            long j7;
            ViewGroup.LayoutParams layoutParams;
            LayoutParams layoutParams2;
            boolean z;
            int iF;
            RecyclerView recyclerViewFindNestedRecyclerView;
            ViewHolder viewHolder;
            ViewCacheExtension viewCacheExtension;
            View viewA;
            int size;
            int i8;
            ArrayList arrayList3;
            int size2;
            int i9;
            View view2;
            int size3;
            int i10;
            ViewHolder viewHolder2;
            ChildHelper childHelper;
            ChildHelper.Bucket bucket;
            int iIndexOfChild;
            ChildHelper.Bucket bucket2;
            int iIndexOfChild2;
            int iB;
            int iD;
            RecyclerView recyclerView;
            View childAt;
            ViewHolder childViewHolderInt;
            ViewHolder childViewHolderInt2;
            int i11;
            boolean z2;
            int size4;
            int iF2;
            RecyclerView recyclerView2 = RecyclerView.this;
            if (i2 < 0 || i2 >= recyclerView2.mState.b()) {
                StringBuilder sbP = fc.p(i2, i2, "Invalid item position ", "(", "). Item count:");
                sbP.append(recyclerView2.mState.b());
                sbP.append(recyclerView2.exceptionLabel());
                throw new IndexOutOfBoundsException(sbP.toString());
            }
            int i12 = 1;
            if (recyclerView2.mState.g) {
                ArrayList arrayList4 = this.f19294b;
                if (arrayList4 != null && (size4 = arrayList4.size()) != 0) {
                    int i13 = 0;
                    while (true) {
                        if (i13 >= size4) {
                            if (recyclerView2.mAdapter.hasStableIds() && (iF2 = recyclerView2.mAdapterHelper.f(i2, 0)) > 0 && iF2 < recyclerView2.mAdapter.getItemCount()) {
                                long itemId = recyclerView2.mAdapter.getItemId(iF2);
                                int i14 = 0;
                                while (true) {
                                    if (i14 >= size4) {
                                        childViewHolder = null;
                                        break;
                                    }
                                    ViewHolder viewHolder3 = (ViewHolder) this.f19294b.get(i14);
                                    if (!viewHolder3.wasReturnedFromScrap() && viewHolder3.getItemId() == itemId) {
                                        viewHolder3.addFlags(32);
                                        childViewHolder = viewHolder3;
                                        break;
                                    }
                                    i14++;
                                }
                            } else {
                                childViewHolder = null;
                                break;
                            }
                        } else {
                            childViewHolder = (ViewHolder) this.f19294b.get(i13);
                            if (!childViewHolder.wasReturnedFromScrap() && childViewHolder.getLayoutPosition() == i2) {
                                childViewHolder.addFlags(32);
                                break;
                            }
                            i13++;
                        }
                    }
                } else {
                    childViewHolder = null;
                    break;
                }
                if (childViewHolder != null) {
                    i3 = 1;
                }
                arrayList = this.f19293a;
                arrayList2 = this.f19295c;
                if (childViewHolder == null) {
                    size = arrayList.size();
                    i8 = 0;
                    while (true) {
                        if (i8 >= size) {
                            arrayList3 = recyclerView2.mChildHelper.f19143c;
                            size2 = arrayList3.size();
                            i9 = 0;
                            while (true) {
                                if (i9 < size2) {
                                    view2 = null;
                                    break;
                                }
                                view2 = (View) arrayList3.get(i9);
                                childViewHolderInt2 = RecyclerView.getChildViewHolderInt(view2);
                                if (childViewHolderInt2.getLayoutPosition() != i2 && !childViewHolderInt2.isInvalid() && !childViewHolderInt2.isRemoved()) {
                                    break;
                                }
                                i9++;
                            }
                            if (view2 != null) {
                                size3 = arrayList2.size();
                                i10 = 0;
                                while (true) {
                                    if (i10 < size3) {
                                        childViewHolder = null;
                                        break;
                                    }
                                    viewHolder2 = (ViewHolder) arrayList2.get(i10);
                                    if (viewHolder2.isInvalid() && viewHolder2.getLayoutPosition() == i2 && !viewHolder2.isAttachedToTransitionOverlay()) {
                                        arrayList2.remove(i10);
                                        if (RecyclerView.sVerboseLoggingEnabled) {
                                            viewHolder2.toString();
                                        }
                                    } else {
                                        i10++;
                                    }
                                }
                            } else {
                                childViewHolder = RecyclerView.getChildViewHolderInt(view2);
                                childHelper = recyclerView2.mChildHelper;
                                bucket = childHelper.f19142b;
                                iIndexOfChild = RecyclerView.this.indexOfChild(view2);
                                if (iIndexOfChild >= 0) {
                                    az.m(view2, "view is not a child, cannot hide ");
                                    return null;
                                }
                                if (bucket.d(iIndexOfChild)) {
                                    x1.n(view2, "trying to unhide a view that was not hidden");
                                    return null;
                                }
                                bucket.a(iIndexOfChild);
                                childHelper.e(view2);
                                ChildHelper childHelper2 = recyclerView2.mChildHelper;
                                bucket2 = childHelper2.f19142b;
                                iIndexOfChild2 = RecyclerView.this.indexOfChild(view2);
                                if (iIndexOfChild2 == -1 && !bucket2.d(iIndexOfChild2)) {
                                    iB = iIndexOfChild2 - bucket2.b(iIndexOfChild2);
                                } else {
                                    iB = -1;
                                }
                                if (iB != -1) {
                                    StringBuilder sb = new StringBuilder("layout index should not be -1 after unhiding a view:");
                                    sb.append(childViewHolder);
                                    md.k(cj.g(recyclerView2, sb));
                                    return null;
                                }
                                ChildHelper childHelper3 = recyclerView2.mChildHelper;
                                iD = childHelper3.d(iB);
                                childHelper3.f19142b.f(iD);
                                recyclerView = RecyclerView.this;
                                childAt = recyclerView.getChildAt(iD);
                                if (childAt != null) {
                                    childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
                                    if (childViewHolderInt != null) {
                                        if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                                            StringBuilder sb2 = new StringBuilder("called detach on an already detached child ");
                                            sb2.append(childViewHolderInt);
                                            md.n(cj.g(recyclerView, sb2));
                                            return null;
                                        }
                                        if (RecyclerView.sVerboseLoggingEnabled) {
                                            childViewHolderInt.toString();
                                        }
                                        childViewHolderInt.addFlags(256);
                                    }
                                } else if (RecyclerView.sDebugAssertionsEnabled) {
                                    StringBuilder sb3 = new StringBuilder("No view at offset ");
                                    sb3.append(iD);
                                    md.n(cj.g(recyclerView, sb3));
                                    return null;
                                }
                                recyclerView.detachViewFromParent(iD);
                                l(view2);
                                childViewHolder.addFlags(8224);
                                break;
                            }
                        } else {
                            viewHolder2 = (ViewHolder) arrayList.get(i8);
                            if (!viewHolder2.wasReturnedFromScrap() || viewHolder2.getLayoutPosition() != i2 || viewHolder2.isInvalid() || (!recyclerView2.mState.g && viewHolder2.isRemoved())) {
                                i8++;
                            } else {
                                viewHolder2.addFlags(32);
                            }
                        }
                        childViewHolder = viewHolder2;
                        break;
                    }
                    if (childViewHolder != null) {
                        if (!childViewHolder.isRemoved()) {
                            i11 = childViewHolder.mPosition;
                            if (i11 >= 0 || i11 >= recyclerView2.mAdapter.getItemCount()) {
                                StringBuilder sb4 = new StringBuilder("Inconsistency detected. Invalid view holder adapter position");
                                sb4.append(childViewHolder);
                                az.v(cj.g(recyclerView2, sb4));
                                return null;
                            }
                            z2 = (recyclerView2.mState.g || recyclerView2.mAdapter.getItemViewType(childViewHolder.mPosition) == childViewHolder.getItemViewType()) && (!recyclerView2.mAdapter.hasStableIds() || childViewHolder.getItemId() == recyclerView2.mAdapter.getItemId(childViewHolder.mPosition));
                        } else {
                            if (!RecyclerView.sDebugAssertionsEnabled && !recyclerView2.mState.g) {
                                md.k(cj.g(recyclerView2, new StringBuilder("should not receive a removed view unless it is pre layout")));
                                return null;
                            }
                            z2 = recyclerView2.mState.g;
                        }
                        if (z2) {
                            i3 = 1;
                        } else {
                            childViewHolder.addFlags(4);
                            if (childViewHolder.isScrap()) {
                                recyclerView2.removeDetachedView(childViewHolder.itemView, false);
                                childViewHolder.unScrap();
                            } else if (childViewHolder.wasReturnedFromScrap()) {
                                childViewHolder.clearReturnedFromScrapFlag();
                            }
                            k(childViewHolder);
                            childViewHolder = null;
                        }
                    }
                }
                if (childViewHolder == null) {
                    j3 = 3;
                    iF = recyclerView2.mAdapterHelper.f(i2, 0);
                    if (iF >= 0 || iF >= recyclerView2.mAdapter.getItemCount()) {
                        StringBuilder sbP2 = fc.p(i2, iF, "Inconsistency detected. Invalid item position ", "(offset:", ").state:");
                        sbP2.append(recyclerView2.mState.b());
                        sbP2.append(recyclerView2.exceptionLabel());
                        throw new IndexOutOfBoundsException(sbP2.toString());
                    }
                    int itemViewType2 = recyclerView2.mAdapter.getItemViewType(iF);
                    j4 = 4;
                    if (recyclerView2.mAdapter.hasStableIds()) {
                        long itemId2 = recyclerView2.mAdapter.getItemId(iF);
                        int size5 = arrayList.size() - 1;
                        while (true) {
                            if (size5 < 0) {
                                i4 = i12;
                                j5 = 0;
                                int size6 = arrayList2.size() - 1;
                                while (true) {
                                    if (size6 >= 0) {
                                        ViewHolder viewHolder4 = (ViewHolder) arrayList2.get(size6);
                                        if (viewHolder4.getItemId() != itemId2 || viewHolder4.isAttachedToTransitionOverlay()) {
                                            size6--;
                                        } else {
                                            if (itemViewType2 == viewHolder4.getItemViewType()) {
                                                arrayList2.remove(size6);
                                                childViewHolder = viewHolder4;
                                                break;
                                            }
                                            i(size6);
                                        }
                                    }
                                    childViewHolder = null;
                                    break;
                                }
                            }
                            j5 = 0;
                            ViewHolder viewHolder5 = (ViewHolder) arrayList.get(size5);
                            if (viewHolder5.getItemId() != itemId2 || viewHolder5.wasReturnedFromScrap()) {
                                i4 = i12;
                            } else {
                                i4 = i12;
                                if (itemViewType2 == viewHolder5.getItemViewType()) {
                                    viewHolder5.addFlags(32);
                                    if (viewHolder5.isRemoved() && !recyclerView2.mState.g) {
                                        viewHolder5.setFlags(2, 14);
                                    }
                                    childViewHolder = viewHolder5;
                                    break;
                                }
                                arrayList.remove(size5);
                                recyclerView2.removeDetachedView(viewHolder5.itemView, false);
                                ViewHolder childViewHolderInt3 = RecyclerView.getChildViewHolderInt(viewHolder5.itemView);
                                childViewHolderInt3.mScrapContainer = null;
                                childViewHolderInt3.mInChangeScrap = false;
                                childViewHolderInt3.clearReturnedFromScrapFlag();
                                k(childViewHolderInt3);
                            }
                            size5--;
                            i12 = i4;
                        }
                        if (childViewHolder != null) {
                            childViewHolder.mPosition = iF;
                            i3 = i4;
                        }
                    } else {
                        i4 = 1;
                        j5 = 0;
                    }
                    if (childViewHolder == null && (viewCacheExtension = this.f19298h) != null && (viewA = viewCacheExtension.a()) != null) {
                        childViewHolder = recyclerView2.getChildViewHolder(viewA);
                        if (childViewHolder == null) {
                            md.n(cj.g(recyclerView2, new StringBuilder("getViewForPositionAndType returned a view which does not have a ViewHolder")));
                            return null;
                        }
                        if (childViewHolder.shouldIgnore()) {
                            md.n(cj.g(recyclerView2, new StringBuilder("getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view.")));
                            return null;
                        }
                    }
                    if (childViewHolder == null) {
                        int i15 = RecyclerView.HORIZONTAL;
                        RecycledViewPool.ScrapData scrapData = (RecycledViewPool.ScrapData) c().f19287a.get(itemViewType2);
                        if (scrapData == null) {
                            viewHolder = null;
                            break;
                        }
                        ArrayList arrayList5 = scrapData.f19290a;
                        if (!arrayList5.isEmpty()) {
                            int size7 = arrayList5.size() - 1;
                            while (true) {
                                if (size7 < 0) {
                                    viewHolder = null;
                                    break;
                                }
                                if (!((ViewHolder) arrayList5.get(size7)).isAttachedToTransitionOverlay()) {
                                    viewHolder = (ViewHolder) arrayList5.remove(size7);
                                    break;
                                }
                                size7--;
                            }
                        } else {
                            viewHolder = null;
                            break;
                        }
                        if (viewHolder != null) {
                            viewHolder.resetInternal();
                            if (RecyclerView.FORCE_INVALIDATE_DISPLAY_LIST) {
                                View view3 = viewHolder.itemView;
                                if (view3 instanceof ViewGroup) {
                                    e((ViewGroup) view3, false);
                                }
                            }
                        }
                        childViewHolder = viewHolder;
                    }
                    if (childViewHolder == null) {
                        long nanoTime2 = recyclerView2.getNanoTime();
                        if (j2 != RecyclerView.FOREVER_NS) {
                            long j8 = this.g.a(itemViewType2).f19292c;
                            if (j8 != j5 && j8 + nanoTime2 >= j2) {
                                return null;
                            }
                        }
                        ViewHolder viewHolderCreateViewHolder = recyclerView2.mAdapter.createViewHolder(recyclerView2, itemViewType2);
                        if (RecyclerView.ALLOW_THREAD_GAP_WORK && (recyclerViewFindNestedRecyclerView = RecyclerView.findNestedRecyclerView(viewHolderCreateViewHolder.itemView)) != null) {
                            viewHolderCreateViewHolder.mNestedRecyclerView = new WeakReference<>(recyclerViewFindNestedRecyclerView);
                        }
                        long nanoTime3 = recyclerView2.getNanoTime() - nanoTime2;
                        RecycledViewPool.ScrapData scrapDataA = this.g.a(itemViewType2);
                        long j9 = scrapDataA.f19292c;
                        if (j9 != j5) {
                            nanoTime3 = (nanoTime3 / 4) + ((j9 / 4) * 3);
                        }
                        scrapDataA.f19292c = nanoTime3;
                        childViewHolder = viewHolderCreateViewHolder;
                    }
                } else {
                    i4 = 1;
                    j3 = 3;
                    j4 = 4;
                    j5 = 0;
                }
                if (i3 != 0 && !recyclerView2.mState.g && childViewHolder.hasAnyOfTheFlags(8192)) {
                    childViewHolder.setFlags(0, 8192);
                    if (recyclerView2.mState.f19318j) {
                        ItemAnimator.e(childViewHolder);
                        ItemAnimator itemAnimator = recyclerView2.mItemAnimator;
                        childViewHolder.getUnmodifiedPayloads();
                        itemAnimator.getClass();
                        ItemAnimator.ItemHolderInfo itemHolderInfo = new ItemAnimator.ItemHolderInfo();
                        View view4 = childViewHolder.itemView;
                        itemHolderInfo.f19267a = view4.getLeft();
                        itemHolderInfo.f19268b = view4.getTop();
                        view4.getRight();
                        view4.getBottom();
                        recyclerView2.recordAnimationInfoIfBouncedHiddenView(childViewHolder, itemHolderInfo);
                    }
                }
                if (recyclerView2.mState.g || !childViewHolder.isBound()) {
                    if (childViewHolder.isBound() || childViewHolder.needsUpdate() || childViewHolder.isInvalid()) {
                        if (!RecyclerView.sDebugAssertionsEnabled && childViewHolder.isRemoved()) {
                            StringBuilder sb5 = new StringBuilder("Removed holder should be bound and it should come here only in pre-layout. Holder: ");
                            sb5.append(childViewHolder);
                            md.k(cj.g(recyclerView2, sb5));
                            return null;
                        }
                        int iF3 = recyclerView2.mAdapterHelper.f(i2, 0);
                        childViewHolder.mBindingAdapter = null;
                        childViewHolder.mOwnerRecyclerView = recyclerView2;
                        itemViewType = childViewHolder.getItemViewType();
                        long nanoTime4 = recyclerView2.getNanoTime();
                        if (j2 != RecyclerView.FOREVER_NS) {
                            j7 = this.g.a(itemViewType).d;
                            if (j7 != j5 || j7 + nanoTime4 < j2) {
                            }
                        }
                        if (childViewHolder.isTmpDetached()) {
                            recyclerView2.attachViewToParent(childViewHolder.itemView, recyclerView2.getChildCount(), childViewHolder.itemView.getLayoutParams());
                            i5 = i4;
                        } else {
                            i5 = 0;
                        }
                        recyclerView2.mAdapter.bindViewHolder(childViewHolder, iF3);
                        if (i5 != 0) {
                            recyclerView2.detachViewFromParent(childViewHolder.itemView);
                        }
                        nanoTime = recyclerView2.getNanoTime() - nanoTime4;
                        RecycledViewPool.ScrapData scrapDataA2 = this.g.a(childViewHolder.getItemViewType());
                        j6 = scrapDataA2.d;
                        if (j6 != j5) {
                            nanoTime = (nanoTime / j4) + ((j6 / j4) * j3);
                        }
                        scrapDataA2.d = nanoTime;
                        if (recyclerView2.isAccessibilityEnabled()) {
                            view = childViewHolder.itemView;
                            if (view.getImportantForAccessibility() == 0) {
                                i6 = i4;
                                view.setImportantForAccessibility(i6);
                            } else {
                                i6 = i4;
                            }
                            recyclerViewAccessibilityDelegate = recyclerView2.mAccessibilityDelegate;
                            if (recyclerViewAccessibilityDelegate != null) {
                                itemDelegate = recyclerViewAccessibilityDelegate.f19321f;
                                if (itemDelegate != null && (accessibilityDelegateCompatE = ViewCompat.e(view)) != null && accessibilityDelegateCompatE != itemDelegate) {
                                    itemDelegate.f19323f.put(view, accessibilityDelegateCompatE);
                                }
                                ViewCompat.t(view, itemDelegate);
                            }
                        } else {
                            i6 = i4;
                        }
                        if (recyclerView2.mState.g) {
                            childViewHolder.mPreLayoutPosition = i2;
                        }
                        i7 = i6;
                    }
                    layoutParams = childViewHolder.itemView.getLayoutParams();
                    if (layoutParams == null) {
                        layoutParams2 = (LayoutParams) recyclerView2.generateDefaultLayoutParams();
                        childViewHolder.itemView.setLayoutParams(layoutParams2);
                    } else if (recyclerView2.checkLayoutParams(layoutParams)) {
                        layoutParams2 = (LayoutParams) layoutParams;
                    } else {
                        layoutParams2 = (LayoutParams) recyclerView2.generateLayoutParams(layoutParams);
                        childViewHolder.itemView.setLayoutParams(layoutParams2);
                    }
                    layoutParams2.f19284a = childViewHolder;
                    if (i3 != 0 || i7 == 0) {
                        z = 0;
                    } else {
                        z = i6;
                    }
                    layoutParams2.d = z;
                    return childViewHolder;
                }
                childViewHolder.mPreLayoutPosition = i2;
                i7 = 0;
                i6 = i4;
                layoutParams = childViewHolder.itemView.getLayoutParams();
                if (layoutParams == null) {
                    layoutParams2 = (LayoutParams) recyclerView2.generateDefaultLayoutParams();
                    childViewHolder.itemView.setLayoutParams(layoutParams2);
                } else if (recyclerView2.checkLayoutParams(layoutParams)) {
                    layoutParams2 = (LayoutParams) recyclerView2.generateLayoutParams(layoutParams);
                    childViewHolder.itemView.setLayoutParams(layoutParams2);
                } else {
                    layoutParams2 = (LayoutParams) layoutParams;
                }
                layoutParams2.f19284a = childViewHolder;
                if (i3 != 0) {
                    z = 0;
                } else {
                    z = 0;
                }
                layoutParams2.d = z;
                return childViewHolder;
            }
            childViewHolder = null;
            i3 = 0;
            arrayList = this.f19293a;
            arrayList2 = this.f19295c;
            if (childViewHolder == null) {
                size = arrayList.size();
                i8 = 0;
                while (true) {
                    if (i8 >= size) {
                        viewHolder2 = (ViewHolder) arrayList.get(i8);
                        if (viewHolder2.wasReturnedFromScrap()) {
                        }
                        i8++;
                    } else {
                        arrayList3 = recyclerView2.mChildHelper.f19143c;
                        size2 = arrayList3.size();
                        i9 = 0;
                        while (true) {
                            if (i9 < size2) {
                                view2 = null;
                                break;
                            }
                            view2 = (View) arrayList3.get(i9);
                            childViewHolderInt2 = RecyclerView.getChildViewHolderInt(view2);
                            if (childViewHolderInt2.getLayoutPosition() != i2) {
                            }
                            i9++;
                        }
                        if (view2 != null) {
                            size3 = arrayList2.size();
                            i10 = 0;
                            while (true) {
                                if (i10 < size3) {
                                    childViewHolder = null;
                                    break;
                                }
                                viewHolder2 = (ViewHolder) arrayList2.get(i10);
                                if (viewHolder2.isInvalid()) {
                                }
                                i10++;
                            }
                        } else {
                            childViewHolder = RecyclerView.getChildViewHolderInt(view2);
                            childHelper = recyclerView2.mChildHelper;
                            bucket = childHelper.f19142b;
                            iIndexOfChild = RecyclerView.this.indexOfChild(view2);
                            if (iIndexOfChild >= 0) {
                                az.m(view2, "view is not a child, cannot hide ");
                                return null;
                            }
                            if (bucket.d(iIndexOfChild)) {
                                x1.n(view2, "trying to unhide a view that was not hidden");
                                return null;
                            }
                            bucket.a(iIndexOfChild);
                            childHelper.e(view2);
                            ChildHelper childHelper4 = recyclerView2.mChildHelper;
                            bucket2 = childHelper4.f19142b;
                            iIndexOfChild2 = RecyclerView.this.indexOfChild(view2);
                            if (iIndexOfChild2 == -1) {
                                iB = -1;
                            } else {
                                iB = iIndexOfChild2 - bucket2.b(iIndexOfChild2);
                            }
                            if (iB != -1) {
                                StringBuilder sb6 = new StringBuilder("layout index should not be -1 after unhiding a view:");
                                sb6.append(childViewHolder);
                                md.k(cj.g(recyclerView2, sb6));
                                return null;
                            }
                            ChildHelper childHelper5 = recyclerView2.mChildHelper;
                            iD = childHelper5.d(iB);
                            childHelper5.f19142b.f(iD);
                            recyclerView = RecyclerView.this;
                            childAt = recyclerView.getChildAt(iD);
                            if (childAt != null) {
                                childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
                                if (childViewHolderInt != null) {
                                    if (!childViewHolderInt.isTmpDetached()) {
                                    }
                                    if (RecyclerView.sVerboseLoggingEnabled) {
                                        childViewHolderInt.toString();
                                    }
                                    childViewHolderInt.addFlags(256);
                                }
                            } else if (RecyclerView.sDebugAssertionsEnabled) {
                                StringBuilder sb7 = new StringBuilder("No view at offset ");
                                sb7.append(iD);
                                md.n(cj.g(recyclerView, sb7));
                                return null;
                            }
                            recyclerView.detachViewFromParent(iD);
                            l(view2);
                            childViewHolder.addFlags(8224);
                            break;
                        }
                        if (childViewHolder != null) {
                            if (!childViewHolder.isRemoved()) {
                                i11 = childViewHolder.mPosition;
                                if (i11 >= 0) {
                                }
                                StringBuilder sb8 = new StringBuilder("Inconsistency detected. Invalid view holder adapter position");
                                sb8.append(childViewHolder);
                                az.v(cj.g(recyclerView2, sb8));
                                return null;
                            }
                            if (!RecyclerView.sDebugAssertionsEnabled) {
                            }
                            z2 = recyclerView2.mState.g;
                            if (z2) {
                                childViewHolder.addFlags(4);
                                if (childViewHolder.isScrap()) {
                                    recyclerView2.removeDetachedView(childViewHolder.itemView, false);
                                    childViewHolder.unScrap();
                                } else if (childViewHolder.wasReturnedFromScrap()) {
                                    childViewHolder.clearReturnedFromScrapFlag();
                                }
                                k(childViewHolder);
                                childViewHolder = null;
                            } else {
                                i3 = 1;
                            }
                        }
                    }
                    childViewHolder = viewHolder2;
                    if (childViewHolder != null) {
                        if (!childViewHolder.isRemoved()) {
                            i11 = childViewHolder.mPosition;
                            if (i11 >= 0) {
                            }
                            StringBuilder sb9 = new StringBuilder("Inconsistency detected. Invalid view holder adapter position");
                            sb9.append(childViewHolder);
                            az.v(cj.g(recyclerView2, sb9));
                            return null;
                        }
                        if (!RecyclerView.sDebugAssertionsEnabled) {
                        }
                        z2 = recyclerView2.mState.g;
                        if (z2) {
                            childViewHolder.addFlags(4);
                            if (childViewHolder.isScrap()) {
                                recyclerView2.removeDetachedView(childViewHolder.itemView, false);
                                childViewHolder.unScrap();
                            } else if (childViewHolder.wasReturnedFromScrap()) {
                                childViewHolder.clearReturnedFromScrapFlag();
                            }
                            k(childViewHolder);
                            childViewHolder = null;
                        } else {
                            i3 = 1;
                        }
                    }
                }
            }
            if (childViewHolder == null) {
                j3 = 3;
                iF = recyclerView2.mAdapterHelper.f(i2, 0);
                if (iF >= 0) {
                }
                StringBuilder sbP3 = fc.p(i2, iF, "Inconsistency detected. Invalid item position ", "(offset:", ").state:");
                sbP3.append(recyclerView2.mState.b());
                sbP3.append(recyclerView2.exceptionLabel());
                throw new IndexOutOfBoundsException(sbP3.toString());
            }
            i4 = 1;
            j3 = 3;
            j4 = 4;
            j5 = 0;
            if (i3 != 0) {
                childViewHolder.setFlags(0, 8192);
                if (recyclerView2.mState.f19318j) {
                    ItemAnimator.e(childViewHolder);
                    ItemAnimator itemAnimator2 = recyclerView2.mItemAnimator;
                    childViewHolder.getUnmodifiedPayloads();
                    itemAnimator2.getClass();
                    ItemAnimator.ItemHolderInfo itemHolderInfo2 = new ItemAnimator.ItemHolderInfo();
                    View view5 = childViewHolder.itemView;
                    itemHolderInfo2.f19267a = view5.getLeft();
                    itemHolderInfo2.f19268b = view5.getTop();
                    view5.getRight();
                    view5.getBottom();
                    recyclerView2.recordAnimationInfoIfBouncedHiddenView(childViewHolder, itemHolderInfo2);
                }
            }
            if (recyclerView2.mState.g) {
                if (childViewHolder.isBound()) {
                    if (!RecyclerView.sDebugAssertionsEnabled) {
                    }
                    int iF4 = recyclerView2.mAdapterHelper.f(i2, 0);
                    childViewHolder.mBindingAdapter = null;
                    childViewHolder.mOwnerRecyclerView = recyclerView2;
                    itemViewType = childViewHolder.getItemViewType();
                    long nanoTime5 = recyclerView2.getNanoTime();
                    if (j2 != RecyclerView.FOREVER_NS) {
                        j7 = this.g.a(itemViewType).d;
                        if (j7 != j5) {
                        }
                    }
                    if (childViewHolder.isTmpDetached()) {
                        recyclerView2.attachViewToParent(childViewHolder.itemView, recyclerView2.getChildCount(), childViewHolder.itemView.getLayoutParams());
                        i5 = i4;
                    } else {
                        i5 = 0;
                    }
                    recyclerView2.mAdapter.bindViewHolder(childViewHolder, iF4);
                    if (i5 != 0) {
                        recyclerView2.detachViewFromParent(childViewHolder.itemView);
                    }
                    nanoTime = recyclerView2.getNanoTime() - nanoTime5;
                    RecycledViewPool.ScrapData scrapDataA3 = this.g.a(childViewHolder.getItemViewType());
                    j6 = scrapDataA3.d;
                    if (j6 != j5) {
                        nanoTime = (nanoTime / j4) + ((j6 / j4) * j3);
                    }
                    scrapDataA3.d = nanoTime;
                    if (recyclerView2.isAccessibilityEnabled()) {
                        view = childViewHolder.itemView;
                        if (view.getImportantForAccessibility() == 0) {
                            i6 = i4;
                            view.setImportantForAccessibility(i6);
                        } else {
                            i6 = i4;
                        }
                        recyclerViewAccessibilityDelegate = recyclerView2.mAccessibilityDelegate;
                        if (recyclerViewAccessibilityDelegate != null) {
                            itemDelegate = recyclerViewAccessibilityDelegate.f19321f;
                            if (itemDelegate != null) {
                                itemDelegate.f19323f.put(view, accessibilityDelegateCompatE);
                            }
                            ViewCompat.t(view, itemDelegate);
                        }
                    } else {
                        i6 = i4;
                    }
                    if (recyclerView2.mState.g) {
                        childViewHolder.mPreLayoutPosition = i2;
                    }
                    i7 = i6;
                } else {
                    if (!RecyclerView.sDebugAssertionsEnabled) {
                    }
                    int iF5 = recyclerView2.mAdapterHelper.f(i2, 0);
                    childViewHolder.mBindingAdapter = null;
                    childViewHolder.mOwnerRecyclerView = recyclerView2;
                    itemViewType = childViewHolder.getItemViewType();
                    long nanoTime6 = recyclerView2.getNanoTime();
                    if (j2 != RecyclerView.FOREVER_NS) {
                        j7 = this.g.a(itemViewType).d;
                        if (j7 != j5) {
                        }
                    }
                    if (childViewHolder.isTmpDetached()) {
                        recyclerView2.attachViewToParent(childViewHolder.itemView, recyclerView2.getChildCount(), childViewHolder.itemView.getLayoutParams());
                        i5 = i4;
                    } else {
                        i5 = 0;
                    }
                    recyclerView2.mAdapter.bindViewHolder(childViewHolder, iF5);
                    if (i5 != 0) {
                        recyclerView2.detachViewFromParent(childViewHolder.itemView);
                    }
                    nanoTime = recyclerView2.getNanoTime() - nanoTime6;
                    RecycledViewPool.ScrapData scrapDataA4 = this.g.a(childViewHolder.getItemViewType());
                    j6 = scrapDataA4.d;
                    if (j6 != j5) {
                        nanoTime = (nanoTime / j4) + ((j6 / j4) * j3);
                    }
                    scrapDataA4.d = nanoTime;
                    if (recyclerView2.isAccessibilityEnabled()) {
                        view = childViewHolder.itemView;
                        if (view.getImportantForAccessibility() == 0) {
                            i6 = i4;
                            view.setImportantForAccessibility(i6);
                        } else {
                            i6 = i4;
                        }
                        recyclerViewAccessibilityDelegate = recyclerView2.mAccessibilityDelegate;
                        if (recyclerViewAccessibilityDelegate != null) {
                            itemDelegate = recyclerViewAccessibilityDelegate.f19321f;
                            if (itemDelegate != null) {
                                itemDelegate.f19323f.put(view, accessibilityDelegateCompatE);
                            }
                            ViewCompat.t(view, itemDelegate);
                        }
                    } else {
                        i6 = i4;
                    }
                    if (recyclerView2.mState.g) {
                        childViewHolder.mPreLayoutPosition = i2;
                    }
                    i7 = i6;
                }
            } else if (childViewHolder.isBound()) {
                if (!RecyclerView.sDebugAssertionsEnabled) {
                }
                int iF6 = recyclerView2.mAdapterHelper.f(i2, 0);
                childViewHolder.mBindingAdapter = null;
                childViewHolder.mOwnerRecyclerView = recyclerView2;
                itemViewType = childViewHolder.getItemViewType();
                long nanoTime7 = recyclerView2.getNanoTime();
                if (j2 != RecyclerView.FOREVER_NS) {
                    j7 = this.g.a(itemViewType).d;
                    if (j7 != j5) {
                    }
                }
                if (childViewHolder.isTmpDetached()) {
                    recyclerView2.attachViewToParent(childViewHolder.itemView, recyclerView2.getChildCount(), childViewHolder.itemView.getLayoutParams());
                    i5 = i4;
                } else {
                    i5 = 0;
                }
                recyclerView2.mAdapter.bindViewHolder(childViewHolder, iF6);
                if (i5 != 0) {
                    recyclerView2.detachViewFromParent(childViewHolder.itemView);
                }
                nanoTime = recyclerView2.getNanoTime() - nanoTime7;
                RecycledViewPool.ScrapData scrapDataA5 = this.g.a(childViewHolder.getItemViewType());
                j6 = scrapDataA5.d;
                if (j6 != j5) {
                    nanoTime = (nanoTime / j4) + ((j6 / j4) * j3);
                }
                scrapDataA5.d = nanoTime;
                if (recyclerView2.isAccessibilityEnabled()) {
                    view = childViewHolder.itemView;
                    if (view.getImportantForAccessibility() == 0) {
                        i6 = i4;
                        view.setImportantForAccessibility(i6);
                    } else {
                        i6 = i4;
                    }
                    recyclerViewAccessibilityDelegate = recyclerView2.mAccessibilityDelegate;
                    if (recyclerViewAccessibilityDelegate != null) {
                        itemDelegate = recyclerViewAccessibilityDelegate.f19321f;
                        if (itemDelegate != null) {
                            itemDelegate.f19323f.put(view, accessibilityDelegateCompatE);
                        }
                        ViewCompat.t(view, itemDelegate);
                    }
                } else {
                    i6 = i4;
                }
                if (recyclerView2.mState.g) {
                    childViewHolder.mPreLayoutPosition = i2;
                }
                i7 = i6;
            } else {
                if (!RecyclerView.sDebugAssertionsEnabled) {
                }
                int iF7 = recyclerView2.mAdapterHelper.f(i2, 0);
                childViewHolder.mBindingAdapter = null;
                childViewHolder.mOwnerRecyclerView = recyclerView2;
                itemViewType = childViewHolder.getItemViewType();
                long nanoTime8 = recyclerView2.getNanoTime();
                if (j2 != RecyclerView.FOREVER_NS) {
                    j7 = this.g.a(itemViewType).d;
                    if (j7 != j5) {
                    }
                }
                if (childViewHolder.isTmpDetached()) {
                    recyclerView2.attachViewToParent(childViewHolder.itemView, recyclerView2.getChildCount(), childViewHolder.itemView.getLayoutParams());
                    i5 = i4;
                } else {
                    i5 = 0;
                }
                recyclerView2.mAdapter.bindViewHolder(childViewHolder, iF7);
                if (i5 != 0) {
                    recyclerView2.detachViewFromParent(childViewHolder.itemView);
                }
                nanoTime = recyclerView2.getNanoTime() - nanoTime8;
                RecycledViewPool.ScrapData scrapDataA6 = this.g.a(childViewHolder.getItemViewType());
                j6 = scrapDataA6.d;
                if (j6 != j5) {
                    nanoTime = (nanoTime / j4) + ((j6 / j4) * j3);
                }
                scrapDataA6.d = nanoTime;
                if (recyclerView2.isAccessibilityEnabled()) {
                    view = childViewHolder.itemView;
                    if (view.getImportantForAccessibility() == 0) {
                        i6 = i4;
                        view.setImportantForAccessibility(i6);
                    } else {
                        i6 = i4;
                    }
                    recyclerViewAccessibilityDelegate = recyclerView2.mAccessibilityDelegate;
                    if (recyclerViewAccessibilityDelegate != null) {
                        itemDelegate = recyclerViewAccessibilityDelegate.f19321f;
                        if (itemDelegate != null) {
                            itemDelegate.f19323f.put(view, accessibilityDelegateCompatE);
                        }
                        ViewCompat.t(view, itemDelegate);
                    }
                } else {
                    i6 = i4;
                }
                if (recyclerView2.mState.g) {
                    childViewHolder.mPreLayoutPosition = i2;
                }
                i7 = i6;
            }
            layoutParams = childViewHolder.itemView.getLayoutParams();
            if (layoutParams == null) {
                layoutParams2 = (LayoutParams) recyclerView2.generateDefaultLayoutParams();
                childViewHolder.itemView.setLayoutParams(layoutParams2);
            } else if (recyclerView2.checkLayoutParams(layoutParams)) {
                layoutParams2 = (LayoutParams) recyclerView2.generateLayoutParams(layoutParams);
                childViewHolder.itemView.setLayoutParams(layoutParams2);
            } else {
                layoutParams2 = (LayoutParams) layoutParams;
            }
            layoutParams2.f19284a = childViewHolder;
            if (i3 != 0) {
                z = 0;
            } else {
                z = 0;
            }
            layoutParams2.d = z;
            return childViewHolder;
        }

        public final void n(ViewHolder viewHolder) {
            if (viewHolder.mInChangeScrap) {
                this.f19294b.remove(viewHolder);
            } else {
                this.f19293a.remove(viewHolder);
            }
            viewHolder.mScrapContainer = null;
            viewHolder.mInChangeScrap = false;
            viewHolder.clearReturnedFromScrapFlag();
        }

        public final void o() {
            LayoutManager layoutManager = RecyclerView.this.mLayout;
            this.f19297f = this.f19296e + (layoutManager != null ? layoutManager.f19277j : 0);
            ArrayList arrayList = this.f19295c;
            for (int size = arrayList.size() - 1; size >= 0 && arrayList.size() > this.f19297f; size--) {
                i(size);
            }
        }
    }

    public interface RecyclerListener {
        void a();
    }

    public class RecyclerViewDataObserver extends AdapterDataObserver {
        public RecyclerViewDataObserver() {
        }

        public final void a() {
            RecyclerView recyclerView = RecyclerView.this;
            if (!recyclerView.mHasFixedSize || !recyclerView.mIsAttached) {
                recyclerView.mAdapterUpdateDuringMeasure = true;
                recyclerView.requestLayout();
            } else {
                Runnable runnable = recyclerView.mUpdateChildViewsRunnable;
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                recyclerView.postOnAnimation(runnable);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onChanged() {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.assertNotInLayoutOrScroll(null);
            recyclerView.mState.f19315f = true;
            recyclerView.processDataSetCompletelyChanged(true);
            if (recyclerView.mAdapterHelper.g()) {
                return;
            }
            recyclerView.requestLayout();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i2, int i3, Object obj) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.assertNotInLayoutOrScroll(null);
            AdapterHelper adapterHelper = recyclerView.mAdapterHelper;
            ArrayList arrayList = adapterHelper.f19134b;
            if (i3 < 1) {
                return;
            }
            arrayList.add(adapterHelper.h(4, i2, i3, obj));
            adapterHelper.f19137f |= 4;
            if (arrayList.size() == 1) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeInserted(int i2, int i3) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.assertNotInLayoutOrScroll(null);
            AdapterHelper adapterHelper = recyclerView.mAdapterHelper;
            ArrayList arrayList = adapterHelper.f19134b;
            if (i3 < 1) {
                return;
            }
            arrayList.add(adapterHelper.h(1, i2, i3, null));
            adapterHelper.f19137f |= 1;
            if (arrayList.size() == 1) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeMoved(int i2, int i3, int i4) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.assertNotInLayoutOrScroll(null);
            AdapterHelper adapterHelper = recyclerView.mAdapterHelper;
            ArrayList arrayList = adapterHelper.f19134b;
            if (i2 == i3) {
                return;
            }
            if (i4 != 1) {
                md.n("Moving more than 1 item is not supported yet");
                return;
            }
            arrayList.add(adapterHelper.h(8, i2, i3, null));
            adapterHelper.f19137f |= 8;
            if (arrayList.size() == 1) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeRemoved(int i2, int i3) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.assertNotInLayoutOrScroll(null);
            AdapterHelper adapterHelper = recyclerView.mAdapterHelper;
            ArrayList arrayList = adapterHelper.f19134b;
            if (i3 < 1) {
                return;
            }
            arrayList.add(adapterHelper.h(2, i2, i3, null));
            adapterHelper.f19137f |= 2;
            if (arrayList.size() == 1) {
                a();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onStateRestorationPolicyChanged() {
            Adapter adapter;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mPendingSavedState == null || (adapter = recyclerView.mAdapter) == null || !adapter.canRestoreState()) {
                return;
            }
            recyclerView.requestLayout();
        }
    }

    public static class State {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f19311a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f19312b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f19313c = 0;
        public int d = 1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f19314e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f19315f = false;
        public boolean g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f19316h = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f19317i = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f19318j = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f19319k = false;
        public int l;
        public long m;
        public int n;

        public final void a(int i2) {
            if ((this.d & i2) != 0) {
                return;
            }
            no0.q("Layout state should be one of ", Integer.toBinaryString(i2), " but it is ", Integer.toBinaryString(this.d));
        }

        public final int b() {
            return this.g ? this.f19312b - this.f19313c : this.f19314e;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("State{mTargetPosition=");
            sb.append(this.f19311a);
            sb.append(", mData=null, mItemCount=");
            sb.append(this.f19314e);
            sb.append(", mIsMeasuring=");
            sb.append(this.f19317i);
            sb.append(", mPreviousLayoutItemCount=");
            sb.append(this.f19312b);
            sb.append(", mDeletedInvisibleItemCountSincePreviousLayout=");
            sb.append(this.f19313c);
            sb.append(", mStructureChanged=");
            sb.append(this.f19315f);
            sb.append(", mInPreLayout=");
            sb.append(this.g);
            sb.append(", mRunSimpleAnimations=");
            sb.append(this.f19318j);
            sb.append(", mRunPredictiveAnimations=");
            return d21.q(sb, this.f19319k, '}');
        }
    }

    public static class StretchEdgeEffectFactory extends EdgeEffectFactory {
        @Override // androidx.recyclerview.widget.RecyclerView.EdgeEffectFactory
        public final EdgeEffect a(RecyclerView recyclerView) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    public static abstract class ViewCacheExtension {
        public abstract View a();
    }

    public class ViewFlinger implements Runnable {
        private boolean mEatRunOnAnimationRequest;
        Interpolator mInterpolator;
        private int mLastFlingX;
        private int mLastFlingY;
        OverScroller mOverScroller;
        private boolean mReSchedulePostAnimationCallback;

        public ViewFlinger() {
            Interpolator interpolator = RecyclerView.sQuinticInterpolator;
            this.mInterpolator = interpolator;
            this.mEatRunOnAnimationRequest = false;
            this.mReSchedulePostAnimationCallback = false;
            this.mOverScroller = new OverScroller(RecyclerView.this.getContext(), interpolator);
        }

        private int computeScrollDuration(int i2, int i3) {
            int iAbs = Math.abs(i2);
            int iAbs2 = Math.abs(i3);
            boolean z = iAbs > iAbs2;
            RecyclerView recyclerView = RecyclerView.this;
            int width = z ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z) {
                iAbs = iAbs2;
            }
            return Math.min((int) (((iAbs / width) + 1.0f) * 300.0f), 2000);
        }

        private void internalPostOnAnimation() {
            RecyclerView.this.removeCallbacks(this);
            RecyclerView recyclerView = RecyclerView.this;
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            recyclerView.postOnAnimation(this);
        }

        public void fling(int i2, int i3) {
            RecyclerView.this.setScrollState(2);
            this.mLastFlingY = 0;
            this.mLastFlingX = 0;
            Interpolator interpolator = this.mInterpolator;
            Interpolator interpolator2 = RecyclerView.sQuinticInterpolator;
            if (interpolator != interpolator2) {
                this.mInterpolator = interpolator2;
                this.mOverScroller = new OverScroller(RecyclerView.this.getContext(), interpolator2);
            }
            this.mOverScroller.fling(0, 0, i2, i3, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            postOnAnimation();
        }

        public void postOnAnimation() {
            if (this.mEatRunOnAnimationRequest) {
                this.mReSchedulePostAnimationCallback = true;
            } else {
                internalPostOnAnimation();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            int i2;
            int i3;
            int i4;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.mLayout == null) {
                stop();
                return;
            }
            this.mReSchedulePostAnimationCallback = false;
            this.mEatRunOnAnimationRequest = true;
            recyclerView.consumePendingUpdateOperations();
            OverScroller overScroller = this.mOverScroller;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i5 = currX - this.mLastFlingX;
                int i6 = currY - this.mLastFlingY;
                this.mLastFlingX = currX;
                this.mLastFlingY = currY;
                int iConsumeFlingInHorizontalStretch = RecyclerView.this.consumeFlingInHorizontalStretch(i5);
                int iConsumeFlingInVerticalStretch = RecyclerView.this.consumeFlingInVerticalStretch(i6);
                RecyclerView recyclerView2 = RecyclerView.this;
                int[] iArr = recyclerView2.mReusableIntPair;
                iArr[0] = 0;
                iArr[1] = 0;
                if (recyclerView2.dispatchNestedPreScroll(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch, iArr, null, 1)) {
                    int[] iArr2 = RecyclerView.this.mReusableIntPair;
                    iConsumeFlingInHorizontalStretch -= iArr2[0];
                    iConsumeFlingInVerticalStretch -= iArr2[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.considerReleasingGlowsOnScroll(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch);
                }
                RecyclerView recyclerView3 = RecyclerView.this;
                if (recyclerView3.mAdapter != null) {
                    int[] iArr3 = recyclerView3.mReusableIntPair;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    recyclerView3.scrollStep(iConsumeFlingInHorizontalStretch, iConsumeFlingInVerticalStretch, iArr3);
                    RecyclerView recyclerView4 = RecyclerView.this;
                    int[] iArr4 = recyclerView4.mReusableIntPair;
                    int i7 = iArr4[0];
                    int i8 = iArr4[1];
                    iConsumeFlingInHorizontalStretch -= i7;
                    iConsumeFlingInVerticalStretch -= i8;
                    SmoothScroller smoothScroller = recyclerView4.mLayout.f19273e;
                    if (smoothScroller != null && !smoothScroller.d && smoothScroller.f19304e) {
                        int iB = recyclerView4.mState.b();
                        if (iB == 0) {
                            smoothScroller.f();
                        } else if (smoothScroller.f19301a >= iB) {
                            smoothScroller.f19301a = iB - 1;
                            smoothScroller.b(i7, i8);
                        } else {
                            smoothScroller.b(i7, i8);
                        }
                    }
                    i3 = i8;
                    i2 = i7;
                } else {
                    i2 = 0;
                    i3 = 0;
                }
                int i9 = iConsumeFlingInHorizontalStretch;
                int i10 = iConsumeFlingInVerticalStretch;
                if (!RecyclerView.this.mItemDecorations.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView recyclerView5 = RecyclerView.this;
                int[] iArr5 = recyclerView5.mReusableIntPair;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.dispatchNestedScroll(i2, i3, i9, i10, null, 1, iArr5);
                RecyclerView recyclerView6 = RecyclerView.this;
                int[] iArr6 = recyclerView6.mReusableIntPair;
                int i11 = i9 - iArr6[0];
                int i12 = i10 - iArr6[1];
                if (i2 != 0 || i3 != 0) {
                    recyclerView6.dispatchOnScrolled(i2, i3);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i11 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i12 != 0));
                RecyclerView recyclerView7 = RecyclerView.this;
                SmoothScroller smoothScroller2 = recyclerView7.mLayout.f19273e;
                if ((smoothScroller2 == null || !smoothScroller2.d) && z) {
                    if (recyclerView7.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        if (i11 < 0) {
                            i4 = -currVelocity;
                        } else {
                            i4 = i11 > 0 ? currVelocity : 0;
                        }
                        if (i12 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i12 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView.this.absorbGlows(i4, currVelocity);
                    }
                    if (RecyclerView.ALLOW_THREAD_GAP_WORK) {
                        GapWorker.LayoutPrefetchRegistryImpl layoutPrefetchRegistryImpl = RecyclerView.this.mPrefetchRegistry;
                        int[] iArr7 = layoutPrefetchRegistryImpl.f19192c;
                        if (iArr7 != null) {
                            Arrays.fill(iArr7, -1);
                        }
                        layoutPrefetchRegistryImpl.d = 0;
                    }
                } else {
                    postOnAnimation();
                    RecyclerView recyclerView8 = RecyclerView.this;
                    GapWorker gapWorker = recyclerView8.mGapWorker;
                    if (gapWorker != null) {
                        gapWorker.postFromTraversal(recyclerView8, i2, i3);
                    }
                }
                if (Build.VERSION.SDK_INT >= 35) {
                    Api35Impl.a(RecyclerView.this, Math.abs(overScroller.getCurrVelocity()));
                }
            }
            SmoothScroller smoothScroller3 = RecyclerView.this.mLayout.f19273e;
            if (smoothScroller3 != null && smoothScroller3.d) {
                smoothScroller3.b(0, 0);
            }
            this.mEatRunOnAnimationRequest = false;
            if (this.mReSchedulePostAnimationCallback) {
                internalPostOnAnimation();
            } else {
                RecyclerView.this.setScrollState(0);
                RecyclerView.this.stopNestedScroll(1);
            }
        }

        public void smoothScrollBy(int i2, int i3, int i4, Interpolator interpolator) {
            if (i4 == Integer.MIN_VALUE) {
                i4 = computeScrollDuration(i2, i3);
            }
            int i5 = i4;
            if (interpolator == null) {
                interpolator = RecyclerView.sQuinticInterpolator;
            }
            if (this.mInterpolator != interpolator) {
                this.mInterpolator = interpolator;
                this.mOverScroller = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            this.mLastFlingY = 0;
            this.mLastFlingX = 0;
            RecyclerView.this.setScrollState(2);
            this.mOverScroller.startScroll(0, 0, i2, i3, i5);
            postOnAnimation();
        }

        public void stop() {
            RecyclerView.this.removeCallbacks(this);
            this.mOverScroller.abortAnimation();
        }
    }

    public static abstract class ViewHolder {
        static final int FLAG_ADAPTER_FULLUPDATE = 1024;
        static final int FLAG_ADAPTER_POSITION_UNKNOWN = 512;
        static final int FLAG_APPEARED_IN_PRE_LAYOUT = 4096;
        static final int FLAG_BOUNCED_FROM_HIDDEN_LIST = 8192;
        static final int FLAG_BOUND = 1;
        static final int FLAG_IGNORE = 128;
        static final int FLAG_INVALID = 4;
        static final int FLAG_MOVED = 2048;
        static final int FLAG_NOT_RECYCLABLE = 16;
        static final int FLAG_REMOVED = 8;
        static final int FLAG_RETURNED_FROM_SCRAP = 32;
        static final int FLAG_TMP_DETACHED = 256;
        static final int FLAG_UPDATE = 2;
        private static final List<Object> FULLUPDATE_PAYLOADS = Collections.EMPTY_LIST;
        static final int PENDING_ACCESSIBILITY_STATE_NOT_SET = -1;
        public final View itemView;
        Adapter<? extends ViewHolder> mBindingAdapter;
        int mFlags;
        WeakReference<RecyclerView> mNestedRecyclerView;
        RecyclerView mOwnerRecyclerView;
        int mPosition = -1;
        int mOldPosition = -1;
        long mItemId = -1;
        int mItemViewType = -1;
        int mPreLayoutPosition = -1;
        ViewHolder mShadowedHolder = null;
        ViewHolder mShadowingHolder = null;
        List<Object> mPayloads = null;
        List<Object> mUnmodifiedPayloads = null;
        private int mIsRecyclableCount = 0;
        Recycler mScrapContainer = null;
        boolean mInChangeScrap = false;
        private int mWasImportantForAccessibilityBeforeHidden = 0;
        int mPendingAccessibilityState = -1;

        public ViewHolder(View view) {
            if (view != null) {
                this.itemView = view;
            } else {
                md.n("itemView may not be null");
                throw null;
            }
        }

        public void addChangePayload(Object obj) {
            if (obj == null) {
                addFlags(1024);
                return;
            }
            if ((1024 & this.mFlags) == 0) {
                if (this.mPayloads == null) {
                    ArrayList arrayList = new ArrayList();
                    this.mPayloads = arrayList;
                    this.mUnmodifiedPayloads = Collections.unmodifiableList(arrayList);
                }
                this.mPayloads.add(obj);
            }
        }

        public void addFlags(int i2) {
            this.mFlags = i2 | this.mFlags;
        }

        public void clearOldPosition() {
            this.mOldPosition = -1;
            this.mPreLayoutPosition = -1;
        }

        public void clearPayload() {
            List<Object> list = this.mPayloads;
            if (list != null) {
                list.clear();
            }
            this.mFlags &= -1025;
        }

        public void clearReturnedFromScrapFlag() {
            this.mFlags &= -33;
        }

        public void clearTmpDetachFlag() {
            this.mFlags &= -257;
        }

        public boolean doesTransientStatePreventRecycling() {
            if ((this.mFlags & 16) != 0) {
                return false;
            }
            View view = this.itemView;
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            return view.hasTransientState();
        }

        public void flagRemovedAndOffsetPosition(int i2, int i3, boolean z) {
            addFlags(8);
            offsetPosition(i3, z);
            this.mPosition = i2;
        }

        public final int getAbsoluteAdapterPosition() {
            RecyclerView recyclerView = this.mOwnerRecyclerView;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.getAdapterPositionInRecyclerView(this);
        }

        @Deprecated
        public final int getAdapterPosition() {
            return getBindingAdapterPosition();
        }

        public final Adapter<? extends ViewHolder> getBindingAdapter() {
            return this.mBindingAdapter;
        }

        public final int getBindingAdapterPosition() {
            RecyclerView recyclerView;
            Adapter adapter;
            int adapterPositionInRecyclerView;
            if (this.mBindingAdapter == null || (recyclerView = this.mOwnerRecyclerView) == null || (adapter = recyclerView.getAdapter()) == null || (adapterPositionInRecyclerView = this.mOwnerRecyclerView.getAdapterPositionInRecyclerView(this)) == -1) {
                return -1;
            }
            return adapter.findRelativeAdapterPositionIn(this.mBindingAdapter, this, adapterPositionInRecyclerView);
        }

        public final long getItemId() {
            return this.mItemId;
        }

        public final int getItemViewType() {
            return this.mItemViewType;
        }

        public final int getLayoutPosition() {
            int i2 = this.mPreLayoutPosition;
            return i2 == -1 ? this.mPosition : i2;
        }

        public final int getOldPosition() {
            return this.mOldPosition;
        }

        @Deprecated
        public final int getPosition() {
            int i2 = this.mPreLayoutPosition;
            return i2 == -1 ? this.mPosition : i2;
        }

        public List<Object> getUnmodifiedPayloads() {
            if ((this.mFlags & 1024) != 0) {
                return FULLUPDATE_PAYLOADS;
            }
            List<Object> list = this.mPayloads;
            return (list == null || list.size() == 0) ? FULLUPDATE_PAYLOADS : this.mUnmodifiedPayloads;
        }

        public boolean hasAnyOfTheFlags(int i2) {
            return (this.mFlags & i2) != 0;
        }

        public boolean isAdapterPositionUnknown() {
            return (this.mFlags & 512) != 0 || isInvalid();
        }

        public boolean isAttachedToTransitionOverlay() {
            return (this.itemView.getParent() == null || this.itemView.getParent() == this.mOwnerRecyclerView) ? false : true;
        }

        public boolean isBound() {
            return (this.mFlags & 1) != 0;
        }

        public boolean isInvalid() {
            return (this.mFlags & 4) != 0;
        }

        public final boolean isRecyclable() {
            if ((this.mFlags & 16) != 0) {
                return false;
            }
            View view = this.itemView;
            WeakHashMap weakHashMap = ViewCompat.f12200a;
            return !view.hasTransientState();
        }

        public boolean isRemoved() {
            return (this.mFlags & 8) != 0;
        }

        public boolean isScrap() {
            return this.mScrapContainer != null;
        }

        public boolean isTmpDetached() {
            return (this.mFlags & 256) != 0;
        }

        public boolean isUpdated() {
            return (this.mFlags & 2) != 0;
        }

        public boolean needsUpdate() {
            return (this.mFlags & 2) != 0;
        }

        public void offsetPosition(int i2, boolean z) {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
            if (this.mPreLayoutPosition == -1) {
                this.mPreLayoutPosition = this.mPosition;
            }
            if (z) {
                this.mPreLayoutPosition += i2;
            }
            this.mPosition += i2;
            if (this.itemView.getLayoutParams() != null) {
                ((LayoutParams) this.itemView.getLayoutParams()).f19286c = true;
            }
        }

        public void onEnteredHiddenState(RecyclerView recyclerView) {
            int i2 = this.mPendingAccessibilityState;
            if (i2 != -1) {
                this.mWasImportantForAccessibilityBeforeHidden = i2;
            } else {
                this.mWasImportantForAccessibilityBeforeHidden = this.itemView.getImportantForAccessibility();
            }
            recyclerView.setChildImportantForAccessibilityInternal(this, 4);
        }

        public void onLeftHiddenState(RecyclerView recyclerView) {
            recyclerView.setChildImportantForAccessibilityInternal(this, this.mWasImportantForAccessibilityBeforeHidden);
            this.mWasImportantForAccessibilityBeforeHidden = 0;
        }

        public void resetInternal() {
            if (RecyclerView.sDebugAssertionsEnabled && isTmpDetached()) {
                mt.j("Attempting to reset temp-detached ViewHolder: ", this, ". ViewHolders should be fully detached before resetting.");
                return;
            }
            this.mFlags = 0;
            this.mPosition = -1;
            this.mOldPosition = -1;
            this.mItemId = -1L;
            this.mPreLayoutPosition = -1;
            this.mIsRecyclableCount = 0;
            this.mShadowedHolder = null;
            this.mShadowingHolder = null;
            clearPayload();
            this.mWasImportantForAccessibilityBeforeHidden = 0;
            this.mPendingAccessibilityState = -1;
            RecyclerView.clearNestedRecyclerViewIfNotNested(this);
        }

        public void saveOldPosition() {
            if (this.mOldPosition == -1) {
                this.mOldPosition = this.mPosition;
            }
        }

        public void setFlags(int i2, int i3) {
            this.mFlags = (i2 & i3) | (this.mFlags & (~i3));
        }

        public final void setIsRecyclable(boolean z) {
            int i2 = this.mIsRecyclableCount;
            int i3 = z ? i2 - 1 : i2 + 1;
            this.mIsRecyclableCount = i3;
            if (i3 < 0) {
                this.mIsRecyclableCount = 0;
                if (RecyclerView.sDebugAssertionsEnabled) {
                    x1.n(this, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for ");
                    return;
                }
                toString();
            } else if (!z && i3 == 1) {
                this.mFlags |= 16;
            } else if (z && i3 == 0) {
                this.mFlags &= -17;
            }
            if (RecyclerView.sVerboseLoggingEnabled) {
                toString();
            }
        }

        public void setScrapContainer(Recycler recycler, boolean z) {
            this.mScrapContainer = recycler;
            this.mInChangeScrap = z;
        }

        public boolean shouldBeKeptAsChild() {
            return (this.mFlags & 16) != 0;
        }

        public boolean shouldIgnore() {
            return (this.mFlags & 128) != 0;
        }

        public void stopIgnoring() {
            this.mFlags &= -129;
        }

        public String toString() {
            StringBuilder sbU = n00.u(getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName(), "{");
            sbU.append(Integer.toHexString(hashCode()));
            sbU.append(" position=");
            sbU.append(this.mPosition);
            sbU.append(" id=");
            sbU.append(this.mItemId);
            sbU.append(", oldPos=");
            sbU.append(this.mOldPosition);
            sbU.append(", pLpos:");
            sbU.append(this.mPreLayoutPosition);
            StringBuilder sb = new StringBuilder(sbU.toString());
            if (isScrap()) {
                sb.append(" scrap ");
                sb.append(this.mInChangeScrap ? "[changeScrap]" : "[attachedScrap]");
            }
            if (isInvalid()) {
                sb.append(" invalid");
            }
            if (!isBound()) {
                sb.append(" unbound");
            }
            if (needsUpdate()) {
                sb.append(" update");
            }
            if (isRemoved()) {
                sb.append(" removed");
            }
            if (shouldIgnore()) {
                sb.append(" ignored");
            }
            if (isTmpDetached()) {
                sb.append(" tmpDetached");
            }
            if (!isRecyclable()) {
                sb.append(" not recyclable(" + this.mIsRecyclableCount + ")");
            }
            if (isAdapterPositionUnknown()) {
                sb.append(" undefined adapter position");
            }
            if (this.itemView.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        public void unScrap() {
            this.mScrapContainer.n(this);
        }

        public boolean wasReturnedFromScrap() {
            return (this.mFlags & 32) != 0;
        }
    }

    static {
        Class cls = Integer.TYPE;
        LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE = new Class[]{Context.class, AttributeSet.class, cls, cls};
        sQuinticInterpolator = new AnonymousClass3();
        sDefaultEdgeEffectFactory = new StretchEdgeEffectFactory();
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i2) {
        Constructor constructor;
        Object[] objArr;
        super(context, attributeSet, i2);
        this.mObserver = new RecyclerViewDataObserver();
        this.mRecycler = new Recycler();
        this.mViewInfoStore = new ViewInfoStore();
        this.mUpdateChildViewsRunnable = new Runnable() { // from class: androidx.recyclerview.widget.RecyclerView.1
            @Override // java.lang.Runnable
            public void run() {
                RecyclerView recyclerView = RecyclerView.this;
                if (!recyclerView.mFirstLayoutComplete || recyclerView.isLayoutRequested()) {
                    return;
                }
                RecyclerView recyclerView2 = RecyclerView.this;
                if (!recyclerView2.mIsAttached) {
                    recyclerView2.requestLayout();
                } else if (recyclerView2.mLayoutSuppressed) {
                    recyclerView2.mLayoutWasDefered = true;
                } else {
                    recyclerView2.consumePendingUpdateOperations();
                }
            }
        };
        this.mTempRect = new Rect();
        this.mTempRect2 = new Rect();
        this.mTempRectF = new RectF();
        this.mRecyclerListeners = new ArrayList();
        this.mItemDecorations = new ArrayList<>();
        this.mOnItemTouchListeners = new ArrayList<>();
        this.mInterceptRequestLayoutDepth = 0;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        this.mLayoutOrScrollCounter = 0;
        this.mDispatchScrollCounter = 0;
        this.mEdgeEffectFactory = sDefaultEdgeEffectFactory;
        this.mItemAnimator = new DefaultItemAnimator();
        this.mScrollState = 0;
        this.mScrollPointerId = -1;
        this.mScaledHorizontalScrollFactor = Float.MIN_VALUE;
        this.mScaledVerticalScrollFactor = Float.MIN_VALUE;
        this.mPreserveFocusAfterLayout = true;
        this.mViewFlinger = new ViewFlinger();
        this.mPrefetchRegistry = ALLOW_THREAD_GAP_WORK ? new GapWorker.LayoutPrefetchRegistryImpl() : null;
        this.mState = new State();
        this.mItemsAddedOrRemoved = false;
        this.mItemsChanged = false;
        this.mItemAnimatorListener = new ItemAnimatorRestoreListener();
        this.mPostedAnimatorRunner = false;
        this.mMinMaxLayoutPositions = new int[2];
        this.mScrollOffset = new int[2];
        this.mNestedOffsets = new int[2];
        this.mReusableIntPair = new int[2];
        this.mPendingAccessibilityImportanceChange = new ArrayList();
        this.mItemAnimatorRunner = new Runnable() { // from class: androidx.recyclerview.widget.RecyclerView.2
            @Override // java.lang.Runnable
            public void run() {
                ItemAnimator itemAnimator = RecyclerView.this.mItemAnimator;
                if (itemAnimator != null) {
                    itemAnimator.l();
                }
                RecyclerView.this.mPostedAnimatorRunner = false;
            }
        };
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mViewInfoProcessCallback = new ViewInfoStore.ProcessCallback() { // from class: androidx.recyclerview.widget.RecyclerView.4
            @Override // androidx.recyclerview.widget.ViewInfoStore.ProcessCallback
            public final void a(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo, ItemAnimator.ItemHolderInfo itemHolderInfo2) {
                RecyclerView.this.animateAppearance(viewHolder, itemHolderInfo, itemHolderInfo2);
            }

            @Override // androidx.recyclerview.widget.ViewInfoStore.ProcessCallback
            public final void b(ViewHolder viewHolder) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.mLayout.t0(viewHolder.itemView, recyclerView.mRecycler);
            }

            @Override // androidx.recyclerview.widget.ViewInfoStore.ProcessCallback
            public final void c(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo, ItemAnimator.ItemHolderInfo itemHolderInfo2) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.mRecycler.n(viewHolder);
                recyclerView.animateDisappearance(viewHolder, itemHolderInfo, itemHolderInfo2);
            }

            @Override // androidx.recyclerview.widget.ViewInfoStore.ProcessCallback
            public final void d(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo, ItemAnimator.ItemHolderInfo itemHolderInfo2) {
                viewHolder.setIsRecyclable(false);
                RecyclerView recyclerView = RecyclerView.this;
                boolean z = recyclerView.mDataSetHasChangedAfterLayout;
                ItemAnimator itemAnimator = recyclerView.mItemAnimator;
                if (z) {
                    if (itemAnimator.b(viewHolder, viewHolder, itemHolderInfo, itemHolderInfo2)) {
                        recyclerView.postAnimationRunner();
                    }
                } else if (itemAnimator.d(viewHolder, itemHolderInfo, itemHolderInfo2)) {
                    recyclerView.postAnimationRunner();
                }
            }
        };
        DifferentialMotionFlingTarget differentialMotionFlingTarget = new DifferentialMotionFlingTarget() { // from class: androidx.recyclerview.widget.RecyclerView.5
            @Override // androidx.core.view.DifferentialMotionFlingTarget
            public final boolean a(float f2) {
                int i3;
                int i4;
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.mLayout.g()) {
                    i4 = (int) f2;
                    i3 = 0;
                } else if (recyclerView.mLayout.f()) {
                    i3 = (int) f2;
                    i4 = 0;
                } else {
                    i3 = 0;
                    i4 = 0;
                }
                if (i3 == 0 && i4 == 0) {
                    return false;
                }
                recyclerView.stopScroll();
                return recyclerView.flingNoThresholdCheck(i3, i4);
            }

            @Override // androidx.core.view.DifferentialMotionFlingTarget
            public final float b() {
                float f2;
                RecyclerView recyclerView = RecyclerView.this;
                if (recyclerView.mLayout.g()) {
                    f2 = recyclerView.mScaledVerticalScrollFactor;
                } else {
                    if (!recyclerView.mLayout.f()) {
                        return Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    }
                    f2 = recyclerView.mScaledHorizontalScrollFactor;
                }
                return -f2;
            }

            @Override // androidx.core.view.DifferentialMotionFlingTarget
            public final void c() {
                RecyclerView.this.stopScroll();
            }
        };
        this.mDifferentialMotionFlingTarget = differentialMotionFlingTarget;
        this.mDifferentialMotionFlingController = new DifferentialMotionFlingController(getContext(), differentialMotionFlingTarget);
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        this.mScaledHorizontalScrollFactor = viewConfiguration.getScaledHorizontalScrollFactor();
        this.mScaledVerticalScrollFactor = viewConfiguration.getScaledVerticalScrollFactor();
        this.mMinFlingVelocity = viewConfiguration.getScaledMinimumFlingVelocity();
        this.mMaxFlingVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mPhysicalCoef = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        setWillNotDraw(getOverScrollMode() == 2);
        this.mItemAnimator.f19262a = this.mItemAnimatorListener;
        initAdapterManager();
        this.mChildHelper = new ChildHelper(new AnonymousClass6());
        if (ViewCompat.h(this) == 0) {
            ViewCompat.w(this);
        }
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        this.mAccessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new RecyclerViewAccessibilityDelegate(this));
        int[] iArr = R$styleable.f19132a;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i2, 0);
        ViewCompat.s(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i2, 0);
        String string = typedArrayObtainStyledAttributes.getString(8);
        if (typedArrayObtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.mClipToPadding = typedArrayObtainStyledAttributes.getBoolean(1, true);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(3, false);
        this.mEnableFastScroller = z;
        if (z) {
            initFastScroller((StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(6), typedArrayObtainStyledAttributes.getDrawable(7), (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(4), typedArrayObtainStyledAttributes.getDrawable(5));
        }
        typedArrayObtainStyledAttributes.recycle();
        this.mLowResRotaryEncoderFeature = context.getPackageManager().hasSystemFeature(LOW_RES_ROTARY_ENCODER_FEATURE);
        if (string != null) {
            String strTrim = string.trim();
            if (!strTrim.isEmpty()) {
                if (strTrim.charAt(0) == '.') {
                    strTrim = context.getPackageName() + strTrim;
                } else if (!strTrim.contains(FileUtils.HIDDEN_PREFIX)) {
                    strTrim = RecyclerView.class.getPackage().getName() + JwtParser.SEPARATOR_CHAR + strTrim;
                }
                try {
                    Class<? extends U> clsAsSubclass = Class.forName(strTrim, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(LayoutManager.class);
                    try {
                        constructor = clsAsSubclass.getConstructor(LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE);
                        objArr = new Object[]{context, attributeSet, Integer.valueOf(i2), 0};
                    } catch (NoSuchMethodException e2) {
                        try {
                            constructor = clsAsSubclass.getConstructor(null);
                            objArr = null;
                        } catch (NoSuchMethodException e3) {
                            e3.initCause(e2);
                            throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + strTrim, e3);
                        }
                    }
                    constructor.setAccessible(true);
                    setLayoutManager((LayoutManager) constructor.newInstance(objArr));
                } catch (ClassCastException e4) {
                    no0.m(attributeSet.getPositionDescription(), ": Class is not a LayoutManager ", strTrim, e4);
                    throw null;
                } catch (ClassNotFoundException e5) {
                    no0.m(attributeSet.getPositionDescription(), ": Unable to find LayoutManager ", strTrim, e5);
                    throw null;
                } catch (IllegalAccessException e6) {
                    no0.m(attributeSet.getPositionDescription(), ": Cannot access non-public constructor ", strTrim, e6);
                    throw null;
                } catch (InstantiationException e7) {
                    no0.m(attributeSet.getPositionDescription(), ": Could not instantiate the LayoutManager: ", strTrim, e7);
                    throw null;
                } catch (InvocationTargetException e8) {
                    no0.m(attributeSet.getPositionDescription(), ": Could not instantiate the LayoutManager: ", strTrim, e8);
                    throw null;
                }
            }
        }
        int[] iArr2 = NESTED_SCROLLING_ATTRS;
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i2, 0);
        ViewCompat.s(this, context, iArr2, attributeSet, typedArrayObtainStyledAttributes2, i2, 0);
        boolean z2 = typedArrayObtainStyledAttributes2.getBoolean(0, true);
        typedArrayObtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z2);
        setTag(com.vuitton.android.R.id.is_pooling_container_tag, Boolean.TRUE);
    }

    public static int c(int i2, EdgeEffect edgeEffect, EdgeEffect edgeEffect2, int i3) {
        if (i2 > 0 && edgeEffect != null && EdgeEffectCompat.a(edgeEffect) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            int iRound = Math.round(EdgeEffectCompat.b(edgeEffect, ((-i2) * FLING_DESTRETCH_FACTOR) / i3, 0.5f) * ((-i3) / FLING_DESTRETCH_FACTOR));
            if (iRound != i2) {
                edgeEffect.finish();
            }
            return i2 - iRound;
        }
        if (i2 >= 0 || edgeEffect2 == null || EdgeEffectCompat.a(edgeEffect2) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return i2;
        }
        float f2 = i3;
        int iRound2 = Math.round(EdgeEffectCompat.b(edgeEffect2, (i2 * FLING_DESTRETCH_FACTOR) / f2, 0.5f) * (f2 / FLING_DESTRETCH_FACTOR));
        if (iRound2 != i2) {
            edgeEffect2.finish();
        }
        return i2 - iRound2;
    }

    public static void clearNestedRecyclerViewIfNotNested(ViewHolder viewHolder) {
        WeakReference<RecyclerView> weakReference = viewHolder.mNestedRecyclerView;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == viewHolder.itemView) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            viewHolder.mNestedRecyclerView = null;
        }
    }

    public static RecyclerView findNestedRecyclerView(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            RecyclerView recyclerViewFindNestedRecyclerView = findNestedRecyclerView(viewGroup.getChildAt(i2));
            if (recyclerViewFindNestedRecyclerView != null) {
                return recyclerViewFindNestedRecyclerView;
            }
        }
        return null;
    }

    public static ViewHolder getChildViewHolderInt(View view) {
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).f19284a;
    }

    public static void getDecoratedBoundsWithMarginsInt(View view, Rect rect) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        Rect rect2 = layoutParams.f19285b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
    }

    private NestedScrollingChildHelper getScrollingChildHelper() {
        if (this.mScrollingChildHelper == null) {
            this.mScrollingChildHelper = new NestedScrollingChildHelper(this);
        }
        return this.mScrollingChildHelper;
    }

    public static void setDebugAssertionsEnabled(boolean z) {
        sDebugAssertionsEnabled = z;
    }

    public static void setVerboseLoggingEnabled(boolean z) {
        sVerboseLoggingEnabled = z;
    }

    public void absorbGlows(int i2, int i3) {
        if (i2 < 0) {
            ensureLeftGlow();
            if (this.mLeftGlow.isFinished()) {
                this.mLeftGlow.onAbsorb(-i2);
            }
        } else if (i2 > 0) {
            ensureRightGlow();
            if (this.mRightGlow.isFinished()) {
                this.mRightGlow.onAbsorb(i2);
            }
        }
        if (i3 < 0) {
            ensureTopGlow();
            if (this.mTopGlow.isFinished()) {
                this.mTopGlow.onAbsorb(-i3);
            }
        } else if (i3 > 0) {
            ensureBottomGlow();
            if (this.mBottomGlow.isFinished()) {
                this.mBottomGlow.onAbsorb(i3);
            }
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        postInvalidateOnAnimation();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.getClass();
        }
        super.addFocusables(arrayList, i2, i3);
    }

    public void addItemDecoration(ItemDecoration itemDecoration, int i2) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.d("Cannot add item decoration during a scroll  or layout");
        }
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(false);
        }
        ArrayList<ItemDecoration> arrayList = this.mItemDecorations;
        if (i2 < 0) {
            arrayList.add(itemDecoration);
        } else {
            arrayList.add(i2, itemDecoration);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void addOnChildAttachStateChangeListener(OnChildAttachStateChangeListener onChildAttachStateChangeListener) {
        if (this.mOnChildAttachStateListeners == null) {
            this.mOnChildAttachStateListeners = new ArrayList();
        }
        this.mOnChildAttachStateListeners.add(onChildAttachStateChangeListener);
    }

    public void addOnItemTouchListener(OnItemTouchListener onItemTouchListener) {
        this.mOnItemTouchListeners.add(onItemTouchListener);
    }

    public void addOnScrollListener(OnScrollListener onScrollListener) {
        if (this.mScrollListeners == null) {
            this.mScrollListeners = new ArrayList();
        }
        this.mScrollListeners.add(onScrollListener);
    }

    public void addRecyclerListener(RecyclerListener recyclerListener) {
        Preconditions.b(recyclerListener != null, "'listener' arg cannot be null.");
        this.mRecyclerListeners.add(recyclerListener);
    }

    public void animateAppearance(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo, ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        viewHolder.setIsRecyclable(false);
        if (this.mItemAnimator.a(viewHolder, itemHolderInfo, itemHolderInfo2)) {
            postAnimationRunner();
        }
    }

    public void animateDisappearance(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo, ItemAnimator.ItemHolderInfo itemHolderInfo2) {
        b(viewHolder);
        viewHolder.setIsRecyclable(false);
        if (this.mItemAnimator.c(viewHolder, itemHolderInfo, itemHolderInfo2)) {
            postAnimationRunner();
        }
    }

    public void assertInLayoutOrScroll(String str) {
        if (isComputingLayout()) {
            return;
        }
        if (str == null) {
            md.k(cj.g(this, new StringBuilder("Cannot call this method unless RecyclerView is computing a layout or scrolling")));
        } else {
            md.k(cj.g(this, n00.t(str)));
        }
    }

    public void assertNotInLayoutOrScroll(String str) {
        if (!isComputingLayout()) {
            if (this.mDispatchScrollCounter > 0) {
                new IllegalStateException(cj.g(this, new StringBuilder("")));
            }
        } else if (str == null) {
            md.k(cj.g(this, new StringBuilder("Cannot call this method while RecyclerView is computing a layout or scrolling")));
        } else {
            md.k(str);
        }
    }

    public final void b(ViewHolder viewHolder) {
        View view = viewHolder.itemView;
        boolean z = view.getParent() == this;
        this.mRecycler.n(getChildViewHolder(view));
        boolean zIsTmpDetached = viewHolder.isTmpDetached();
        ChildHelper childHelper = this.mChildHelper;
        if (zIsTmpDetached) {
            childHelper.a(view, -1, view.getLayoutParams(), true);
            return;
        }
        if (!z) {
            RecyclerView recyclerView = RecyclerView.this;
            int childCount = recyclerView.getChildCount();
            childHelper.f19142b.e(childCount, true);
            childHelper.f19143c.add(view);
            ViewHolder childViewHolderInt = getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onEnteredHiddenState(recyclerView);
            }
            recyclerView.addView(view, childCount);
            recyclerView.dispatchChildAttached(view);
            return;
        }
        int iIndexOfChild = RecyclerView.this.indexOfChild(view);
        if (iIndexOfChild < 0) {
            az.m(view, "view is not a child, cannot hide ");
            return;
        }
        childHelper.f19142b.h(iIndexOfChild);
        childHelper.f19143c.add(view);
        AnonymousClass6 anonymousClass6 = childHelper.f19141a;
        ViewHolder childViewHolderInt2 = getChildViewHolderInt(view);
        if (childViewHolderInt2 != null) {
            childViewHolderInt2.onEnteredHiddenState(RecyclerView.this);
        }
    }

    public boolean canReuseUpdatedViewHolder(ViewHolder viewHolder) {
        ItemAnimator itemAnimator = this.mItemAnimator;
        return itemAnimator == null || itemAnimator.g(viewHolder, viewHolder.getUnmodifiedPayloads());
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && this.mLayout.h((LayoutParams) layoutParams);
    }

    public void clearOldPositions() {
        int childCount = RecyclerView.this.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(RecyclerView.this.getChildAt(i2));
            if (!childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.clearOldPosition();
            }
        }
        Recycler recycler = this.mRecycler;
        ArrayList arrayList = recycler.f19293a;
        ArrayList arrayList2 = recycler.f19295c;
        int size = arrayList2.size();
        for (int i3 = 0; i3 < size; i3++) {
            ((ViewHolder) arrayList2.get(i3)).clearOldPosition();
        }
        int size2 = arrayList.size();
        for (int i4 = 0; i4 < size2; i4++) {
            ((ViewHolder) arrayList.get(i4)).clearOldPosition();
        }
        ArrayList arrayList3 = recycler.f19294b;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i5 = 0; i5 < size3; i5++) {
                ((ViewHolder) recycler.f19294b.get(i5)).clearOldPosition();
            }
        }
    }

    public void clearOnChildAttachStateChangeListeners() {
        List<OnChildAttachStateChangeListener> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            list.clear();
        }
    }

    public void clearOnScrollListeners() {
        List<OnScrollListener> list = this.mScrollListeners;
        if (list != null) {
            list.clear();
        }
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.f()) {
            return this.mLayout.l(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.f()) {
            return this.mLayout.m(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.f()) {
            return this.mLayout.n(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.g()) {
            return this.mLayout.o(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.g()) {
            return this.mLayout.p(this.mState);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && layoutManager.g()) {
            return this.mLayout.q(this.mState);
        }
        return 0;
    }

    public void considerReleasingGlowsOnScroll(int i2, int i3) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished() || i2 <= 0) {
            zIsFinished = false;
        } else {
            this.mLeftGlow.onRelease();
            zIsFinished = this.mLeftGlow.isFinished();
        }
        EdgeEffect edgeEffect2 = this.mRightGlow;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i2 < 0) {
            this.mRightGlow.onRelease();
            zIsFinished |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i3 > 0) {
            this.mTopGlow.onRelease();
            zIsFinished |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i3 < 0) {
            this.mBottomGlow.onRelease();
            zIsFinished |= this.mBottomGlow.isFinished();
        }
        if (zIsFinished) {
            postInvalidateOnAnimation();
        }
    }

    public int consumeFlingInHorizontalStretch(int i2) {
        return c(i2, this.mLeftGlow, this.mRightGlow, getWidth());
    }

    public int consumeFlingInVerticalStretch(int i2) {
        return c(i2, this.mTopGlow, this.mBottomGlow, getHeight());
    }

    public void consumePendingUpdateOperations() {
        if (!this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout) {
            Trace.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
            dispatchLayout();
            Trace.endSection();
            return;
        }
        if (this.mAdapterHelper.g()) {
            AdapterHelper adapterHelper = this.mAdapterHelper;
            int i2 = adapterHelper.f19137f;
            if ((i2 & 4) == 0 || (i2 & 11) != 0) {
                if (adapterHelper.g()) {
                    Trace.beginSection(TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG);
                    dispatchLayout();
                    Trace.endSection();
                    return;
                }
                return;
            }
            Trace.beginSection(TRACE_HANDLE_ADAPTER_UPDATES_TAG);
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            this.mAdapterHelper.j();
            if (!this.mLayoutWasDefered) {
                int iC = this.mChildHelper.c();
                for (int i3 = 0; i3 < iC; i3++) {
                    ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.b(i3));
                    if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.isUpdated()) {
                        dispatchLayout();
                    }
                }
                this.mAdapterHelper.b();
            }
            stopInterceptRequestLayout(true);
            onExitLayoutOrScroll();
            Trace.endSection();
        }
    }

    public final void d() {
        ViewInfoStore.InfoRecord infoRecord;
        this.mState.a(1);
        fillRemainingScrollValues(this.mState);
        this.mState.f19317i = false;
        startInterceptRequestLayout();
        ViewInfoStore viewInfoStore = this.mViewInfoStore;
        viewInfoStore.f19358a.clear();
        viewInfoStore.f19359b.a();
        onEnterLayoutOrScroll();
        k();
        View focusedChild = (this.mPreserveFocusAfterLayout && hasFocus() && this.mAdapter != null) ? getFocusedChild() : null;
        ViewHolder viewHolderFindContainingViewHolder = focusedChild != null ? findContainingViewHolder(focusedChild) : null;
        State state = this.mState;
        if (viewHolderFindContainingViewHolder == null) {
            state.m = -1L;
            state.l = -1;
            state.n = -1;
        } else {
            state.m = this.mAdapter.hasStableIds() ? viewHolderFindContainingViewHolder.getItemId() : -1L;
            State state2 = this.mState;
            state2.l = this.mDataSetHasChangedAfterLayout ? -1 : viewHolderFindContainingViewHolder.isRemoved() ? viewHolderFindContainingViewHolder.mOldPosition : viewHolderFindContainingViewHolder.getAbsoluteAdapterPosition();
            State state3 = this.mState;
            View focusedChild2 = viewHolderFindContainingViewHolder.itemView;
            int id = focusedChild2.getId();
            while (!focusedChild2.isFocused() && (focusedChild2 instanceof ViewGroup) && focusedChild2.hasFocus()) {
                focusedChild2 = ((ViewGroup) focusedChild2).getFocusedChild();
                if (focusedChild2.getId() != -1) {
                    id = focusedChild2.getId();
                }
            }
            state3.n = id;
        }
        State state4 = this.mState;
        state4.f19316h = state4.f19318j && this.mItemsChanged;
        this.mItemsChanged = false;
        this.mItemsAddedOrRemoved = false;
        state4.g = state4.f19319k;
        state4.f19314e = this.mAdapter.getItemCount();
        g(this.mMinMaxLayoutPositions);
        if (this.mState.f19318j) {
            int iC = this.mChildHelper.c();
            for (int i2 = 0; i2 < iC; i2++) {
                ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.b(i2));
                if (!childViewHolderInt.shouldIgnore() && (!childViewHolderInt.isInvalid() || this.mAdapter.hasStableIds())) {
                    ItemAnimator itemAnimator = this.mItemAnimator;
                    ItemAnimator.e(childViewHolderInt);
                    childViewHolderInt.getUnmodifiedPayloads();
                    itemAnimator.getClass();
                    ItemAnimator.ItemHolderInfo itemHolderInfo = new ItemAnimator.ItemHolderInfo();
                    View view = childViewHolderInt.itemView;
                    itemHolderInfo.f19267a = view.getLeft();
                    itemHolderInfo.f19268b = view.getTop();
                    view.getRight();
                    view.getBottom();
                    SimpleArrayMap simpleArrayMap = this.mViewInfoStore.f19358a;
                    ViewInfoStore.InfoRecord infoRecordA = (ViewInfoStore.InfoRecord) simpleArrayMap.get(childViewHolderInt);
                    if (infoRecordA == null) {
                        infoRecordA = ViewInfoStore.InfoRecord.a();
                        simpleArrayMap.put(childViewHolderInt, infoRecordA);
                    }
                    infoRecordA.f19361b = itemHolderInfo;
                    infoRecordA.f19360a |= 4;
                    if (this.mState.f19316h && childViewHolderInt.isUpdated() && !childViewHolderInt.isRemoved() && !childViewHolderInt.shouldIgnore() && !childViewHolderInt.isInvalid()) {
                        this.mViewInfoStore.f19359b.e(getChangedHolderKey(childViewHolderInt), childViewHolderInt);
                    }
                }
            }
        }
        if (this.mState.f19319k) {
            saveOldPositions();
            State state5 = this.mState;
            boolean z = state5.f19315f;
            state5.f19315f = false;
            this.mLayout.k0(this.mRecycler, state5);
            this.mState.f19315f = z;
            for (int i3 = 0; i3 < this.mChildHelper.c(); i3++) {
                ViewHolder childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.b(i3));
                if (!childViewHolderInt2.shouldIgnore() && ((infoRecord = (ViewInfoStore.InfoRecord) this.mViewInfoStore.f19358a.get(childViewHolderInt2)) == null || (infoRecord.f19360a & 4) == 0)) {
                    ItemAnimator.e(childViewHolderInt2);
                    boolean zHasAnyOfTheFlags = childViewHolderInt2.hasAnyOfTheFlags(8192);
                    ItemAnimator itemAnimator2 = this.mItemAnimator;
                    childViewHolderInt2.getUnmodifiedPayloads();
                    itemAnimator2.getClass();
                    ItemAnimator.ItemHolderInfo itemHolderInfo2 = new ItemAnimator.ItemHolderInfo();
                    View view2 = childViewHolderInt2.itemView;
                    itemHolderInfo2.f19267a = view2.getLeft();
                    itemHolderInfo2.f19268b = view2.getTop();
                    view2.getRight();
                    view2.getBottom();
                    if (zHasAnyOfTheFlags) {
                        recordAnimationInfoIfBouncedHiddenView(childViewHolderInt2, itemHolderInfo2);
                    } else {
                        SimpleArrayMap simpleArrayMap2 = this.mViewInfoStore.f19358a;
                        ViewInfoStore.InfoRecord infoRecordA2 = (ViewInfoStore.InfoRecord) simpleArrayMap2.get(childViewHolderInt2);
                        if (infoRecordA2 == null) {
                            infoRecordA2 = ViewInfoStore.InfoRecord.a();
                            simpleArrayMap2.put(childViewHolderInt2, infoRecordA2);
                        }
                        infoRecordA2.f19360a |= 2;
                        infoRecordA2.f19361b = itemHolderInfo2;
                    }
                }
            }
            clearOldPositions();
        } else {
            clearOldPositions();
        }
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        this.mState.d = 2;
    }

    public void defaultOnMeasure(int i2, int i3) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        setMeasuredDimension(LayoutManager.i(i2, paddingRight, getMinimumWidth()), LayoutManager.i(i3, getPaddingBottom() + getPaddingTop(), getMinimumHeight()));
    }

    public void dispatchChildAttached(View view) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        onChildAttachedToWindow(view);
        Adapter adapter = this.mAdapter;
        if (adapter != null && childViewHolderInt != null) {
            adapter.onViewAttachedToWindow(childViewHolderInt);
        }
        List<OnChildAttachStateChangeListener> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).c(view);
            }
        }
    }

    public void dispatchChildDetached(View view) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        onChildDetachedFromWindow(view);
        Adapter adapter = this.mAdapter;
        if (adapter != null && childViewHolderInt != null) {
            adapter.onViewDetachedFromWindow(childViewHolderInt);
        }
        List<OnChildAttachStateChangeListener> list = this.mOnChildAttachStateListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mOnChildAttachStateListeners.get(size).b(view);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (super.dispatchKeyEvent(keyEvent)) {
            return true;
        }
        LayoutManager layoutManager = getLayoutManager();
        int itemCount = 0;
        if (layoutManager != null) {
            if (layoutManager.g()) {
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 92 || keyCode == 93) {
                    int measuredHeight = getMeasuredHeight();
                    if (keyCode == 93) {
                        smoothScrollBy(0, measuredHeight, null, Integer.MIN_VALUE);
                        return true;
                    }
                    smoothScrollBy(0, -measuredHeight, null, Integer.MIN_VALUE);
                    return true;
                }
                if (keyCode == 122 || keyCode == 123) {
                    boolean zS = layoutManager.S();
                    if (keyCode == 122) {
                        if (zS) {
                            itemCount = getAdapter().getItemCount();
                        }
                    } else if (!zS) {
                        itemCount = getAdapter().getItemCount();
                    }
                    smoothScrollToPosition(itemCount);
                    return true;
                }
            } else if (layoutManager.f()) {
                int keyCode2 = keyEvent.getKeyCode();
                if (keyCode2 == 92 || keyCode2 == 93) {
                    int measuredWidth = getMeasuredWidth();
                    if (keyCode2 == 93) {
                        smoothScrollBy(measuredWidth, 0, null, Integer.MIN_VALUE);
                        return true;
                    }
                    smoothScrollBy(-measuredWidth, 0, null, Integer.MIN_VALUE);
                    return true;
                }
                if (keyCode2 == 122 || keyCode2 == 123) {
                    boolean zS2 = layoutManager.S();
                    if (keyCode2 == 122) {
                        if (zS2) {
                            itemCount = getAdapter().getItemCount();
                        }
                    } else if (!zS2) {
                        itemCount = getAdapter().getItemCount();
                    }
                    smoothScrollToPosition(itemCount);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:142:0x02cf  */
    /* JADX WARN: Code duplicated, block: B:147:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:149:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:155:0x0303  */
    /* JADX WARN: Code duplicated, block: B:157:0x030b  */
    /* JADX WARN: Code duplicated, block: B:159:0x0311  */
    /* JADX WARN: Code duplicated, block: B:162:0x0319  */
    /* JADX WARN: Code duplicated, block: B:165:0x0320  */
    /* JADX WARN: Code duplicated, block: B:168:0x032b A[LOOP:3: B:161:0x0317->B:168:0x032b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:171:0x0335  */
    /* JADX WARN: Code duplicated, block: B:174:0x033c  */
    /* JADX WARN: Code duplicated, block: B:177:0x0347 A[LOOP:4: B:170:0x0333->B:177:0x0347, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:179:0x034c  */
    /* JADX WARN: Code duplicated, block: B:209:0x032e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:210:0x032e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:0x0328 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:213:0x034a A[EDGE_INSN: B:213:0x034a->B:178:0x034a BREAK  A[LOOP:4: B:170:0x0333->B:177:0x0347], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:214:0x0344 A[SYNTHETIC] */
    public void dispatchLayout() {
        ViewHolder viewHolderFindViewHolderForItemId;
        int i2;
        int iB;
        int i3;
        int iMin;
        ViewHolder viewHolderFindViewHolderForAdapterPosition;
        ViewHolder viewHolderFindViewHolderForAdapterPosition2;
        int i4;
        View viewFindViewById;
        if (this.mAdapter == null || this.mLayout == null) {
            return;
        }
        this.mState.f19317i = false;
        boolean z = this.mLastAutoMeasureSkippedDueToExact && !(this.mLastAutoMeasureNonExactMeasuredWidth == getWidth() && this.mLastAutoMeasureNonExactMeasuredHeight == getHeight());
        this.mLastAutoMeasureNonExactMeasuredWidth = 0;
        this.mLastAutoMeasureNonExactMeasuredHeight = 0;
        this.mLastAutoMeasureSkippedDueToExact = false;
        if (this.mState.d == 1) {
            d();
            this.mLayout.A0(this);
            e();
        } else {
            AdapterHelper adapterHelper = this.mAdapterHelper;
            if ((adapterHelper.f19135c.isEmpty() || adapterHelper.f19134b.isEmpty()) && !z && this.mLayout.n == getWidth() && this.mLayout.o == getHeight()) {
                this.mLayout.A0(this);
            } else {
                this.mLayout.A0(this);
                e();
            }
        }
        this.mState.a(4);
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        State state = this.mState;
        state.d = 1;
        View view = null;
        if (state.f19318j) {
            for (int iC = this.mChildHelper.c() - 1; iC >= 0; iC--) {
                ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.b(iC));
                if (!childViewHolderInt.shouldIgnore()) {
                    long changedHolderKey = getChangedHolderKey(childViewHolderInt);
                    this.mItemAnimator.getClass();
                    ItemAnimator.ItemHolderInfo itemHolderInfo = new ItemAnimator.ItemHolderInfo();
                    View view2 = childViewHolderInt.itemView;
                    itemHolderInfo.f19267a = view2.getLeft();
                    itemHolderInfo.f19268b = view2.getTop();
                    view2.getRight();
                    view2.getBottom();
                    ViewHolder viewHolder = (ViewHolder) this.mViewInfoStore.f19359b.b(changedHolderKey);
                    if (viewHolder == null || viewHolder.shouldIgnore()) {
                        this.mViewInfoStore.a(childViewHolderInt, itemHolderInfo);
                    } else {
                        ViewInfoStore.InfoRecord infoRecord = (ViewInfoStore.InfoRecord) this.mViewInfoStore.f19358a.get(viewHolder);
                        boolean z2 = (infoRecord == null || (infoRecord.f19360a & 1) == 0) ? false : true;
                        ViewInfoStore.InfoRecord infoRecord2 = (ViewInfoStore.InfoRecord) this.mViewInfoStore.f19358a.get(childViewHolderInt);
                        boolean z3 = (infoRecord2 == null || (infoRecord2.f19360a & 1) == 0) ? false : true;
                        if (z2 && viewHolder == childViewHolderInt) {
                            this.mViewInfoStore.a(childViewHolderInt, itemHolderInfo);
                        } else {
                            ItemAnimator.ItemHolderInfo itemHolderInfoB = this.mViewInfoStore.b(viewHolder, 4);
                            this.mViewInfoStore.a(childViewHolderInt, itemHolderInfo);
                            ItemAnimator.ItemHolderInfo itemHolderInfoB2 = this.mViewInfoStore.b(childViewHolderInt, 8);
                            if (itemHolderInfoB == null) {
                                int iC2 = this.mChildHelper.c();
                                for (int i5 = 0; i5 < iC2; i5++) {
                                    ViewHolder childViewHolderInt2 = getChildViewHolderInt(this.mChildHelper.b(i5));
                                    if (childViewHolderInt2 != childViewHolderInt && getChangedHolderKey(childViewHolderInt2) == changedHolderKey) {
                                        Adapter adapter = this.mAdapter;
                                        if (adapter == null || !adapter.hasStableIds()) {
                                            StringBuilder sb = new StringBuilder("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:");
                                            sb.append(childViewHolderInt2);
                                            sb.append(" \n View Holder 2:");
                                            sb.append(childViewHolderInt);
                                            md.k(cj.g(this, sb));
                                            return;
                                        }
                                        StringBuilder sb2 = new StringBuilder("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:");
                                        sb2.append(childViewHolderInt2);
                                        sb2.append(" \n View Holder 2:");
                                        sb2.append(childViewHolderInt);
                                        md.k(cj.g(this, sb2));
                                        return;
                                    }
                                }
                                Objects.toString(viewHolder);
                                Objects.toString(childViewHolderInt);
                                exceptionLabel();
                            } else {
                                viewHolder.setIsRecyclable(false);
                                if (z2) {
                                    b(viewHolder);
                                }
                                if (viewHolder != childViewHolderInt) {
                                    if (z3) {
                                        b(childViewHolderInt);
                                    }
                                    viewHolder.mShadowedHolder = childViewHolderInt;
                                    b(viewHolder);
                                    this.mRecycler.n(viewHolder);
                                    childViewHolderInt.setIsRecyclable(false);
                                    childViewHolderInt.mShadowingHolder = viewHolder;
                                }
                                if (this.mItemAnimator.b(viewHolder, childViewHolderInt, itemHolderInfoB, itemHolderInfoB2)) {
                                    postAnimationRunner();
                                }
                            }
                        }
                    }
                }
            }
            ViewInfoStore viewInfoStore = this.mViewInfoStore;
            ViewInfoStore.ProcessCallback processCallback = this.mViewInfoProcessCallback;
            SimpleArrayMap simpleArrayMap = viewInfoStore.f19358a;
            for (int i6 = simpleArrayMap.d - 1; i6 >= 0; i6--) {
                ViewHolder viewHolder2 = (ViewHolder) simpleArrayMap.g(i6);
                ViewInfoStore.InfoRecord infoRecord3 = (ViewInfoStore.InfoRecord) simpleArrayMap.i(i6);
                int i7 = infoRecord3.f19360a;
                if ((i7 & 3) == 3) {
                    processCallback.b(viewHolder2);
                } else if ((i7 & 1) != 0) {
                    ItemAnimator.ItemHolderInfo itemHolderInfo2 = infoRecord3.f19361b;
                    if (itemHolderInfo2 == null) {
                        processCallback.b(viewHolder2);
                    } else {
                        processCallback.c(viewHolder2, itemHolderInfo2, infoRecord3.f19362c);
                    }
                } else if ((i7 & 14) == 14) {
                    processCallback.a(viewHolder2, infoRecord3.f19361b, infoRecord3.f19362c);
                } else if ((i7 & 12) == 12) {
                    processCallback.d(viewHolder2, infoRecord3.f19361b, infoRecord3.f19362c);
                } else if ((i7 & 4) != 0) {
                    processCallback.c(viewHolder2, infoRecord3.f19361b, null);
                } else if ((i7 & 8) != 0) {
                    processCallback.a(viewHolder2, infoRecord3.f19361b, infoRecord3.f19362c);
                }
                infoRecord3.f19360a = 0;
                infoRecord3.f19361b = null;
                infoRecord3.f19362c = null;
                ViewInfoStore.InfoRecord.d.release(infoRecord3);
            }
        }
        this.mLayout.s0(this.mRecycler);
        State state2 = this.mState;
        state2.f19312b = state2.f19314e;
        this.mDataSetHasChangedAfterLayout = false;
        this.mDispatchItemsChangedEvent = false;
        state2.f19318j = false;
        state2.f19319k = false;
        this.mLayout.f19274f = false;
        ArrayList arrayList = this.mRecycler.f19294b;
        if (arrayList != null) {
            arrayList.clear();
        }
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager.f19278k) {
            layoutManager.f19277j = 0;
            layoutManager.f19278k = false;
            this.mRecycler.o();
        }
        this.mLayout.l0(this.mState);
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        ViewInfoStore viewInfoStore2 = this.mViewInfoStore;
        viewInfoStore2.f19358a.clear();
        viewInfoStore2.f19359b.a();
        int[] iArr = this.mMinMaxLayoutPositions;
        int i8 = iArr[0];
        int i9 = iArr[1];
        g(iArr);
        int[] iArr2 = this.mMinMaxLayoutPositions;
        if (iArr2[0] != i8 || iArr2[1] != i9) {
            dispatchOnScrolled(0, 0);
        }
        if (this.mPreserveFocusAfterLayout && this.mAdapter != null && hasFocus() && getDescendantFocusability() != 393216 && (getDescendantFocusability() != 131072 || !isFocused())) {
            if (isFocused()) {
                if (this.mState.m == -1) {
                    viewHolderFindViewHolderForItemId = null;
                } else {
                    viewHolderFindViewHolderForItemId = null;
                }
                if (viewHolderFindViewHolderForItemId != null) {
                    if (this.mChildHelper.c() > 0) {
                        State state3 = this.mState;
                        int i10 = state3.l;
                        if (i10 != -1) {
                        }
                        iB = state3.b();
                        i3 = i2;
                        while (true) {
                            if (i3 < iB) {
                                viewHolderFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i3);
                                if (viewHolderFindViewHolderForAdapterPosition2 != null) {
                                    if (viewHolderFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                                        view = viewHolderFindViewHolderForAdapterPosition2.itemView;
                                    } else {
                                        i3++;
                                    }
                                }
                            }
                            for (iMin = Math.min(iB, i2) - 1; iMin >= 0; iMin--) {
                                viewHolderFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin);
                                if (viewHolderFindViewHolderForAdapterPosition == null) {
                                    break;
                                    break;
                                } else {
                                    if (viewHolderFindViewHolderForAdapterPosition.itemView.hasFocusable()) {
                                        view = viewHolderFindViewHolderForAdapterPosition.itemView;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                } else if (this.mChildHelper.f19143c.contains(viewHolderFindViewHolderForItemId.itemView)) {
                    if (this.mChildHelper.c() > 0) {
                        State state4 = this.mState;
                        int i11 = state4.l;
                        if (i11 != -1) {
                        }
                        iB = state4.b();
                        i3 = i2;
                        while (true) {
                            if (i3 < iB) {
                                viewHolderFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i3);
                                if (viewHolderFindViewHolderForAdapterPosition2 != null) {
                                    if (viewHolderFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                                        view = viewHolderFindViewHolderForAdapterPosition2.itemView;
                                    } else {
                                        i3++;
                                    }
                                }
                            }
                            while (iMin >= 0) {
                                viewHolderFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin);
                                if (viewHolderFindViewHolderForAdapterPosition == null) {
                                    break;
                                    break;
                                } else {
                                    if (viewHolderFindViewHolderForAdapterPosition.itemView.hasFocusable()) {
                                        view = viewHolderFindViewHolderForAdapterPosition.itemView;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                } else if (this.mChildHelper.c() > 0) {
                    State state5 = this.mState;
                    int i12 = state5.l;
                    if (i12 != -1) {
                    }
                    iB = state5.b();
                    i3 = i2;
                    while (true) {
                        if (i3 < iB) {
                            viewHolderFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i3);
                            if (viewHolderFindViewHolderForAdapterPosition2 != null) {
                                if (viewHolderFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                                    view = viewHolderFindViewHolderForAdapterPosition2.itemView;
                                } else {
                                    i3++;
                                }
                            }
                        }
                        while (iMin >= 0) {
                            viewHolderFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin);
                            if (viewHolderFindViewHolderForAdapterPosition == null) {
                                break;
                                break;
                            } else {
                                if (viewHolderFindViewHolderForAdapterPosition.itemView.hasFocusable()) {
                                    view = viewHolderFindViewHolderForAdapterPosition.itemView;
                                    break;
                                }
                            }
                        }
                    }
                }
                if (view != null) {
                    i4 = this.mState.n;
                    if (i4 != -1) {
                        view = viewFindViewById;
                    }
                    view.requestFocus();
                }
            } else if (this.mChildHelper.f19143c.contains(getFocusedChild())) {
                if (this.mState.m == -1 && this.mAdapter.hasStableIds()) {
                    viewHolderFindViewHolderForItemId = findViewHolderForItemId(this.mState.m);
                } else {
                    viewHolderFindViewHolderForItemId = null;
                }
                if (viewHolderFindViewHolderForItemId != null) {
                    if (this.mChildHelper.c() > 0) {
                        State state6 = this.mState;
                        int i13 = state6.l;
                        if (i13 != -1) {
                        }
                        iB = state6.b();
                        i3 = i2;
                        while (true) {
                            if (i3 < iB) {
                                viewHolderFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i3);
                                if (viewHolderFindViewHolderForAdapterPosition2 != null) {
                                    if (viewHolderFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                                        view = viewHolderFindViewHolderForAdapterPosition2.itemView;
                                    } else {
                                        i3++;
                                    }
                                }
                            }
                            while (iMin >= 0) {
                                viewHolderFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin);
                                if (viewHolderFindViewHolderForAdapterPosition == null) {
                                    break;
                                    break;
                                } else {
                                    if (viewHolderFindViewHolderForAdapterPosition.itemView.hasFocusable()) {
                                        view = viewHolderFindViewHolderForAdapterPosition.itemView;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                } else if (this.mChildHelper.f19143c.contains(viewHolderFindViewHolderForItemId.itemView) && viewHolderFindViewHolderForItemId.itemView.hasFocusable()) {
                    view = viewHolderFindViewHolderForItemId.itemView;
                } else if (this.mChildHelper.c() > 0) {
                    State state7 = this.mState;
                    int i14 = state7.l;
                    i2 = i14 != -1 ? i14 : 0;
                    iB = state7.b();
                    i3 = i2;
                    while (true) {
                        if (i3 < iB) {
                            viewHolderFindViewHolderForAdapterPosition2 = findViewHolderForAdapterPosition(i3);
                            if (viewHolderFindViewHolderForAdapterPosition2 != null) {
                                if (viewHolderFindViewHolderForAdapterPosition2.itemView.hasFocusable()) {
                                    view = viewHolderFindViewHolderForAdapterPosition2.itemView;
                                } else {
                                    i3++;
                                }
                            }
                        }
                        while (iMin >= 0) {
                            viewHolderFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(iMin);
                            if (viewHolderFindViewHolderForAdapterPosition == null) {
                                break;
                            }
                            if (viewHolderFindViewHolderForAdapterPosition.itemView.hasFocusable()) {
                                view = viewHolderFindViewHolderForAdapterPosition.itemView;
                                break;
                            }
                        }
                    }
                }
                if (view != null) {
                    i4 = this.mState.n;
                    if (i4 != -1 && (viewFindViewById = view.findViewById(i4)) != null && viewFindViewById.isFocusable()) {
                        view = viewFindViewById;
                    }
                    view.requestFocus();
                }
            }
        }
        State state8 = this.mState;
        state8.m = -1L;
        state8.l = -1;
        state8.n = -1;
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z) {
        return getScrollingChildHelper().a(f2, f3, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return getScrollingChildHelper().b(f2, f3);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i2, i3, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return getScrollingChildHelper().d(i2, i3, i4, i5, iArr, 0, null);
    }

    public void dispatchOnScrollStateChanged(int i2) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.o0(i2);
        }
        onScrollStateChanged(i2);
        OnScrollListener onScrollListener = this.mScrollListener;
        if (onScrollListener != null) {
            onScrollListener.a(i2);
        }
        List<OnScrollListener> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).a(i2);
            }
        }
    }

    public void dispatchOnScrolled(int i2, int i3) {
        this.mDispatchScrollCounter++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i2, scrollY - i3);
        onScrolled(i2, i3);
        OnScrollListener onScrollListener = this.mScrollListener;
        if (onScrollListener != null) {
            onScrollListener.b(this, i2, i3);
        }
        List<OnScrollListener> list = this.mScrollListeners;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.mScrollListeners.get(size).b(this, i2, i3);
            }
        }
        this.mDispatchScrollCounter--;
    }

    public void dispatchPendingImportantForAccessibilityChanges() {
        int i2;
        int size = this.mPendingAccessibilityImportanceChange.size();
        while (true) {
            size--;
            List<ViewHolder> list = this.mPendingAccessibilityImportanceChange;
            if (size < 0) {
                list.clear();
                return;
            }
            ViewHolder viewHolder = list.get(size);
            if (viewHolder.itemView.getParent() == this && !viewHolder.shouldIgnore() && (i2 = viewHolder.mPendingAccessibilityState) != -1) {
                viewHolder.itemView.setImportantForAccessibility(i2);
                viewHolder.mPendingAccessibilityState = -1;
            }
        }
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        super.draw(canvas);
        int size = this.mItemDecorations.size();
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            this.mItemDecorations.get(i2).onDrawOver(canvas, this, this.mState);
        }
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.mClipToPadding ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, Call.Parameters.DEFAULT_CAMERA_ZOOM);
            EdgeEffect edgeEffect2 = this.mLeftGlow;
            z = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.mTopGlow;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.mClipToPadding) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.mTopGlow;
            z |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.mRightGlow;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.mClipToPadding ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.mRightGlow;
            z |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.mBottomGlow;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.mClipToPadding) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.mBottomGlow;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z2 = true;
            }
            z |= z2;
            canvas.restoreToCount(iSave4);
        }
        if ((z || this.mItemAnimator == null || this.mItemDecorations.size() <= 0 || !this.mItemAnimator.k()) ? z : true) {
            postInvalidateOnAnimation();
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j2) {
        return super.drawChild(canvas, view, j2);
    }

    public final void e() {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        this.mState.a(6);
        this.mAdapterHelper.c();
        this.mState.f19314e = this.mAdapter.getItemCount();
        this.mState.f19313c = 0;
        if (this.mPendingSavedState != null && this.mAdapter.canRestoreState()) {
            Parcelable parcelable = this.mPendingSavedState.d;
            if (parcelable != null) {
                this.mLayout.m0(parcelable);
            }
            this.mPendingSavedState = null;
        }
        State state = this.mState;
        state.g = false;
        this.mLayout.k0(this.mRecycler, state);
        State state2 = this.mState;
        state2.f19315f = false;
        state2.f19318j = state2.f19318j && this.mItemAnimator != null;
        state2.d = 4;
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
    }

    public void ensureBottomGlow() {
        if (this.mBottomGlow != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.mEdgeEffectFactory.a(this);
        this.mBottomGlow = edgeEffectA;
        if (this.mClipToPadding) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void ensureLeftGlow() {
        if (this.mLeftGlow != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.mEdgeEffectFactory.a(this);
        this.mLeftGlow = edgeEffectA;
        if (this.mClipToPadding) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void ensureRightGlow() {
        if (this.mRightGlow != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.mEdgeEffectFactory.a(this);
        this.mRightGlow = edgeEffectA;
        if (this.mClipToPadding) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public void ensureTopGlow() {
        if (this.mTopGlow != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.mEdgeEffectFactory.a(this);
        this.mTopGlow = edgeEffectA;
        if (this.mClipToPadding) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public String exceptionLabel() {
        return " " + super.toString() + ", adapter:" + this.mAdapter + ", layout:" + this.mLayout + ", context:" + getContext();
    }

    public final boolean f(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.mOnItemTouchListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            OnItemTouchListener onItemTouchListener = this.mOnItemTouchListeners.get(i2);
            if (onItemTouchListener.e(motionEvent) && action != 3) {
                this.mInterceptingOnItemTouchListener = onItemTouchListener;
                return true;
            }
        }
        return false;
    }

    public final void fillRemainingScrollValues(State state) {
        if (getScrollState() != 2) {
            state.getClass();
            return;
        }
        OverScroller overScroller = this.mViewFlinger.mOverScroller;
        overScroller.getFinalX();
        overScroller.getCurrX();
        state.getClass();
        overScroller.getFinalY();
        overScroller.getCurrY();
    }

    public View findChildViewUnder(float f2, float f3) {
        for (int iC = this.mChildHelper.c() - 1; iC >= 0; iC--) {
            View viewB = this.mChildHelper.b(iC);
            float translationX = viewB.getTranslationX();
            float translationY = viewB.getTranslationY();
            if (f2 >= viewB.getLeft() + translationX && f2 <= viewB.getRight() + translationX && f3 >= viewB.getTop() + translationY && f3 <= viewB.getBottom() + translationY) {
                return viewB;
            }
        }
        return null;
    }

    public View findContainingItemView(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    public ViewHolder findContainingViewHolder(View view) {
        View viewFindContainingItemView = findContainingItemView(view);
        if (viewFindContainingItemView == null) {
            return null;
        }
        return getChildViewHolder(viewFindContainingItemView);
    }

    public ViewHolder findViewHolderForAdapterPosition(int i2) {
        ViewHolder viewHolder = null;
        if (this.mDataSetHasChangedAfterLayout) {
            return null;
        }
        int childCount = RecyclerView.this.getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(RecyclerView.this.getChildAt(i3));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && getAdapterPositionInRecyclerView(childViewHolderInt) == i2) {
                ChildHelper childHelper = this.mChildHelper;
                if (!childHelper.f19143c.contains(childViewHolderInt.itemView)) {
                    return childViewHolderInt;
                }
                viewHolder = childViewHolderInt;
            }
        }
        return viewHolder;
    }

    public ViewHolder findViewHolderForItemId(long j2) {
        Adapter adapter = this.mAdapter;
        ViewHolder viewHolder = null;
        if (adapter != null && adapter.hasStableIds()) {
            int childCount = RecyclerView.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                ViewHolder childViewHolderInt = getChildViewHolderInt(RecyclerView.this.getChildAt(i2));
                if (childViewHolderInt != null && !childViewHolderInt.isRemoved() && childViewHolderInt.getItemId() == j2) {
                    ChildHelper childHelper = this.mChildHelper;
                    if (!childHelper.f19143c.contains(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    viewHolder = childViewHolderInt;
                }
            }
        }
        return viewHolder;
    }

    public ViewHolder findViewHolderForLayoutPosition(int i2) {
        return findViewHolderForPosition(i2, false);
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0032  */
    /* JADX WARN: Code duplicated, block: B:17:0x003e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0040 A[SYNTHETIC] */
    public ViewHolder findViewHolderForPosition(int i2, boolean z) {
        ChildHelper childHelper;
        int childCount = RecyclerView.this.getChildCount();
        ViewHolder viewHolder = null;
        for (int i3 = 0; i3 < childCount; i3++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(RecyclerView.this.getChildAt(i3));
            if (childViewHolderInt != null && !childViewHolderInt.isRemoved()) {
                if (z) {
                    if (childViewHolderInt.mPosition != i2) {
                        continue;
                    } else {
                        childHelper = this.mChildHelper;
                        if (childHelper.f19143c.contains(childViewHolderInt.itemView)) {
                            return childViewHolderInt;
                        }
                        viewHolder = childViewHolderInt;
                    }
                } else if (childViewHolderInt.getLayoutPosition() != i2) {
                    continue;
                } else {
                    childHelper = this.mChildHelper;
                    if (childHelper.f19143c.contains(childViewHolderInt.itemView)) {
                        return childViewHolderInt;
                    }
                    viewHolder = childViewHolderInt;
                }
            }
        }
        return viewHolder;
    }

    public boolean fling(int i2, int i3) {
        return h(i2, i3, this.mMinFlingVelocity, this.mMaxFlingVelocity);
    }

    public boolean flingNoThresholdCheck(int i2, int i3) {
        return h(i2, i3, 0, Integer.MAX_VALUE);
    }

    /* JADX WARN: Code duplicated, block: B:109:0x0163 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:110:0x0165 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:111:0x0167 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:112:0x0169  */
    /* JADX WARN: Code duplicated, block: B:114:0x016d  */
    /* JADX WARN: Code duplicated, block: B:116:0x0171 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:118:0x0174  */
    /* JADX WARN: Code duplicated, block: B:120:0x0186 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:122:0x0189 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:124:0x018c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:126:0x018f  */
    /* JADX WARN: Code duplicated, block: B:127:0x0191  */
    /* JADX WARN: Code duplicated, block: B:128:0x0193  */
    /* JADX WARN: Code duplicated, block: B:131:0x0197  */
    /* JADX WARN: Code duplicated, block: B:132:0x0199  */
    /* JADX WARN: Code duplicated, block: B:133:0x019b  */
    /* JADX WARN: Code duplicated, block: B:24:0x0048  */
    /* JADX WARN: Code duplicated, block: B:80:0x011a  */
    /* JADX WARN: Code duplicated, block: B:81:0x011c  */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0171, code lost:
    
        if (r5 > 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0186, code lost:
    
        if (r10 > 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x0189, code lost:
    
        if (r5 < 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x018c, code lost:
    
        if (r10 < 0) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0194, code lost:
    
        if ((r10 * r6) <= 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x019c, code lost:
    
        if ((r10 * r6) >= 0) goto L136;
     */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.view.View focusSearch(android.view.View r18, int r19) {
        /*
            Method dump skipped, instruction units count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    public final void g(int[] iArr) {
        int iC = this.mChildHelper.c();
        if (iC == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i2 = Integer.MAX_VALUE;
        int i3 = Integer.MIN_VALUE;
        for (int i4 = 0; i4 < iC; i4++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(this.mChildHelper.b(i4));
            if (!childViewHolderInt.shouldIgnore()) {
                int layoutPosition = childViewHolderInt.getLayoutPosition();
                if (layoutPosition < i2) {
                    i2 = layoutPosition;
                }
                if (layoutPosition > i3) {
                    i3 = layoutPosition;
                }
            }
        }
        iArr[0] = i2;
        iArr[1] = i3;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            return layoutManager.t();
        }
        md.k(cj.g(this, new StringBuilder("RecyclerView has no LayoutManager")));
        return null;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            return layoutManager.u(getContext(), attributeSet);
        }
        md.k(cj.g(this, new StringBuilder("RecyclerView has no LayoutManager")));
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public Adapter getAdapter() {
        return this.mAdapter;
    }

    public int getAdapterPositionInRecyclerView(ViewHolder viewHolder) {
        if (viewHolder.hasAnyOfTheFlags(524) || !viewHolder.isBound()) {
            return -1;
        }
        AdapterHelper adapterHelper = this.mAdapterHelper;
        int i2 = viewHolder.mPosition;
        ArrayList arrayList = adapterHelper.f19134b;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            AdapterHelper.UpdateOp updateOp = (AdapterHelper.UpdateOp) arrayList.get(i3);
            int i4 = updateOp.f19138a;
            if (i4 != 1) {
                if (i4 == 2) {
                    int i5 = updateOp.f19139b;
                    if (i5 <= i2) {
                        int i6 = updateOp.d;
                        if (i5 + i6 > i2) {
                            return -1;
                        }
                        i2 -= i6;
                    } else {
                        continue;
                    }
                } else if (i4 == 8) {
                    int i7 = updateOp.f19139b;
                    if (i7 == i2) {
                        i2 = updateOp.d;
                    } else {
                        if (i7 < i2) {
                            i2--;
                        }
                        if (updateOp.d <= i2) {
                            i2++;
                        }
                    }
                }
            } else if (updateOp.f19139b <= i2) {
                i2 += updateOp.d;
            }
        }
        return i2;
    }

    @Override // android.view.View
    public int getBaseline() {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            return super.getBaseline();
        }
        layoutManager.getClass();
        return -1;
    }

    public long getChangedHolderKey(ViewHolder viewHolder) {
        return this.mAdapter.hasStableIds() ? viewHolder.getItemId() : viewHolder.mPosition;
    }

    public int getChildAdapterPosition(View view) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getAbsoluteAdapterPosition();
        }
        return -1;
    }

    @Override // android.view.ViewGroup
    public int getChildDrawingOrder(int i2, int i3) {
        ChildDrawingOrderCallback childDrawingOrderCallback = this.mChildDrawingOrderCallback;
        return childDrawingOrderCallback == null ? super.getChildDrawingOrder(i2, i3) : childDrawingOrderCallback.a();
    }

    public long getChildItemId(View view) {
        ViewHolder childViewHolderInt;
        Adapter adapter = this.mAdapter;
        if (adapter == null || !adapter.hasStableIds() || (childViewHolderInt = getChildViewHolderInt(view)) == null) {
            return -1L;
        }
        return childViewHolderInt.getItemId();
    }

    public int getChildLayoutPosition(View view) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            return childViewHolderInt.getLayoutPosition();
        }
        return -1;
    }

    @Deprecated
    public int getChildPosition(View view) {
        return getChildAdapterPosition(view);
    }

    public ViewHolder getChildViewHolder(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return getChildViewHolderInt(view);
        }
        b21.s("View ", view, " is not a direct child of ", this);
        return null;
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.mClipToPadding;
    }

    public RecyclerViewAccessibilityDelegate getCompatAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }

    public void getDecoratedBoundsWithMargins(View view, Rect rect) {
        getDecoratedBoundsWithMarginsInt(view, rect);
    }

    public EdgeEffectFactory getEdgeEffectFactory() {
        return this.mEdgeEffectFactory;
    }

    public ItemAnimator getItemAnimator() {
        return this.mItemAnimator;
    }

    public Rect getItemDecorInsetsForChild(View view) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        boolean z = layoutParams.f19286c;
        Rect rect = layoutParams.f19285b;
        if (!z || (this.mState.g && (layoutParams.f19284a.isUpdated() || layoutParams.f19284a.isInvalid()))) {
            return rect;
        }
        rect.set(0, 0, 0, 0);
        int size = this.mItemDecorations.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTempRect.set(0, 0, 0, 0);
            this.mItemDecorations.get(i2).getItemOffsets(this.mTempRect, view, this, this.mState);
            int i3 = rect.left;
            Rect rect2 = this.mTempRect;
            rect.left = i3 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        layoutParams.f19286c = false;
        return rect;
    }

    public ItemDecoration getItemDecorationAt(int i2) {
        int itemDecorationCount = getItemDecorationCount();
        if (i2 >= 0 && i2 < itemDecorationCount) {
            return this.mItemDecorations.get(i2);
        }
        throw new IndexOutOfBoundsException(i2 + " is an invalid index for size " + itemDecorationCount);
    }

    public int getItemDecorationCount() {
        return this.mItemDecorations.size();
    }

    public LayoutManager getLayoutManager() {
        return this.mLayout;
    }

    public int getMaxFlingVelocity() {
        return this.mMaxFlingVelocity;
    }

    public int getMinFlingVelocity() {
        return this.mMinFlingVelocity;
    }

    public long getNanoTime() {
        if (ALLOW_THREAD_GAP_WORK) {
            return System.nanoTime();
        }
        return 0L;
    }

    public OnFlingListener getOnFlingListener() {
        return this.mOnFlingListener;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.mPreserveFocusAfterLayout;
    }

    public RecycledViewPool getRecycledViewPool() {
        return this.mRecycler.c();
    }

    public int getScrollState() {
        return this.mScrollState;
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0072  */
    /* JADX WARN: Code duplicated, block: B:56:0x00b4  */
    public final boolean h(int i2, int i3, int i4, int i5) {
        int iMax;
        int i6;
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null && !this.mLayoutSuppressed) {
            boolean zF = layoutManager.f();
            boolean zG = this.mLayout.g();
            if (!zF || Math.abs(i2) < i4) {
                i2 = 0;
            }
            if (!zG || Math.abs(i3) < i4) {
                i3 = 0;
            }
            if (i2 != 0 || i3 != 0) {
                if (i2 == 0) {
                    iMax = 0;
                } else {
                    EdgeEffect edgeEffect = this.mLeftGlow;
                    if (edgeEffect == null || EdgeEffectCompat.a(edgeEffect) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        EdgeEffect edgeEffect2 = this.mRightGlow;
                        if (edgeEffect2 == null || EdgeEffectCompat.a(edgeEffect2) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            iMax = 0;
                        } else if (q(this.mRightGlow, i2, getWidth())) {
                            this.mRightGlow.onAbsorb(i2);
                            i2 = 0;
                        }
                    } else {
                        int i7 = -i2;
                        if (q(this.mLeftGlow, i7, getWidth())) {
                            this.mLeftGlow.onAbsorb(i7);
                            i2 = 0;
                        }
                    }
                    iMax = i2;
                    i2 = 0;
                }
                if (i3 == 0) {
                    i6 = i3;
                    i3 = 0;
                } else {
                    EdgeEffect edgeEffect3 = this.mTopGlow;
                    if (edgeEffect3 == null || EdgeEffectCompat.a(edgeEffect3) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        EdgeEffect edgeEffect4 = this.mBottomGlow;
                        if (edgeEffect4 == null || EdgeEffectCompat.a(edgeEffect4) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            i6 = i3;
                            i3 = 0;
                        } else if (q(this.mBottomGlow, i3, getHeight())) {
                            this.mBottomGlow.onAbsorb(i3);
                            i3 = 0;
                        }
                    } else {
                        int i8 = -i3;
                        if (q(this.mTopGlow, i8, getHeight())) {
                            this.mTopGlow.onAbsorb(i8);
                            i3 = 0;
                        }
                    }
                    i6 = 0;
                }
                if (iMax != 0 || i3 != 0) {
                    int i9 = -i5;
                    iMax = Math.max(i9, Math.min(iMax, i5));
                    i3 = Math.max(i9, Math.min(i3, i5));
                    r(1);
                    this.mViewFlinger.fling(iMax, i3);
                }
                if (i2 != 0 || i6 != 0) {
                    float f2 = i2;
                    float f3 = i6;
                    if (!dispatchNestedPreFling(f2, f3)) {
                        boolean z = zF || zG;
                        dispatchNestedFling(f2, f3, z);
                        OnFlingListener onFlingListener = this.mOnFlingListener;
                        if (onFlingListener == null || !onFlingListener.a(i2, i6)) {
                            if (z) {
                                r(1);
                                int i10 = -i5;
                                this.mViewFlinger.fling(Math.max(i10, Math.min(i2, i5)), Math.max(i10, Math.min(i6, i5)));
                                return true;
                            }
                        }
                        return true;
                    }
                } else if (iMax != 0 || i3 != 0) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean hasFixedSize() {
        return this.mHasFixedSize;
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().f(0);
    }

    public boolean hasPendingAdapterUpdates() {
        return !this.mFirstLayoutComplete || this.mDataSetHasChangedAfterLayout || this.mAdapterHelper.g();
    }

    public final void i(MotionEvent motionEvent, int i2, int i3) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null || this.mLayoutSuppressed) {
            return;
        }
        int[] iArr = this.mReusableIntPair;
        iArr[0] = 0;
        iArr[1] = 0;
        boolean zF = layoutManager.f();
        boolean zG = this.mLayout.g();
        int i4 = zG ? (zF ? 1 : 0) | 2 : zF ? 1 : 0;
        float height = motionEvent == null ? getHeight() / 2.0f : motionEvent.getY();
        float width = motionEvent == null ? getWidth() / 2.0f : motionEvent.getX();
        int iM = i2 - m(height, i2);
        int iN = i3 - n(width, i3);
        startNestedScroll(i4, 1);
        if (dispatchNestedPreScroll(zF ? iM : 0, zG ? iN : 0, this.mReusableIntPair, this.mScrollOffset, 1)) {
            int[] iArr2 = this.mReusableIntPair;
            iM -= iArr2[0];
            iN -= iArr2[1];
        }
        scrollByInternal(zF ? iM : 0, zG ? iN : 0, motionEvent, 1);
        GapWorker gapWorker = this.mGapWorker;
        if (gapWorker != null && (iM != 0 || iN != 0)) {
            gapWorker.postFromTraversal(this, iM, iN);
        }
        stopNestedScroll(1);
    }

    public void initAdapterManager() {
        this.mAdapterHelper = new AdapterHelper(new AnonymousClass7());
    }

    public void initFastScroller(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable == null || drawable == null || stateListDrawable2 == null || drawable2 == null) {
            md.n(cj.g(this, new StringBuilder("Trying to set fast scroller without both required drawables.")));
        } else {
            Resources resources = getContext().getResources();
            new FastScroller(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(com.vuitton.android.R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(com.vuitton.android.R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(com.vuitton.android.R.dimen.fastscroll_margin));
        }
    }

    public void invalidateGlows() {
        this.mBottomGlow = null;
        this.mTopGlow = null;
        this.mRightGlow = null;
        this.mLeftGlow = null;
    }

    public void invalidateItemDecorations() {
        if (this.mItemDecorations.size() == 0) {
            return;
        }
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.d("Cannot invalidate item decorations during a scroll or layout");
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public boolean isAccessibilityEnabled() {
        AccessibilityManager accessibilityManager = this.mAccessibilityManager;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    public boolean isAnimating() {
        ItemAnimator itemAnimator = this.mItemAnimator;
        return itemAnimator != null && itemAnimator.k();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.mIsAttached;
    }

    public boolean isComputingLayout() {
        return this.mLayoutOrScrollCounter > 0;
    }

    @Deprecated
    public boolean isLayoutFrozen() {
        return isLayoutSuppressed();
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.mLayoutSuppressed;
    }

    @Override // android.view.View
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().d;
    }

    public final void j(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.mScrollPointerId) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.mScrollPointerId = motionEvent.getPointerId(i2);
            int x = (int) (motionEvent.getX(i2) + 0.5f);
            this.mLastTouchX = x;
            this.mInitialTouchX = x;
            int y = (int) (motionEvent.getY(i2) + 0.5f);
            this.mLastTouchY = y;
            this.mInitialTouchY = y;
        }
    }

    public void jumpToPositionForSmoothScroller(int i2) {
        if (this.mLayout == null) {
            return;
        }
        setScrollState(2);
        this.mLayout.y0(i2);
        awakenScrollBars();
    }

    public final void k() {
        boolean z;
        boolean z2 = false;
        if (this.mDataSetHasChangedAfterLayout) {
            AdapterHelper adapterHelper = this.mAdapterHelper;
            adapterHelper.k(adapterHelper.f19134b);
            adapterHelper.k(adapterHelper.f19135c);
            adapterHelper.f19137f = 0;
            if (this.mDispatchItemsChangedEvent) {
                this.mLayout.g0();
            }
        }
        boolean z3 = this.mItemAnimator != null && this.mLayout.K0();
        AdapterHelper adapterHelper2 = this.mAdapterHelper;
        if (z3) {
            adapterHelper2.j();
        } else {
            adapterHelper2.c();
        }
        boolean z4 = this.mItemsAddedOrRemoved || this.mItemsChanged;
        this.mState.f19318j = this.mFirstLayoutComplete && this.mItemAnimator != null && ((z = this.mDataSetHasChangedAfterLayout) || z4 || this.mLayout.f19274f) && (!z || this.mAdapter.hasStableIds());
        State state = this.mState;
        if (state.f19318j && z4 && !this.mDataSetHasChangedAfterLayout && this.mItemAnimator != null && this.mLayout.K0()) {
            z2 = true;
        }
        state.f19319k = z2;
    }

    public final void l() {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.mLeftGlow;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.mLeftGlow.isFinished();
        } else {
            zIsFinished = false;
        }
        EdgeEffect edgeEffect2 = this.mTopGlow;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.mTopGlow.isFinished();
        }
        EdgeEffect edgeEffect3 = this.mRightGlow;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.mRightGlow.isFinished();
        }
        EdgeEffect edgeEffect4 = this.mBottomGlow;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.mBottomGlow.isFinished();
        }
        if (zIsFinished) {
            postInvalidateOnAnimation();
        }
    }

    public final int m(float f2, int i2) {
        float height = f2 / getHeight();
        float width = i2 / getWidth();
        EdgeEffect edgeEffect = this.mLeftGlow;
        float f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (edgeEffect == null || EdgeEffectCompat.a(edgeEffect) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            EdgeEffect edgeEffect2 = this.mRightGlow;
            if (edgeEffect2 != null && EdgeEffectCompat.a(edgeEffect2) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                boolean zCanScrollHorizontally = canScrollHorizontally(1);
                EdgeEffect edgeEffect3 = this.mRightGlow;
                if (zCanScrollHorizontally) {
                    edgeEffect3.onRelease();
                } else {
                    float fB = EdgeEffectCompat.b(edgeEffect3, width, height);
                    if (EdgeEffectCompat.a(this.mRightGlow) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        this.mRightGlow.onRelease();
                    }
                    f3 = fB;
                }
                invalidate();
            }
        } else {
            boolean zCanScrollHorizontally2 = canScrollHorizontally(-1);
            EdgeEffect edgeEffect4 = this.mLeftGlow;
            if (zCanScrollHorizontally2) {
                edgeEffect4.onRelease();
            } else {
                float f4 = -EdgeEffectCompat.b(edgeEffect4, -width, 1.0f - height);
                if (EdgeEffectCompat.a(this.mLeftGlow) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    this.mLeftGlow.onRelease();
                }
                f3 = f4;
            }
            invalidate();
        }
        return Math.round(f3 * getWidth());
    }

    public void markItemDecorInsetsDirty() {
        int childCount = RecyclerView.this.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            ((LayoutParams) RecyclerView.this.getChildAt(i2).getLayoutParams()).f19286c = true;
        }
        ArrayList arrayList = this.mRecycler.f19295c;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            LayoutParams layoutParams = (LayoutParams) ((ViewHolder) arrayList.get(i3)).itemView.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.f19286c = true;
            }
        }
    }

    public void markKnownViewsInvalid() {
        int childCount = RecyclerView.this.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(RecyclerView.this.getChildAt(i2));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                childViewHolderInt.addFlags(6);
            }
        }
        markItemDecorInsetsDirty();
        Recycler recycler = this.mRecycler;
        ArrayList arrayList = recycler.f19295c;
        int size = arrayList.size();
        for (int i3 = 0; i3 < size; i3++) {
            ViewHolder viewHolder = (ViewHolder) arrayList.get(i3);
            if (viewHolder != null) {
                viewHolder.addFlags(6);
                viewHolder.addChangePayload(null);
            }
        }
        Adapter adapter = RecyclerView.this.mAdapter;
        if (adapter == null || !adapter.hasStableIds()) {
            recycler.h();
        }
    }

    public final int n(float f2, int i2) {
        float width = f2 / getWidth();
        float height = i2 / getHeight();
        EdgeEffect edgeEffect = this.mTopGlow;
        float f3 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        if (edgeEffect == null || EdgeEffectCompat.a(edgeEffect) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            EdgeEffect edgeEffect2 = this.mBottomGlow;
            if (edgeEffect2 != null && EdgeEffectCompat.a(edgeEffect2) != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                boolean zCanScrollVertically = canScrollVertically(1);
                EdgeEffect edgeEffect3 = this.mBottomGlow;
                if (zCanScrollVertically) {
                    edgeEffect3.onRelease();
                } else {
                    float fB = EdgeEffectCompat.b(edgeEffect3, height, 1.0f - width);
                    if (EdgeEffectCompat.a(this.mBottomGlow) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        this.mBottomGlow.onRelease();
                    }
                    f3 = fB;
                }
                invalidate();
            }
        } else {
            boolean zCanScrollVertically2 = canScrollVertically(-1);
            EdgeEffect edgeEffect4 = this.mTopGlow;
            if (zCanScrollVertically2) {
                edgeEffect4.onRelease();
            } else {
                float f4 = -EdgeEffectCompat.b(edgeEffect4, -height, width);
                if (EdgeEffectCompat.a(this.mTopGlow) == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    this.mTopGlow.onRelease();
                }
                f3 = f4;
            }
            invalidate();
        }
        return Math.round(f3 * getHeight());
    }

    public void nestedScrollBy(int i2, int i3) {
        i(null, i2, i3);
    }

    public final void o(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.mTempRect.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            if (!layoutParams2.f19286c) {
                Rect rect = layoutParams2.f19285b;
                Rect rect2 = this.mTempRect;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.mTempRect);
            offsetRectIntoDescendantCoords(view, this.mTempRect);
        }
        this.mLayout.v0(this, view, this.mTempRect, !this.mFirstLayoutComplete, view2 == null);
    }

    public void offsetChildrenHorizontal(int i2) {
        int iC = this.mChildHelper.c();
        for (int i3 = 0; i3 < iC; i3++) {
            this.mChildHelper.b(i3).offsetLeftAndRight(i2);
        }
    }

    public void offsetChildrenVertical(int i2) {
        int iC = this.mChildHelper.c();
        for (int i3 = 0; i3 < iC; i3++) {
            this.mChildHelper.b(i3).offsetTopAndBottom(i2);
        }
    }

    public void offsetPositionRecordsForInsert(int i2, int i3) {
        int childCount = RecyclerView.this.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(RecyclerView.this.getChildAt(i4));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && childViewHolderInt.mPosition >= i2) {
                if (sVerboseLoggingEnabled) {
                    childViewHolderInt.toString();
                }
                childViewHolderInt.offsetPosition(i3, false);
                this.mState.f19315f = true;
            }
        }
        ArrayList arrayList = this.mRecycler.f19295c;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            ViewHolder viewHolder = (ViewHolder) arrayList.get(i5);
            if (viewHolder != null && viewHolder.mPosition >= i2) {
                if (sVerboseLoggingEnabled) {
                    viewHolder.toString();
                }
                viewHolder.offsetPosition(i3, false);
            }
        }
        requestLayout();
    }

    public void offsetPositionRecordsForMove(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int childCount = RecyclerView.this.getChildCount();
        int i11 = -1;
        if (i2 < i3) {
            i5 = i2;
            i4 = i3;
            i6 = -1;
        } else {
            i4 = i2;
            i5 = i3;
            i6 = 1;
        }
        for (int i12 = 0; i12 < childCount; i12++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(RecyclerView.this.getChildAt(i12));
            if (childViewHolderInt != null && (i10 = childViewHolderInt.mPosition) >= i5 && i10 <= i4) {
                if (sVerboseLoggingEnabled) {
                    childViewHolderInt.toString();
                }
                if (childViewHolderInt.mPosition == i2) {
                    childViewHolderInt.offsetPosition(i3 - i2, false);
                } else {
                    childViewHolderInt.offsetPosition(i6, false);
                }
                this.mState.f19315f = true;
            }
        }
        ArrayList arrayList = this.mRecycler.f19295c;
        if (i2 < i3) {
            i8 = i2;
            i7 = i3;
        } else {
            i7 = i2;
            i11 = 1;
            i8 = i3;
        }
        int size = arrayList.size();
        for (int i13 = 0; i13 < size; i13++) {
            ViewHolder viewHolder = (ViewHolder) arrayList.get(i13);
            if (viewHolder != null && (i9 = viewHolder.mPosition) >= i8 && i9 <= i7) {
                if (i9 == i2) {
                    viewHolder.offsetPosition(i3 - i2, false);
                } else {
                    viewHolder.offsetPosition(i11, false);
                }
                if (sVerboseLoggingEnabled) {
                    viewHolder.toString();
                }
            }
        }
        requestLayout();
    }

    public void offsetPositionRecordsForRemove(int i2, int i3, boolean z) {
        int i4 = i2 + i3;
        int childCount = RecyclerView.this.getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(RecyclerView.this.getChildAt(i5));
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore()) {
                int i6 = childViewHolderInt.mPosition;
                if (i6 >= i4) {
                    if (sVerboseLoggingEnabled) {
                        childViewHolderInt.toString();
                    }
                    childViewHolderInt.offsetPosition(-i3, z);
                    this.mState.f19315f = true;
                } else if (i6 >= i2) {
                    if (sVerboseLoggingEnabled) {
                        childViewHolderInt.toString();
                    }
                    childViewHolderInt.flagRemovedAndOffsetPosition(i2 - 1, -i3, z);
                    this.mState.f19315f = true;
                }
            }
        }
        Recycler recycler = this.mRecycler;
        ArrayList arrayList = recycler.f19295c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ViewHolder viewHolder = (ViewHolder) arrayList.get(size);
            if (viewHolder != null) {
                int i7 = viewHolder.mPosition;
                if (i7 >= i4) {
                    if (sVerboseLoggingEnabled) {
                        viewHolder.toString();
                    }
                    viewHolder.offsetPosition(-i3, z);
                } else if (i7 >= i2) {
                    viewHolder.addFlags(8);
                    recycler.i(size);
                }
            }
        }
        requestLayout();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0058  */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        float refreshRate;
        super.onAttachedToWindow();
        this.mLayoutOrScrollCounter = 0;
        this.mIsAttached = true;
        this.mFirstLayoutComplete = this.mFirstLayoutComplete && !isLayoutRequested();
        this.mRecycler.f();
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.g = true;
            layoutManager.Y(this);
        }
        this.mPostedAnimatorRunner = false;
        if (ALLOW_THREAD_GAP_WORK) {
            ThreadLocal<GapWorker> threadLocal = GapWorker.sGapWorker;
            GapWorker gapWorker = threadLocal.get();
            this.mGapWorker = gapWorker;
            if (gapWorker == null) {
                this.mGapWorker = new GapWorker();
                WeakHashMap weakHashMap = ViewCompat.f12200a;
                Display display = getDisplay();
                if (isInEditMode() || display == null) {
                    refreshRate = 60.0f;
                } else {
                    refreshRate = display.getRefreshRate();
                    if (refreshRate < 30.0f) {
                        refreshRate = 60.0f;
                    }
                }
                GapWorker gapWorker2 = this.mGapWorker;
                gapWorker2.mFrameIntervalNs = (long) (1.0E9f / refreshRate);
                threadLocal.set(gapWorker2);
            }
            this.mGapWorker.add(this);
        }
    }

    public void onChildAttachedToWindow(View view) {
    }

    public void onChildDetachedFromWindow(View view) {
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        GapWorker gapWorker;
        super.onDetachedFromWindow();
        ItemAnimator itemAnimator = this.mItemAnimator;
        if (itemAnimator != null) {
            itemAnimator.j();
        }
        stopScroll();
        this.mIsAttached = false;
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.g = false;
            layoutManager.Z(this);
        }
        this.mPendingAccessibilityImportanceChange.clear();
        removeCallbacks(this.mItemAnimatorRunner);
        this.mViewInfoStore.getClass();
        while (ViewInfoStore.InfoRecord.d.acquire() != null) {
        }
        Recycler recycler = this.mRecycler;
        ArrayList arrayList = recycler.f19295c;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            PoolingContainer.b(((ViewHolder) arrayList.get(i2)).itemView);
        }
        recycler.g(RecyclerView.this.mAdapter, false);
        PoolingContainer.c(this);
        if (!ALLOW_THREAD_GAP_WORK || (gapWorker = this.mGapWorker) == null) {
            return;
        }
        gapWorker.remove(this);
        this.mGapWorker = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.mItemDecorations.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mItemDecorations.get(i2).onDraw(canvas, this, this.mState);
        }
    }

    public void onEnterLayoutOrScroll() {
        this.mLayoutOrScrollCounter++;
    }

    public void onExitLayoutOrScroll(boolean z) {
        int i2 = this.mLayoutOrScrollCounter - 1;
        this.mLayoutOrScrollCounter = i2;
        if (i2 < 1) {
            if (sDebugAssertionsEnabled && i2 < 0) {
                md.k(cj.g(this, new StringBuilder("layout or scroll counter cannot go below zero.Some calls are not matching")));
                return;
            }
            this.mLayoutOrScrollCounter = 0;
            if (z) {
                int i3 = this.mEatenAccessibilityChangeFlags;
                this.mEatenAccessibilityChangeFlags = 0;
                if (i3 != 0 && isAccessibilityEnabled()) {
                    AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                    accessibilityEventObtain.setEventType(2048);
                    accessibilityEventObtain.setContentChangeTypes(i3);
                    sendAccessibilityEventUnchecked(accessibilityEventObtain);
                }
                dispatchPendingImportantForAccessibilityChanges();
            }
        }
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int i2;
        boolean z;
        float axisValue;
        RecyclerView recyclerView;
        if (this.mLayout != null && !this.mLayoutSuppressed && motionEvent.getAction() == 8) {
            int source = motionEvent.getSource() & 2;
            float axisValue2 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            if (source != 0) {
                float f2 = this.mLayout.g() ? -motionEvent.getAxisValue(9) : 0.0f;
                if (this.mLayout.f()) {
                    axisValue2 = motionEvent.getAxisValue(10);
                }
                z = false;
                axisValue = axisValue2;
                axisValue2 = f2;
                i2 = 0;
            } else if ((motionEvent.getSource() & 4194304) != 0) {
                i2 = 26;
                axisValue = motionEvent.getAxisValue(26);
                if (this.mLayout.g()) {
                    float f3 = -axisValue;
                    axisValue = 0.0f;
                    axisValue2 = f3;
                } else if (!this.mLayout.f()) {
                    axisValue = 0.0f;
                }
                z = this.mLowResRotaryEncoderFeature;
            } else {
                i2 = 0;
                z = false;
                axisValue = 0.0f;
            }
            int i3 = (int) (axisValue2 * this.mScaledVerticalScrollFactor);
            int i4 = (int) (axisValue * this.mScaledHorizontalScrollFactor);
            if (z) {
                OverScroller overScroller = this.mViewFlinger.mOverScroller;
                recyclerView = this;
                recyclerView.smoothScrollBy((overScroller.getFinalX() - overScroller.getCurrX()) + i4, (overScroller.getFinalY() - overScroller.getCurrY()) + i3, null, Integer.MIN_VALUE, true);
            } else {
                recyclerView = this;
                recyclerView.i(motionEvent, i4, i3);
            }
            if (i2 != 0 && !z) {
                recyclerView.mDifferentialMotionFlingController.a(motionEvent, i2);
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        boolean z2;
        if (!this.mLayoutSuppressed) {
            this.mInterceptingOnItemTouchListener = null;
            if (f(motionEvent)) {
                VelocityTracker velocityTracker = this.mVelocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.clear();
                }
                stopNestedScroll(0);
                l();
                setScrollState(0);
                return true;
            }
            LayoutManager layoutManager = this.mLayout;
            if (layoutManager != null) {
                boolean zF = layoutManager.f();
                boolean zG = this.mLayout.g();
                if (this.mVelocityTracker == null) {
                    this.mVelocityTracker = VelocityTracker.obtain();
                }
                this.mVelocityTracker.addMovement(motionEvent);
                int actionMasked = motionEvent.getActionMasked();
                int actionIndex = motionEvent.getActionIndex();
                if (actionMasked == 0) {
                    if (this.mIgnoreMotionEventTillDown) {
                        this.mIgnoreMotionEventTillDown = false;
                    }
                    this.mScrollPointerId = motionEvent.getPointerId(0);
                    int x = (int) (motionEvent.getX() + 0.5f);
                    this.mLastTouchX = x;
                    this.mInitialTouchX = x;
                    int y = (int) (motionEvent.getY() + 0.5f);
                    this.mLastTouchY = y;
                    this.mInitialTouchY = y;
                    EdgeEffect edgeEffect = this.mLeftGlow;
                    if (edgeEffect == null || EdgeEffectCompat.a(edgeEffect) == Call.Parameters.DEFAULT_CAMERA_ZOOM || canScrollHorizontally(-1)) {
                        z = false;
                    } else {
                        EdgeEffectCompat.b(this.mLeftGlow, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f - (motionEvent.getY() / getHeight()));
                        z = true;
                    }
                    EdgeEffect edgeEffect2 = this.mRightGlow;
                    if (edgeEffect2 != null && EdgeEffectCompat.a(edgeEffect2) != Call.Parameters.DEFAULT_CAMERA_ZOOM && !canScrollHorizontally(1)) {
                        EdgeEffectCompat.b(this.mRightGlow, Call.Parameters.DEFAULT_CAMERA_ZOOM, motionEvent.getY() / getHeight());
                        z = true;
                    }
                    EdgeEffect edgeEffect3 = this.mTopGlow;
                    if (edgeEffect3 != null && EdgeEffectCompat.a(edgeEffect3) != Call.Parameters.DEFAULT_CAMERA_ZOOM && !canScrollVertically(-1)) {
                        EdgeEffectCompat.b(this.mTopGlow, Call.Parameters.DEFAULT_CAMERA_ZOOM, motionEvent.getX() / getWidth());
                        z = true;
                    }
                    EdgeEffect edgeEffect4 = this.mBottomGlow;
                    if (edgeEffect4 != null && EdgeEffectCompat.a(edgeEffect4) != Call.Parameters.DEFAULT_CAMERA_ZOOM && !canScrollVertically(1)) {
                        EdgeEffectCompat.b(this.mBottomGlow, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f - (motionEvent.getX() / getWidth()));
                        z = true;
                    }
                    if (z || this.mScrollState == 2) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        setScrollState(1);
                        stopNestedScroll(1);
                    }
                    int[] iArr = this.mNestedOffsets;
                    iArr[1] = 0;
                    iArr[0] = 0;
                    r(0);
                } else if (actionMasked == 1) {
                    this.mVelocityTracker.clear();
                    stopNestedScroll(0);
                } else if (actionMasked == 2) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
                    if (iFindPointerIndex >= 0) {
                        int x2 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                        int y2 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                        if (this.mScrollState != 1) {
                            int i2 = x2 - this.mInitialTouchX;
                            int i3 = y2 - this.mInitialTouchY;
                            if (!zF || Math.abs(i2) <= this.mTouchSlop) {
                                z2 = false;
                            } else {
                                this.mLastTouchX = x2;
                                z2 = true;
                            }
                            if (zG && Math.abs(i3) > this.mTouchSlop) {
                                this.mLastTouchY = y2;
                                z2 = true;
                            }
                            if (z2) {
                                setScrollState(1);
                            }
                        }
                    }
                } else if (actionMasked == 3) {
                    VelocityTracker velocityTracker2 = this.mVelocityTracker;
                    if (velocityTracker2 != null) {
                        velocityTracker2.clear();
                    }
                    stopNestedScroll(0);
                    l();
                    setScrollState(0);
                } else if (actionMasked == 5) {
                    this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
                    int x3 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                    this.mLastTouchX = x3;
                    this.mInitialTouchX = x3;
                    int y3 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                    this.mLastTouchY = y3;
                    this.mInitialTouchY = y3;
                } else if (actionMasked == 6) {
                    j(motionEvent);
                }
                if (this.mScrollState == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        Trace.beginSection(TRACE_ON_LAYOUT_TAG);
        dispatchLayout();
        Trace.endSection();
        this.mFirstLayoutComplete = true;
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            defaultOnMeasure(i2, i3);
            return;
        }
        boolean z = false;
        if (layoutManager.R()) {
            int mode = View.MeasureSpec.getMode(i2);
            int mode2 = View.MeasureSpec.getMode(i3);
            this.mLayout.f19271b.defaultOnMeasure(i2, i3);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z = true;
            }
            this.mLastAutoMeasureSkippedDueToExact = z;
            if (z || this.mAdapter == null) {
                return;
            }
            if (this.mState.d == 1) {
                d();
            }
            this.mLayout.B0(i2, i3);
            this.mState.f19317i = true;
            e();
            this.mLayout.D0(i2, i3);
            if (this.mLayout.G0()) {
                this.mLayout.B0(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.mState.f19317i = true;
                e();
                this.mLayout.D0(i2, i3);
            }
            this.mLastAutoMeasureNonExactMeasuredWidth = getMeasuredWidth();
            this.mLastAutoMeasureNonExactMeasuredHeight = getMeasuredHeight();
            return;
        }
        if (this.mHasFixedSize) {
            this.mLayout.f19271b.defaultOnMeasure(i2, i3);
            return;
        }
        if (this.mAdapterUpdateDuringMeasure) {
            startInterceptRequestLayout();
            onEnterLayoutOrScroll();
            k();
            onExitLayoutOrScroll();
            State state = this.mState;
            if (state.f19319k) {
                state.g = true;
            } else {
                this.mAdapterHelper.c();
                this.mState.g = false;
            }
            this.mAdapterUpdateDuringMeasure = false;
            stopInterceptRequestLayout(false);
        } else if (this.mState.f19319k) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        Adapter adapter = this.mAdapter;
        State state2 = this.mState;
        if (adapter != null) {
            state2.f19314e = adapter.getItemCount();
        } else {
            state2.f19314e = 0;
        }
        startInterceptRequestLayout();
        this.mLayout.f19271b.defaultOnMeasure(i2, i3);
        stopInterceptRequestLayout(false);
        this.mState.g = false;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        if (isComputingLayout()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i2, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        this.mPendingSavedState = savedState;
        super.onRestoreInstanceState(savedState.f12555b);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SavedState savedState2 = this.mPendingSavedState;
        if (savedState2 != null) {
            savedState.d = savedState2.d;
            return savedState;
        }
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            savedState.d = layoutManager.n0();
            return savedState;
        }
        savedState.d = null;
        return savedState;
    }

    public void onScrollStateChanged(int i2) {
    }

    public void onScrolled(int i2, int i3) {
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 == i4 && i3 == i5) {
            return;
        }
        invalidateGlows();
    }

    /* JADX WARN: Code duplicated, block: B:62:0x00f8 A[PHI: r1
      0x00f8: PHI (r1v50 int) = (r1v30 int), (r1v54 int) binds: [B:55:0x00e3, B:60:0x00f4] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zF;
        boolean z;
        if (!this.mLayoutSuppressed && !this.mIgnoreMotionEventTillDown) {
            OnItemTouchListener onItemTouchListener = this.mInterceptingOnItemTouchListener;
            if (onItemTouchListener == null) {
                zF = motionEvent.getAction() == 0 ? false : f(motionEvent);
            } else {
                onItemTouchListener.a(motionEvent);
                int action = motionEvent.getAction();
                if (action == 3 || action == 1) {
                    this.mInterceptingOnItemTouchListener = null;
                }
                zF = true;
            }
            if (zF) {
                VelocityTracker velocityTracker = this.mVelocityTracker;
                if (velocityTracker != null) {
                    velocityTracker.clear();
                }
                stopNestedScroll(0);
                l();
                setScrollState(0);
                return true;
            }
            LayoutManager layoutManager = this.mLayout;
            if (layoutManager != null) {
                boolean zF2 = layoutManager.f();
                boolean zG = this.mLayout.g();
                if (this.mVelocityTracker == null) {
                    this.mVelocityTracker = VelocityTracker.obtain();
                }
                int actionMasked = motionEvent.getActionMasked();
                int actionIndex = motionEvent.getActionIndex();
                if (actionMasked == 0) {
                    int[] iArr = this.mNestedOffsets;
                    iArr[1] = 0;
                    iArr[0] = 0;
                }
                MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                int[] iArr2 = this.mNestedOffsets;
                motionEventObtain.offsetLocation(iArr2[0], iArr2[1]);
                if (actionMasked != 0) {
                    if (actionMasked == 1) {
                        this.mVelocityTracker.addMovement(motionEventObtain);
                        this.mVelocityTracker.computeCurrentVelocity(1000, this.mMaxFlingVelocity);
                        float f2 = zF2 ? -this.mVelocityTracker.getXVelocity(this.mScrollPointerId) : 0.0f;
                        float f3 = zG ? -this.mVelocityTracker.getYVelocity(this.mScrollPointerId) : 0.0f;
                        if ((f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM && f3 == Call.Parameters.DEFAULT_CAMERA_ZOOM) || !fling((int) f2, (int) f3)) {
                            setScrollState(0);
                        }
                        VelocityTracker velocityTracker2 = this.mVelocityTracker;
                        if (velocityTracker2 != null) {
                            velocityTracker2.clear();
                        }
                        stopNestedScroll(0);
                        l();
                    } else if (actionMasked == 2) {
                        int iFindPointerIndex = motionEvent.findPointerIndex(this.mScrollPointerId);
                        if (iFindPointerIndex >= 0) {
                            int x = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
                            int y = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
                            int iMax = this.mLastTouchX - x;
                            int iMax2 = this.mLastTouchY - y;
                            if (this.mScrollState != 1) {
                                if (zF2) {
                                    int i2 = this.mTouchSlop;
                                    iMax = iMax > 0 ? Math.max(0, iMax - i2) : Math.min(0, iMax + i2);
                                    if (iMax != 0) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                } else {
                                    z = false;
                                }
                                if (zG) {
                                    int i3 = this.mTouchSlop;
                                    iMax2 = iMax2 > 0 ? Math.max(0, iMax2 - i3) : Math.min(0, iMax2 + i3);
                                    if (iMax2 != 0) {
                                        z = true;
                                    }
                                }
                                if (z) {
                                    setScrollState(1);
                                }
                            }
                            if (this.mScrollState == 1) {
                                int[] iArr3 = this.mReusableIntPair;
                                iArr3[0] = 0;
                                iArr3[1] = 0;
                                int iM = iMax - m(motionEvent.getY(), iMax);
                                int iN = iMax2 - n(motionEvent.getX(), iMax2);
                                if (dispatchNestedPreScroll(zF2 ? iM : 0, zG ? iN : 0, this.mReusableIntPair, this.mScrollOffset, 0)) {
                                    int[] iArr4 = this.mReusableIntPair;
                                    iM -= iArr4[0];
                                    iN -= iArr4[1];
                                    int[] iArr5 = this.mNestedOffsets;
                                    int i4 = iArr5[0];
                                    int[] iArr6 = this.mScrollOffset;
                                    iArr5[0] = i4 + iArr6[0];
                                    iArr5[1] = iArr5[1] + iArr6[1];
                                    getParent().requestDisallowInterceptTouchEvent(true);
                                }
                                int[] iArr7 = this.mScrollOffset;
                                this.mLastTouchX = x - iArr7[0];
                                this.mLastTouchY = y - iArr7[1];
                                if (scrollByInternal(zF2 ? iM : 0, zG ? iN : 0, motionEvent, 0)) {
                                    getParent().requestDisallowInterceptTouchEvent(true);
                                }
                                GapWorker gapWorker = this.mGapWorker;
                                if (gapWorker != null && (iM != 0 || iN != 0)) {
                                    gapWorker.postFromTraversal(this, iM, iN);
                                }
                            }
                        }
                    } else if (actionMasked == 3) {
                        VelocityTracker velocityTracker3 = this.mVelocityTracker;
                        if (velocityTracker3 != null) {
                            velocityTracker3.clear();
                        }
                        stopNestedScroll(0);
                        l();
                        setScrollState(0);
                    } else if (actionMasked == 5) {
                        this.mScrollPointerId = motionEvent.getPointerId(actionIndex);
                        int x2 = (int) (motionEvent.getX(actionIndex) + 0.5f);
                        this.mLastTouchX = x2;
                        this.mInitialTouchX = x2;
                        int y2 = (int) (motionEvent.getY(actionIndex) + 0.5f);
                        this.mLastTouchY = y2;
                        this.mInitialTouchY = y2;
                    } else if (actionMasked == 6) {
                        j(motionEvent);
                    }
                    motionEventObtain.recycle();
                    return true;
                }
                this.mScrollPointerId = motionEvent.getPointerId(0);
                int x3 = (int) (motionEvent.getX() + 0.5f);
                this.mLastTouchX = x3;
                this.mInitialTouchX = x3;
                int y3 = (int) (motionEvent.getY() + 0.5f);
                this.mLastTouchY = y3;
                this.mInitialTouchY = y3;
                r(0);
                this.mVelocityTracker.addMovement(motionEventObtain);
                motionEventObtain.recycle();
                return true;
            }
        }
        return false;
    }

    public final void p(Adapter adapter, boolean z, boolean z2) {
        Adapter adapter2 = this.mAdapter;
        if (adapter2 != null) {
            adapter2.unregisterAdapterDataObserver(this.mObserver);
            this.mAdapter.onDetachedFromRecyclerView(this);
        }
        if (!z || z2) {
            removeAndRecycleViews();
        }
        AdapterHelper adapterHelper = this.mAdapterHelper;
        adapterHelper.k(adapterHelper.f19134b);
        adapterHelper.k(adapterHelper.f19135c);
        adapterHelper.f19137f = 0;
        Adapter adapter3 = this.mAdapter;
        this.mAdapter = adapter;
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.mObserver);
            adapter.onAttachedToRecyclerView(this);
        }
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.X();
        }
        Recycler recycler = this.mRecycler;
        Adapter adapter4 = this.mAdapter;
        recycler.f19293a.clear();
        recycler.h();
        recycler.g(adapter3, true);
        RecycledViewPool recycledViewPoolC = recycler.c();
        if (adapter3 != null) {
            recycledViewPoolC.f19288b--;
        }
        if (!z && recycledViewPoolC.f19288b == 0) {
            SparseArray sparseArray = recycledViewPoolC.f19287a;
            for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                RecycledViewPool.ScrapData scrapData = (RecycledViewPool.ScrapData) sparseArray.valueAt(i2);
                Iterator it = scrapData.f19290a.iterator();
                while (it.hasNext()) {
                    PoolingContainer.b(((ViewHolder) it.next()).itemView);
                }
                scrapData.f19290a.clear();
            }
        }
        if (adapter4 != null) {
            recycledViewPoolC.f19288b++;
        } else {
            recycledViewPoolC.getClass();
        }
        recycler.f();
        this.mState.f19315f = true;
    }

    public void postAnimationRunner() {
        if (this.mPostedAnimatorRunner || !this.mIsAttached) {
            return;
        }
        Runnable runnable = this.mItemAnimatorRunner;
        WeakHashMap weakHashMap = ViewCompat.f12200a;
        postOnAnimation(runnable);
        this.mPostedAnimatorRunner = true;
    }

    public void processDataSetCompletelyChanged(boolean z) {
        this.mDispatchItemsChangedEvent = z | this.mDispatchItemsChangedEvent;
        this.mDataSetHasChangedAfterLayout = true;
        markKnownViewsInvalid();
    }

    public final boolean q(EdgeEffect edgeEffect, int i2, int i3) {
        if (i2 > 0) {
            return true;
        }
        float fA = EdgeEffectCompat.a(edgeEffect) * i3;
        double dLog = Math.log((Math.abs(-i2) * INFLEXION) / (this.mPhysicalCoef * SCROLL_FRICTION));
        double d = DECELERATION_RATE;
        return ((float) (Math.exp((d / (d - 1.0d)) * dLog) * ((double) (this.mPhysicalCoef * SCROLL_FRICTION)))) < fA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void r(int i2) {
        boolean zF = this.mLayout.f();
        int i3 = zF;
        if (this.mLayout.g()) {
            i3 = (zF ? 1 : 0) | 2;
        }
        startNestedScroll(i3, i2);
    }

    public void recordAnimationInfoIfBouncedHiddenView(ViewHolder viewHolder, ItemAnimator.ItemHolderInfo itemHolderInfo) {
        viewHolder.setFlags(0, 8192);
        if (this.mState.f19316h && viewHolder.isUpdated() && !viewHolder.isRemoved() && !viewHolder.shouldIgnore()) {
            this.mViewInfoStore.f19359b.e(getChangedHolderKey(viewHolder), viewHolder);
        }
        SimpleArrayMap simpleArrayMap = this.mViewInfoStore.f19358a;
        ViewInfoStore.InfoRecord infoRecordA = (ViewInfoStore.InfoRecord) simpleArrayMap.get(viewHolder);
        if (infoRecordA == null) {
            infoRecordA = ViewInfoStore.InfoRecord.a();
            simpleArrayMap.put(viewHolder, infoRecordA);
        }
        infoRecordA.f19361b = itemHolderInfo;
        infoRecordA.f19360a |= 4;
    }

    public void removeAndRecycleViews() {
        ItemAnimator itemAnimator = this.mItemAnimator;
        if (itemAnimator != null) {
            itemAnimator.j();
        }
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.r0(this.mRecycler);
            this.mLayout.s0(this.mRecycler);
        }
        Recycler recycler = this.mRecycler;
        recycler.f19293a.clear();
        recycler.h();
    }

    public boolean removeAnimatingView(View view) {
        startInterceptRequestLayout();
        ChildHelper childHelper = this.mChildHelper;
        ChildHelper.Bucket bucket = childHelper.f19142b;
        AnonymousClass6 anonymousClass6 = childHelper.f19141a;
        int i2 = childHelper.d;
        boolean z = false;
        if (i2 == 1) {
            if (childHelper.f19144e != view) {
                md.k("Cannot call removeViewIfHidden within removeView(At) for a different view");
                return false;
            }
        } else {
            if (i2 == 2) {
                md.k("Cannot call removeViewIfHidden within removeViewIfHidden");
                return false;
            }
            try {
                childHelper.d = 2;
                int iIndexOfChild = RecyclerView.this.indexOfChild(view);
                if (iIndexOfChild == -1) {
                    childHelper.e(view);
                } else if (bucket.d(iIndexOfChild)) {
                    bucket.f(iIndexOfChild);
                    childHelper.e(view);
                    anonymousClass6.b(iIndexOfChild);
                } else {
                    childHelper.d = 0;
                }
                childHelper.d = 0;
                z = true;
            } catch (Throwable th) {
                childHelper.d = 0;
                throw th;
            }
        }
        if (z) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(view);
            this.mRecycler.n(childViewHolderInt);
            this.mRecycler.k(childViewHolderInt);
            if (sVerboseLoggingEnabled) {
                Objects.toString(view);
                toString();
            }
        }
        stopInterceptRequestLayout(!z);
        return z;
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(View view, boolean z) {
        ViewHolder childViewHolderInt = getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            if (childViewHolderInt.isTmpDetached()) {
                childViewHolderInt.clearTmpDetachFlag();
            } else if (!childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder("Called removeDetachedView with a view which is not flagged as tmp detached.");
                sb.append(childViewHolderInt);
                md.n(cj.g(this, sb));
                return;
            }
        } else if (sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            md.n(cj.g(this, sb2));
            return;
        }
        view.clearAnimation();
        dispatchChildDetached(view);
        super.removeDetachedView(view, z);
    }

    public void removeItemDecoration(ItemDecoration itemDecoration) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            layoutManager.d("Cannot remove item decoration during a scroll  or layout");
        }
        this.mItemDecorations.remove(itemDecoration);
        if (this.mItemDecorations.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        markItemDecorInsetsDirty();
        requestLayout();
    }

    public void removeItemDecorationAt(int i2) {
        int itemDecorationCount = getItemDecorationCount();
        if (i2 >= 0 && i2 < itemDecorationCount) {
            removeItemDecoration(getItemDecorationAt(i2));
            return;
        }
        throw new IndexOutOfBoundsException(i2 + " is an invalid index for size " + itemDecorationCount);
    }

    public void removeOnChildAttachStateChangeListener(OnChildAttachStateChangeListener onChildAttachStateChangeListener) {
        List<OnChildAttachStateChangeListener> list = this.mOnChildAttachStateListeners;
        if (list == null) {
            return;
        }
        list.remove(onChildAttachStateChangeListener);
    }

    public void removeOnItemTouchListener(OnItemTouchListener onItemTouchListener) {
        this.mOnItemTouchListeners.remove(onItemTouchListener);
        if (this.mInterceptingOnItemTouchListener == onItemTouchListener) {
            this.mInterceptingOnItemTouchListener = null;
        }
    }

    public void removeOnScrollListener(OnScrollListener onScrollListener) {
        List<OnScrollListener> list = this.mScrollListeners;
        if (list != null) {
            list.remove(onScrollListener);
        }
    }

    public void removeRecyclerListener(RecyclerListener recyclerListener) {
        this.mRecyclerListeners.remove(recyclerListener);
    }

    public void repositionShadowingViews() {
        ViewHolder viewHolder;
        int iC = this.mChildHelper.c();
        for (int i2 = 0; i2 < iC; i2++) {
            View viewB = this.mChildHelper.b(i2);
            ViewHolder childViewHolder = getChildViewHolder(viewB);
            if (childViewHolder != null && (viewHolder = childViewHolder.mShadowingHolder) != null) {
                View view = viewHolder.itemView;
                int left = viewB.getLeft();
                int top = viewB.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        SmoothScroller smoothScroller = this.mLayout.f19273e;
        if ((smoothScroller == null || !smoothScroller.f19304e) && !isComputingLayout() && view2 != null) {
            o(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.mLayout.v0(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        int size = this.mOnItemTouchListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mOnItemTouchListeners.get(i2).d(z);
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.mInterceptRequestLayoutDepth != 0 || this.mLayoutSuppressed) {
            this.mLayoutWasDefered = true;
        } else {
            super.requestLayout();
        }
    }

    public void saveOldPositions() {
        int childCount = RecyclerView.this.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            ViewHolder childViewHolderInt = getChildViewHolderInt(RecyclerView.this.getChildAt(i2));
            if (sDebugAssertionsEnabled && childViewHolderInt.mPosition == -1 && !childViewHolderInt.isRemoved()) {
                md.k(cj.g(this, new StringBuilder("view holder cannot have position -1 unless it is removed")));
                return;
            } else {
                if (!childViewHolderInt.shouldIgnore()) {
                    childViewHolderInt.saveOldPosition();
                }
            }
        }
    }

    @Override // android.view.View
    public void scrollBy(int i2, int i3) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null || this.mLayoutSuppressed) {
            return;
        }
        boolean zF = layoutManager.f();
        boolean zG = this.mLayout.g();
        if (zF || zG) {
            if (!zF) {
                i2 = 0;
            }
            if (!zG) {
                i3 = 0;
            }
            scrollByInternal(i2, i3, null, 0);
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:32:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:34:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:35:0x0109 A[DONT_INVERT, PHI: r7
      0x0109: PHI (r7v9 boolean) = (r7v7 boolean), (r7v10 boolean) binds: [B:33:0x00f0, B:31:0x00eb] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:36:0x010b  */
    /* JADX WARN: Code duplicated, block: B:40:0x0113  */
    /* JADX WARN: Code duplicated, block: B:43:0x011c  */
    public boolean scrollByInternal(int i2, int i3, MotionEvent motionEvent, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z;
        boolean z2;
        boolean z3;
        consumePendingUpdateOperations();
        if (this.mAdapter != null) {
            int[] iArr = this.mReusableIntPair;
            iArr[0] = 0;
            iArr[1] = 0;
            scrollStep(i2, i3, iArr);
            int[] iArr2 = this.mReusableIntPair;
            int i9 = iArr2[0];
            int i10 = iArr2[1];
            i7 = i2 - i9;
            i8 = i3 - i10;
            i6 = i10;
            i5 = i9;
        } else {
            i5 = 0;
            i6 = 0;
            i7 = 0;
            i8 = 0;
        }
        if (!this.mItemDecorations.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.mReusableIntPair;
        iArr3[0] = 0;
        iArr3[1] = 0;
        dispatchNestedScroll(i5, i6, i7, i8, this.mScrollOffset, i4, iArr3);
        int[] iArr4 = this.mReusableIntPair;
        int i11 = iArr4[0];
        int i12 = i7 - i11;
        int i13 = iArr4[1];
        int i14 = i8 - i13;
        boolean z4 = (i11 == 0 && i13 == 0) ? false : true;
        int i15 = this.mLastTouchX;
        int[] iArr5 = this.mScrollOffset;
        int i16 = iArr5[0];
        this.mLastTouchX = i15 - i16;
        int i17 = this.mLastTouchY;
        int i18 = iArr5[1];
        this.mLastTouchY = i17 - i18;
        int[] iArr6 = this.mNestedOffsets;
        iArr6[0] = iArr6[0] + i16;
        iArr6[1] = iArr6[1] + i18;
        if (getOverScrollMode() != 2) {
            if (motionEvent == null || MotionEventCompat.a(motionEvent, 8194)) {
                z = true;
                z2 = false;
            } else {
                float x = motionEvent.getX();
                float f2 = i12;
                float y = motionEvent.getY();
                float f3 = i14;
                if (f2 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    ensureLeftGlow();
                    z = true;
                    z2 = false;
                    EdgeEffectCompat.b(this.mLeftGlow, (-f2) / getWidth(), 1.0f - (y / getHeight()));
                } else {
                    z = true;
                    z2 = false;
                    if (f2 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        ensureRightGlow();
                        EdgeEffectCompat.b(this.mRightGlow, f2 / getWidth(), y / getHeight());
                    } else {
                        z3 = false;
                    }
                    if (f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        ensureTopGlow();
                        EdgeEffectCompat.b(this.mTopGlow, (-f3) / getHeight(), x / getWidth());
                    } else if (f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        ensureBottomGlow();
                        EdgeEffectCompat.b(this.mBottomGlow, f3 / getHeight(), 1.0f - (x / getWidth()));
                    } else {
                        if (z3 || f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM || f3 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                            postInvalidateOnAnimation();
                        }
                        if (Build.VERSION.SDK_INT >= 31 && MotionEventCompat.a(motionEvent, 4194304)) {
                            l();
                        }
                    }
                    z3 = z;
                    if (z3) {
                        postInvalidateOnAnimation();
                    } else {
                        postInvalidateOnAnimation();
                    }
                    if (Build.VERSION.SDK_INT >= 31) {
                        l();
                    }
                }
                z3 = z;
                if (f3 < Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    ensureTopGlow();
                    EdgeEffectCompat.b(this.mTopGlow, (-f3) / getHeight(), x / getWidth());
                } else if (f3 > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    ensureBottomGlow();
                    EdgeEffectCompat.b(this.mBottomGlow, f3 / getHeight(), 1.0f - (x / getWidth()));
                } else {
                    if (z3) {
                        postInvalidateOnAnimation();
                    } else {
                        postInvalidateOnAnimation();
                    }
                    if (Build.VERSION.SDK_INT >= 31) {
                        l();
                    }
                }
                z3 = z;
                if (z3) {
                    postInvalidateOnAnimation();
                } else {
                    postInvalidateOnAnimation();
                }
                if (Build.VERSION.SDK_INT >= 31) {
                    l();
                }
            }
            considerReleasingGlowsOnScroll(i2, i3);
        } else {
            z = true;
            z2 = false;
        }
        if (i5 != 0 || i6 != 0) {
            dispatchOnScrolled(i5, i6);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z4 && i5 == 0 && i6 == 0) ? z2 : z;
    }

    public void scrollStep(int i2, int i3, int[] iArr) {
        startInterceptRequestLayout();
        onEnterLayoutOrScroll();
        Trace.beginSection(TRACE_SCROLL_TAG);
        fillRemainingScrollValues(this.mState);
        int iX0 = i2 != 0 ? this.mLayout.x0(i2, this.mRecycler, this.mState) : 0;
        int iZ0 = i3 != 0 ? this.mLayout.z0(i3, this.mRecycler, this.mState) : 0;
        Trace.endSection();
        repositionShadowingViews();
        onExitLayoutOrScroll();
        stopInterceptRequestLayout(false);
        if (iArr != null) {
            iArr[0] = iX0;
            iArr[1] = iZ0;
        }
    }

    @Override // android.view.View
    public void scrollTo(int i2, int i3) {
    }

    public void scrollToPosition(int i2) {
        if (this.mLayoutSuppressed) {
            return;
        }
        stopScroll();
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null) {
            return;
        }
        layoutManager.y0(i2);
        awakenScrollBars();
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (shouldDeferAccessibilityEvent(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(RecyclerViewAccessibilityDelegate recyclerViewAccessibilityDelegate) {
        this.mAccessibilityDelegate = recyclerViewAccessibilityDelegate;
        ViewCompat.t(this, recyclerViewAccessibilityDelegate);
    }

    public void setAdapter(Adapter adapter) {
        setLayoutFrozen(false);
        p(adapter, false, true);
        processDataSetCompletelyChanged(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(ChildDrawingOrderCallback childDrawingOrderCallback) {
        if (childDrawingOrderCallback == this.mChildDrawingOrderCallback) {
            return;
        }
        this.mChildDrawingOrderCallback = childDrawingOrderCallback;
        setChildrenDrawingOrderEnabled(childDrawingOrderCallback != null);
    }

    public boolean setChildImportantForAccessibilityInternal(ViewHolder viewHolder, int i2) {
        if (!isComputingLayout()) {
            viewHolder.itemView.setImportantForAccessibility(i2);
            return true;
        }
        viewHolder.mPendingAccessibilityState = i2;
        this.mPendingAccessibilityImportanceChange.add(viewHolder);
        return false;
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.mClipToPadding) {
            invalidateGlows();
        }
        this.mClipToPadding = z;
        super.setClipToPadding(z);
        if (this.mFirstLayoutComplete) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(EdgeEffectFactory edgeEffectFactory) {
        edgeEffectFactory.getClass();
        this.mEdgeEffectFactory = edgeEffectFactory;
        invalidateGlows();
    }

    public void setHasFixedSize(boolean z) {
        this.mHasFixedSize = z;
    }

    public void setItemAnimator(ItemAnimator itemAnimator) {
        ItemAnimator itemAnimator2 = this.mItemAnimator;
        if (itemAnimator2 != null) {
            itemAnimator2.j();
            this.mItemAnimator.f19262a = null;
        }
        this.mItemAnimator = itemAnimator;
        if (itemAnimator != null) {
            itemAnimator.f19262a = this.mItemAnimatorListener;
        }
    }

    public void setItemViewCacheSize(int i2) {
        Recycler recycler = this.mRecycler;
        recycler.f19296e = i2;
        recycler.o();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(LayoutManager layoutManager) {
        AnonymousClass6 anonymousClass6;
        if (layoutManager == this.mLayout) {
            return;
        }
        stopScroll();
        if (this.mLayout != null) {
            ItemAnimator itemAnimator = this.mItemAnimator;
            if (itemAnimator != null) {
                itemAnimator.j();
            }
            this.mLayout.r0(this.mRecycler);
            this.mLayout.s0(this.mRecycler);
            Recycler recycler = this.mRecycler;
            recycler.f19293a.clear();
            recycler.h();
            if (this.mIsAttached) {
                LayoutManager layoutManager2 = this.mLayout;
                layoutManager2.g = false;
                layoutManager2.Z(this);
            }
            this.mLayout.E0(null);
            this.mLayout = null;
        } else {
            Recycler recycler2 = this.mRecycler;
            recycler2.f19293a.clear();
            recycler2.h();
        }
        ChildHelper childHelper = this.mChildHelper;
        childHelper.f19142b.g();
        ArrayList arrayList = childHelper.f19143c;
        int size = arrayList.size() - 1;
        while (true) {
            anonymousClass6 = childHelper.f19141a;
            if (size < 0) {
                break;
            }
            anonymousClass6.a((View) arrayList.get(size));
            arrayList.remove(size);
            size--;
        }
        RecyclerView recyclerView = RecyclerView.this;
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            recyclerView.dispatchChildDetached(childAt);
            childAt.clearAnimation();
        }
        recyclerView.removeAllViews();
        this.mLayout = layoutManager;
        if (layoutManager != null) {
            if (layoutManager.f19271b != null) {
                StringBuilder sb = new StringBuilder("LayoutManager ");
                sb.append(layoutManager);
                sb.append(" is already attached to a RecyclerView:");
                md.n(cj.g(layoutManager.f19271b, sb));
                return;
            }
            layoutManager.E0(this);
            if (this.mIsAttached) {
                LayoutManager layoutManager3 = this.mLayout;
                layoutManager3.g = true;
                layoutManager3.Y(this);
            }
        }
        this.mRecycler.o();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
        } else {
            md.n("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        getScrollingChildHelper().g(z);
    }

    public void setOnFlingListener(OnFlingListener onFlingListener) {
        this.mOnFlingListener = onFlingListener;
    }

    @Deprecated
    public void setOnScrollListener(OnScrollListener onScrollListener) {
        this.mScrollListener = onScrollListener;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.mPreserveFocusAfterLayout = z;
    }

    public void setRecycledViewPool(RecycledViewPool recycledViewPool) {
        Recycler recycler = this.mRecycler;
        RecyclerView recyclerView = RecyclerView.this;
        recycler.g(recyclerView.mAdapter, false);
        RecycledViewPool recycledViewPool2 = recycler.g;
        if (recycledViewPool2 != null) {
            recycledViewPool2.f19288b--;
        }
        recycler.g = recycledViewPool;
        if (recycledViewPool != null && recyclerView.getAdapter() != null) {
            recycler.g.f19288b++;
        }
        recycler.f();
    }

    @Deprecated
    public void setRecyclerListener(RecyclerListener recyclerListener) {
        this.mRecyclerListener = recyclerListener;
    }

    public void setScrollState(int i2) {
        SmoothScroller smoothScroller;
        if (i2 == this.mScrollState) {
            return;
        }
        if (sVerboseLoggingEnabled) {
            new Exception();
        }
        this.mScrollState = i2;
        if (i2 != 2) {
            this.mViewFlinger.stop();
            LayoutManager layoutManager = this.mLayout;
            if (layoutManager != null && (smoothScroller = layoutManager.f19273e) != null) {
                smoothScroller.f();
            }
        }
        dispatchOnScrollStateChanged(i2);
    }

    public void setScrollingTouchSlop(int i2) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i2 != 1) {
            this.mTouchSlop = viewConfiguration.getScaledTouchSlop();
        } else {
            this.mTouchSlop = viewConfiguration.getScaledPagingTouchSlop();
        }
    }

    public void setViewCacheExtension(ViewCacheExtension viewCacheExtension) {
        this.mRecycler.f19298h = viewCacheExtension;
    }

    public boolean shouldDeferAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (!isComputingLayout()) {
            return false;
        }
        int contentChangeTypes = accessibilityEvent != null ? accessibilityEvent.getContentChangeTypes() : 0;
        this.mEatenAccessibilityChangeFlags |= contentChangeTypes != 0 ? contentChangeTypes : 0;
        return true;
    }

    public void smoothScrollBy(int i2, int i3, Interpolator interpolator, int i4, boolean z) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null || this.mLayoutSuppressed) {
            return;
        }
        if (!layoutManager.f()) {
            i2 = 0;
        }
        if (!this.mLayout.g()) {
            i3 = 0;
        }
        if (i2 == 0 && i3 == 0) {
            return;
        }
        if (i4 != Integer.MIN_VALUE && i4 <= 0) {
            scrollBy(i2, i3);
            return;
        }
        if (z) {
            int i5 = i2 != 0 ? 1 : 0;
            if (i3 != 0) {
                i5 |= 2;
            }
            startNestedScroll(i5, 1);
        }
        this.mViewFlinger.smoothScrollBy(i2, i3, i4, interpolator);
    }

    public void smoothScrollToPosition(int i2) {
        LayoutManager layoutManager;
        if (this.mLayoutSuppressed || (layoutManager = this.mLayout) == null) {
            return;
        }
        layoutManager.I0(this, i2);
    }

    public void startInterceptRequestLayout() {
        int i2 = this.mInterceptRequestLayoutDepth + 1;
        this.mInterceptRequestLayoutDepth = i2;
        if (i2 != 1 || this.mLayoutSuppressed) {
            return;
        }
        this.mLayoutWasDefered = false;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i2) {
        return getScrollingChildHelper().h(i2, 0);
    }

    public void stopInterceptRequestLayout(boolean z) {
        if (this.mInterceptRequestLayoutDepth < 1) {
            if (sDebugAssertionsEnabled) {
                md.k(cj.g(this, new StringBuilder("stopInterceptRequestLayout was called more times than startInterceptRequestLayout.")));
                return;
            }
            this.mInterceptRequestLayoutDepth = 1;
        }
        if (!z && !this.mLayoutSuppressed) {
            this.mLayoutWasDefered = false;
        }
        if (this.mInterceptRequestLayoutDepth == 1) {
            if (z && this.mLayoutWasDefered && !this.mLayoutSuppressed && this.mLayout != null && this.mAdapter != null) {
                dispatchLayout();
            }
            if (!this.mLayoutSuppressed) {
                this.mLayoutWasDefered = false;
            }
        }
        this.mInterceptRequestLayoutDepth--;
    }

    @Override // android.view.View
    public void stopNestedScroll() {
        getScrollingChildHelper().i(0);
    }

    public void stopScroll() {
        SmoothScroller smoothScroller;
        setScrollState(0);
        this.mViewFlinger.stop();
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager == null || (smoothScroller = layoutManager.f19273e) == null) {
            return;
        }
        smoothScroller.f();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.mLayoutSuppressed) {
            assertNotInLayoutOrScroll("Do not suppressLayout in layout or scroll");
            if (z) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0));
                this.mLayoutSuppressed = true;
                this.mIgnoreMotionEventTillDown = true;
                stopScroll();
                return;
            }
            this.mLayoutSuppressed = false;
            if (this.mLayoutWasDefered && this.mLayout != null && this.mAdapter != null) {
                requestLayout();
            }
            this.mLayoutWasDefered = false;
        }
    }

    public void swapAdapter(Adapter adapter, boolean z) {
        setLayoutFrozen(false);
        p(adapter, true, z);
        processDataSetCompletelyChanged(true);
        requestLayout();
    }

    public void viewRangeUpdate(int i2, int i3, Object obj) {
        int i4;
        int i5;
        int childCount = RecyclerView.this.getChildCount();
        int i6 = i3 + i2;
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = RecyclerView.this.getChildAt(i7);
            ViewHolder childViewHolderInt = getChildViewHolderInt(childAt);
            if (childViewHolderInt != null && !childViewHolderInt.shouldIgnore() && (i5 = childViewHolderInt.mPosition) >= i2 && i5 < i6) {
                childViewHolderInt.addFlags(2);
                childViewHolderInt.addChangePayload(obj);
                ((LayoutParams) childAt.getLayoutParams()).f19286c = true;
            }
        }
        Recycler recycler = this.mRecycler;
        ArrayList arrayList = recycler.f19295c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ViewHolder viewHolder = (ViewHolder) arrayList.get(size);
            if (viewHolder != null && (i4 = viewHolder.mPosition) >= i2 && i4 < i6) {
                viewHolder.addFlags(2);
                recycler.i(size);
            }
        }
    }

    public static abstract class AdapterDataObserver {
        public void onChanged() {
        }

        public void onItemRangeChanged(int i2, int i3, Object obj) {
            onItemRangeChanged(i2, i3);
        }

        public void onItemRangeInserted(int i2, int i3) {
        }

        public void onItemRangeMoved(int i2, int i3, int i4) {
        }

        public void onItemRangeRemoved(int i2, int i3) {
        }

        public void onStateRestorationPolicyChanged() {
        }

        public void onItemRangeChanged(int i2, int i3) {
        }
    }

    public static abstract class ItemDecoration {
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, State state) {
            getItemOffsets(rect, ((LayoutParams) view.getLayoutParams()).f19284a.getLayoutPosition(), recyclerView);
        }

        public void onDraw(Canvas canvas, RecyclerView recyclerView, State state) {
            onDraw(canvas, recyclerView);
        }

        public void onDrawOver(Canvas canvas, RecyclerView recyclerView, State state) {
            onDrawOver(canvas, recyclerView);
        }

        @Deprecated
        public void onDraw(Canvas canvas, RecyclerView recyclerView) {
        }

        @Deprecated
        public void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
        }

        @Deprecated
        public void getItemOffsets(Rect rect, int i2, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();
        public Parcelable d;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.d = parcel.readParcelable(classLoader == null ? LayoutManager.class.getClassLoader() : classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeParcelable(this.d, 0);
        }

        /* JADX INFO: renamed from: androidx.recyclerview.widget.RecyclerView$SavedState$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i2) {
                return new SavedState[i2];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }
        }
    }

    public static abstract class Adapter<VH extends ViewHolder> {
        private final AdapterDataObservable mObservable = new AdapterDataObservable();
        private boolean mHasStableIds = false;
        private StateRestorationPolicy mStateRestorationPolicy = StateRestorationPolicy.ALLOW;

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        public static final class StateRestorationPolicy {
            private static final /* synthetic */ StateRestorationPolicy[] $VALUES;
            public static final StateRestorationPolicy ALLOW;
            public static final StateRestorationPolicy PREVENT;
            public static final StateRestorationPolicy PREVENT_WHEN_EMPTY;

            static {
                StateRestorationPolicy stateRestorationPolicy = new StateRestorationPolicy("ALLOW", 0);
                ALLOW = stateRestorationPolicy;
                StateRestorationPolicy stateRestorationPolicy2 = new StateRestorationPolicy("PREVENT_WHEN_EMPTY", 1);
                PREVENT_WHEN_EMPTY = stateRestorationPolicy2;
                StateRestorationPolicy stateRestorationPolicy3 = new StateRestorationPolicy("PREVENT", 2);
                PREVENT = stateRestorationPolicy3;
                $VALUES = new StateRestorationPolicy[]{stateRestorationPolicy, stateRestorationPolicy2, stateRestorationPolicy3};
            }

            public static StateRestorationPolicy valueOf(String str) {
                return (StateRestorationPolicy) Enum.valueOf(StateRestorationPolicy.class, str);
            }

            public static StateRestorationPolicy[] values() {
                return (StateRestorationPolicy[]) $VALUES.clone();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void bindViewHolder(VH vh, int i2) {
            boolean z = vh.mBindingAdapter == null;
            if (z) {
                vh.mPosition = i2;
                if (hasStableIds()) {
                    vh.mItemId = getItemId(i2);
                }
                vh.setFlags(1, 519);
                if (Trace.isEnabled()) {
                    Trace.beginSection(String.format("RV onBindViewHolder type=0x%X", Integer.valueOf(vh.mItemViewType)));
                }
            }
            vh.mBindingAdapter = this;
            if (RecyclerView.sDebugAssertionsEnabled) {
                if (vh.itemView.getParent() == null && vh.itemView.isAttachedToWindow() != vh.isTmpDetached()) {
                    throw new IllegalStateException("Temp-detached state out of sync with reality. holder.isTmpDetached(): " + vh.isTmpDetached() + ", attached to window: " + vh.itemView.isAttachedToWindow() + ", holder: " + vh);
                }
                if (vh.itemView.getParent() == null && vh.itemView.isAttachedToWindow()) {
                    a61.q(vh, "Attempting to bind attached holder with no parent (AKA temp detached): ");
                    return;
                }
            }
            onBindViewHolder(vh, i2, vh.getUnmodifiedPayloads());
            if (z) {
                vh.clearPayload();
                ViewGroup.LayoutParams layoutParams = vh.itemView.getLayoutParams();
                if (layoutParams instanceof LayoutParams) {
                    ((LayoutParams) layoutParams).f19286c = true;
                }
                Trace.endSection();
            }
        }

        public boolean canRestoreState() {
            int iOrdinal = this.mStateRestorationPolicy.ordinal();
            if (iOrdinal != 1) {
                return iOrdinal != 2;
            }
            return getItemCount() > 0;
        }

        public final VH createViewHolder(ViewGroup viewGroup, int i2) {
            try {
                if (Trace.isEnabled()) {
                    Trace.beginSection(String.format("RV onCreateViewHolder type=0x%X", Integer.valueOf(i2)));
                }
                VH vh = (VH) onCreateViewHolder(viewGroup, i2);
                if (vh.itemView.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                vh.mItemViewType = i2;
                Trace.endSection();
                return vh;
            } catch (Throwable th) {
                Trace.endSection();
                throw th;
            }
        }

        public int findRelativeAdapterPositionIn(Adapter<? extends ViewHolder> adapter, ViewHolder viewHolder, int i2) {
            if (adapter == this) {
                return i2;
            }
            return -1;
        }

        public abstract int getItemCount();

        public long getItemId(int i2) {
            return -1L;
        }

        public int getItemViewType(int i2) {
            return 0;
        }

        public final StateRestorationPolicy getStateRestorationPolicy() {
            return this.mStateRestorationPolicy;
        }

        public final boolean hasObservers() {
            return this.mObservable.a();
        }

        public final boolean hasStableIds() {
            return this.mHasStableIds;
        }

        public final void notifyDataSetChanged() {
            this.mObservable.b();
        }

        public final void notifyItemChanged(int i2) {
            this.mObservable.d(i2, 1, null);
        }

        public final void notifyItemInserted(int i2) {
            this.mObservable.e(i2, 1);
        }

        public final void notifyItemMoved(int i2, int i3) {
            this.mObservable.c(i2, i3);
        }

        public final void notifyItemRangeChanged(int i2, int i3) {
            this.mObservable.d(i2, i3, null);
        }

        public final void notifyItemRangeInserted(int i2, int i3) {
            this.mObservable.e(i2, i3);
        }

        public final void notifyItemRangeRemoved(int i2, int i3) {
            this.mObservable.f(i2, i3);
        }

        public final void notifyItemRemoved(int i2) {
            this.mObservable.f(i2, 1);
        }

        public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        }

        public abstract void onBindViewHolder(ViewHolder viewHolder, int i2);

        public void onBindViewHolder(VH vh, int i2, List<Object> list) {
            onBindViewHolder(vh, i2);
        }

        public abstract ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i2);

        public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        }

        public boolean onFailedToRecycleView(VH vh) {
            return false;
        }

        public void onViewAttachedToWindow(VH vh) {
        }

        public void onViewDetachedFromWindow(VH vh) {
        }

        public void onViewRecycled(VH vh) {
        }

        public void registerAdapterDataObserver(AdapterDataObserver adapterDataObserver) {
            this.mObservable.registerObserver(adapterDataObserver);
        }

        public void setHasStableIds(boolean z) {
            if (hasObservers()) {
                md.k("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            } else {
                this.mHasStableIds = z;
            }
        }

        public void setStateRestorationPolicy(StateRestorationPolicy stateRestorationPolicy) {
            this.mStateRestorationPolicy = stateRestorationPolicy;
            this.mObservable.g();
        }

        public void unregisterAdapterDataObserver(AdapterDataObserver adapterDataObserver) {
            this.mObservable.unregisterObserver(adapterDataObserver);
        }

        public final void notifyItemRangeChanged(int i2, int i3, Object obj) {
            this.mObservable.d(i2, i3, obj);
        }

        public final void notifyItemChanged(int i2, Object obj) {
            this.mObservable.d(i2, 1, obj);
        }
    }

    public void stopNestedScroll(int i2) {
        getScrollingChildHelper().i(i2);
    }

    public boolean hasNestedScrollingParent(int i2) {
        return getScrollingChildHelper().f(i2);
    }

    public boolean startNestedScroll(int i2, int i3) {
        return getScrollingChildHelper().h(i2, i3);
    }

    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return getScrollingChildHelper().c(i2, i3, iArr, iArr2, i4);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ViewHolder f19284a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Rect f19285b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f19286c;
        public boolean d;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f19285b = new Rect();
            this.f19286c = true;
            this.d = false;
        }

        public LayoutParams(int i2, int i3) {
            super(i2, i3);
            this.f19285b = new Rect();
            this.f19286c = true;
            this.d = false;
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f19285b = new Rect();
            this.f19286c = true;
            this.d = false;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f19285b = new Rect();
            this.f19286c = true;
            this.d = false;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.LayoutParams) layoutParams);
            this.f19285b = new Rect();
            this.f19286c = true;
            this.d = false;
        }
    }

    public static abstract class SmoothScroller {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public RecyclerView f19302b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public LayoutManager f19303c;
        public boolean d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f19304e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public View f19305f;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f19301a = -1;
        public final Action g = new Action(0, 0);

        public interface ScrollVectorProvider {
            PointF a(int i2);
        }

        public PointF a(int i2) {
            Object obj = this.f19303c;
            if (obj instanceof ScrollVectorProvider) {
                return ((ScrollVectorProvider) obj).a(i2);
            }
            return null;
        }

        public final void b(int i2, int i3) {
            PointF pointFA;
            RecyclerView recyclerView = this.f19302b;
            if (this.f19301a == -1 || recyclerView == null) {
                f();
            }
            if (this.d && this.f19305f == null && this.f19303c != null && (pointFA = a(this.f19301a)) != null) {
                float f2 = pointFA.x;
                if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM || pointFA.y != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                    recyclerView.scrollStep((int) Math.signum(f2), (int) Math.signum(pointFA.y), null);
                }
            }
            this.d = false;
            View view = this.f19305f;
            Action action = this.g;
            if (view != null) {
                if (this.f19302b.getChildLayoutPosition(view) == this.f19301a) {
                    View view2 = this.f19305f;
                    State state = recyclerView.mState;
                    e(view2, action);
                    action.a(recyclerView);
                    f();
                } else {
                    this.f19305f = null;
                }
            }
            if (this.f19304e) {
                State state2 = recyclerView.mState;
                c(i2, i3, action);
                boolean z = action.d >= 0;
                action.a(recyclerView);
                if (z && this.f19304e) {
                    this.d = true;
                    recyclerView.mViewFlinger.postOnAnimation();
                }
            }
        }

        public abstract void c(int i2, int i3, Action action);

        public abstract void d();

        public abstract void e(View view, Action action);

        public final void f() {
            if (this.f19304e) {
                this.f19304e = false;
                d();
                this.f19302b.mState.f19311a = -1;
                this.f19305f = null;
                this.f19301a = -1;
                this.d = false;
                LayoutManager layoutManager = this.f19303c;
                if (layoutManager.f19273e == this) {
                    layoutManager.f19273e = null;
                }
                this.f19303c = null;
                this.f19302b = null;
            }
        }

        public static class Action {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f19306a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f19307b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f19308c;
            public int d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public Interpolator f19309e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public boolean f19310f;

            public Action(int i2, int i3, int i4, Interpolator interpolator) {
                this.d = -1;
                this.f19310f = false;
                this.f19306a = i2;
                this.f19307b = i3;
                this.f19308c = i4;
                this.f19309e = interpolator;
            }

            public final void a(RecyclerView recyclerView) {
                int i2 = this.d;
                if (i2 >= 0) {
                    this.d = -1;
                    recyclerView.jumpToPositionForSmoothScroller(i2);
                    this.f19310f = false;
                } else if (this.f19310f) {
                    Interpolator interpolator = this.f19309e;
                    if (interpolator != null && this.f19308c < 1) {
                        md.k("If you provide an interpolator, you must set a positive duration");
                        return;
                    }
                    int i3 = this.f19308c;
                    if (i3 < 1) {
                        md.k("Scroll duration must be a positive number");
                    } else {
                        recyclerView.mViewFlinger.smoothScrollBy(this.f19306a, this.f19307b, i3, interpolator);
                        this.f19310f = false;
                    }
                }
            }

            public Action(int i2, int i3, int i4) {
                this(i2, i3, i4, null);
            }

            public Action(int i2, int i3) {
                this(i2, i3, Integer.MIN_VALUE, null);
            }
        }
    }

    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr, int i6) {
        return getScrollingChildHelper().d(i2, i3, i4, i5, iArr, i6, null);
    }

    public final void dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr, int i6, int[] iArr2) {
        getScrollingChildHelper().d(i2, i3, i4, i5, iArr, i6, iArr2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        LayoutManager layoutManager = this.mLayout;
        if (layoutManager != null) {
            return layoutManager.v(layoutParams);
        }
        md.k(cj.g(this, new StringBuilder("RecyclerView has no LayoutManager")));
        return null;
    }

    public void addItemDecoration(ItemDecoration itemDecoration) {
        addItemDecoration(itemDecoration, -1);
    }

    public void smoothScrollBy(int i2, int i3, Interpolator interpolator) {
        smoothScrollBy(i2, i3, interpolator, Integer.MIN_VALUE);
    }

    public void smoothScrollBy(int i2, int i3, Interpolator interpolator, int i4) {
        smoothScrollBy(i2, i3, interpolator, i4, false);
    }

    public void smoothScrollBy(int i2, int i3) {
        smoothScrollBy(i2, i3, null);
    }

    public void onExitLayoutOrScroll() {
        onExitLayoutOrScroll(true);
    }

    @Deprecated
    public ViewHolder findViewHolderForPosition(int i2) {
        return findViewHolderForPosition(i2, false);
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.vuitton.android.R.attr.recyclerViewStyle);
    }

    public RecyclerView(Context context) {
        this(context, null);
    }
}
