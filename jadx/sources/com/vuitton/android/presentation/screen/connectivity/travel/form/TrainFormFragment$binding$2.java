package com.vuitton.android.presentation.screen.connectivity.travel.form;

import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputLayout;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentTrainFormBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class TrainFormFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentTrainFormBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final TrainFormFragment$binding$2 f56414b = new TrainFormFragment$binding$2(1, FragmentTrainFormBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentTrainFormBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.arrival_date;
        EditText editText = (EditText) ViewBindings.a(R.id.arrival_date, view);
        if (editText != null) {
            i2 = R.id.arrival_date_layout;
            TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.a(R.id.arrival_date_layout, view);
            if (textInputLayout != null) {
                i2 = R.id.arrival_hour;
                EditText editText2 = (EditText) ViewBindings.a(R.id.arrival_hour, view);
                if (editText2 != null) {
                    i2 = R.id.arrival_hour_layout;
                    TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.a(R.id.arrival_hour_layout, view);
                    if (textInputLayout2 != null) {
                        i2 = R.id.arrival_station;
                        EditText editText3 = (EditText) ViewBindings.a(R.id.arrival_station, view);
                        if (editText3 != null) {
                            i2 = R.id.arrival_station_layout;
                            TextInputLayout textInputLayout3 = (TextInputLayout) ViewBindings.a(R.id.arrival_station_layout, view);
                            if (textInputLayout3 != null) {
                                i2 = R.id.coach;
                                EditText editText4 = (EditText) ViewBindings.a(R.id.coach, view);
                                if (editText4 != null) {
                                    i2 = R.id.coach_layout;
                                    if (((TextInputLayout) ViewBindings.a(R.id.coach_layout, view)) != null) {
                                        i2 = R.id.departure_date;
                                        EditText editText5 = (EditText) ViewBindings.a(R.id.departure_date, view);
                                        if (editText5 != null) {
                                            i2 = R.id.departure_date_layout;
                                            TextInputLayout textInputLayout4 = (TextInputLayout) ViewBindings.a(R.id.departure_date_layout, view);
                                            if (textInputLayout4 != null) {
                                                i2 = R.id.departure_hour;
                                                EditText editText6 = (EditText) ViewBindings.a(R.id.departure_hour, view);
                                                if (editText6 != null) {
                                                    i2 = R.id.departure_hour_layout;
                                                    TextInputLayout textInputLayout5 = (TextInputLayout) ViewBindings.a(R.id.departure_hour_layout, view);
                                                    if (textInputLayout5 != null) {
                                                        i2 = R.id.departure_station;
                                                        EditText editText7 = (EditText) ViewBindings.a(R.id.departure_station, view);
                                                        if (editText7 != null) {
                                                            i2 = R.id.departure_station_layout;
                                                            TextInputLayout textInputLayout6 = (TextInputLayout) ViewBindings.a(R.id.departure_station_layout, view);
                                                            if (textInputLayout6 != null) {
                                                                i2 = R.id.seat_reference;
                                                                EditText editText8 = (EditText) ViewBindings.a(R.id.seat_reference, view);
                                                                if (editText8 != null) {
                                                                    i2 = R.id.seat_reference_layout;
                                                                    if (((TextInputLayout) ViewBindings.a(R.id.seat_reference_layout, view)) != null) {
                                                                        i2 = R.id.train_arrival_title;
                                                                        TextView textView = (TextView) ViewBindings.a(R.id.train_arrival_title, view);
                                                                        if (textView != null) {
                                                                            i2 = R.id.train_departure_title;
                                                                            TextView textView2 = (TextView) ViewBindings.a(R.id.train_departure_title, view);
                                                                            if (textView2 != null) {
                                                                                i2 = R.id.train_info_title;
                                                                                TextView textView3 = (TextView) ViewBindings.a(R.id.train_info_title, view);
                                                                                if (textView3 != null) {
                                                                                    i2 = R.id.train_reference;
                                                                                    EditText editText9 = (EditText) ViewBindings.a(R.id.train_reference, view);
                                                                                    if (editText9 != null) {
                                                                                        i2 = R.id.train_reference_layout;
                                                                                        TextInputLayout textInputLayout7 = (TextInputLayout) ViewBindings.a(R.id.train_reference_layout, view);
                                                                                        if (textInputLayout7 != null) {
                                                                                            return new FragmentTrainFormBinding(editText, textInputLayout, editText2, textInputLayout2, editText3, textInputLayout3, editText4, editText5, textInputLayout4, editText6, textInputLayout5, editText7, textInputLayout6, editText8, textView, textView2, textView3, editText9, textInputLayout7);
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        r81.d("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        return null;
    }
}
