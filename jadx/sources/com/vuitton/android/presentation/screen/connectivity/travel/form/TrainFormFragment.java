package com.vuitton.android.presentation.screen.connectivity.travel.form;

import android.app.DatePickerDialog;
import android.app.TimePickerDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.material.textfield.TextInputLayout;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrainFormBinding;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.StationUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.TrainUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.TravelUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.form.TrainFormFragment;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.place.AutocompleteContext;
import defpackage.fz;
import defpackage.gz;
import defpackage.hz;
import java.util.Date;
import java.util.GregorianCalendar;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\rB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/TrainUiModel;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class TrainFormFragment extends Fragment implements TravelForm<TrainUiModel> {
    public final FragmentViewBindingDelegate A;
    public StationUiModel B;
    public StationUiModel C;
    public Integer D;
    public Integer E;
    public Integer F;
    public Integer G;
    public Integer H;
    public Integer I;
    public Integer J;
    public Integer K;
    public Integer L;
    public Integer M;
    public String N;
    public final ActivityResultLauncher O;
    public final ActivityResultLauncher P;
    public static final /* synthetic */ KProperty[] R = {Reflection.f71922a.h(new PropertyReference1Impl(TrainFormFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;", 0))};
    public static final Companion Q = new Companion(null);
    public static final String S = "TrainFormFragment";

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TrainFormFragment$Companion;", "", "", "TAG", "Ljava/lang/String;", "", "REQUEST_DEPARTURE_STATION_COMPLETION", "I", "REQUEST_ARRIVAL_STATION_COMPLETION", "KEY_TRAVEL", "DATE_PICKER_MIN_DATE_OFFSET", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public TrainFormFragment() {
        super(R.layout.fragment_train_form);
        this.A = FragmentExtKt.d(this, TrainFormFragment$binding$2.f56414b);
        final int i2 = 0;
        ActivityResultLauncher activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback(this) { // from class: t41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TrainFormFragment f79964c;

            {
                this.f79964c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                int i3 = i2;
                TrainFormFragment trainFormFragment = this.f79964c;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i3) {
                    case 0:
                        TrainFormFragment.q(trainFormFragment, activityResult);
                        break;
                    default:
                        TrainFormFragment.p(trainFormFragment, activityResult);
                        break;
                }
            }
        });
        activityResultLauncherRegisterForActivityResult.getClass();
        this.O = activityResultLauncherRegisterForActivityResult;
        final int i3 = 1;
        ActivityResultLauncher activityResultLauncherRegisterForActivityResult2 = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new ActivityResultCallback(this) { // from class: t41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TrainFormFragment f79964c;

            {
                this.f79964c = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void b(Object obj) {
                int i4 = i3;
                TrainFormFragment trainFormFragment = this.f79964c;
                ActivityResult activityResult = (ActivityResult) obj;
                switch (i4) {
                    case 0:
                        TrainFormFragment.q(trainFormFragment, activityResult);
                        break;
                    default:
                        TrainFormFragment.p(trainFormFragment, activityResult);
                        break;
                }
            }
        });
        activityResultLauncherRegisterForActivityResult2.getClass();
        this.P = activityResultLauncherRegisterForActivityResult2;
    }

    public static void p(TrainFormFragment trainFormFragment, ActivityResult activityResult) {
        Intent intent;
        Parcelable parcelable;
        activityResult.getClass();
        if (activityResult.f731b != -1 || (intent = activityResult.f732c) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) intent.getParcelableExtra("PLACE", PlaceGeocodingUiModel.class);
        } else {
            Parcelable parcelableExtra = intent.getParcelableExtra("PLACE");
            if (!(parcelableExtra instanceof PlaceGeocodingUiModel)) {
                parcelableExtra = null;
            }
            parcelable = (PlaceGeocodingUiModel) parcelableExtra;
        }
        PlaceGeocodingUiModel placeGeocodingUiModel = (PlaceGeocodingUiModel) parcelable;
        if (placeGeocodingUiModel != null) {
            trainFormFragment.P(trainFormFragment.J().f51302f, placeGeocodingUiModel);
        }
    }

    public static void q(TrainFormFragment trainFormFragment, ActivityResult activityResult) {
        Intent intent;
        Parcelable parcelable;
        activityResult.getClass();
        if (activityResult.f731b != -1 || (intent = activityResult.f732c) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            parcelable = (Parcelable) intent.getParcelableExtra("PLACE", PlaceGeocodingUiModel.class);
        } else {
            Parcelable parcelableExtra = intent.getParcelableExtra("PLACE");
            if (!(parcelableExtra instanceof PlaceGeocodingUiModel)) {
                parcelableExtra = null;
            }
            parcelable = (PlaceGeocodingUiModel) parcelableExtra;
        }
        PlaceGeocodingUiModel placeGeocodingUiModel = (PlaceGeocodingUiModel) parcelable;
        if (placeGeocodingUiModel != null) {
            trainFormFragment.P(trainFormFragment.J().m, placeGeocodingUiModel);
        }
    }

    public final FragmentTrainFormBinding J() {
        return (FragmentTrainFormBinding) this.A.c(this, R[0]);
    }

    public final void K(EditText editText) {
        DatePickerDialog datePickerDialog;
        gz gzVar = new gz(this, editText, 2);
        Context context = getContext();
        if (context != null) {
            if (Intrinsics.c(editText, J().f51304i) && this.D != null && this.E != null && this.F != null) {
                Integer num = this.D;
                num.getClass();
                int iIntValue = num.intValue();
                Integer num2 = this.E;
                num2.getClass();
                int iIntValue2 = num2.intValue();
                Integer num3 = this.F;
                num3.getClass();
                datePickerDialog = new DatePickerDialog(context, gzVar, iIntValue, iIntValue2, num3.intValue());
            } else if (!Intrinsics.c(editText, J().f51299b) || this.I == null || this.J == null || this.K == null) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar();
                datePickerDialog = new DatePickerDialog(context, gzVar, gregorianCalendar.get(1), gregorianCalendar.get(2), gregorianCalendar.get(5));
            } else {
                Integer num4 = this.I;
                num4.getClass();
                int iIntValue3 = num4.intValue();
                Integer num5 = this.J;
                num5.getClass();
                int iIntValue4 = num5.intValue();
                Integer num6 = this.K;
                num6.getClass();
                datePickerDialog = new DatePickerDialog(context, gzVar, iIntValue3, iIntValue4, num6.intValue());
            }
            datePickerDialog.getDatePicker().setMinDate(System.currentTimeMillis() - 1000);
            datePickerDialog.show();
        }
    }

    public final void L(EditText editText, int i2, int i3, int i4) {
        if (Intrinsics.c(editText, J().f51304i)) {
            this.D = Integer.valueOf(i2);
            this.E = Integer.valueOf(i3);
            this.F = Integer.valueOf(i4);
        } else if (Intrinsics.c(editText, J().f51299b)) {
            this.I = Integer.valueOf(i2);
            this.J = Integer.valueOf(i3);
            this.K = Integer.valueOf(i4);
        }
        Date time = new GregorianCalendar(i2, i3, i4).getTime();
        time.getClass();
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        editText.setText(DateTimeUtils.n(time, contextRequireContext));
    }

    public final void M(EditText editText) {
        TimePickerDialog timePickerDialog;
        fz fzVar = new fz(this, editText, 1);
        if (Intrinsics.c(editText, J().f51306k) && this.G != null && this.H != null) {
            Context context = getContext();
            Integer num = this.G;
            num.getClass();
            int iIntValue = num.intValue();
            Integer num2 = this.H;
            num2.getClass();
            timePickerDialog = new TimePickerDialog(context, fzVar, iIntValue, num2.intValue(), true);
        } else if (!Intrinsics.c(editText, J().d) || this.L == null || this.M == null) {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            timePickerDialog = new TimePickerDialog(getContext(), fzVar, gregorianCalendar.get(11), gregorianCalendar.get(12), true);
        } else {
            Context context2 = getContext();
            Integer num3 = this.L;
            num3.getClass();
            int iIntValue2 = num3.intValue();
            Integer num4 = this.M;
            num4.getClass();
            timePickerDialog = new TimePickerDialog(context2, fzVar, iIntValue2, num4.intValue(), true);
        }
        timePickerDialog.show();
    }

    public final void N(EditText editText, int i2, int i3) {
        if (Intrinsics.c(editText, J().f51306k)) {
            this.G = Integer.valueOf(i2);
            this.H = Integer.valueOf(i3);
        } else if (Intrinsics.c(editText, J().d)) {
            this.L = Integer.valueOf(i2);
            this.M = Integer.valueOf(i3);
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(11, i2);
        gregorianCalendar.set(12, i3);
        Date time = gregorianCalendar.getTime();
        time.getClass();
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        editText.setText(DateTimeUtils.o(time, contextRequireContext));
    }

    public final void O(int i2) {
        FragmentActivity activity = getActivity();
        InputMethodManager inputMethodManager = (InputMethodManager) (activity != null ? activity.getSystemService("input_method") : null);
        if (inputMethodManager != null) {
            View view = getView();
            inputMethodManager.hideSoftInputFromWindow(view != null ? view.getWindowToken() : null, 0);
        }
        Context context = getContext();
        if (context != null) {
            if (i2 == 9684) {
                PlaceSearchActivity.Companion companion = PlaceSearchActivity.t;
                PlaceSearchActivity.PlaceInfoType placeInfoType = PlaceSearchActivity.PlaceInfoType.GEOCODING;
                AutocompleteContext autocompleteContext = AutocompleteContext.TRAVEL;
                companion.getClass();
                this.O.a(PlaceSearchActivity.Companion.a(context, placeInfoType, autocompleteContext, null));
                return;
            }
            if (i2 != 9685) {
                return;
            }
            PlaceSearchActivity.Companion companion2 = PlaceSearchActivity.t;
            PlaceSearchActivity.PlaceInfoType placeInfoType2 = PlaceSearchActivity.PlaceInfoType.GEOCODING;
            AutocompleteContext autocompleteContext2 = AutocompleteContext.TRAVEL;
            companion2.getClass();
            this.P.a(PlaceSearchActivity.Companion.a(context, placeInfoType2, autocompleteContext2, null));
        }
    }

    public final void P(EditText editText, PlaceGeocodingUiModel placeGeocodingUiModel) {
        String str = placeGeocodingUiModel.f51804b;
        StationUiModel stationUiModel = new StationUiModel(null, str, Double.valueOf(placeGeocodingUiModel.f51805c), Double.valueOf(placeGeocodingUiModel.d));
        FragmentTrainFormBinding fragmentTrainFormBindingJ = J();
        Object obj = fragmentTrainFormBindingJ.m;
        EditText editText2 = fragmentTrainFormBindingJ.f51302f;
        if (editText.equals(obj)) {
            this.B = stationUiModel;
            fragmentTrainFormBindingJ.m.setText(str);
        } else if (editText.equals(editText2)) {
            this.C = stationUiModel;
            editText2.setText(str);
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.form.TravelForm
    public final void c(boolean z) {
        FragmentTrainFormBinding fragmentTrainFormBindingJ = J();
        fragmentTrainFormBindingJ.f51304i.setEnabled(z);
        fragmentTrainFormBindingJ.f51306k.setEnabled(z);
        fragmentTrainFormBindingJ.m.setEnabled(z);
        fragmentTrainFormBindingJ.f51299b.setEnabled(z);
        fragmentTrainFormBindingJ.d.setEnabled(z);
        fragmentTrainFormBindingJ.f51302f.setEnabled(z);
        fragmentTrainFormBindingJ.s.setEnabled(z);
        fragmentTrainFormBindingJ.f51303h.setEnabled(z);
        fragmentTrainFormBindingJ.o.setEnabled(z);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.form.TravelForm
    public final boolean isValid() {
        FragmentTrainFormBinding fragmentTrainFormBindingJ = J();
        return r(fragmentTrainFormBindingJ.s, fragmentTrainFormBindingJ.t) && (r(fragmentTrainFormBindingJ.f51302f, fragmentTrainFormBindingJ.g) && (r(fragmentTrainFormBindingJ.d, fragmentTrainFormBindingJ.f51301e) && (r(fragmentTrainFormBindingJ.f51299b, fragmentTrainFormBindingJ.f51300c) && (r(fragmentTrainFormBindingJ.m, fragmentTrainFormBindingJ.n) && (r(fragmentTrainFormBindingJ.f51306k, fragmentTrainFormBindingJ.l) && r(fragmentTrainFormBindingJ.f51304i, fragmentTrainFormBindingJ.f51305j))))));
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        FragmentTrackHelper.trackOnHiddenChanged(this, z);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        FragmentTrackHelper.trackFragmentPause(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Parcelable parcelable;
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        FragmentTrainFormBinding fragmentTrainFormBindingJ = J();
        final int i2 = 1;
        fragmentTrainFormBindingJ.q.setAccessibilityHeading(true);
        fragmentTrainFormBindingJ.p.setAccessibilityHeading(true);
        fragmentTrainFormBindingJ.r.setAccessibilityHeading(true);
        FragmentTrainFormBinding fragmentTrainFormBindingJ2 = J();
        TextInputLayout textInputLayout = fragmentTrainFormBindingJ2.f51305j;
        Context context = getContext();
        textInputLayout.setHint(context != null ? ContextExtKt.a(R.string.travel_date, context) : null);
        TextInputLayout textInputLayout2 = fragmentTrainFormBindingJ2.l;
        Context context2 = getContext();
        textInputLayout2.setHint(context2 != null ? ContextExtKt.a(R.string.travel_hour, context2) : null);
        TextInputLayout textInputLayout3 = fragmentTrainFormBindingJ2.n;
        Context context3 = getContext();
        textInputLayout3.setHint(context3 != null ? ContextExtKt.a(R.string.travel_station, context3) : null);
        TextInputLayout textInputLayout4 = fragmentTrainFormBindingJ2.f51300c;
        Context context4 = getContext();
        textInputLayout4.setHint(context4 != null ? ContextExtKt.a(R.string.travel_date, context4) : null);
        TextInputLayout textInputLayout5 = fragmentTrainFormBindingJ2.f51301e;
        Context context5 = getContext();
        textInputLayout5.setHint(context5 != null ? ContextExtKt.a(R.string.travel_hour, context5) : null);
        TextInputLayout textInputLayout6 = fragmentTrainFormBindingJ2.g;
        Context context6 = getContext();
        textInputLayout6.setHint(context6 != null ? ContextExtKt.a(R.string.travel_station, context6) : null);
        TextInputLayout textInputLayout7 = fragmentTrainFormBindingJ2.t;
        Context context7 = getContext();
        textInputLayout7.setHint(context7 != null ? ContextExtKt.a(R.string.train_number, context7) : null);
        final FragmentTrainFormBinding fragmentTrainFormBindingJ3 = J();
        EditText editText = fragmentTrainFormBindingJ3.f51304i;
        final int i3 = 0;
        editText.setInputType(0);
        final int i4 = 2;
        editText.setOnFocusChangeListener(new hz(editText, new Function0(this) { // from class: q41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TrainFormFragment f79009c;

            {
                this.f79009c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i5 = i4;
                FragmentTrainFormBinding fragmentTrainFormBinding = fragmentTrainFormBindingJ3;
                TrainFormFragment trainFormFragment = this.f79009c;
                switch (i5) {
                    case 0:
                        TrainFormFragment.Companion companion = TrainFormFragment.Q;
                        trainFormFragment.K(fragmentTrainFormBinding.f51299b);
                        break;
                    case 1:
                        TrainFormFragment.Companion companion2 = TrainFormFragment.Q;
                        trainFormFragment.M(fragmentTrainFormBinding.d);
                        break;
                    case 2:
                        TrainFormFragment.Companion companion3 = TrainFormFragment.Q;
                        trainFormFragment.K(fragmentTrainFormBinding.f51304i);
                        break;
                    default:
                        TrainFormFragment.Companion companion4 = TrainFormFragment.Q;
                        trainFormFragment.M(fragmentTrainFormBinding.f51306k);
                        break;
                }
                return Unit.f71739a;
            }
        }, 1));
        ViewExtKt.d(editText, new Function1(this) { // from class: r41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TrainFormFragment f79246c;

            {
                this.f79246c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i5 = i4;
                FragmentTrainFormBinding fragmentTrainFormBinding = fragmentTrainFormBindingJ3;
                TrainFormFragment trainFormFragment = this.f79246c;
                View view2 = (View) obj;
                switch (i5) {
                    case 0:
                        TrainFormFragment.Companion companion = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.K(fragmentTrainFormBinding.f51299b);
                        break;
                    case 1:
                        TrainFormFragment.Companion companion2 = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.M(fragmentTrainFormBinding.d);
                        break;
                    case 2:
                        TrainFormFragment.Companion companion3 = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.K(fragmentTrainFormBinding.f51304i);
                        break;
                    default:
                        TrainFormFragment.Companion companion4 = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.M(fragmentTrainFormBinding.f51306k);
                        break;
                }
                return Unit.f71739a;
            }
        });
        EditText editText2 = fragmentTrainFormBindingJ3.f51306k;
        editText2.setInputType(0);
        final int i5 = 3;
        editText2.setOnFocusChangeListener(new hz(editText2, new Function0(this) { // from class: q41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TrainFormFragment f79009c;

            {
                this.f79009c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i6 = i5;
                FragmentTrainFormBinding fragmentTrainFormBinding = fragmentTrainFormBindingJ3;
                TrainFormFragment trainFormFragment = this.f79009c;
                switch (i6) {
                    case 0:
                        TrainFormFragment.Companion companion = TrainFormFragment.Q;
                        trainFormFragment.K(fragmentTrainFormBinding.f51299b);
                        break;
                    case 1:
                        TrainFormFragment.Companion companion2 = TrainFormFragment.Q;
                        trainFormFragment.M(fragmentTrainFormBinding.d);
                        break;
                    case 2:
                        TrainFormFragment.Companion companion3 = TrainFormFragment.Q;
                        trainFormFragment.K(fragmentTrainFormBinding.f51304i);
                        break;
                    default:
                        TrainFormFragment.Companion companion4 = TrainFormFragment.Q;
                        trainFormFragment.M(fragmentTrainFormBinding.f51306k);
                        break;
                }
                return Unit.f71739a;
            }
        }, 1));
        ViewExtKt.d(editText2, new Function1(this) { // from class: r41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TrainFormFragment f79246c;

            {
                this.f79246c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i6 = i5;
                FragmentTrainFormBinding fragmentTrainFormBinding = fragmentTrainFormBindingJ3;
                TrainFormFragment trainFormFragment = this.f79246c;
                View view2 = (View) obj;
                switch (i6) {
                    case 0:
                        TrainFormFragment.Companion companion = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.K(fragmentTrainFormBinding.f51299b);
                        break;
                    case 1:
                        TrainFormFragment.Companion companion2 = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.M(fragmentTrainFormBinding.d);
                        break;
                    case 2:
                        TrainFormFragment.Companion companion3 = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.K(fragmentTrainFormBinding.f51304i);
                        break;
                    default:
                        TrainFormFragment.Companion companion4 = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.M(fragmentTrainFormBinding.f51306k);
                        break;
                }
                return Unit.f71739a;
            }
        });
        EditText editText3 = fragmentTrainFormBindingJ3.f51299b;
        editText3.setInputType(0);
        editText3.setOnFocusChangeListener(new hz(editText3, new Function0(this) { // from class: q41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TrainFormFragment f79009c;

            {
                this.f79009c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i6 = i3;
                FragmentTrainFormBinding fragmentTrainFormBinding = fragmentTrainFormBindingJ3;
                TrainFormFragment trainFormFragment = this.f79009c;
                switch (i6) {
                    case 0:
                        TrainFormFragment.Companion companion = TrainFormFragment.Q;
                        trainFormFragment.K(fragmentTrainFormBinding.f51299b);
                        break;
                    case 1:
                        TrainFormFragment.Companion companion2 = TrainFormFragment.Q;
                        trainFormFragment.M(fragmentTrainFormBinding.d);
                        break;
                    case 2:
                        TrainFormFragment.Companion companion3 = TrainFormFragment.Q;
                        trainFormFragment.K(fragmentTrainFormBinding.f51304i);
                        break;
                    default:
                        TrainFormFragment.Companion companion4 = TrainFormFragment.Q;
                        trainFormFragment.M(fragmentTrainFormBinding.f51306k);
                        break;
                }
                return Unit.f71739a;
            }
        }, 1));
        ViewExtKt.d(editText3, new Function1(this) { // from class: r41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TrainFormFragment f79246c;

            {
                this.f79246c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i6 = i3;
                FragmentTrainFormBinding fragmentTrainFormBinding = fragmentTrainFormBindingJ3;
                TrainFormFragment trainFormFragment = this.f79246c;
                View view2 = (View) obj;
                switch (i6) {
                    case 0:
                        TrainFormFragment.Companion companion = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.K(fragmentTrainFormBinding.f51299b);
                        break;
                    case 1:
                        TrainFormFragment.Companion companion2 = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.M(fragmentTrainFormBinding.d);
                        break;
                    case 2:
                        TrainFormFragment.Companion companion3 = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.K(fragmentTrainFormBinding.f51304i);
                        break;
                    default:
                        TrainFormFragment.Companion companion4 = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.M(fragmentTrainFormBinding.f51306k);
                        break;
                }
                return Unit.f71739a;
            }
        });
        EditText editText4 = fragmentTrainFormBindingJ3.d;
        editText4.setInputType(0);
        editText4.setOnFocusChangeListener(new hz(editText4, new Function0(this) { // from class: q41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TrainFormFragment f79009c;

            {
                this.f79009c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i6 = i2;
                FragmentTrainFormBinding fragmentTrainFormBinding = fragmentTrainFormBindingJ3;
                TrainFormFragment trainFormFragment = this.f79009c;
                switch (i6) {
                    case 0:
                        TrainFormFragment.Companion companion = TrainFormFragment.Q;
                        trainFormFragment.K(fragmentTrainFormBinding.f51299b);
                        break;
                    case 1:
                        TrainFormFragment.Companion companion2 = TrainFormFragment.Q;
                        trainFormFragment.M(fragmentTrainFormBinding.d);
                        break;
                    case 2:
                        TrainFormFragment.Companion companion3 = TrainFormFragment.Q;
                        trainFormFragment.K(fragmentTrainFormBinding.f51304i);
                        break;
                    default:
                        TrainFormFragment.Companion companion4 = TrainFormFragment.Q;
                        trainFormFragment.M(fragmentTrainFormBinding.f51306k);
                        break;
                }
                return Unit.f71739a;
            }
        }, 1));
        ViewExtKt.d(editText4, new Function1(this) { // from class: r41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TrainFormFragment f79246c;

            {
                this.f79246c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i6 = i2;
                FragmentTrainFormBinding fragmentTrainFormBinding = fragmentTrainFormBindingJ3;
                TrainFormFragment trainFormFragment = this.f79246c;
                View view2 = (View) obj;
                switch (i6) {
                    case 0:
                        TrainFormFragment.Companion companion = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.K(fragmentTrainFormBinding.f51299b);
                        break;
                    case 1:
                        TrainFormFragment.Companion companion2 = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.M(fragmentTrainFormBinding.d);
                        break;
                    case 2:
                        TrainFormFragment.Companion companion3 = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.K(fragmentTrainFormBinding.f51304i);
                        break;
                    default:
                        TrainFormFragment.Companion companion4 = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.M(fragmentTrainFormBinding.f51306k);
                        break;
                }
                return Unit.f71739a;
            }
        });
        FragmentTrainFormBinding fragmentTrainFormBindingJ4 = J();
        fragmentTrainFormBindingJ4.m.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: p41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TrainFormFragment f78755c;

            {
                this.f78755c = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                int i6 = i3;
                TrainFormFragment trainFormFragment = this.f78755c;
                switch (i6) {
                    case 0:
                        TrainFormFragment.Companion companion = TrainFormFragment.Q;
                        if (z && !view2.isAccessibilityFocused()) {
                            trainFormFragment.O(9684);
                            break;
                        }
                        break;
                    default:
                        TrainFormFragment.Companion companion2 = TrainFormFragment.Q;
                        if (z && !view2.isAccessibilityFocused()) {
                            trainFormFragment.O(9685);
                            break;
                        }
                        break;
                }
            }
        });
        ViewExtKt.d(fragmentTrainFormBindingJ4.m, new Function1(this) { // from class: s41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TrainFormFragment f79709c;

            {
                this.f79709c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i6 = i3;
                TrainFormFragment trainFormFragment = this.f79709c;
                View view2 = (View) obj;
                switch (i6) {
                    case 0:
                        TrainFormFragment.Companion companion = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.O(9684);
                        break;
                    default:
                        TrainFormFragment.Companion companion2 = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.O(9685);
                        break;
                }
                return Unit.f71739a;
            }
        });
        EditText editText5 = fragmentTrainFormBindingJ4.f51302f;
        editText5.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: p41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TrainFormFragment f78755c;

            {
                this.f78755c = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                int i6 = i2;
                TrainFormFragment trainFormFragment = this.f78755c;
                switch (i6) {
                    case 0:
                        TrainFormFragment.Companion companion = TrainFormFragment.Q;
                        if (z && !view2.isAccessibilityFocused()) {
                            trainFormFragment.O(9684);
                            break;
                        }
                        break;
                    default:
                        TrainFormFragment.Companion companion2 = TrainFormFragment.Q;
                        if (z && !view2.isAccessibilityFocused()) {
                            trainFormFragment.O(9685);
                            break;
                        }
                        break;
                }
            }
        });
        ViewExtKt.d(editText5, new Function1(this) { // from class: s41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TrainFormFragment f79709c;

            {
                this.f79709c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i6 = i2;
                TrainFormFragment trainFormFragment = this.f79709c;
                View view2 = (View) obj;
                switch (i6) {
                    case 0:
                        TrainFormFragment.Companion companion = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.O(9684);
                        break;
                    default:
                        TrainFormFragment.Companion companion2 = TrainFormFragment.Q;
                        view2.getClass();
                        trainFormFragment.O(9685);
                        break;
                }
                return Unit.f71739a;
            }
        });
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                parcelable = (Parcelable) arguments.getParcelable("TRAVEL", TrainUiModel.class);
            } else {
                Parcelable parcelable2 = arguments.getParcelable("TRAVEL");
                if (!(parcelable2 instanceof TrainUiModel)) {
                    parcelable2 = null;
                }
                parcelable = (TrainUiModel) parcelable2;
            }
            TrainUiModel trainUiModel = (TrainUiModel) parcelable;
            if (trainUiModel != null) {
                String str = trainUiModel.f56345c;
                StationUiModel stationUiModel = trainUiModel.g;
                StationUiModel stationUiModel2 = trainUiModel.f56346e;
                this.N = str;
                FragmentTrainFormBinding fragmentTrainFormBindingJ5 = J();
                Date date = trainUiModel.f56347f;
                if (date != null) {
                    GregorianCalendar gregorianCalendar = new GregorianCalendar();
                    gregorianCalendar.setTime(date);
                    L(fragmentTrainFormBindingJ5.f51304i, gregorianCalendar.get(1), gregorianCalendar.get(2), gregorianCalendar.get(5));
                    N(fragmentTrainFormBindingJ5.f51306k, gregorianCalendar.get(11), gregorianCalendar.get(12));
                }
                fragmentTrainFormBindingJ5.m.setText(stationUiModel2 != null ? stationUiModel2.f56342b : null);
                this.B = stationUiModel2;
                Date date2 = trainUiModel.f56348h;
                if (date2 != null) {
                    GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
                    gregorianCalendar2.setTime(date2);
                    L(fragmentTrainFormBindingJ5.f51299b, gregorianCalendar2.get(1), gregorianCalendar2.get(2), gregorianCalendar2.get(5));
                    N(fragmentTrainFormBindingJ5.d, gregorianCalendar2.get(11), gregorianCalendar2.get(12));
                }
                fragmentTrainFormBindingJ5.f51302f.setText(stationUiModel != null ? stationUiModel.f56342b : null);
                this.C = stationUiModel;
                fragmentTrainFormBindingJ5.s.setText(trainUiModel.d);
                fragmentTrainFormBindingJ5.f51303h.setText(trainUiModel.f56349i);
                fragmentTrainFormBindingJ5.o.setText(trainUiModel.f56350j);
                c(false);
            }
        }
        FragmentTrackHelper.onFragmentViewCreated(this, view, savedInstanceState);
    }

    public final boolean r(EditText editText, TextInputLayout textInputLayout) {
        Editable text = editText.getText();
        text.getClass();
        if (StringsKt.w(text)) {
            textInputLayout.setError(getString(R.string.required_field));
            return false;
        }
        textInputLayout.setError(null);
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.form.TravelForm
    public final TravelUiModel y() {
        Integer num = this.D;
        num.getClass();
        int iIntValue = num.intValue();
        Integer num2 = this.E;
        num2.getClass();
        int iIntValue2 = num2.intValue();
        Integer num3 = this.F;
        num3.getClass();
        int iIntValue3 = num3.intValue();
        Integer num4 = this.G;
        num4.getClass();
        int iIntValue4 = num4.intValue();
        Integer num5 = this.H;
        num5.getClass();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(iIntValue, iIntValue2, iIntValue3, iIntValue4, num5.intValue());
        Integer num6 = this.I;
        num6.getClass();
        int iIntValue5 = num6.intValue();
        Integer num7 = this.J;
        num7.getClass();
        int iIntValue6 = num7.intValue();
        Integer num8 = this.K;
        num8.getClass();
        int iIntValue7 = num8.intValue();
        Integer num9 = this.L;
        num9.getClass();
        int iIntValue8 = num9.intValue();
        Integer num10 = this.M;
        num10.getClass();
        return new TrainUiModel(this.N, J().s.getText().toString(), this.B, gregorianCalendar.getTime(), this.C, new GregorianCalendar(iIntValue5, iIntValue6, iIntValue7, iIntValue8, num10.intValue()).getTime(), J().f51303h.getText().toString(), J().o.getText().toString());
    }
}
