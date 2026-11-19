package com.vuitton.android.presentation.screen.connectivity.travel.detail;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.SpannableString;
import android.text.style.ImageSpan;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelLazy;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.dynatrace.android.callback.Callback;
import com.linkplay.medialib.server.HttpServer;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTravelDetailsBinding;
import com.vuitton.android.presentation.databinding.ToolbarTitleBinding;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.extensions.FragmentExtKt;
import com.vuitton.android.presentation.extensions.FragmentViewBindingDelegate;
import com.vuitton.android.presentation.lifecycleaware.BottomBarHandling;
import com.vuitton.android.presentation.lifecycleaware.SystemBarsHandling;
import com.vuitton.android.presentation.screen.connectivity.travel.FlightAirportUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.FlightUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.HotelPlaceUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.HotelUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.StationUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.TrainUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.TravelUiModel;
import com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailsFragment;
import com.vuitton.android.presentation.screen.connectivity.travel.form.FlightFormFragment;
import com.vuitton.android.presentation.screen.connectivity.travel.form.HotelFormFragment;
import com.vuitton.android.presentation.screen.connectivity.travel.form.TrainFormFragment;
import com.vuitton.android.presentation.screen.connectivity.travel.form.TravelForm;
import com.vuitton.android.presentation.screen.connectivity.travel.models.TravelTrackingUiModel;
import com.vuitton.android.presentation.utils.DateTimeUtils;
import com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet;
import dagger.hilt.android.AndroidEntryPoint;
import defpackage.hv0;
import defpackage.tr;
import defpackage.v40;
import defpackage.x41;
import java.util.Date;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001\u000bB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@AndroidEntryPoint
public final class TravelDetailsFragment extends Hilt_TravelDetailsFragment {
    public final FragmentViewBindingDelegate F;
    public final ViewModelLazy G;
    public TravelForm H;
    public TravelUiModel I;
    public final Lazy J;
    public static final /* synthetic */ KProperty[] L = {Reflection.f71922a.h(new PropertyReference1Impl(TravelDetailsFragment.class, "binding", "getBinding()Lcom/vuitton/android/presentation/databinding/FragmentTravelDetailsBinding;", 0))};
    public static final Companion K = new Companion(null);
    public static final String M = "TravelDetailsFragment";

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/detail/TravelDetailsFragment$Companion;", "", "", "KEY_TRAVEL", "Ljava/lang/String;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailsFragment$onViewCreated$3, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass3 extends FunctionReferenceImpl implements Function1<Boolean, Unit> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            FragmentManager supportFragmentManager;
            Boolean bool = (Boolean) obj;
            TravelDetailsFragment travelDetailsFragment = (TravelDetailsFragment) this.receiver;
            Companion companion = TravelDetailsFragment.K;
            travelDetailsFragment.getClass();
            if (Intrinsics.c(bool, Boolean.TRUE)) {
                travelDetailsFragment.P().t0(TravelTrackingUiModel.DeleteTravelSuccessEvent.f56455a);
                travelDetailsFragment.O().f51309e.f51459b.setVisibility(8);
                FragmentActivity activity = travelDetailsFragment.getActivity();
                if (activity != null && (supportFragmentManager = activity.getSupportFragmentManager()) != null) {
                    supportFragmentManager.V();
                }
            } else if (Intrinsics.c(bool, Boolean.FALSE)) {
                travelDetailsFragment.O().f51309e.f51459b.setVisibility(8);
                FragmentActivity activity2 = travelDetailsFragment.getActivity();
                if (activity2 != null) {
                    activity2.runOnUiThread(new x41(travelDetailsFragment, 0));
                }
            }
            return Unit.f71739a;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailsFragment$onViewCreated$4, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class AnonymousClass4 extends FunctionReferenceImpl implements Function1<Result<? extends TravelUiModel>, Unit> {
        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Object obj) {
            Object obj2 = ((Result) obj).f71708b;
            TravelDetailsFragment travelDetailsFragment = (TravelDetailsFragment) this.receiver;
            Companion companion = TravelDetailsFragment.K;
            travelDetailsFragment.getClass();
            Result.Companion companion2 = Result.INSTANCE;
            boolean z = obj2 instanceof Result.Failure;
            if (z) {
                travelDetailsFragment.O().f51309e.f51459b.setVisibility(8);
                FragmentActivity activity = travelDetailsFragment.getActivity();
                if (activity != null) {
                    activity.runOnUiThread(new x41(travelDetailsFragment, 1));
                }
            } else {
                if (z) {
                    obj2 = null;
                }
                TravelUiModel travelUiModel = (TravelUiModel) obj2;
                if (travelUiModel != null) {
                    travelDetailsFragment.P().t0(TravelTrackingUiModel.EditTravelSuccessEvent.f56456a);
                    travelDetailsFragment.O().f51309e.f51459b.setVisibility(8);
                    TravelForm travelForm = travelDetailsFragment.H;
                    if (travelForm != null) {
                        travelForm.c(false);
                    }
                    travelDetailsFragment.O().f51313j.setVisibility(8);
                    if (travelUiModel instanceof FlightUiModel) {
                        travelDetailsFragment.R((FlightUiModel) travelUiModel);
                    } else if (travelUiModel instanceof TrainUiModel) {
                        travelDetailsFragment.S((TrainUiModel) travelUiModel);
                    } else {
                        if (!(travelUiModel instanceof HotelUiModel)) {
                            v40.g();
                            return null;
                        }
                        travelDetailsFragment.O().f51311h.setText(((HotelUiModel) travelUiModel).d);
                    }
                    travelDetailsFragment.I = travelUiModel;
                }
            }
            return Unit.f71739a;
        }
    }

    public TravelDetailsFragment() {
        super(R.layout.fragment_travel_details);
        this.F = FragmentExtKt.d(this, TravelDetailsFragment$binding$2.f56403b);
        final Function0<Fragment> function0 = new Function0<Fragment>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailsFragment$special$$inlined$viewModels$default$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return this;
            }
        };
        final Lazy lazyA = LazyKt.a(LazyThreadSafetyMode.NONE, new Function0<ViewModelStoreOwner>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailsFragment$special$$inlined$viewModels$default$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return (ViewModelStoreOwner) function0.mo47invoke();
            }
        });
        final Function0 function1 = null;
        this.G = new ViewModelLazy(Reflection.f71922a.b(TravelDetailViewModelImpl.class), new Function0<ViewModelStore>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailsFragment$special$$inlined$viewModels$default$3
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                return ((ViewModelStoreOwner) lazyA.getF71699b()).getF13587c();
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailsFragment$special$$inlined$viewModels$default$5
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                ViewModelProvider.Factory f13588e;
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return (hasDefaultViewModelProviderFactory == null || (f13588e = hasDefaultViewModelProviderFactory.getF13588e()) == null) ? this.getF13588e() : f13588e;
            }
        }, new Function0<CreationExtras>() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailsFragment$special$$inlined$viewModels$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                CreationExtras creationExtras;
                Function0 function2 = function1;
                if (function2 != null && (creationExtras = (CreationExtras) function2.mo47invoke()) != null) {
                    return creationExtras;
                }
                ViewModelStoreOwner viewModelStoreOwner = (ViewModelStoreOwner) lazyA.getF71699b();
                HasDefaultViewModelProviderFactory hasDefaultViewModelProviderFactory = viewModelStoreOwner instanceof HasDefaultViewModelProviderFactory ? (HasDefaultViewModelProviderFactory) viewModelStoreOwner : null;
                return hasDefaultViewModelProviderFactory != null ? hasDefaultViewModelProviderFactory.getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c;
            }
        });
        this.J = LazyKt.b(new hv0(this, 19));
    }

    public static final void Q(TravelDetailsFragment travelDetailsFragment) {
        String strB;
        String strB2;
        String string;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        Date date;
        Date date2;
        travelDetailsFragment.P().t0(new TravelTrackingUiModel.ShareTravelEvent((String) travelDetailsFragment.J.getF71699b()));
        TravelUiModel travelUiModel = travelDetailsFragment.I;
        if (travelUiModel != null) {
            if (travelUiModel instanceof FlightUiModel) {
                FlightUiModel flightUiModel = (FlightUiModel) travelUiModel;
                FlightAirportUiModel flightAirportUiModel = flightUiModel.d;
                FlightAirportUiModel flightAirportUiModel2 = flightUiModel.f56331e;
                if (flightAirportUiModel == null || (date2 = flightAirportUiModel.d) == null) {
                    str5 = "";
                    str6 = str5;
                } else {
                    Context contextRequireContext = travelDetailsFragment.requireContext();
                    contextRequireContext.getClass();
                    String strB3 = DateTimeUtils.b(date2, contextRequireContext);
                    Context contextRequireContext2 = travelDetailsFragment.requireContext();
                    contextRequireContext2.getClass();
                    String strO = DateTimeUtils.o(date2, contextRequireContext2);
                    if (strO == null) {
                        strO = "";
                    }
                    str6 = strO;
                    str5 = strB3;
                }
                if (flightAirportUiModel2 == null || (date = flightAirportUiModel2.d) == null) {
                    str7 = "";
                    str8 = str7;
                } else {
                    Context contextRequireContext3 = travelDetailsFragment.requireContext();
                    contextRequireContext3.getClass();
                    String strB4 = DateTimeUtils.b(date, contextRequireContext3);
                    Context contextRequireContext4 = travelDetailsFragment.requireContext();
                    contextRequireContext4.getClass();
                    String strO2 = DateTimeUtils.o(date, contextRequireContext4);
                    str8 = strO2 != null ? strO2 : "";
                    str7 = strB4;
                }
                string = travelDetailsFragment.getString(R.string.share_flight_text, str5, str6, flightAirportUiModel != null ? flightAirportUiModel.f56327c : null, flightAirportUiModel != null ? flightAirportUiModel.f56326b : null, str7, str8, flightAirportUiModel2 != null ? flightAirportUiModel2.f56327c : null, flightAirportUiModel2 != null ? flightAirportUiModel2.f56326b : null, flightUiModel.f56332f, flightUiModel.g, flightAirportUiModel != null ? flightAirportUiModel.f56328e : null, flightAirportUiModel != null ? flightAirportUiModel.f56329f : null, flightAirportUiModel2 != null ? flightAirportUiModel2.f56328e : null, flightAirportUiModel2 != null ? flightAirportUiModel2.f56329f : null);
                string.getClass();
            } else if (travelUiModel instanceof TrainUiModel) {
                TrainUiModel trainUiModel = (TrainUiModel) travelUiModel;
                Date date3 = trainUiModel.f56347f;
                if (date3 != null) {
                    Context contextRequireContext5 = travelDetailsFragment.requireContext();
                    contextRequireContext5.getClass();
                    String strB5 = DateTimeUtils.b(date3, contextRequireContext5);
                    Context contextRequireContext6 = travelDetailsFragment.requireContext();
                    contextRequireContext6.getClass();
                    String strO3 = DateTimeUtils.o(date3, contextRequireContext6);
                    if (strO3 == null) {
                        strO3 = "";
                    }
                    str2 = strO3;
                    str = strB5;
                } else {
                    str = "";
                    str2 = str;
                }
                Date date4 = trainUiModel.f56348h;
                if (date4 != null) {
                    Context contextRequireContext7 = travelDetailsFragment.requireContext();
                    contextRequireContext7.getClass();
                    String strB6 = DateTimeUtils.b(date4, contextRequireContext7);
                    Context contextRequireContext8 = travelDetailsFragment.requireContext();
                    contextRequireContext8.getClass();
                    String strO4 = DateTimeUtils.o(date4, contextRequireContext8);
                    str4 = strO4 != null ? strO4 : "";
                    str3 = strB6;
                } else {
                    str3 = "";
                    str4 = str3;
                }
                StationUiModel stationUiModel = trainUiModel.f56346e;
                String str9 = stationUiModel != null ? stationUiModel.f56342b : null;
                StationUiModel stationUiModel2 = trainUiModel.g;
                string = travelDetailsFragment.getString(R.string.share_train_text, str, str2, str9, str3, str4, stationUiModel2 != null ? stationUiModel2.f56342b : null, trainUiModel.d, trainUiModel.f56349i, trainUiModel.f56350j);
                string.getClass();
            } else {
                if (!(travelUiModel instanceof HotelUiModel)) {
                    v40.g();
                    return;
                }
                HotelUiModel hotelUiModel = (HotelUiModel) travelUiModel;
                Date date5 = hotelUiModel.f56339f;
                if (date5 != null) {
                    Context contextRequireContext9 = travelDetailsFragment.requireContext();
                    contextRequireContext9.getClass();
                    strB = DateTimeUtils.b(date5, contextRequireContext9);
                } else {
                    strB = null;
                }
                if (strB == null) {
                    strB = "";
                }
                Date date6 = hotelUiModel.g;
                if (date6 != null) {
                    Context contextRequireContext10 = travelDetailsFragment.requireContext();
                    contextRequireContext10.getClass();
                    strB2 = DateTimeUtils.b(date6, contextRequireContext10);
                } else {
                    strB2 = null;
                }
                String str10 = strB2 != null ? strB2 : "";
                String str11 = hotelUiModel.d;
                HotelPlaceUiModel hotelPlaceUiModel = hotelUiModel.f56338e;
                string = travelDetailsFragment.getString(R.string.share_hotel_text, str11, hotelPlaceUiModel != null ? hotelPlaceUiModel.f56336e : null, strB, str10, hotelUiModel.f56340h);
                string.getClass();
            }
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.setType(HttpServer.MIME_PLAINTEXT);
            intent.putExtra("android.intent.extra.TEXT", string);
            Context context = travelDetailsFragment.getContext();
            if (context != null) {
                Context context2 = travelDetailsFragment.getContext();
                context.startActivity(Intent.createChooser(intent, context2 != null ? context2.getString(R.string.share_using) : null));
            }
        }
    }

    public final FragmentTravelDetailsBinding O() {
        return (FragmentTravelDetailsBinding) this.F.c(this, L[0]);
    }

    public final TravelDetailViewModel P() {
        return (TravelDetailViewModel) this.G.getF71699b();
    }

    public final void R(FlightUiModel flightUiModel) {
        FlightAirportUiModel flightAirportUiModel = flightUiModel.d;
        String str = flightAirportUiModel != null ? flightAirportUiModel.f56326b : null;
        if (str == null) {
            str = "";
        }
        FlightAirportUiModel flightAirportUiModel2 = flightUiModel.f56331e;
        SpannableString spannableString = new SpannableString(tr.h(str, "  ", flightAirportUiModel2 != null ? flightAirportUiModel2.f56326b : null));
        spannableString.setSpan(new ImageSpan(requireContext(), R.drawable.ic_arrow_right_legacy, 1), str.length() + 1, str.length() + 2, 17);
        O().f51311h.setText(spannableString);
    }

    public final void S(TrainUiModel trainUiModel) {
        StationUiModel stationUiModel = trainUiModel.f56346e;
        String str = stationUiModel != null ? stationUiModel.f56342b : null;
        if (str == null) {
            str = "";
        }
        StationUiModel stationUiModel2 = trainUiModel.g;
        SpannableString spannableString = new SpannableString(tr.h(str, "  ", stationUiModel2 != null ? stationUiModel2.f56342b : null));
        spannableString.setSpan(new ImageSpan(requireContext(), R.drawable.ic_arrow_right_legacy, 1), str.length() + 1, str.length() + 2, 17);
        O().f51311h.setText(spannableString);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        Parcelable parcelable;
        super.onCreate(bundle);
        setHasOptionsMenu(true);
        Bundle arguments = getArguments();
        TravelUiModel travelUiModel = null;
        if (arguments != null) {
            if (Build.VERSION.SDK_INT >= 33) {
                parcelable = (Parcelable) arguments.getParcelable("KEY_TRAVEL", TravelUiModel.class);
            } else {
                Parcelable parcelable2 = arguments.getParcelable("KEY_TRAVEL");
                parcelable = (TravelUiModel) (parcelable2 instanceof TravelUiModel ? parcelable2 : null);
            }
            travelUiModel = (TravelUiModel) parcelable;
        }
        this.I = travelUiModel;
        P().t0(new TravelTrackingUiModel.TravelDetailPageScreen((String) this.J.getF71699b()));
    }

    @Override // com.vuitton.android.presentation.screen.connectivity.travel.detail.Hilt_TravelDetailsFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        view.getClass();
        super.onViewCreated(view, savedInstanceState);
        new SystemBarsHandling(this, new SystemBarsHandling.SystemBarsConfig(false, false, false, false, 15, null));
        BottomBarHandling.BottomBarConfig.f51577h.getClass();
        new BottomBarHandling(this, BottomBarHandling.BottomBarConfig.f51579j);
        FragmentTravelDetailsBinding fragmentTravelDetailsBindingO = O();
        ToolbarTitleBinding toolbarTitleBinding = fragmentTravelDetailsBindingO.d.f51464c;
        FragmentExtKt.a(this, toolbarTitleBinding.f51465b, null, 6);
        AppCompatTextView appCompatTextView = toolbarTitleBinding.f51466c;
        appCompatTextView.setText(getString(R.string.my_travel));
        final int i2 = 1;
        appCompatTextView.setAccessibilityHeading(true);
        final int i3 = 0;
        fragmentTravelDetailsBindingO.f51308c.setOnClickListener(new View.OnClickListener(this) { // from class: w41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TravelDetailsFragment f80756c;

            {
                this.f80756c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i4 = i3;
                final TravelDetailsFragment travelDetailsFragment = this.f80756c;
                switch (i4) {
                    case 0:
                        TravelDetailsFragment.Companion companion = TravelDetailsFragment.K;
                        Callback.n(view2);
                        try {
                            travelDetailsFragment.P().t0(new TravelTrackingUiModel.SwitchToEditTravelEvent((String) travelDetailsFragment.J.getF71699b()));
                            TravelForm travelForm = travelDetailsFragment.H;
                            if (travelForm != null) {
                                travelForm.c(true);
                            }
                            travelDetailsFragment.O().f51313j.setVisibility(0);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                        }
                    case 1:
                        TravelDetailsFragment.Companion companion2 = TravelDetailsFragment.K;
                        Callback.n(view2);
                        try {
                            TravelDetailsFragment.Q(travelDetailsFragment);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                        }
                    case 2:
                        TravelDetailsFragment.Companion companion3 = TravelDetailsFragment.K;
                        Callback.n(view2);
                        try {
                            GenericBottomSheet.Companion companion4 = GenericBottomSheet.R;
                            String string = travelDetailsFragment.getString(R.string.travel_deletion_message);
                            string.getClass();
                            String string2 = travelDetailsFragment.getString(R.string.btn_cancel);
                            String string3 = travelDetailsFragment.getString(R.string.menu_delete);
                            String string4 = travelDetailsFragment.getString(R.string.warning);
                            companion4.getClass();
                            final GenericBottomSheet genericBottomSheetA = GenericBottomSheet.Companion.a(string, string2, string3, string4);
                            genericBottomSheetA.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailsFragment$delete$1
                                @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
                                public final void a() {
                                    String f56345c;
                                    TravelDetailsFragment.Companion companion5 = TravelDetailsFragment.K;
                                    TravelDetailsFragment travelDetailsFragment2 = travelDetailsFragment;
                                    travelDetailsFragment2.P().t0(new TravelTrackingUiModel.DeleteTravelEvent((String) travelDetailsFragment2.J.getF71699b()));
                                    TravelUiModel travelUiModel = travelDetailsFragment2.I;
                                    if (travelUiModel == null || (f56345c = travelUiModel.getF56345c()) == null) {
                                        return;
                                    }
                                    travelDetailsFragment2.O().f51309e.f51459b.setVisibility(0);
                                    travelDetailsFragment2.P().Xa(f56345c);
                                    genericBottomSheetA.dismiss();
                                }
                            };
                            genericBottomSheetA.show(travelDetailsFragment.getParentFragmentManager(), GenericBottomSheet.S);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                        }
                    default:
                        TravelDetailsFragment.Companion companion5 = TravelDetailsFragment.K;
                        Callback.n(view2);
                        try {
                            TravelForm travelForm2 = travelDetailsFragment.H;
                            if (travelForm2 != null && travelForm2.isValid()) {
                                travelDetailsFragment.O().f51309e.f51459b.setVisibility(0);
                                FragmentActivity activity = travelDetailsFragment.getActivity();
                                if (activity != null) {
                                    ContextExtKt.d(activity, travelDetailsFragment.O().g.getWindowToken());
                                }
                                travelDetailsFragment.P().u7(travelForm2.y());
                            }
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                        }
                }
            }
        });
        fragmentTravelDetailsBindingO.f51310f.setOnClickListener(new View.OnClickListener(this) { // from class: w41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TravelDetailsFragment f80756c;

            {
                this.f80756c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i4 = i2;
                final TravelDetailsFragment travelDetailsFragment = this.f80756c;
                switch (i4) {
                    case 0:
                        TravelDetailsFragment.Companion companion = TravelDetailsFragment.K;
                        Callback.n(view2);
                        try {
                            travelDetailsFragment.P().t0(new TravelTrackingUiModel.SwitchToEditTravelEvent((String) travelDetailsFragment.J.getF71699b()));
                            TravelForm travelForm = travelDetailsFragment.H;
                            if (travelForm != null) {
                                travelForm.c(true);
                            }
                            travelDetailsFragment.O().f51313j.setVisibility(0);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                        }
                    case 1:
                        TravelDetailsFragment.Companion companion2 = TravelDetailsFragment.K;
                        Callback.n(view2);
                        try {
                            TravelDetailsFragment.Q(travelDetailsFragment);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                        }
                    case 2:
                        TravelDetailsFragment.Companion companion3 = TravelDetailsFragment.K;
                        Callback.n(view2);
                        try {
                            GenericBottomSheet.Companion companion4 = GenericBottomSheet.R;
                            String string = travelDetailsFragment.getString(R.string.travel_deletion_message);
                            string.getClass();
                            String string2 = travelDetailsFragment.getString(R.string.btn_cancel);
                            String string3 = travelDetailsFragment.getString(R.string.menu_delete);
                            String string4 = travelDetailsFragment.getString(R.string.warning);
                            companion4.getClass();
                            final GenericBottomSheet genericBottomSheetA = GenericBottomSheet.Companion.a(string, string2, string3, string4);
                            genericBottomSheetA.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailsFragment$delete$1
                                @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
                                public final void a() {
                                    String f56345c;
                                    TravelDetailsFragment.Companion companion5 = TravelDetailsFragment.K;
                                    TravelDetailsFragment travelDetailsFragment2 = travelDetailsFragment;
                                    travelDetailsFragment2.P().t0(new TravelTrackingUiModel.DeleteTravelEvent((String) travelDetailsFragment2.J.getF71699b()));
                                    TravelUiModel travelUiModel = travelDetailsFragment2.I;
                                    if (travelUiModel == null || (f56345c = travelUiModel.getF56345c()) == null) {
                                        return;
                                    }
                                    travelDetailsFragment2.O().f51309e.f51459b.setVisibility(0);
                                    travelDetailsFragment2.P().Xa(f56345c);
                                    genericBottomSheetA.dismiss();
                                }
                            };
                            genericBottomSheetA.show(travelDetailsFragment.getParentFragmentManager(), GenericBottomSheet.S);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                        }
                    default:
                        TravelDetailsFragment.Companion companion5 = TravelDetailsFragment.K;
                        Callback.n(view2);
                        try {
                            TravelForm travelForm2 = travelDetailsFragment.H;
                            if (travelForm2 != null && travelForm2.isValid()) {
                                travelDetailsFragment.O().f51309e.f51459b.setVisibility(0);
                                FragmentActivity activity = travelDetailsFragment.getActivity();
                                if (activity != null) {
                                    ContextExtKt.d(activity, travelDetailsFragment.O().g.getWindowToken());
                                }
                                travelDetailsFragment.P().u7(travelForm2.y());
                            }
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                        }
                }
            }
        });
        final int i4 = 2;
        fragmentTravelDetailsBindingO.f51307b.setOnClickListener(new View.OnClickListener(this) { // from class: w41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TravelDetailsFragment f80756c;

            {
                this.f80756c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i5 = i4;
                final TravelDetailsFragment travelDetailsFragment = this.f80756c;
                switch (i5) {
                    case 0:
                        TravelDetailsFragment.Companion companion = TravelDetailsFragment.K;
                        Callback.n(view2);
                        try {
                            travelDetailsFragment.P().t0(new TravelTrackingUiModel.SwitchToEditTravelEvent((String) travelDetailsFragment.J.getF71699b()));
                            TravelForm travelForm = travelDetailsFragment.H;
                            if (travelForm != null) {
                                travelForm.c(true);
                            }
                            travelDetailsFragment.O().f51313j.setVisibility(0);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                        }
                    case 1:
                        TravelDetailsFragment.Companion companion2 = TravelDetailsFragment.K;
                        Callback.n(view2);
                        try {
                            TravelDetailsFragment.Q(travelDetailsFragment);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                        }
                    case 2:
                        TravelDetailsFragment.Companion companion3 = TravelDetailsFragment.K;
                        Callback.n(view2);
                        try {
                            GenericBottomSheet.Companion companion4 = GenericBottomSheet.R;
                            String string = travelDetailsFragment.getString(R.string.travel_deletion_message);
                            string.getClass();
                            String string2 = travelDetailsFragment.getString(R.string.btn_cancel);
                            String string3 = travelDetailsFragment.getString(R.string.menu_delete);
                            String string4 = travelDetailsFragment.getString(R.string.warning);
                            companion4.getClass();
                            final GenericBottomSheet genericBottomSheetA = GenericBottomSheet.Companion.a(string, string2, string3, string4);
                            genericBottomSheetA.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailsFragment$delete$1
                                @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
                                public final void a() {
                                    String f56345c;
                                    TravelDetailsFragment.Companion companion5 = TravelDetailsFragment.K;
                                    TravelDetailsFragment travelDetailsFragment2 = travelDetailsFragment;
                                    travelDetailsFragment2.P().t0(new TravelTrackingUiModel.DeleteTravelEvent((String) travelDetailsFragment2.J.getF71699b()));
                                    TravelUiModel travelUiModel = travelDetailsFragment2.I;
                                    if (travelUiModel == null || (f56345c = travelUiModel.getF56345c()) == null) {
                                        return;
                                    }
                                    travelDetailsFragment2.O().f51309e.f51459b.setVisibility(0);
                                    travelDetailsFragment2.P().Xa(f56345c);
                                    genericBottomSheetA.dismiss();
                                }
                            };
                            genericBottomSheetA.show(travelDetailsFragment.getParentFragmentManager(), GenericBottomSheet.S);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                        }
                    default:
                        TravelDetailsFragment.Companion companion5 = TravelDetailsFragment.K;
                        Callback.n(view2);
                        try {
                            TravelForm travelForm2 = travelDetailsFragment.H;
                            if (travelForm2 != null && travelForm2.isValid()) {
                                travelDetailsFragment.O().f51309e.f51459b.setVisibility(0);
                                FragmentActivity activity = travelDetailsFragment.getActivity();
                                if (activity != null) {
                                    ContextExtKt.d(activity, travelDetailsFragment.O().g.getWindowToken());
                                }
                                travelDetailsFragment.P().u7(travelForm2.y());
                            }
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                        }
                }
            }
        });
        final int i5 = 3;
        fragmentTravelDetailsBindingO.f51313j.setOnClickListener(new View.OnClickListener(this) { // from class: w41

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ TravelDetailsFragment f80756c;

            {
                this.f80756c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                int i6 = i5;
                final TravelDetailsFragment travelDetailsFragment = this.f80756c;
                switch (i6) {
                    case 0:
                        TravelDetailsFragment.Companion companion = TravelDetailsFragment.K;
                        Callback.n(view2);
                        try {
                            travelDetailsFragment.P().t0(new TravelTrackingUiModel.SwitchToEditTravelEvent((String) travelDetailsFragment.J.getF71699b()));
                            TravelForm travelForm = travelDetailsFragment.H;
                            if (travelForm != null) {
                                travelForm.c(true);
                            }
                            travelDetailsFragment.O().f51313j.setVisibility(0);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                        }
                    case 1:
                        TravelDetailsFragment.Companion companion2 = TravelDetailsFragment.K;
                        Callback.n(view2);
                        try {
                            TravelDetailsFragment.Q(travelDetailsFragment);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                        }
                    case 2:
                        TravelDetailsFragment.Companion companion3 = TravelDetailsFragment.K;
                        Callback.n(view2);
                        try {
                            GenericBottomSheet.Companion companion4 = GenericBottomSheet.R;
                            String string = travelDetailsFragment.getString(R.string.travel_deletion_message);
                            string.getClass();
                            String string2 = travelDetailsFragment.getString(R.string.btn_cancel);
                            String string3 = travelDetailsFragment.getString(R.string.menu_delete);
                            String string4 = travelDetailsFragment.getString(R.string.warning);
                            companion4.getClass();
                            final GenericBottomSheet genericBottomSheetA = GenericBottomSheet.Companion.a(string, string2, string3, string4);
                            genericBottomSheetA.O = new GenericBottomSheet.OnPositiveClickListener() { // from class: com.vuitton.android.presentation.screen.connectivity.travel.detail.TravelDetailsFragment$delete$1
                                @Override // com.vuitton.android.presentation.view.bottomsheets.GenericBottomSheet.OnPositiveClickListener
                                public final void a() {
                                    String f56345c;
                                    TravelDetailsFragment.Companion companion5 = TravelDetailsFragment.K;
                                    TravelDetailsFragment travelDetailsFragment2 = travelDetailsFragment;
                                    travelDetailsFragment2.P().t0(new TravelTrackingUiModel.DeleteTravelEvent((String) travelDetailsFragment2.J.getF71699b()));
                                    TravelUiModel travelUiModel = travelDetailsFragment2.I;
                                    if (travelUiModel == null || (f56345c = travelUiModel.getF56345c()) == null) {
                                        return;
                                    }
                                    travelDetailsFragment2.O().f51309e.f51459b.setVisibility(0);
                                    travelDetailsFragment2.P().Xa(f56345c);
                                    genericBottomSheetA.dismiss();
                                }
                            };
                            genericBottomSheetA.show(travelDetailsFragment.getParentFragmentManager(), GenericBottomSheet.S);
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                        }
                    default:
                        TravelDetailsFragment.Companion companion5 = TravelDetailsFragment.K;
                        Callback.n(view2);
                        try {
                            TravelForm travelForm2 = travelDetailsFragment.H;
                            if (travelForm2 != null && travelForm2.isValid()) {
                                travelDetailsFragment.O().f51309e.f51459b.setVisibility(0);
                                FragmentActivity activity = travelDetailsFragment.getActivity();
                                if (activity != null) {
                                    ContextExtKt.d(activity, travelDetailsFragment.O().g.getWindowToken());
                                }
                                travelDetailsFragment.P().u7(travelForm2.y());
                            }
                            return;
                        } finally {
                            Callback.o();
                            SensorsDataAutoTrackHelper.trackViewOnClick(view2);
                        }
                }
            }
        });
        TravelUiModel travelUiModel = this.I;
        if (travelUiModel != null) {
            if (travelUiModel instanceof FlightUiModel) {
                FlightUiModel flightUiModel = (FlightUiModel) travelUiModel;
                ImageView imageView = O().f51312i;
                imageView.setImageResource(R.drawable.ic_flight);
                imageView.setContentDescription(getString(R.string.plane));
                R(flightUiModel);
                FlightFormFragment.Q.getClass();
                FlightFormFragment flightFormFragment = new FlightFormFragment();
                Bundle bundle = new Bundle();
                bundle.putParcelable("TRAVEL", flightUiModel);
                flightFormFragment.setArguments(bundle);
                this.H = flightFormFragment;
                FragmentTransaction fragmentTransactionD = getParentFragmentManager().d();
                fragmentTransactionD.m(R.id.travel_details_container, flightFormFragment, FlightFormFragment.S);
                fragmentTransactionD.e();
            } else if (travelUiModel instanceof TrainUiModel) {
                TrainUiModel trainUiModel = (TrainUiModel) travelUiModel;
                ImageView imageView2 = O().f51312i;
                imageView2.setImageResource(R.drawable.ic_train);
                imageView2.setContentDescription(getString(R.string.train));
                S(trainUiModel);
                TrainFormFragment.Q.getClass();
                TrainFormFragment trainFormFragment = new TrainFormFragment();
                Bundle bundle2 = new Bundle();
                bundle2.putParcelable("TRAVEL", trainUiModel);
                trainFormFragment.setArguments(bundle2);
                this.H = trainFormFragment;
                FragmentTransaction fragmentTransactionD2 = getParentFragmentManager().d();
                fragmentTransactionD2.m(R.id.travel_details_container, trainFormFragment, TrainFormFragment.S);
                fragmentTransactionD2.e();
            } else {
                if (!(travelUiModel instanceof HotelUiModel)) {
                    v40.g();
                    return;
                }
                HotelUiModel hotelUiModel = (HotelUiModel) travelUiModel;
                ImageView imageView3 = O().f51312i;
                imageView3.setImageResource(R.drawable.ic_hotel);
                imageView3.setContentDescription(getString(R.string.hotel));
                O().f51311h.setText(hotelUiModel.d);
                HotelFormFragment.G.getClass();
                HotelFormFragment hotelFormFragment = new HotelFormFragment();
                Bundle bundle3 = new Bundle();
                bundle3.putParcelable("TRAVEL", hotelUiModel);
                hotelFormFragment.setArguments(bundle3);
                this.H = hotelFormFragment;
                FragmentTransaction fragmentTransactionD3 = getParentFragmentManager().d();
                fragmentTransactionD3.m(R.id.travel_details_container, hotelFormFragment, HotelFormFragment.I);
                fragmentTransactionD3.e();
            }
        }
        P().getF56395e().observe(getViewLifecycleOwner(), new TravelDetailsFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass3(1, this, TravelDetailsFragment.class, "handleDeleteResult", "handleDeleteResult(Ljava/lang/Boolean;)V", 0)));
        P().getG().observe(getViewLifecycleOwner(), new TravelDetailsFragment$sam$androidx_lifecycle_Observer$0(new AnonymousClass4(1, this, TravelDetailsFragment.class, "handleEditResult", "handleEditResult(Ljava/lang/Object;)V", 0)));
    }
}
