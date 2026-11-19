package com.vuitton.android.presentation.screen.connectivity.travel.form;

import android.app.DatePickerDialog;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.material.textfield.TextInputLayout;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentHotelFormBinding;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.extensions.ViewExtKt;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.model.location.PlaceGeocodingUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.HotelPlaceUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.HotelUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.TravelUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.form.HotelFormFragment;
import com.vuitton.android.presentation.screen.placesearch.PlaceSearchActivity;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.foundation.model.domain.model.place.AutocompleteContext;
import defpackage.fw;
import defpackage.gz;
import defpackage.js;
import defpackage.l00;
import java.util.Date;
import java.util.GregorianCalendar;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\rB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/HotelUiModel;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class HotelFormFragment extends Fragment implements TravelForm<HotelUiModel> {
    public HotelPlaceUiModel A;
    public Date B;
    public Date C;
    public String D;
    public final FragmentViewBindingDelegate E;
    public final ActivityResultLauncher F;
    public static final /* synthetic */ KProperty[] H = {Reflection.f71922a.h(new PropertyReference1Impl(HotelFormFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;", 0))};
    public static final Companion G = new Companion(null);
    public static final String I = "HotelFormFragment";

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/form/HotelFormFragment$Companion;", "", "", "TAG", "Ljava/lang/String;", "KEY_TRAVEL", "", "DATE_PICKER_MIN_DATE_OFFSET", "I", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public HotelFormFragment() {
        super(R.layout.fragment_hotel_form);
        this.E = FragmentExtKt.d(this, HotelFormFragment$binding$2.f56413b);
        ActivityResultLauncher activityResultLauncherRegisterForActivityResult = registerForActivityResult(new ActivityResultContracts$StartActivityForResult(), new fw(this, 8));
        activityResultLauncherRegisterForActivityResult.getClass();
        this.F = activityResultLauncherRegisterForActivityResult;
    }

    public static void p(HotelFormFragment hotelFormFragment, ActivityResult activityResult) {
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
        hotelFormFragment.A = new HotelPlaceUiModel(placeGeocodingUiModel != null ? Double.valueOf(placeGeocodingUiModel.f51805c) : null, placeGeocodingUiModel != null ? Double.valueOf(placeGeocodingUiModel.d) : null, null, placeGeocodingUiModel != null ? placeGeocodingUiModel.f51804b : null);
        hotelFormFragment.J().f51253f.setText(placeGeocodingUiModel != null ? placeGeocodingUiModel.f51804b : null);
    }

    public final FragmentHotelFormBinding J() {
        return (FragmentHotelFormBinding) this.E.c(this, H[0]);
    }

    public final void K(EditText editText) {
        Date date;
        Date date2;
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        if (Intrinsics.c(editText, J().f51250b) && (date2 = this.B) != null) {
            gregorianCalendar.setTime(date2);
        } else if (Intrinsics.c(editText, J().d) && (date = this.C) != null) {
            gregorianCalendar.setTime(date);
        }
        Context context = getContext();
        if (context != null) {
            DatePickerDialog datePickerDialog = new DatePickerDialog(context, new gz(this, editText, 1), gregorianCalendar.get(1), gregorianCalendar.get(2), gregorianCalendar.get(5));
            datePickerDialog.getDatePicker().setMinDate(System.currentTimeMillis() - 1000);
            datePickerDialog.show();
        }
    }

    public final void L(EditText editText, int i2, int i3, int i4) {
        if (Intrinsics.c(editText, J().f51250b)) {
            this.B = new GregorianCalendar(i2, i3, i4).getTime();
        } else if (Intrinsics.c(editText, J().d)) {
            this.C = new GregorianCalendar(i2, i3, i4).getTime();
        }
        Date time = new GregorianCalendar(i2, i3, i4).getTime();
        time.getClass();
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        editText.setText(DateTimeUtils.n(time, contextRequireContext));
    }

    public final void M() {
        FragmentActivity activity = getActivity();
        InputMethodManager inputMethodManager = (InputMethodManager) (activity != null ? activity.getSystemService("input_method") : null);
        if (inputMethodManager != null) {
            View view = getView();
            inputMethodManager.hideSoftInputFromWindow(view != null ? view.getWindowToken() : null, 0);
        }
        Context context = getContext();
        if (context != null) {
            PlaceSearchActivity.Companion companion = PlaceSearchActivity.t;
            PlaceSearchActivity.PlaceInfoType placeInfoType = PlaceSearchActivity.PlaceInfoType.GEOCODING;
            AutocompleteContext autocompleteContext = AutocompleteContext.TRAVEL;
            companion.getClass();
            this.F.a(PlaceSearchActivity.Companion.a(context, placeInfoType, autocompleteContext, null));
        }
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.form.TravelForm
    public final void c(boolean z) {
        FragmentHotelFormBinding fragmentHotelFormBindingJ = J();
        fragmentHotelFormBindingJ.f51255i.setEnabled(z);
        fragmentHotelFormBindingJ.f51253f.setEnabled(z);
        fragmentHotelFormBindingJ.f51250b.setEnabled(z);
        fragmentHotelFormBindingJ.d.setEnabled(z);
        fragmentHotelFormBindingJ.f51257k.setEnabled(z);
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.form.TravelForm
    public final boolean isValid() {
        FragmentHotelFormBinding fragmentHotelFormBindingJ = J();
        EditText editText = fragmentHotelFormBindingJ.f51255i;
        TextInputLayout textInputLayout = fragmentHotelFormBindingJ.f51252e;
        TextInputLayout textInputLayout2 = fragmentHotelFormBindingJ.f51251c;
        boolean z = this.A != null && (q(fragmentHotelFormBindingJ.d, textInputLayout) && (q(fragmentHotelFormBindingJ.f51250b, textInputLayout2) && (q(fragmentHotelFormBindingJ.f51253f, fragmentHotelFormBindingJ.g) && q(editText, fragmentHotelFormBindingJ.f51256j))));
        if (z) {
            Date date = this.B;
            date.getClass();
            if (date.after(this.C)) {
                textInputLayout2.setError(getString(R.string.error_check_in_after_check_out));
                textInputLayout.setError(getString(R.string.error_check_out_before_check_in));
                return false;
            }
        }
        if (z) {
            textInputLayout2.setError(null);
            textInputLayout.setError(null);
        }
        return z;
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
        final FragmentHotelFormBinding fragmentHotelFormBindingJ = J();
        TextView textView = fragmentHotelFormBindingJ.f51254h;
        EditText editText = fragmentHotelFormBindingJ.f51253f;
        final int i2 = 1;
        textView.setAccessibilityHeading(true);
        FragmentHotelFormBinding fragmentHotelFormBindingJ2 = J();
        TextInputLayout textInputLayout = fragmentHotelFormBindingJ2.f51256j;
        Context context = getContext();
        textInputLayout.setHint(context != null ? ContextExtKt.a(R.string.hotel_name, context) : null);
        TextInputLayout textInputLayout2 = fragmentHotelFormBindingJ2.g;
        Context context2 = getContext();
        textInputLayout2.setHint(context2 != null ? ContextExtKt.a(R.string.hotel_address, context2) : null);
        TextInputLayout textInputLayout3 = fragmentHotelFormBindingJ2.f51251c;
        Context context3 = getContext();
        textInputLayout3.setHint(context3 != null ? ContextExtKt.a(R.string.check_in, context3) : null);
        TextInputLayout textInputLayout4 = fragmentHotelFormBindingJ2.f51252e;
        Context context4 = getContext();
        textInputLayout4.setHint(context4 != null ? ContextExtKt.a(R.string.check_out, context4) : null);
        final EditText editText2 = fragmentHotelFormBindingJ.f51250b;
        final int i3 = 0;
        editText2.setInputType(0);
        editText2.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: x10
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                int i4 = i3;
                FragmentHotelFormBinding fragmentHotelFormBinding = fragmentHotelFormBindingJ;
                HotelFormFragment hotelFormFragment = this;
                EditText editText3 = editText2;
                switch (i4) {
                    case 0:
                        HotelFormFragment.Companion companion = HotelFormFragment.G;
                        if (z && !editText3.isAccessibilityFocused()) {
                            hotelFormFragment.K(fragmentHotelFormBinding.f51250b);
                            break;
                        }
                        break;
                    default:
                        HotelFormFragment.Companion companion2 = HotelFormFragment.G;
                        if (z && !editText3.isAccessibilityFocused()) {
                            hotelFormFragment.K(fragmentHotelFormBinding.d);
                            break;
                        }
                        break;
                }
            }
        });
        ViewExtKt.d(editText2, new Function1(this) { // from class: y10

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ HotelFormFragment f81252c;

            {
                this.f81252c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i3;
                FragmentHotelFormBinding fragmentHotelFormBinding = fragmentHotelFormBindingJ;
                HotelFormFragment hotelFormFragment = this.f81252c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        HotelFormFragment.Companion companion = HotelFormFragment.G;
                        view2.getClass();
                        hotelFormFragment.K(fragmentHotelFormBinding.f51250b);
                        break;
                    default:
                        HotelFormFragment.Companion companion2 = HotelFormFragment.G;
                        view2.getClass();
                        hotelFormFragment.K(fragmentHotelFormBinding.d);
                        break;
                }
                return Unit.f71739a;
            }
        });
        final EditText editText3 = fragmentHotelFormBindingJ.d;
        editText3.setInputType(0);
        editText3.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: x10
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view2, boolean z) {
                int i4 = i2;
                FragmentHotelFormBinding fragmentHotelFormBinding = fragmentHotelFormBindingJ;
                HotelFormFragment hotelFormFragment = this;
                EditText editText4 = editText3;
                switch (i4) {
                    case 0:
                        HotelFormFragment.Companion companion = HotelFormFragment.G;
                        if (z && !editText4.isAccessibilityFocused()) {
                            hotelFormFragment.K(fragmentHotelFormBinding.f51250b);
                            break;
                        }
                        break;
                    default:
                        HotelFormFragment.Companion companion2 = HotelFormFragment.G;
                        if (z && !editText4.isAccessibilityFocused()) {
                            hotelFormFragment.K(fragmentHotelFormBinding.d);
                            break;
                        }
                        break;
                }
            }
        });
        ViewExtKt.d(editText3, new Function1(this) { // from class: y10

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ HotelFormFragment f81252c;

            {
                this.f81252c = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                int i4 = i2;
                FragmentHotelFormBinding fragmentHotelFormBinding = fragmentHotelFormBindingJ;
                HotelFormFragment hotelFormFragment = this.f81252c;
                View view2 = (View) obj;
                switch (i4) {
                    case 0:
                        HotelFormFragment.Companion companion = HotelFormFragment.G;
                        view2.getClass();
                        hotelFormFragment.K(fragmentHotelFormBinding.f51250b);
                        break;
                    default:
                        HotelFormFragment.Companion companion2 = HotelFormFragment.G;
                        view2.getClass();
                        hotelFormFragment.K(fragmentHotelFormBinding.d);
                        break;
                }
                return Unit.f71739a;
            }
        });
        ViewExtKt.d(editText, new l00(this, 6));
        editText.setOnFocusChangeListener(new js(this, 1));
        Bundle arguments = getArguments();
        if (arguments != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                parcelable = (Parcelable) arguments.getParcelable("TRAVEL", HotelUiModel.class);
            } else {
                Parcelable parcelable2 = arguments.getParcelable("TRAVEL");
                if (!(parcelable2 instanceof HotelUiModel)) {
                    parcelable2 = null;
                }
                parcelable = (HotelUiModel) parcelable2;
            }
            HotelUiModel hotelUiModel = (HotelUiModel) parcelable;
            if (hotelUiModel != null) {
                FragmentHotelFormBinding fragmentHotelFormBindingJ3 = J();
                HotelPlaceUiModel hotelPlaceUiModel = hotelUiModel.f56338e;
                this.A = hotelPlaceUiModel;
                this.D = hotelUiModel.f56337c;
                fragmentHotelFormBindingJ3.f51253f.setText(hotelPlaceUiModel != null ? hotelPlaceUiModel.f56336e : null);
                Date date = hotelUiModel.f56339f;
                if (date != null) {
                    GregorianCalendar gregorianCalendar = new GregorianCalendar();
                    gregorianCalendar.setTime(date);
                    L(fragmentHotelFormBindingJ3.f51250b, gregorianCalendar.get(1), gregorianCalendar.get(2), gregorianCalendar.get(5));
                }
                Date date2 = hotelUiModel.g;
                if (date2 != null) {
                    GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
                    gregorianCalendar2.setTime(date2);
                    L(fragmentHotelFormBindingJ3.d, gregorianCalendar2.get(1), gregorianCalendar2.get(2), gregorianCalendar2.get(5));
                }
                fragmentHotelFormBindingJ3.f51255i.setText(hotelUiModel.d);
                fragmentHotelFormBindingJ3.f51257k.setText(hotelUiModel.f56340h);
                c(false);
            }
        }
        FragmentTrackHelper.onFragmentViewCreated(this, view, savedInstanceState);
    }

    public final boolean q(EditText editText, TextInputLayout textInputLayout) {
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
        return new HotelUiModel(this.D, J().f51255i.getText().toString(), this.A, this.B, this.C, J().f51257k.getText().toString());
    }
}
