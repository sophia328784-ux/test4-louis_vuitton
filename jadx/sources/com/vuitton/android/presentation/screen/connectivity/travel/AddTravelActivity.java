package com.vuitton.android.presentation.screen.connectivity.travel;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.tabs.TabLayout;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.ActivityAddTravelBinding;
import com.vuitton.android.presentation.databinding.ToolbarTitleBinding;
import com.vuitton.android.presentation.extensions.ActivityExtKt;
import com.vuitton.android.presentation.extensions.ActivityViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.screen.connectivity.travel.AddTravelActivity;
import com.vuitton.android.presentation.screen.connectivity.travel.TravelUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.form.FlightFormFragment;
import com.vuitton.android.presentation.screen.connectivity.travel.form.HotelFormFragment;
import com.vuitton.android.presentation.screen.connectivity.travel.form.TrainFormFragment;
import com.vuitton.android.presentation.screen.connectivity.travel.form.TravelForm;
import com.vuitton.android.presentation.screen.connectivity.travel.form.TravelFormViewModel;
import com.vuitton.android.presentation.screen.connectivity.travel.form.TravelFormViewModelImpl;
import com.vuitton.android.presentation.screen.connectivity.travel.models.TravelTrackingUiModel;
import com.vuitton.android.presentation.utils.WatchUtilsKt;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.md;
import defpackage.r81;
import defpackage.z1;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;", "Lcom/vuitton/android/presentation/screen/base/BaseActivity;", "<init>", "()V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class AddTravelActivity extends Hilt_AddTravelActivity {
    public final Lazy p;
    public final Lazy q;
    public final Lazy r;
    public final ViewModelLazy s;
    public final ActivityViewBindingDelegate t;
    public static final /* synthetic */ KProperty[] v = {Reflection.f71922a.h(new PropertyReference1Impl(AddTravelActivity.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/ActivityAddTravelBinding;", 0))};
    public static final Companion u = new Companion(null);

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.travel.AddTravelActivity$onCreate$5, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    final /* synthetic */ class AnonymousClass5 extends FunctionReferenceImpl implements Function1<Result<? extends Unit>, Unit> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Object obj2 = ((Result) obj).f71708b;
            AddTravelActivity addTravelActivity = (AddTravelActivity) this.receiver;
            Companion companion = AddTravelActivity.u;
            ActivityAddTravelBinding activityAddTravelBindingI = addTravelActivity.I();
            Result.Companion companion2 = Result.INSTANCE;
            if (obj2 instanceof Result.Failure) {
                addTravelActivity.J().t0(TravelTrackingUiModel.CreateTravelErrorEvent.f56452a);
                activityAddTravelBindingI.g.f51459b.setVisibility(8);
                addTravelActivity.runOnUiThread(new z1(addTravelActivity, 1));
            } else {
                addTravelActivity.J().t0(TravelTrackingUiModel.CreateTravelSuccessEvent.f56453a);
                activityAddTravelBindingI.g.f51459b.setVisibility(8);
                activityAddTravelBindingI.f51189b.setVisibility(8);
                activityAddTravelBindingI.f51191e.f51469b.setVisibility(0);
            }
            return Unit.f71739a;
        }
    }

    public AddTravelActivity() {
        super(R.layout.activity_add_travel);
        final int i2 = 0;
        this.p = LazyKt.b(new Function0(this) { // from class: e4

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AddTravelActivity f68750c;

            {
                this.f68750c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i3 = i2;
                AddTravelActivity addTravelActivity = this.f68750c;
                switch (i3) {
                    case 0:
                        AddTravelActivity.Companion companion = AddTravelActivity.u;
                        Fragment fragmentF = addTravelActivity.getSupportFragmentManager().F(R.id.plane_form);
                        fragmentF.getClass();
                        return (FlightFormFragment) fragmentF;
                    case 1:
                        AddTravelActivity.Companion companion2 = AddTravelActivity.u;
                        Fragment fragmentF2 = addTravelActivity.getSupportFragmentManager().F(R.id.train_form);
                        fragmentF2.getClass();
                        return (TrainFormFragment) fragmentF2;
                    default:
                        AddTravelActivity.Companion companion3 = AddTravelActivity.u;
                        Fragment fragmentF3 = addTravelActivity.getSupportFragmentManager().F(R.id.hotel_form);
                        fragmentF3.getClass();
                        return (HotelFormFragment) fragmentF3;
                }
            }
        });
        final int i3 = 1;
        this.q = LazyKt.b(new Function0(this) { // from class: e4

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AddTravelActivity f68750c;

            {
                this.f68750c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                AddTravelActivity addTravelActivity = this.f68750c;
                switch (i4) {
                    case 0:
                        AddTravelActivity.Companion companion = AddTravelActivity.u;
                        Fragment fragmentF = addTravelActivity.getSupportFragmentManager().F(R.id.plane_form);
                        fragmentF.getClass();
                        return (FlightFormFragment) fragmentF;
                    case 1:
                        AddTravelActivity.Companion companion2 = AddTravelActivity.u;
                        Fragment fragmentF2 = addTravelActivity.getSupportFragmentManager().F(R.id.train_form);
                        fragmentF2.getClass();
                        return (TrainFormFragment) fragmentF2;
                    default:
                        AddTravelActivity.Companion companion3 = AddTravelActivity.u;
                        Fragment fragmentF3 = addTravelActivity.getSupportFragmentManager().F(R.id.hotel_form);
                        fragmentF3.getClass();
                        return (HotelFormFragment) fragmentF3;
                }
            }
        });
        final int i4 = 2;
        this.r = LazyKt.b(new Function0(this) { // from class: e4

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AddTravelActivity f68750c;

            {
                this.f68750c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i5 = i4;
                AddTravelActivity addTravelActivity = this.f68750c;
                switch (i5) {
                    case 0:
                        AddTravelActivity.Companion companion = AddTravelActivity.u;
                        Fragment fragmentF = addTravelActivity.getSupportFragmentManager().F(R.id.plane_form);
                        fragmentF.getClass();
                        return (FlightFormFragment) fragmentF;
                    case 1:
                        AddTravelActivity.Companion companion2 = AddTravelActivity.u;
                        Fragment fragmentF2 = addTravelActivity.getSupportFragmentManager().F(R.id.train_form);
                        fragmentF2.getClass();
                        return (TrainFormFragment) fragmentF2;
                    default:
                        AddTravelActivity.Companion companion3 = AddTravelActivity.u;
                        Fragment fragmentF3 = addTravelActivity.getSupportFragmentManager().F(R.id.hotel_form);
                        fragmentF3.getClass();
                        return (HotelFormFragment) fragmentF3;
                }
            }
        });
        final Function0 function0 = null;
        this.s = new ViewModelLazy(Reflection.f71922a.b(TravelFormViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.AddTravelActivity$special$$inlined$viewModels$default$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getViewModelStore();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.AddTravelActivity$special$$inlined$viewModels$default$1
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this.getDefaultViewModelProviderFactory();
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.AddTravelActivity$special$$inlined$viewModels$default$3
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function1 = function0;
                return (function1 == null || (creationExtras = (CreationExtras) function1.mo47invoke()) == null) ? this.getDefaultViewModelCreationExtras() : creationExtras;
            }
        });
        AddTravelActivity$binding$2 addTravelActivity$binding$2 = AddTravelActivity$binding$2.f56319b;
        addTravelActivity$binding$2.getClass();
        this.t = new ActivityViewBindingDelegate(this, addTravelActivity$binding$2, null);
    }

    public final void H(int i2, String str) {
        ActivityAddTravelBinding activityAddTravelBindingI = I();
        View viewInflate = getLayoutInflater().inflate(R.layout.view_travel_tab, (ViewGroup) activityAddTravelBindingI.f51193h, false);
        int i3 = R.id.travel_tab_image;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.a(R.id.travel_tab_image, viewInflate);
        if (appCompatImageView != null) {
            i3 = R.id.travel_tab_text;
            TextView textView = (TextView) ViewBindings.a(R.id.travel_tab_text, viewInflate);
            if (textView != null) {
                textView.setText(str);
                appCompatImageView.setImageResource(i2);
                TabLayout tabLayout = activityAddTravelBindingI.f51193h;
                tabLayout.b(tabLayout.i().setCustomView((LinearLayout) viewInflate), tabLayout.f33111c.isEmpty());
                return;
            }
        }
        r81.d("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
    }

    public final ActivityAddTravelBinding I() {
        View rootView;
        KProperty kProperty = v[0];
        ActivityViewBindingDelegate activityViewBindingDelegate = this.t;
        activityViewBindingDelegate.getClass();
        kProperty.getClass();
        ViewBinding viewBinding = activityViewBindingDelegate.f51496c;
        if (viewBinding == null) {
            Integer num = activityViewBindingDelegate.f51495b;
            if (num == null || (rootView = findViewById(num.intValue())) == null) {
                rootView = getWindow().getDecorView().getRootView();
            }
            if (rootView == null) {
                md.k("Views are not accessible in the current Activity state.");
                return null;
            }
            viewBinding = (ViewBinding) activityViewBindingDelegate.f51494a.invoke(rootView);
            activityViewBindingDelegate.f51496c = viewBinding;
        }
        return (ActivityAddTravelBinding) viewBinding;
    }

    public final TravelFormViewModel J() {
        return (TravelFormViewModel) this.s.getF71699b();
    }

    @Override // com.vuitton.android.presentation.screen.base.BaseActivity, com.vuitton.android.presentation.screen.base.Hilt_BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        J().t0(TravelTrackingUiModel.AddTravelPageScreen.f56451a);
        ToolbarTitleBinding toolbarTitleBinding = I().f51192f.f51464c;
        ActivityExtKt.d(this);
        AppCompatTextView appCompatTextView = toolbarTitleBinding.f51466c;
        appCompatTextView.setText(getString(R.string.add_travel));
        final int i2 = 1;
        appCompatTextView.setAccessibilityHeading(true);
        getWindow().setSoftInputMode(3);
        FragmentTransaction fragmentTransactionD = getSupportFragmentManager().d();
        fragmentTransactionD.j((TrainFormFragment) this.q.getF71699b());
        fragmentTransactionD.g();
        FragmentTransaction fragmentTransactionD2 = getSupportFragmentManager().d();
        fragmentTransactionD2.j((HotelFormFragment) this.r.getF71699b());
        fragmentTransactionD2.g();
        final int i3 = 0;
        J().getF56420h().observe(this, new AddTravelActivity$sam$androidx_lifecycle_Observer$0(new Function1(this) { // from class: f4

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AddTravelActivity f69035c;

            {
                this.f69035c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                TravelForm travelForm;
                String str;
                int i4 = i3;
                String strB = null;
                AddTravelActivity addTravelActivity = this.f69035c;
                switch (i4) {
                    case 0:
                        Profile profile = (Profile) obj;
                        AddTravelActivity.Companion companion = AddTravelActivity.u;
                        String str2 = (String) addTravelActivity.J().getUserId().getValue();
                        if (profile != null) {
                            TextView textView = addTravelActivity.I().d;
                            if (str2 != null && str2.length() != 0) {
                                strB = WatchUtilsKt.b(addTravelActivity, str2, profile);
                            }
                            textView.setText(strB);
                        }
                        return Unit.f71739a;
                    default:
                        AddTravelActivity.Companion companion2 = AddTravelActivity.u;
                        ((View) obj).getClass();
                        int selectedTabPosition = addTravelActivity.I().f51193h.getSelectedTabPosition();
                        if (selectedTabPosition == 0) {
                            travelForm = (FlightFormFragment) addTravelActivity.p.getF71699b();
                        } else if (selectedTabPosition == 1) {
                            travelForm = (TrainFormFragment) addTravelActivity.q.getF71699b();
                        } else {
                            if (selectedTabPosition != 2) {
                                md.k("Unhandled tab index");
                                return null;
                            }
                            travelForm = (HotelFormFragment) addTravelActivity.r.getF71699b();
                        }
                        if (travelForm.isValid()) {
                            TravelFormViewModel travelFormViewModelJ = addTravelActivity.J();
                            int selectedTabPosition2 = addTravelActivity.I().f51193h.getSelectedTabPosition();
                            if (selectedTabPosition2 != 0) {
                                str = selectedTabPosition2 != 1 ? "hotel" : "train";
                            } else {
                                str = "plane";
                            }
                            travelFormViewModelJ.t0(new TravelTrackingUiModel.ValidateNewTravelClickEvent(str));
                            TravelUiModel travelUiModelY = travelForm.y();
                            ActivityAddTravelBinding activityAddTravelBindingI = addTravelActivity.I();
                            activityAddTravelBindingI.g.f51459b.setVisibility(0);
                            ContextExtKt.d(addTravelActivity, activityAddTravelBindingI.f51189b.getWindowToken());
                            addTravelActivity.J().W6(travelUiModelY);
                        }
                        return Unit.f71739a;
                }
            }
        }));
        ViewExtKt.d(I().f51190c, new Function1(this) { // from class: f4

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ AddTravelActivity f69035c;

            {
                this.f69035c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                TravelForm travelForm;
                String str;
                int i4 = i2;
                String strB = null;
                AddTravelActivity addTravelActivity = this.f69035c;
                switch (i4) {
                    case 0:
                        Profile profile = (Profile) obj;
                        AddTravelActivity.Companion companion = AddTravelActivity.u;
                        String str2 = (String) addTravelActivity.J().getUserId().getValue();
                        if (profile != null) {
                            TextView textView = addTravelActivity.I().d;
                            if (str2 != null && str2.length() != 0) {
                                strB = WatchUtilsKt.b(addTravelActivity, str2, profile);
                            }
                            textView.setText(strB);
                        }
                        return Unit.f71739a;
                    default:
                        AddTravelActivity.Companion companion2 = AddTravelActivity.u;
                        ((View) obj).getClass();
                        int selectedTabPosition = addTravelActivity.I().f51193h.getSelectedTabPosition();
                        if (selectedTabPosition == 0) {
                            travelForm = (FlightFormFragment) addTravelActivity.p.getF71699b();
                        } else if (selectedTabPosition == 1) {
                            travelForm = (TrainFormFragment) addTravelActivity.q.getF71699b();
                        } else {
                            if (selectedTabPosition != 2) {
                                md.k("Unhandled tab index");
                                return null;
                            }
                            travelForm = (HotelFormFragment) addTravelActivity.r.getF71699b();
                        }
                        if (travelForm.isValid()) {
                            TravelFormViewModel travelFormViewModelJ = addTravelActivity.J();
                            int selectedTabPosition2 = addTravelActivity.I().f51193h.getSelectedTabPosition();
                            if (selectedTabPosition2 != 0) {
                                str = selectedTabPosition2 != 1 ? "hotel" : "train";
                            } else {
                                str = "plane";
                            }
                            travelFormViewModelJ.t0(new TravelTrackingUiModel.ValidateNewTravelClickEvent(str));
                            TravelUiModel travelUiModelY = travelForm.y();
                            ActivityAddTravelBinding activityAddTravelBindingI = addTravelActivity.I();
                            activityAddTravelBindingI.g.f51459b.setVisibility(0);
                            ContextExtKt.d(addTravelActivity, activityAddTravelBindingI.f51189b.getWindowToken());
                            addTravelActivity.J().W6(travelUiModelY);
                        }
                        return Unit.f71739a;
                }
            }
        });
        String string = getString(R.string.plane);
        string.getClass();
        H(R.drawable.ic_flight, string);
        String string2 = getString(R.string.train);
        string2.getClass();
        H(R.drawable.ic_train, string2);
        String string3 = getString(R.string.hotel);
        string3.getClass();
        H(R.drawable.ic_hotel, string3);
        I().f51193h.a(new TabLayout.OnTabSelectedListener() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.AddTravelActivity.onCreate.4
            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public final void a(TabLayout.Tab tab) {
                String str;
                tab.getClass();
                int position = tab.getPosition();
                AddTravelActivity addTravelActivity = AddTravelActivity.this;
                if (position == 0) {
                    FragmentTransaction fragmentTransactionD3 = addTravelActivity.getSupportFragmentManager().d();
                    Companion companion = AddTravelActivity.u;
                    fragmentTransactionD3.q((FlightFormFragment) addTravelActivity.p.getF71699b());
                    fragmentTransactionD3.g();
                } else if (position == 1) {
                    FragmentTransaction fragmentTransactionD4 = addTravelActivity.getSupportFragmentManager().d();
                    Companion companion2 = AddTravelActivity.u;
                    fragmentTransactionD4.q((TrainFormFragment) addTravelActivity.q.getF71699b());
                    fragmentTransactionD4.g();
                } else if (position == 2) {
                    FragmentTransaction fragmentTransactionD5 = addTravelActivity.getSupportFragmentManager().d();
                    Companion companion3 = AddTravelActivity.u;
                    fragmentTransactionD5.q((HotelFormFragment) addTravelActivity.r.getF71699b());
                    fragmentTransactionD5.g();
                }
                Companion companion4 = AddTravelActivity.u;
                TravelFormViewModel travelFormViewModelJ = addTravelActivity.J();
                int position2 = tab.getPosition();
                if (position2 != 0) {
                    str = position2 != 1 ? "hotel" : "train";
                } else {
                    str = "plane";
                }
                travelFormViewModelJ.t0(new TravelTrackingUiModel.TravelTypeSelectionEvent(str));
                SensorsDataAutoTrackHelper.trackTabLayoutSelected(this, tab);
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public final void b(TabLayout.Tab tab) {
                tab.getClass();
                int position = tab.getPosition();
                AddTravelActivity addTravelActivity = AddTravelActivity.this;
                if (position == 0) {
                    FragmentTransaction fragmentTransactionD3 = addTravelActivity.getSupportFragmentManager().d();
                    Companion companion = AddTravelActivity.u;
                    fragmentTransactionD3.j((FlightFormFragment) addTravelActivity.p.getF71699b());
                    fragmentTransactionD3.g();
                    return;
                }
                if (position == 1) {
                    FragmentTransaction fragmentTransactionD4 = addTravelActivity.getSupportFragmentManager().d();
                    Companion companion2 = AddTravelActivity.u;
                    fragmentTransactionD4.j((TrainFormFragment) addTravelActivity.q.getF71699b());
                    fragmentTransactionD4.g();
                    return;
                }
                if (position != 2) {
                    return;
                }
                FragmentTransaction fragmentTransactionD5 = addTravelActivity.getSupportFragmentManager().d();
                Companion companion3 = AddTravelActivity.u;
                fragmentTransactionD5.j((HotelFormFragment) addTravelActivity.r.getF71699b());
                fragmentTransactionD5.g();
            }

            @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
            public final void c(TabLayout.Tab tab) {
                tab.getClass();
            }
        });
        J().getF56419f().observe(this, new AddTravelActivity$sam$androidx_lifecycle_Observer$0(new AnonymousClass5(1, this, AddTravelActivity.class, "handleCreateTravelResult", "handleCreateTravelResult(Ljava/lang/Object;)V", 0)));
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
