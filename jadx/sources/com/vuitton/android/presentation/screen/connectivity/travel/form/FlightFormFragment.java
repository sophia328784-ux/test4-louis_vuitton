package com.vuitton.android.presentation.screen.connectivity.travel.form;

import android.app.DatePickerDialog;
import android.app.TimePickerDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import androidx.fragment.app.Fragment;
import com.google.android.material.textfield.TextInputLayout;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentFlightFormBinding;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.travel.FlightAirportUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.FlightUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.TravelUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportListActivity;
import com.vuitton.android.presentation.screen.connectivity.travel.airport.AirportUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.form.FlightFormFragment;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import defpackage.ck;
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
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\rB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/FlightUiModel;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FlightFormFragment extends Fragment implements TravelForm<FlightUiModel> {
    public final FragmentViewBindingDelegate A;
    public String B;
    public String C;
    public String D;
    public String E;
    public Integer F;
    public Integer G;
    public Integer H;
    public Integer I;
    public Integer J;
    public Integer K;
    public Integer L;
    public Integer M;
    public Integer N;
    public Integer O;
    public String P;
    public static final /* synthetic */ KProperty[] R = {Reflection.f71922a.h(new PropertyReference1Impl(FlightFormFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentFlightFormBinding;", 0))};
    public static final Companion Q = new Companion(null);
    public static final String S = "FlightFormFragment";

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\u0007R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00058\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/form/FlightFormFragment$Companion;", "", "", "TAG", "Ljava/lang/String;", "", "REQUEST_SELECT_DEPARTURE_AIRPORT", "I", "REQUEST_SELECT_ARRIVAL_AIRPORT", "KEY_TRAVEL", "DATE_PICKER_MIN_DATE_OFFSET", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public FlightFormFragment() {
        super(R.layout.fragment_flight_form);
        this.A = FragmentExtKt.d(this, FlightFormFragment$binding$2.f56412b);
    }

    public final FragmentFlightFormBinding J() {
        return (FragmentFlightFormBinding) this.A.c(this, R[0]);
    }

    public final void K(EditText editText) {
        DatePickerDialog datePickerDialog;
        gz gzVar = new gz(this, editText, 0);
        Context context = getContext();
        if (context != null) {
            if (Intrinsics.c(editText, J().l) && this.F != null && this.G != null && this.H != null) {
                Integer num = this.F;
                num.getClass();
                int iIntValue = num.intValue();
                Integer num2 = this.G;
                num2.getClass();
                int iIntValue2 = num2.intValue();
                Integer num3 = this.H;
                num3.getClass();
                datePickerDialog = new DatePickerDialog(context, gzVar, iIntValue, iIntValue2, num3.intValue());
            } else if (!Intrinsics.c(editText, J().d) || this.K == null || this.L == null || this.M == null) {
                GregorianCalendar gregorianCalendar = new GregorianCalendar();
                datePickerDialog = new DatePickerDialog(context, gzVar, gregorianCalendar.get(1), gregorianCalendar.get(2), gregorianCalendar.get(5));
            } else {
                Integer num4 = this.K;
                num4.getClass();
                int iIntValue3 = num4.intValue();
                Integer num5 = this.L;
                num5.getClass();
                int iIntValue4 = num5.intValue();
                Integer num6 = this.M;
                num6.getClass();
                datePickerDialog = new DatePickerDialog(context, gzVar, iIntValue3, iIntValue4, num6.intValue());
            }
            datePickerDialog.getDatePicker().setMinDate(System.currentTimeMillis() - 1000);
            datePickerDialog.show();
        }
    }

    public final void L(EditText editText, int i2, int i3, int i4) {
        if (Intrinsics.c(editText, J().l)) {
            this.F = Integer.valueOf(i2);
            this.G = Integer.valueOf(i3);
            this.H = Integer.valueOf(i4);
        } else if (Intrinsics.c(editText, J().d)) {
            this.K = Integer.valueOf(i2);
            this.L = Integer.valueOf(i3);
            this.M = Integer.valueOf(i4);
        }
        Date time = new GregorianCalendar(i2, i3, i4).getTime();
        time.getClass();
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        editText.setText(DateTimeUtils.n(time, contextRequireContext));
    }

    public final void M(EditText editText) {
        TimePickerDialog timePickerDialog;
        fz fzVar = new fz(this, editText, 0);
        if (Intrinsics.c(editText, J().o) && this.I != null && this.J != null) {
            Context context = getContext();
            Integer num = this.I;
            num.getClass();
            int iIntValue = num.intValue();
            Integer num2 = this.J;
            num2.getClass();
            timePickerDialog = new TimePickerDialog(context, fzVar, iIntValue, num2.intValue(), true);
        } else if (!Intrinsics.c(editText, J().g) || this.N == null || this.O == null) {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            timePickerDialog = new TimePickerDialog(getContext(), fzVar, gregorianCalendar.get(11), gregorianCalendar.get(12), true);
        } else {
            Context context2 = getContext();
            Integer num3 = this.N;
            num3.getClass();
            int iIntValue2 = num3.intValue();
            Integer num4 = this.O;
            num4.getClass();
            timePickerDialog = new TimePickerDialog(context2, fzVar, iIntValue2, num4.intValue(), true);
        }
        timePickerDialog.show();
    }

    public final void N(EditText editText, int i2, int i3) {
        if (Intrinsics.c(editText, J().o)) {
            this.I = Integer.valueOf(i2);
            this.J = Integer.valueOf(i3);
        } else if (Intrinsics.c(editText, J().g)) {
            this.N = Integer.valueOf(i2);
            this.O = Integer.valueOf(i3);
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
        AirportListActivity.Companion companion = AirportListActivity.r;
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        companion.getClass();
        startActivityForResult(new Intent(contextRequireContext, (Class<?>) AirportListActivity.class), i2);
    }

    public final void P(EditText editText, String str, String str2) {
        editText.setText(str + " - " + str2);
        if (editText.equals(J().f51248j)) {
            this.B = str;
            this.C = str2;
        } else if (editText.equals(J().f51242b)) {
            this.D = str;
            this.E = str2;
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.form.TravelForm
    public final void c(boolean z) {
        FragmentFlightFormBinding fragmentFlightFormBindingJ = J();
        fragmentFlightFormBindingJ.l.setEnabled(z);
        fragmentFlightFormBindingJ.o.setEnabled(z);
        fragmentFlightFormBindingJ.f51248j.setEnabled(z);
        fragmentFlightFormBindingJ.d.setEnabled(z);
        fragmentFlightFormBindingJ.g.setEnabled(z);
        fragmentFlightFormBindingJ.f51242b.setEnabled(z);
        fragmentFlightFormBindingJ.u.setEnabled(z);
        fragmentFlightFormBindingJ.q.setEnabled(z);
        fragmentFlightFormBindingJ.n.setEnabled(z);
        fragmentFlightFormBindingJ.f51247i.setEnabled(z);
        fragmentFlightFormBindingJ.f51245f.setEnabled(z);
        fragmentFlightFormBindingJ.w.setEnabled(z);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.form.TravelForm
    public final boolean isValid() {
        FragmentFlightFormBinding fragmentFlightFormBindingJ = J();
        return p(fragmentFlightFormBindingJ.u, fragmentFlightFormBindingJ.v) && (p(fragmentFlightFormBindingJ.f51242b, fragmentFlightFormBindingJ.f51243c) && (p(fragmentFlightFormBindingJ.g, fragmentFlightFormBindingJ.f51246h) && (p(fragmentFlightFormBindingJ.d, fragmentFlightFormBindingJ.f51244e) && (p(fragmentFlightFormBindingJ.f51248j, fragmentFlightFormBindingJ.f51249k) && (p(fragmentFlightFormBindingJ.o, fragmentFlightFormBindingJ.p) && p(fragmentFlightFormBindingJ.l, fragmentFlightFormBindingJ.m))))));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int i2, int i3, Intent intent) {
        AirportUiModel airportUiModel;
        Parcelable parcelable;
        AirportUiModel airportUiModel2;
        Parcelable parcelable2;
        super.onActivityResult(i2, i3, intent);
        if (i3 == -1) {
            if (i2 == 7896) {
                if (intent != null) {
                    if (Build.VERSION.SDK_INT >= 33) {
                        parcelable = (Parcelable) intent.getParcelableExtra("SELECTED_AIRPORT", AirportUiModel.class);
                    } else {
                        Parcelable parcelableExtra = intent.getParcelableExtra("SELECTED_AIRPORT");
                        if (!(parcelableExtra instanceof AirportUiModel)) {
                            parcelableExtra = null;
                        }
                        parcelable = (AirportUiModel) parcelableExtra;
                    }
                    airportUiModel = (AirportUiModel) parcelable;
                } else {
                    airportUiModel = null;
                }
                P(J().f51248j, airportUiModel != null ? airportUiModel.f56382b : null, airportUiModel != null ? airportUiModel.d : null);
                return;
            }
            if (i2 != 7897) {
                return;
            }
            if (intent != null) {
                if (Build.VERSION.SDK_INT >= 33) {
                    parcelable2 = (Parcelable) intent.getParcelableExtra("SELECTED_AIRPORT", AirportUiModel.class);
                } else {
                    Parcelable parcelableExtra2 = intent.getParcelableExtra("SELECTED_AIRPORT");
                    if (!(parcelableExtra2 instanceof AirportUiModel)) {
                        parcelableExtra2 = null;
                    }
                    parcelable2 = (AirportUiModel) parcelableExtra2;
                }
                airportUiModel2 = (AirportUiModel) parcelable2;
            } else {
                airportUiModel2 = null;
            }
            P(J().f51242b, airportUiModel2 != null ? airportUiModel2.f56382b : null, airportUiModel2 != null ? airportUiModel2.d : null);
        }
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
        Date date;
        Date date2;
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        FragmentFlightFormBinding fragmentFlightFormBindingJ = J();
        final int i2 = 1;
        fragmentFlightFormBindingJ.s.setAccessibilityHeading(true);
        fragmentFlightFormBindingJ.r.setAccessibilityHeading(true);
        fragmentFlightFormBindingJ.t.setAccessibilityHeading(true);
        FragmentFlightFormBinding fragmentFlightFormBindingJ2 = J();
        TextInputLayout textInputLayout = fragmentFlightFormBindingJ2.m;
        Context context = getContext();
        textInputLayout.setHint(context != null ? ContextExtKt.a(R.string.travel_date, context) : null);
        TextInputLayout textInputLayout2 = fragmentFlightFormBindingJ2.p;
        Context context2 = getContext();
        textInputLayout2.setHint(context2 != null ? ContextExtKt.a(R.string.travel_hour, context2) : null);
        TextInputLayout textInputLayout3 = fragmentFlightFormBindingJ2.f51249k;
        Context context3 = getContext();
        textInputLayout3.setHint(context3 != null ? ContextExtKt.a(R.string.travel_airport, context3) : null);
        TextInputLayout textInputLayout4 = fragmentFlightFormBindingJ2.f51244e;
        Context context4 = getContext();
        textInputLayout4.setHint(context4 != null ? ContextExtKt.a(R.string.travel_date, context4) : null);
        TextInputLayout textInputLayout5 = fragmentFlightFormBindingJ2.f51246h;
        Context context5 = getContext();
        textInputLayout5.setHint(context5 != null ? ContextExtKt.a(R.string.travel_hour, context5) : null);
        TextInputLayout textInputLayout6 = fragmentFlightFormBindingJ2.f51243c;
        Context context6 = getContext();
        textInputLayout6.setHint(context6 != null ? ContextExtKt.a(R.string.travel_airport, context6) : null);
        TextInputLayout textInputLayout7 = fragmentFlightFormBindingJ2.v;
        Context context7 = getContext();
        textInputLayout7.setHint(context7 != null ? ContextExtKt.a(R.string.flight_number, context7) : null);
        final FragmentFlightFormBinding fragmentFlightFormBindingJ3 = J();
        EditText editText = fragmentFlightFormBindingJ3.l;
        final int i3 = 0;
        editText.setInputType(0);
        editText.setOnFocusChangeListener(new hz(editText, new Function0(this) { // from class: iz

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FlightFormFragment f71236c;

            {
                this.f71236c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i3;
                FragmentFlightFormBinding fragmentFlightFormBinding = fragmentFlightFormBindingJ3;
                FlightFormFragment flightFormFragment = this.f71236c;
                switch (i4) {
                    case 0:
                        FlightFormFragment.Companion companion = FlightFormFragment.Q;
                        flightFormFragment.K(fragmentFlightFormBinding.l);
                        break;
                    case 1:
                        FlightFormFragment.Companion companion2 = FlightFormFragment.Q;
                        flightFormFragment.M(fragmentFlightFormBinding.o);
                        break;
                    case 2:
                        FlightFormFragment.Companion companion3 = FlightFormFragment.Q;
                        flightFormFragment.K(fragmentFlightFormBinding.d);
                        break;
                    default:
                        FlightFormFragment.Companion companion4 = FlightFormFragment.Q;
                        flightFormFragment.M(fragmentFlightFormBinding.g);
                        break;
                }
                return Unit.f71739a;
            }
        }, 0));
        ViewExtKt.d(editText, new Function1(this) { // from class: jz

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FlightFormFragment f71502c;

            {
                this.f71502c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i3;
                FragmentFlightFormBinding fragmentFlightFormBinding = fragmentFlightFormBindingJ3;
                FlightFormFragment flightFormFragment = this.f71502c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        FlightFormFragment.Companion companion = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.K(fragmentFlightFormBinding.l);
                        break;
                    case 1:
                        FlightFormFragment.Companion companion2 = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.M(fragmentFlightFormBinding.o);
                        break;
                    case 2:
                        FlightFormFragment.Companion companion3 = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.K(fragmentFlightFormBinding.d);
                        break;
                    default:
                        FlightFormFragment.Companion companion4 = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.M(fragmentFlightFormBinding.g);
                        break;
                }
                return Unit.f71739a;
            }
        });
        EditText editText2 = fragmentFlightFormBindingJ3.o;
        editText2.setInputType(0);
        editText2.setOnFocusChangeListener(new hz(editText2, new Function0(this) { // from class: iz

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FlightFormFragment f71236c;

            {
                this.f71236c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i4 = i2;
                FragmentFlightFormBinding fragmentFlightFormBinding = fragmentFlightFormBindingJ3;
                FlightFormFragment flightFormFragment = this.f71236c;
                switch (i4) {
                    case 0:
                        FlightFormFragment.Companion companion = FlightFormFragment.Q;
                        flightFormFragment.K(fragmentFlightFormBinding.l);
                        break;
                    case 1:
                        FlightFormFragment.Companion companion2 = FlightFormFragment.Q;
                        flightFormFragment.M(fragmentFlightFormBinding.o);
                        break;
                    case 2:
                        FlightFormFragment.Companion companion3 = FlightFormFragment.Q;
                        flightFormFragment.K(fragmentFlightFormBinding.d);
                        break;
                    default:
                        FlightFormFragment.Companion companion4 = FlightFormFragment.Q;
                        flightFormFragment.M(fragmentFlightFormBinding.g);
                        break;
                }
                return Unit.f71739a;
            }
        }, 0));
        ViewExtKt.d(editText2, new Function1(this) { // from class: jz

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FlightFormFragment f71502c;

            {
                this.f71502c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i2;
                FragmentFlightFormBinding fragmentFlightFormBinding = fragmentFlightFormBindingJ3;
                FlightFormFragment flightFormFragment = this.f71502c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        FlightFormFragment.Companion companion = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.K(fragmentFlightFormBinding.l);
                        break;
                    case 1:
                        FlightFormFragment.Companion companion2 = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.M(fragmentFlightFormBinding.o);
                        break;
                    case 2:
                        FlightFormFragment.Companion companion3 = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.K(fragmentFlightFormBinding.d);
                        break;
                    default:
                        FlightFormFragment.Companion companion4 = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.M(fragmentFlightFormBinding.g);
                        break;
                }
                return Unit.f71739a;
            }
        });
        EditText editText3 = fragmentFlightFormBindingJ3.d;
        editText3.setInputType(0);
        final int i4 = 2;
        editText3.setOnFocusChangeListener(new hz(editText3, new Function0(this) { // from class: iz

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FlightFormFragment f71236c;

            {
                this.f71236c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i5 = i4;
                FragmentFlightFormBinding fragmentFlightFormBinding = fragmentFlightFormBindingJ3;
                FlightFormFragment flightFormFragment = this.f71236c;
                switch (i5) {
                    case 0:
                        FlightFormFragment.Companion companion = FlightFormFragment.Q;
                        flightFormFragment.K(fragmentFlightFormBinding.l);
                        break;
                    case 1:
                        FlightFormFragment.Companion companion2 = FlightFormFragment.Q;
                        flightFormFragment.M(fragmentFlightFormBinding.o);
                        break;
                    case 2:
                        FlightFormFragment.Companion companion3 = FlightFormFragment.Q;
                        flightFormFragment.K(fragmentFlightFormBinding.d);
                        break;
                    default:
                        FlightFormFragment.Companion companion4 = FlightFormFragment.Q;
                        flightFormFragment.M(fragmentFlightFormBinding.g);
                        break;
                }
                return Unit.f71739a;
            }
        }, 0));
        ViewExtKt.d(editText3, new Function1(this) { // from class: jz

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FlightFormFragment f71502c;

            {
                this.f71502c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i5 = i4;
                FragmentFlightFormBinding fragmentFlightFormBinding = fragmentFlightFormBindingJ3;
                FlightFormFragment flightFormFragment = this.f71502c;
                View view2 = (View) obj;
                switch (i5) {
                    case 0:
                        FlightFormFragment.Companion companion = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.K(fragmentFlightFormBinding.l);
                        break;
                    case 1:
                        FlightFormFragment.Companion companion2 = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.M(fragmentFlightFormBinding.o);
                        break;
                    case 2:
                        FlightFormFragment.Companion companion3 = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.K(fragmentFlightFormBinding.d);
                        break;
                    default:
                        FlightFormFragment.Companion companion4 = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.M(fragmentFlightFormBinding.g);
                        break;
                }
                return Unit.f71739a;
            }
        });
        EditText editText4 = fragmentFlightFormBindingJ3.g;
        editText4.setInputType(0);
        final int i5 = 3;
        editText4.setOnFocusChangeListener(new hz(editText4, new Function0(this) { // from class: iz

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FlightFormFragment f71236c;

            {
                this.f71236c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                int i6 = i5;
                FragmentFlightFormBinding fragmentFlightFormBinding = fragmentFlightFormBindingJ3;
                FlightFormFragment flightFormFragment = this.f71236c;
                switch (i6) {
                    case 0:
                        FlightFormFragment.Companion companion = FlightFormFragment.Q;
                        flightFormFragment.K(fragmentFlightFormBinding.l);
                        break;
                    case 1:
                        FlightFormFragment.Companion companion2 = FlightFormFragment.Q;
                        flightFormFragment.M(fragmentFlightFormBinding.o);
                        break;
                    case 2:
                        FlightFormFragment.Companion companion3 = FlightFormFragment.Q;
                        flightFormFragment.K(fragmentFlightFormBinding.d);
                        break;
                    default:
                        FlightFormFragment.Companion companion4 = FlightFormFragment.Q;
                        flightFormFragment.M(fragmentFlightFormBinding.g);
                        break;
                }
                return Unit.f71739a;
            }
        }, 0));
        ViewExtKt.d(editText4, new Function1(this) { // from class: jz

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FlightFormFragment f71502c;

            {
                this.f71502c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i6 = i5;
                FragmentFlightFormBinding fragmentFlightFormBinding = fragmentFlightFormBindingJ3;
                FlightFormFragment flightFormFragment = this.f71502c;
                View view2 = (View) obj;
                switch (i6) {
                    case 0:
                        FlightFormFragment.Companion companion = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.K(fragmentFlightFormBinding.l);
                        break;
                    case 1:
                        FlightFormFragment.Companion companion2 = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.M(fragmentFlightFormBinding.o);
                        break;
                    case 2:
                        FlightFormFragment.Companion companion3 = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.K(fragmentFlightFormBinding.d);
                        break;
                    default:
                        FlightFormFragment.Companion companion4 = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.M(fragmentFlightFormBinding.g);
                        break;
                }
                return Unit.f71739a;
            }
        });
        FragmentFlightFormBinding fragmentFlightFormBindingJ4 = J();
        fragmentFlightFormBindingJ4.f51248j.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: ez

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FlightFormFragment f68980c;

            {
                this.f68980c = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                int i6 = i2;
                FlightFormFragment flightFormFragment = this.f68980c;
                switch (i6) {
                    case 0:
                        FlightFormFragment.Companion companion = FlightFormFragment.Q;
                        if (z && !view2.isAccessibilityFocused()) {
                            flightFormFragment.O(7897);
                            break;
                        }
                        break;
                    default:
                        FlightFormFragment.Companion companion2 = FlightFormFragment.Q;
                        if (z && !view2.isAccessibilityFocused()) {
                            flightFormFragment.O(7896);
                            break;
                        }
                        break;
                }
            }
        });
        ViewExtKt.d(fragmentFlightFormBindingJ4.f51248j, new Function1(this) { // from class: dz

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FlightFormFragment f68703c;

            {
                this.f68703c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i6 = i3;
                FlightFormFragment flightFormFragment = this.f68703c;
                View view2 = (View) obj;
                switch (i6) {
                    case 0:
                        FlightFormFragment.Companion companion = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.O(7896);
                        break;
                    default:
                        FlightFormFragment.Companion companion2 = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.O(7897);
                        break;
                }
                return Unit.f71739a;
            }
        });
        EditText editText5 = fragmentFlightFormBindingJ4.f51242b;
        editText5.setOnFocusChangeListener(new View.OnFocusChangeListener(this) { // from class: ez

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FlightFormFragment f68980c;

            {
                this.f68980c = this;
            }

            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                int i6 = i3;
                FlightFormFragment flightFormFragment = this.f68980c;
                switch (i6) {
                    case 0:
                        FlightFormFragment.Companion companion = FlightFormFragment.Q;
                        if (z && !view2.isAccessibilityFocused()) {
                            flightFormFragment.O(7897);
                            break;
                        }
                        break;
                    default:
                        FlightFormFragment.Companion companion2 = FlightFormFragment.Q;
                        if (z && !view2.isAccessibilityFocused()) {
                            flightFormFragment.O(7896);
                            break;
                        }
                        break;
                }
            }
        });
        ViewExtKt.d(editText5, new Function1(this) { // from class: dz

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ FlightFormFragment f68703c;

            {
                this.f68703c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i6 = i2;
                FlightFormFragment flightFormFragment = this.f68703c;
                View view2 = (View) obj;
                switch (i6) {
                    case 0:
                        FlightFormFragment.Companion companion = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.O(7896);
                        break;
                    default:
                        FlightFormFragment.Companion companion2 = FlightFormFragment.Q;
                        view2.getClass();
                        flightFormFragment.O(7897);
                        break;
                }
                return Unit.f71739a;
            }
        });
        EditText editText6 = fragmentFlightFormBindingJ.u;
        final ck ckVar = new ck(fragmentFlightFormBindingJ, 26);
        editText6.addTextChangedListener(new TextWatcher() { // from class: com.vuitton.android.presentation.extensions.EditTextExtKt$addAfterTextChangedListener$1
            @Override // android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                editable.getClass();
                ckVar.invoke(editable);
            }

            @Override // android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
            }

            @Override // android.text.TextWatcher
            public final void onTextChanged(CharSequence charSequence, int i6, int i7, int i8) {
            }
        });
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                parcelable = (Parcelable) arguments.getParcelable("TRAVEL", FlightUiModel.class);
            } else {
                Parcelable parcelable2 = arguments.getParcelable("TRAVEL");
                if (!(parcelable2 instanceof FlightUiModel)) {
                    parcelable2 = null;
                }
                parcelable = (FlightUiModel) parcelable2;
            }
            FlightUiModel flightUiModel = (FlightUiModel) parcelable;
            if (flightUiModel != null) {
                FragmentFlightFormBinding fragmentFlightFormBindingJ5 = J();
                String str = flightUiModel.f56330c;
                FlightAirportUiModel flightAirportUiModel = flightUiModel.f56331e;
                this.P = str;
                FlightAirportUiModel flightAirportUiModel2 = flightUiModel.d;
                if (flightAirportUiModel2 != null && (date2 = flightAirportUiModel2.d) != null) {
                    GregorianCalendar gregorianCalendar = new GregorianCalendar();
                    gregorianCalendar.setTime(date2);
                    L(fragmentFlightFormBindingJ5.l, gregorianCalendar.get(1), gregorianCalendar.get(2), gregorianCalendar.get(5));
                    N(fragmentFlightFormBindingJ5.o, gregorianCalendar.get(11), gregorianCalendar.get(12));
                }
                P(fragmentFlightFormBindingJ5.f51248j, flightAirportUiModel2 != null ? flightAirportUiModel2.f56326b : null, flightAirportUiModel2 != null ? flightAirportUiModel2.f56327c : null);
                fragmentFlightFormBindingJ5.q.setText(flightAirportUiModel2 != null ? flightAirportUiModel2.f56328e : null);
                fragmentFlightFormBindingJ5.n.setText(flightAirportUiModel2 != null ? flightAirportUiModel2.f56329f : null);
                if (flightAirportUiModel != null && (date = flightAirportUiModel.d) != null) {
                    GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
                    gregorianCalendar2.setTime(date);
                    L(fragmentFlightFormBindingJ5.d, gregorianCalendar2.get(1), gregorianCalendar2.get(2), gregorianCalendar2.get(5));
                    N(fragmentFlightFormBindingJ5.g, gregorianCalendar2.get(11), gregorianCalendar2.get(12));
                }
                P(fragmentFlightFormBindingJ5.f51242b, flightAirportUiModel != null ? flightAirportUiModel.f56326b : null, flightAirportUiModel != null ? flightAirportUiModel.f56327c : null);
                fragmentFlightFormBindingJ5.f51247i.setText(flightAirportUiModel != null ? flightAirportUiModel.f56328e : null);
                fragmentFlightFormBindingJ5.f51245f.setText(flightAirportUiModel != null ? flightAirportUiModel.f56329f : null);
                EditText editText7 = fragmentFlightFormBindingJ5.u;
                String str2 = flightUiModel.f56332f;
                editText7.setText(str2 != null ? StringsKt.J(str2, " ", "") : null);
                fragmentFlightFormBindingJ5.w.setText(flightUiModel.g);
                c(false);
            }
        }
        FragmentTrackHelper.onFragmentViewCreated(this, view, savedInstanceState);
    }

    public final boolean p(EditText editText, TextInputLayout textInputLayout) {
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
        Integer num = this.F;
        num.getClass();
        int iIntValue = num.intValue();
        Integer num2 = this.G;
        num2.getClass();
        int iIntValue2 = num2.intValue();
        Integer num3 = this.H;
        num3.getClass();
        int iIntValue3 = num3.intValue();
        Integer num4 = this.I;
        num4.getClass();
        int iIntValue4 = num4.intValue();
        Integer num5 = this.J;
        num5.getClass();
        GregorianCalendar gregorianCalendar = new GregorianCalendar(iIntValue, iIntValue2, iIntValue3, iIntValue4, num5.intValue());
        Integer num6 = this.K;
        num6.getClass();
        int iIntValue5 = num6.intValue();
        Integer num7 = this.L;
        num7.getClass();
        int iIntValue6 = num7.intValue();
        Integer num8 = this.M;
        num8.getClass();
        int iIntValue7 = num8.intValue();
        Integer num9 = this.N;
        num9.getClass();
        int iIntValue8 = num9.intValue();
        Integer num10 = this.O;
        num10.getClass();
        GregorianCalendar gregorianCalendar2 = new GregorianCalendar(iIntValue5, iIntValue6, iIntValue7, iIntValue8, num10.intValue());
        FragmentFlightFormBinding fragmentFlightFormBindingJ = J();
        return new FlightUiModel(this.P, new FlightAirportUiModel(this.B, this.C, gregorianCalendar.getTime(), fragmentFlightFormBindingJ.q.getText().toString(), fragmentFlightFormBindingJ.n.getText().toString()), new FlightAirportUiModel(this.D, this.E, gregorianCalendar2.getTime(), fragmentFlightFormBindingJ.f51247i.getText().toString(), fragmentFlightFormBindingJ.f51245f.getText().toString()), fragmentFlightFormBindingJ.u.getText().toString(), fragmentFlightFormBindingJ.w.getText().toString());
    }
}
