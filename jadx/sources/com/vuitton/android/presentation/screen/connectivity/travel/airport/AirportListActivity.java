package com.vuitton.android.presentation.screen.connectivity.travel.airport;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.tabs.TabLayout;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ActivityAirportListBinding;
import com.vuitton.android.presentation.databinding.ToolbarTitleBinding;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListActivity;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.b5;
import defpackage.c1;
import defpackage.e1;
import defpackage.r81;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u0006B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListFragment$AirportFilterManager;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListAdapter$OnAirportSelectedListener;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class AirportListActivity extends Hilt_AirportListActivity implements AirportListFragment.AirportFilterManager, AirportListAdapter.OnAirportSelectedListener {
    public static final Companion r = new Companion(null);
    public ActivityAirportListBinding p;
    public final ViewModelLazy q;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/airport/AirportListActivity$Companion;", "", "", "KEY_SELECTED_AIRPORT", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public AirportListActivity() {
        super(R.layout.activity_airport_list);
        final Function0 function0 = null;
        this.q = new ViewModelLazy(Reflection.f71922a.b(AirportListViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
    }

    public static final void H(AirportListActivity airportListActivity) {
        List<Fragment> listM = airportListActivity.getSupportFragmentManager().M();
        listM.getClass();
        for (Fragment fragment : listM) {
            if (fragment instanceof AirportListFragment) {
                AirportListFragment airportListFragment = (AirportListFragment) fragment;
                airportListFragment.O().f51258b.stopScroll();
                RecyclerView.LayoutManager layoutManager = airportListFragment.O().f51258b.getLayoutManager();
                layoutManager.getClass();
                ((LinearLayoutManager) layoutManager).y0(0);
            }
        }
    }

    public final void I(String str) {
        List<Fragment> listM = getSupportFragmentManager().M();
        listM.getClass();
        for (Fragment fragment : listM) {
            if (fragment instanceof AirportListFragment) {
                AirportListFragment airportListFragment = (AirportListFragment) fragment;
                str.getClass();
                AirportListAdapter airportListAdapter = (AirportListAdapter) airportListFragment.H.getF71699b();
                airportListAdapter.getClass();
                airportListAdapter.f56360e.filter(str);
                airportListFragment.O().f51258b.stopScroll();
                RecyclerView.LayoutManager layoutManager = airportListFragment.O().f51258b.getLayoutManager();
                layoutManager.getClass();
                ((LinearLayoutManager) layoutManager).y0(0);
            }
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListFragment.AirportFilterManager
    public final String c() {
        ActivityAirportListBinding activityAirportListBinding = this.p;
        if (activityAirportListBinding != null) {
            return activityAirportListBinding.d.getText().toString();
        }
        Intrinsics.h("binding");
        throw null;
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListAdapter.OnAirportSelectedListener
    public final void e(AirportUiModel airportUiModel) {
        setResult(-1, new Intent().putExtra("SELECTED_AIRPORT", airportUiModel));
        finish();
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i2 = 0;
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.activity_airport_list, (ViewGroup) null, false);
        int i3 = R.id.airport_list_view_pager;
        ViewPager viewPager = (ViewPager) ViewBindings.a(R.id.airport_list_view_pager, viewInflate);
        if (viewPager != null) {
            i3 = R.id.airport_search_button;
            ImageButton imageButton = (ImageButton) ViewBindings.a(R.id.airport_search_button, viewInflate);
            if (imageButton != null) {
                i3 = R.id.airport_search_text;
                EditText editText = (EditText) ViewBindings.a(R.id.airport_search_text, viewInflate);
                if (editText != null) {
                    i3 = R.id.airport_toolbar;
                    View viewA = ViewBindings.a(R.id.airport_toolbar, viewInflate);
                    if (viewA != null) {
                        ToolbarTitleBinding toolbarTitleBindingA = ToolbarTitleBinding.a(viewA);
                        i3 = R.id.app_bar_layout;
                        if (((AppBarLayout) ViewBindings.a(R.id.app_bar_layout, viewInflate)) != null) {
                            i3 = R.id.tab_layout;
                            TabLayout tabLayout = (TabLayout) ViewBindings.a(R.id.tab_layout, viewInflate);
                            if (tabLayout != null) {
                                LinearLayout linearLayout = (LinearLayout) viewInflate;
                                ActivityAirportListBinding activityAirportListBinding = new ActivityAirportListBinding(linearLayout, viewPager, imageButton, editText, toolbarTitleBindingA, tabLayout);
                                setContentView(linearLayout);
                                this.p = activityAirportListBinding;
                                ActivityExtKt.d(this);
                                ActivityAirportListBinding activityAirportListBinding2 = this.p;
                                if (activityAirportListBinding2 == null) {
                                    Intrinsics.h("binding");
                                    throw null;
                                }
                                AppCompatTextView appCompatTextView = activityAirportListBinding2.f51196e.f51466c;
                                appCompatTextView.setText(R.string.travel_airport);
                                int i4 = 1;
                                appCompatTextView.setAccessibilityHeading(true);
                                AirportListActivity$initPager$pagerAdapter$1 airportListActivity$initPager$pagerAdapter$1 = new AirportListActivity$initPager$pagerAdapter$1(this, getSupportFragmentManager());
                                ActivityAirportListBinding activityAirportListBinding3 = this.p;
                                if (activityAirportListBinding3 == null) {
                                    Intrinsics.h("binding");
                                    throw null;
                                }
                                activityAirportListBinding3.f51194b.setAdapter(airportListActivity$initPager$pagerAdapter$1);
                                ActivityAirportListBinding activityAirportListBinding4 = this.p;
                                if (activityAirportListBinding4 == null) {
                                    Intrinsics.h("binding");
                                    throw null;
                                }
                                TabLayout tabLayout2 = activityAirportListBinding4.f51197f;
                                tabLayout2.setupWithViewPager(activityAirportListBinding4.f51194b);
                                tabLayout2.a(new TabLayout.OnTabSelectedListener() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListActivity$initPager$1$1
                                    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
                                    public final void a(TabLayout.Tab tab) {
                                        AirportListActivity.H(this.f56352a);
                                        SensorsDataAutoTrackHelper.trackTabLayoutSelected(this, tab);
                                    }

                                    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
                                    public final void b(TabLayout.Tab tab) {
                                    }

                                    @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
                                    public final void c(TabLayout.Tab tab) {
                                        AirportListActivity.H(this.f56352a);
                                    }
                                });
                                tabLayout2.post(new b5(tabLayout2, this, airportListActivity$initPager$pagerAdapter$1, i2));
                                ActivityAirportListBinding activityAirportListBinding5 = this.p;
                                if (activityAirportListBinding5 == null) {
                                    Intrinsics.h("binding");
                                    throw null;
                                }
                                ViewExtKt.d(activityAirportListBinding5.f51195c, new c1(this, 8));
                                ActivityAirportListBinding activityAirportListBinding6 = this.p;
                                if (activityAirportListBinding6 == null) {
                                    Intrinsics.h("binding");
                                    throw null;
                                }
                                activityAirportListBinding6.d.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: a5
                                    @Override // android.widget.TextView.OnEditorActionListener
                                    public final boolean onEditorAction(TextView textView, int i5, KeyEvent keyEvent) {
                                        AirportListActivity.Companion companion = AirportListActivity.r;
                                        if (i5 != 6) {
                                            return false;
                                        }
                                        AirportListActivity airportListActivity = this.f409b;
                                        airportListActivity.I(airportListActivity.c());
                                        return false;
                                    }
                                });
                                ActivityAirportListBinding activityAirportListBinding7 = this.p;
                                if (activityAirportListBinding7 == null) {
                                    Intrinsics.h("binding");
                                    throw null;
                                }
                                EditText editText2 = activityAirportListBinding7.d;
                                final e1 e1Var = new e1(this, i4);
                                editText2.addTextChangedListener(new TextWatcher() { // from class: com.vuitton.android.presentation.extensions.EditTextExtKt$addOnTextChangedListener$1
                                    @Override // android.text.TextWatcher
                                    public final void afterTextChanged(Editable editable) {
                                    }

                                    @Override // android.text.TextWatcher
                                    public final void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                                    }

                                    @Override // android.text.TextWatcher
                                    public final void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                                        charSequence.getClass();
                                        e1Var.g(charSequence, Integer.valueOf(i5), Integer.valueOf(i6), Integer.valueOf(i7));
                                    }
                                });
                                ((AirportListViewModelImpl) this.q.getF71699b()).pc();
                                return;
                            }
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
    }

    @Override // androidx.appcompat.app.AppCompatActivity
    public final boolean onSupportNavigateUp() {
        if (getSupportFragmentManager().J() == 0) {
            finish();
            return true;
        }
        getSupportFragmentManager().V();
        return true;
    }
}
