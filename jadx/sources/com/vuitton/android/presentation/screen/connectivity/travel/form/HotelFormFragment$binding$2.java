package com.vuitton.android.presentation.screen.connectivity.travel.form;

import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.textfield.TextInputLayout;
import com.vuitton.android.R;
import com.vuitton.android.presentation.databinding.FragmentHotelFormBinding;
import defpackage.r81;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final /* synthetic */ class HotelFormFragment$binding$2 extends FunctionReferenceImpl implements Function1<View, FragmentHotelFormBinding> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HotelFormFragment$binding$2 f56413b = new HotelFormFragment$binding$2(1, FragmentHotelFormBinding.class, "bind", "bind(Landroid/view/View;)Lcom/vuitton/android/presentation/databinding/FragmentHotelFormBinding;", 0);

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        View view = (View) obj;
        view.getClass();
        int i2 = R.id.check_in_date;
        EditText editText = (EditText) ViewBindings.a(R.id.check_in_date, view);
        if (editText != null) {
            i2 = R.id.check_in_layout;
            TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.a(R.id.check_in_layout, view);
            if (textInputLayout != null) {
                i2 = R.id.check_out_date;
                EditText editText2 = (EditText) ViewBindings.a(R.id.check_out_date, view);
                if (editText2 != null) {
                    i2 = R.id.check_out_layout;
                    TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.a(R.id.check_out_layout, view);
                    if (textInputLayout2 != null) {
                        i2 = R.id.hotel_address;
                        EditText editText3 = (EditText) ViewBindings.a(R.id.hotel_address, view);
                        if (editText3 != null) {
                            i2 = R.id.hotel_address_layout;
                            TextInputLayout textInputLayout3 = (TextInputLayout) ViewBindings.a(R.id.hotel_address_layout, view);
                            if (textInputLayout3 != null) {
                                i2 = R.id.hotel_info_title;
                                TextView textView = (TextView) ViewBindings.a(R.id.hotel_info_title, view);
                                if (textView != null) {
                                    i2 = R.id.hotel_name;
                                    EditText editText4 = (EditText) ViewBindings.a(R.id.hotel_name, view);
                                    if (editText4 != null) {
                                        i2 = R.id.hotel_name_layout;
                                        TextInputLayout textInputLayout4 = (TextInputLayout) ViewBindings.a(R.id.hotel_name_layout, view);
                                        if (textInputLayout4 != null) {
                                            i2 = R.id.phone;
                                            EditText editText5 = (EditText) ViewBindings.a(R.id.phone, view);
                                            if (editText5 != null) {
                                                i2 = R.id.phone_layout;
                                                if (((TextInputLayout) ViewBindings.a(R.id.phone_layout, view)) != null) {
                                                    return new FragmentHotelFormBinding(editText, textInputLayout, editText2, textInputLayout2, editText3, textInputLayout3, textView, editText4, textInputLayout4, editText5);
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
