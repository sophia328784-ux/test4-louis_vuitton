package com.google.android.material.search;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.BackEventCompat;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.graphics.drawable.DrawerArrowDrawable;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.Insets;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$styleable;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.internal.ClippableRoundedCornerLayout;
import com.google.android.material.internal.FadeThroughDrawable;
import com.google.android.material.internal.ReversableAnimatedValueInterpolator;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.internal.ToolbarUtils;
import com.google.android.material.internal.TouchObserverFrameLayout;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.motion.MaterialBackHandler;
import com.google.android.material.motion.MaterialBackOrchestrator;
import com.google.android.material.motion.MaterialMainContainerBackHelper;
import com.google.android.material.search.SearchView;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import com.vuitton.android.R;
import defpackage.d5;
import defpackage.ft;
import defpackage.kc0;
import defpackage.tu0;
import defpackage.uu0;
import defpackage.vu0;
import defpackage.wu0;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Objects;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class SearchView extends FrameLayout implements CoordinatorLayout.AttachedBehavior, MaterialBackHandler {
    public static final /* synthetic */ int F = 0;
    public final int A;
    public boolean B;
    public boolean C;
    public TransitionState D;
    public HashMap E;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final View f32887b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ClippableRoundedCornerLayout f32888c;
    public final View d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f32889e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final FrameLayout f32890f;
    public final FrameLayout g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final MaterialToolbar f32891h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Toolbar f32892i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final TextView f32893j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final LinearLayout f32894k;
    public final EditText l;
    public final ImageButton m;
    public final View n;
    public final TouchObserverFrameLayout o;
    public final boolean p;
    public final SearchViewAnimationHelper q;
    public final MaterialBackOrchestrator r;
    public final boolean s;
    public final ElevationOverlayProvider t;
    public final LinkedHashSet u;
    public SearchBar v;
    public int w;
    public boolean x;
    public boolean y;
    public boolean z;

    public interface TransitionListener {
        void a();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class TransitionState {
        private static final /* synthetic */ TransitionState[] $VALUES;
        public static final TransitionState HIDDEN;
        public static final TransitionState HIDING;
        public static final TransitionState SHOWING;
        public static final TransitionState SHOWN;

        static {
            TransitionState transitionState = new TransitionState("HIDING", 0);
            HIDING = transitionState;
            TransitionState transitionState2 = new TransitionState("HIDDEN", 1);
            HIDDEN = transitionState2;
            TransitionState transitionState3 = new TransitionState("SHOWING", 2);
            SHOWING = transitionState3;
            TransitionState transitionState4 = new TransitionState("SHOWN", 3);
            SHOWN = transitionState4;
            $VALUES = new TransitionState[]{transitionState, transitionState2, transitionState3, transitionState4};
        }

        public static TransitionState valueOf(String str) {
            return (TransitionState) Enum.valueOf(TransitionState.class, str);
        }

        public static TransitionState[] values() {
            return (TransitionState[]) $VALUES.clone();
        }
    }

    public SearchView(Context context, AttributeSet attributeSet, int i2) {
        super(MaterialThemeOverlay.b(context, attributeSet, i2, R.style.Widget_Material3_SearchView), attributeSet, i2);
        this.r = new MaterialBackOrchestrator(this);
        this.u = new LinkedHashSet();
        this.w = 16;
        this.D = TransitionState.HIDDEN;
        Context context2 = getContext();
        TypedArray typedArrayD = ThemeEnforcement.d(context2, attributeSet, R$styleable.O, i2, R.style.Widget_Material3_SearchView, new int[0]);
        this.A = typedArrayD.getColor(11, 0);
        int resourceId = typedArrayD.getResourceId(16, -1);
        int resourceId2 = typedArrayD.getResourceId(0, -1);
        String string = typedArrayD.getString(3);
        String string2 = typedArrayD.getString(4);
        String string3 = typedArrayD.getString(24);
        boolean z = typedArrayD.getBoolean(27, false);
        this.x = typedArrayD.getBoolean(8, true);
        this.y = typedArrayD.getBoolean(7, true);
        boolean z2 = typedArrayD.getBoolean(17, false);
        this.z = typedArrayD.getBoolean(9, true);
        this.s = typedArrayD.getBoolean(10, true);
        typedArrayD.recycle();
        LayoutInflater.from(context2).inflate(R.layout.mtrl_search_view, this);
        this.p = true;
        this.f32887b = findViewById(R.id.open_search_view_scrim);
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = (ClippableRoundedCornerLayout) findViewById(R.id.open_search_view_root);
        this.f32888c = clippableRoundedCornerLayout;
        this.d = findViewById(R.id.open_search_view_background);
        View viewFindViewById = findViewById(R.id.open_search_view_status_bar_spacer);
        this.f32889e = viewFindViewById;
        this.f32890f = (FrameLayout) findViewById(R.id.open_search_view_header_container);
        this.g = (FrameLayout) findViewById(R.id.open_search_view_toolbar_container);
        MaterialToolbar materialToolbar = (MaterialToolbar) findViewById(R.id.open_search_view_toolbar);
        this.f32891h = materialToolbar;
        this.f32892i = (Toolbar) findViewById(R.id.open_search_view_dummy_toolbar);
        this.f32893j = (TextView) findViewById(R.id.open_search_view_search_prefix);
        this.f32894k = (LinearLayout) findViewById(R.id.open_search_view_text_container);
        EditText editText = (EditText) findViewById(R.id.open_search_view_edit_text);
        this.l = editText;
        ImageButton imageButton = (ImageButton) findViewById(R.id.open_search_view_clear_button);
        this.m = imageButton;
        View viewFindViewById2 = findViewById(R.id.open_search_view_divider);
        this.n = viewFindViewById2;
        TouchObserverFrameLayout touchObserverFrameLayout = (TouchObserverFrameLayout) findViewById(R.id.open_search_view_content_container);
        this.o = touchObserverFrameLayout;
        this.q = new SearchViewAnimationHelper(this);
        this.t = new ElevationOverlayProvider(context2);
        clippableRoundedCornerLayout.setOnTouchListener(new wu0(0));
        setUpBackgroundViewElevationOverlay(getOverlayElevation());
        setUpHeaderLayout(resourceId);
        setSearchPrefixText(string3);
        if (resourceId2 != -1) {
            editText.setTextAppearance(resourceId2);
        }
        editText.setText(string);
        editText.setHint(string2);
        if (z2) {
            materialToolbar.setNavigationIcon((Drawable) null);
        } else {
            materialToolbar.setNavigationOnClickListener(new tu0(this, 2));
            if (z) {
                DrawerArrowDrawable drawerArrowDrawable = new DrawerArrowDrawable(getContext());
                int iB = MaterialColors.b(R.attr.colorOnSurface, this);
                Paint paint = drawerArrowDrawable.f890a;
                if (iB != paint.getColor()) {
                    paint.setColor(iB);
                    drawerArrowDrawable.invalidateSelf();
                }
                materialToolbar.setNavigationIcon(drawerArrowDrawable);
            }
        }
        imageButton.setOnClickListener(new tu0(this, 0));
        editText.addTextChangedListener(new TextWatcher() { // from class: com.google.android.material.search.SearchView.1
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i3, int i4, int i5) {
                SearchView.this.m.setVisibility(charSequence.length() > 0 ? 0 : 8);
            }
        });
        touchObserverFrameLayout.setOnTouchListener(new d5(this, 3));
        ViewUtils.b(materialToolbar, new vu0(this));
        final ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewFindViewById2.getLayoutParams();
        final int i3 = marginLayoutParams.leftMargin;
        final int i4 = marginLayoutParams.rightMargin;
        ViewCompat.x(viewFindViewById2, new OnApplyWindowInsetsListener() { // from class: su0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                int i5 = SearchView.F;
                Insets insetsE = windowInsetsCompat.e(647);
                int i6 = i3 + insetsE.f12054a;
                ViewGroup.MarginLayoutParams marginLayoutParams2 = marginLayoutParams;
                marginLayoutParams2.leftMargin = i6;
                marginLayoutParams2.rightMargin = i4 + insetsE.f12056c;
                return windowInsetsCompat;
            }
        });
        setUpStatusBarSpacer(getStatusBarHeight());
        ViewCompat.x(viewFindViewById, new vu0(this));
    }

    public static /* synthetic */ void e(SearchView searchView, WindowInsetsCompat windowInsetsCompat) {
        int i2 = windowInsetsCompat.e(647).f12055b;
        searchView.setUpStatusBarSpacer(i2);
        if (searchView.C) {
            return;
        }
        searchView.setStatusBarSpacerEnabledInternal(i2 > 0);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:12:0x001b  */
    private Window getActivityWindow() {
        Activity activity;
        for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                activity = (Activity) context;
                if (activity == null) {
                    return null;
                }
                return activity.getWindow();
            }
        }
        activity = null;
        if (activity == null) {
            return null;
        }
        return activity.getWindow();
    }

    private float getOverlayElevation() {
        SearchBar searchBar = this.v;
        return searchBar != null ? searchBar.getCompatElevation() : getResources().getDimension(R.dimen.m3_searchview_elevation);
    }

    private int getStatusBarHeight() {
        int identifier = getResources().getIdentifier("status_bar_height", "dimen", ReferenceApiV3ConstKt.OS_NAME);
        if (identifier > 0) {
            return getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    private void setStatusBarSpacerEnabledInternal(boolean z) {
        this.f32889e.setVisibility(z ? 0 : 8);
    }

    private void setUpBackgroundViewElevationOverlay(float f2) {
        View view;
        ElevationOverlayProvider elevationOverlayProvider = this.t;
        if (elevationOverlayProvider == null || (view = this.d) == null) {
            return;
        }
        view.setBackgroundColor(elevationOverlayProvider.a(f2, this.A));
    }

    private void setUpHeaderLayout(int i2) {
        if (i2 != -1) {
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
            FrameLayout frameLayout = this.f32890f;
            frameLayout.addView(layoutInflaterFrom.inflate(i2, (ViewGroup) frameLayout, false));
            frameLayout.setVisibility(0);
        }
    }

    private void setUpStatusBarSpacer(int i2) {
        View view = this.f32889e;
        if (view.getLayoutParams().height != i2) {
            view.getLayoutParams().height = i2;
            view.requestLayout();
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void a() {
        if (i() || this.v == null || Build.VERSION.SDK_INT < 34) {
            return;
        }
        SearchViewAnimationHelper searchViewAnimationHelper = this.q;
        MaterialMainContainerBackHelper materialMainContainerBackHelper = searchViewAnimationHelper.n;
        SearchBar searchBar = searchViewAnimationHelper.p;
        BackEventCompat backEventCompat = materialMainContainerBackHelper.f32755f;
        materialMainContainerBackHelper.f32755f = null;
        if (backEventCompat != null) {
            AnimatorSet animatorSetA = materialMainContainerBackHelper.a(searchBar);
            View view = materialMainContainerBackHelper.f32752b;
            if (view instanceof ClippableRoundedCornerLayout) {
                ClippableRoundedCornerLayout clippableRoundedCornerLayout = (ClippableRoundedCornerLayout) view;
                ValueAnimator valueAnimatorOfObject = ValueAnimator.ofObject(new kc0(), clippableRoundedCornerLayout.getCornerRadii(), materialMainContainerBackHelper.b());
                valueAnimatorOfObject.addUpdateListener(new ft(clippableRoundedCornerLayout, 5));
                animatorSetA.playTogether(valueAnimatorOfObject);
            }
            animatorSetA.setDuration(materialMainContainerBackHelper.f32754e);
            animatorSetA.start();
            materialMainContainerBackHelper.f32765i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
            materialMainContainerBackHelper.f32766j = null;
            materialMainContainerBackHelper.f32767k = null;
        }
        AnimatorSet animatorSet = searchViewAnimationHelper.o;
        if (animatorSet != null) {
            animatorSet.reverse();
        }
        searchViewAnimationHelper.o = null;
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (this.p) {
            this.o.addView(view, i2, layoutParams);
        } else {
            super.addView(view, i2, layoutParams);
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void b(BackEventCompat backEventCompat) {
        SearchBar searchBar;
        if (i() || (searchBar = this.v) == null) {
            return;
        }
        searchBar.setPlaceholderText(this.l.getText().toString());
        SearchViewAnimationHelper searchViewAnimationHelper = this.q;
        MaterialMainContainerBackHelper materialMainContainerBackHelper = searchViewAnimationHelper.n;
        SearchBar searchBar2 = searchViewAnimationHelper.p;
        materialMainContainerBackHelper.f32755f = backEventCompat;
        float f2 = backEventCompat.f653b;
        View view = materialMainContainerBackHelper.f32752b;
        materialMainContainerBackHelper.f32766j = new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        if (searchBar2 != null) {
            materialMainContainerBackHelper.f32767k = ViewUtils.a(view, searchBar2);
        }
        materialMainContainerBackHelper.f32765i = f2;
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void c(BackEventCompat backEventCompat) {
        if (i() || this.v == null || Build.VERSION.SDK_INT < 34) {
            return;
        }
        SearchViewAnimationHelper searchViewAnimationHelper = this.q;
        SearchView searchView = searchViewAnimationHelper.f32897a;
        float f2 = backEventCompat.f654c;
        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return;
        }
        MaterialMainContainerBackHelper materialMainContainerBackHelper = searchViewAnimationHelper.n;
        SearchBar searchBar = searchViewAnimationHelper.p;
        float cornerSize = searchBar.getCornerSize();
        BackEventCompat backEventCompat2 = materialMainContainerBackHelper.f32755f;
        materialMainContainerBackHelper.f32755f = backEventCompat;
        if (backEventCompat2 != null) {
            if (searchBar.getVisibility() != 4) {
                searchBar.setVisibility(4);
            }
            boolean z = backEventCompat.d == 0;
            float f3 = backEventCompat.f653b;
            float f4 = materialMainContainerBackHelper.g;
            float interpolation = materialMainContainerBackHelper.f32751a.getInterpolation(f2);
            View view = materialMainContainerBackHelper.f32752b;
            float width = view.getWidth();
            float height = view.getHeight();
            if (width > Call.Parameters.DEFAULT_CAMERA_ZOOM && height > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                float fA = AnimationUtils.a(1.0f, 0.9f, interpolation);
                float fA2 = AnimationUtils.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, ((width - (0.9f * width)) / 2.0f) - f4), interpolation) * (z ? 1 : -1);
                float fMin = Math.min(Math.max(Call.Parameters.DEFAULT_CAMERA_ZOOM, ((height - (fA * height)) / 2.0f) - f4), materialMainContainerBackHelper.f32764h);
                float f5 = f3 - materialMainContainerBackHelper.f32765i;
                float fA3 = AnimationUtils.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, fMin, Math.abs(f5) / height) * Math.signum(f5);
                if (!Float.isNaN(fA) && !Float.isNaN(fA2) && !Float.isNaN(fA3)) {
                    view.setScaleX(fA);
                    view.setScaleY(fA);
                    view.setTranslationX(fA2);
                    view.setTranslationY(fA3);
                    if (view instanceof ClippableRoundedCornerLayout) {
                        ClippableRoundedCornerLayout clippableRoundedCornerLayout = (ClippableRoundedCornerLayout) view;
                        float[] fArrB = materialMainContainerBackHelper.b();
                        clippableRoundedCornerLayout.a(clippableRoundedCornerLayout.getLeft(), clippableRoundedCornerLayout.getTop(), clippableRoundedCornerLayout.getRight(), clippableRoundedCornerLayout.getBottom(), new float[]{AnimationUtils.a(fArrB[0], cornerSize, interpolation), AnimationUtils.a(fArrB[1], cornerSize, interpolation), AnimationUtils.a(fArrB[2], cornerSize, interpolation), AnimationUtils.a(fArrB[3], cornerSize, interpolation), AnimationUtils.a(fArrB[4], cornerSize, interpolation), AnimationUtils.a(fArrB[5], cornerSize, interpolation), AnimationUtils.a(fArrB[6], cornerSize, interpolation), AnimationUtils.a(fArrB[7], cornerSize, interpolation)});
                    }
                }
            }
        }
        AnimatorSet animatorSet = searchViewAnimationHelper.o;
        if (animatorSet != null) {
            animatorSet.setCurrentPlayTime((long) (f2 * animatorSet.getDuration()));
            return;
        }
        if (searchView.h()) {
            searchView.f();
        }
        if (searchView.x) {
            AnimatorSet animatorSet2 = new AnimatorSet();
            searchViewAnimationHelper.b(animatorSet2);
            animatorSet2.setDuration(250L);
            animatorSet2.setInterpolator(ReversableAnimatedValueInterpolator.a(false, AnimationUtils.f32228b));
            searchViewAnimationHelper.o = animatorSet2;
            animatorSet2.start();
            searchViewAnimationHelper.o.pause();
        }
    }

    @Override // com.google.android.material.motion.MaterialBackHandler
    public final void d() {
        if (i()) {
            return;
        }
        SearchViewAnimationHelper searchViewAnimationHelper = this.q;
        MaterialMainContainerBackHelper materialMainContainerBackHelper = searchViewAnimationHelper.n;
        BackEventCompat backEventCompat = materialMainContainerBackHelper.f32755f;
        materialMainContainerBackHelper.f32755f = null;
        if (Build.VERSION.SDK_INT < 34 || this.v == null || backEventCompat == null) {
            g();
            return;
        }
        long totalDuration = searchViewAnimationHelper.l().getTotalDuration();
        MaterialMainContainerBackHelper materialMainContainerBackHelper2 = searchViewAnimationHelper.n;
        AnimatorSet animatorSetA = materialMainContainerBackHelper2.a(searchViewAnimationHelper.p);
        animatorSetA.setDuration(totalDuration);
        animatorSetA.start();
        materialMainContainerBackHelper2.f32765i = Call.Parameters.DEFAULT_CAMERA_ZOOM;
        materialMainContainerBackHelper2.f32766j = null;
        materialMainContainerBackHelper2.f32767k = null;
        if (searchViewAnimationHelper.o != null) {
            searchViewAnimationHelper.c(false).start();
            searchViewAnimationHelper.o.resume();
        }
        searchViewAnimationHelper.o = null;
    }

    public final void f() {
        this.l.post(new uu0(this, 2));
    }

    public final void g() {
        if (this.D.equals(TransitionState.HIDDEN) || this.D.equals(TransitionState.HIDING)) {
            return;
        }
        SearchBar searchBar = this.v;
        SearchViewAnimationHelper searchViewAnimationHelper = this.q;
        if (searchBar == null || !searchBar.isAttachedToWindow()) {
            searchViewAnimationHelper.l();
            return;
        }
        this.v.setPlaceholderText(this.l.getText().toString());
        SearchBar searchBar2 = this.v;
        Objects.requireNonNull(searchViewAnimationHelper);
        searchBar2.post(new a(searchViewAnimationHelper, 0));
    }

    public MaterialMainContainerBackHelper getBackHelper() {
        return this.q.n;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AttachedBehavior
    public CoordinatorLayout.Behavior<SearchView> getBehavior() {
        return new Behavior();
    }

    public TransitionState getCurrentTransitionState() {
        return this.D;
    }

    public int getDefaultNavigationIconResource() {
        return R.drawable.ic_arrow_back_black_24;
    }

    public EditText getEditText() {
        return this.l;
    }

    public CharSequence getHint() {
        return this.l.getHint();
    }

    public TextView getSearchPrefix() {
        return this.f32893j;
    }

    public CharSequence getSearchPrefixText() {
        return this.f32893j.getText();
    }

    public int getSoftInputMode() {
        return this.w;
    }

    public Editable getText() {
        return this.l.getText();
    }

    public Toolbar getToolbar() {
        return this.f32891h;
    }

    public final boolean h() {
        return this.w == 48;
    }

    public final boolean i() {
        return this.D.equals(TransitionState.HIDDEN) || this.D.equals(TransitionState.HIDING);
    }

    public final void j() {
        if (this.z) {
            this.l.postDelayed(new uu0(this, 0), 100L);
        }
    }

    public final void k(TransitionState transitionState, boolean z) {
        if (this.D.equals(transitionState)) {
            return;
        }
        if (z) {
            if (transitionState == TransitionState.SHOWN) {
                setModalForAccessibility(true);
            } else if (transitionState == TransitionState.HIDDEN) {
                setModalForAccessibility(false);
            }
        }
        this.D = transitionState;
        Iterator it = new LinkedHashSet(this.u).iterator();
        while (it.hasNext()) {
            ((TransitionListener) it.next()).a();
        }
        n(transitionState);
        SearchBar searchBar = this.v;
        if (searchBar == null || transitionState != TransitionState.HIDDEN) {
            return;
        }
        searchBar.sendAccessibilityEvent(8);
    }

    public final void l() {
        if (this.D.equals(TransitionState.SHOWN)) {
            return;
        }
        TransitionState transitionState = this.D;
        TransitionState transitionState2 = TransitionState.SHOWING;
        if (transitionState.equals(transitionState2)) {
            return;
        }
        SearchViewAnimationHelper searchViewAnimationHelper = this.q;
        SearchView searchView = searchViewAnimationHelper.f32897a;
        SearchBar searchBar = searchViewAnimationHelper.p;
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = searchViewAnimationHelper.f32899c;
        if (searchBar == null) {
            if (searchView.h()) {
                searchView.postDelayed(new uu0(searchView, 3), 150L);
            }
            clippableRoundedCornerLayout.setVisibility(4);
            clippableRoundedCornerLayout.post(new a(searchViewAnimationHelper, 2));
            return;
        }
        EditText editText = searchViewAnimationHelper.f32904j;
        if (searchView.h()) {
            searchView.j();
        }
        searchView.setTransitionState(transitionState2);
        Toolbar toolbar = searchViewAnimationHelper.g;
        Menu menu = toolbar.getMenu();
        if (menu != null) {
            menu.clear();
        }
        if (searchViewAnimationHelper.p.getMenuResId() == -1 || !searchView.y) {
            toolbar.setVisibility(8);
        } else {
            toolbar.m(searchViewAnimationHelper.p.getMenuResId());
            ActionMenuView actionMenuViewA = ToolbarUtils.a(toolbar);
            if (actionMenuViewA != null) {
                for (int i2 = 0; i2 < actionMenuViewA.getChildCount(); i2++) {
                    View childAt = actionMenuViewA.getChildAt(i2);
                    childAt.setClickable(false);
                    childAt.setFocusable(false);
                    childAt.setFocusableInTouchMode(false);
                }
            }
            toolbar.setVisibility(0);
        }
        editText.setText(searchViewAnimationHelper.p.getText());
        editText.setSelection(editText.getText().length());
        clippableRoundedCornerLayout.setVisibility(4);
        clippableRoundedCornerLayout.post(new a(searchViewAnimationHelper, 1));
    }

    public final void m(ViewGroup viewGroup, boolean z) {
        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt != this) {
                if (childAt.findViewById(this.f32888c.getId()) != null) {
                    m((ViewGroup) childAt, z);
                } else {
                    HashMap map = this.E;
                    if (z) {
                        map.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        childAt.setImportantForAccessibility(4);
                    } else if (map != null && map.containsKey(childAt)) {
                        childAt.setImportantForAccessibility(((Integer) this.E.get(childAt)).intValue());
                    }
                }
            }
        }
    }

    public final void n(TransitionState transitionState) {
        if (this.v == null || !this.s) {
            return;
        }
        boolean zEquals = transitionState.equals(TransitionState.SHOWN);
        MaterialBackOrchestrator materialBackOrchestrator = this.r;
        if (zEquals) {
            materialBackOrchestrator.a();
        } else if (transitionState.equals(TransitionState.HIDDEN)) {
            materialBackOrchestrator.b();
        }
    }

    public final void o() {
        ImageButton imageButtonB = ToolbarUtils.b(this.f32891h);
        if (imageButtonB == null) {
            return;
        }
        int i2 = this.f32888c.getVisibility() == 0 ? 1 : 0;
        Drawable drawableA = DrawableCompat.a(imageButtonB.getDrawable());
        if (drawableA instanceof DrawerArrowDrawable) {
            ((DrawerArrowDrawable) drawableA).setProgress(i2);
        }
        if (drawableA instanceof FadeThroughDrawable) {
            ((FadeThroughDrawable) drawableA).a(i2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.c(this);
        TransitionState currentTransitionState = getCurrentTransitionState();
        if (currentTransitionState == TransitionState.SHOWN) {
            setModalForAccessibility(true);
        } else if (currentTransitionState == TransitionState.HIDDEN) {
            setModalForAccessibility(false);
        }
        n(currentTransitionState);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setModalForAccessibility(false);
        this.r.b();
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        Window activityWindow = getActivityWindow();
        if (activityWindow != null) {
            this.w = activityWindow.getAttributes().softInputMode;
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f12555b);
        setText(savedState.d);
        setVisible(savedState.f32896e == 0);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Editable text = getText();
        savedState.d = text == null ? null : text.toString();
        savedState.f32896e = this.f32888c.getVisibility();
        return savedState;
    }

    public void setAnimatedNavigationIcon(boolean z) {
        this.x = z;
    }

    public void setAutoShowKeyboard(boolean z) {
        this.z = z;
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        super.setElevation(f2);
        setUpBackgroundViewElevationOverlay(f2);
    }

    public void setHint(CharSequence charSequence) {
        this.l.setHint(charSequence);
    }

    public void setMenuItemsAnimated(boolean z) {
        this.y = z;
    }

    public void setModalForAccessibility(boolean z) {
        ViewGroup viewGroup = (ViewGroup) getRootView();
        if (z) {
            this.E = new HashMap(viewGroup.getChildCount());
        }
        m(viewGroup, z);
        if (z) {
            return;
        }
        this.E = null;
    }

    public void setOnMenuItemClickListener(Toolbar.OnMenuItemClickListener onMenuItemClickListener) {
        this.f32891h.setOnMenuItemClickListener(onMenuItemClickListener);
    }

    public void setSearchPrefixText(CharSequence charSequence) {
        TextView textView = this.f32893j;
        textView.setText(charSequence);
        textView.setVisibility(TextUtils.isEmpty(charSequence) ? 8 : 0);
    }

    public void setStatusBarSpacerEnabled(boolean z) {
        this.C = true;
        setStatusBarSpacerEnabledInternal(z);
    }

    public void setText(CharSequence charSequence) {
        this.l.setText(charSequence);
    }

    public void setToolbarTouchscreenBlocksFocus(boolean z) {
        this.f32891h.setTouchscreenBlocksFocus(z);
    }

    public void setTransitionState(TransitionState transitionState) {
        k(transitionState, true);
    }

    public void setUseWindowInsetsController(boolean z) {
        this.B = z;
    }

    public void setVisible(boolean z) {
        ClippableRoundedCornerLayout clippableRoundedCornerLayout = this.f32888c;
        boolean z2 = clippableRoundedCornerLayout.getVisibility() == 0;
        clippableRoundedCornerLayout.setVisibility(z ? 0 : 8);
        o();
        k(z ? TransitionState.SHOWN : TransitionState.HIDDEN, z2 != z);
    }

    public void setupWithSearchBar(SearchBar searchBar) {
        this.v = searchBar;
        this.q.p = searchBar;
        if (searchBar != null) {
            int i2 = 1;
            searchBar.setOnClickListener(new tu0(this, 1));
            if (Build.VERSION.SDK_INT >= 34) {
                try {
                    searchBar.setHandwritingDelegatorCallback(new uu0(this, i2));
                    this.l.setIsHandwritingDelegate(true);
                } catch (LinkageError unused) {
                }
            }
        }
        MaterialToolbar materialToolbar = this.f32891h;
        if (materialToolbar != null && !(DrawableCompat.a(materialToolbar.getNavigationIcon()) instanceof DrawerArrowDrawable)) {
            int defaultNavigationIconResource = getDefaultNavigationIconResource();
            if (this.v == null) {
                materialToolbar.setNavigationIcon(defaultNavigationIconResource);
            } else {
                Drawable drawableMutate = AppCompatResources.a(getContext(), defaultNavigationIconResource).mutate();
                if (materialToolbar.getNavigationIconTint() != null) {
                    drawableMutate.setTint(materialToolbar.getNavigationIconTint().intValue());
                }
                drawableMutate.setLayoutDirection(getLayoutDirection());
                materialToolbar.setNavigationIcon(new FadeThroughDrawable(this.v.getNavigationIcon(), drawableMutate));
                o();
            }
        }
        setUpBackgroundViewElevationOverlay(getOverlayElevation());
        n(getCurrentTransitionState());
    }

    public static class Behavior extends CoordinatorLayout.Behavior<SearchView> {
        public Behavior() {
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public final boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            SearchView searchView = (SearchView) view;
            if (searchView.v != null || !(view2 instanceof SearchBar)) {
                return false;
            }
            searchView.setupWithSearchBar((SearchBar) view2);
            return false;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new AnonymousClass1();
        public String d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f32896e;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.d = parcel.readString();
            this.f32896e = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            super.writeToParcel(parcel, i2);
            parcel.writeString(this.d);
            parcel.writeInt(this.f32896e);
        }

        /* JADX INFO: renamed from: com.google.android.material.search.SearchView$SavedState$1, reason: invalid class name */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i2) {
                return new SavedState[i2];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }
        }

        public SavedState(Parcel parcel) {
            this(parcel, null);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public void setHint(int i2) {
        this.l.setHint(i2);
    }

    public void setText(int i2) {
        this.l.setText(i2);
    }

    public SearchView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.materialSearchViewStyle);
    }

    public SearchView(Context context) {
        this(context, null);
    }
}
