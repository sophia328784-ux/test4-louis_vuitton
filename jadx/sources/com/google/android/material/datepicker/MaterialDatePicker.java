package com.google.android.material.datepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentTransaction;
import com.dynatrace.android.callback.Callback;
import com.google.android.material.R$styleable;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.datepicker.MaterialDatePicker;
import com.google.android.material.datepicker.MaterialPickerOnPositiveButtonClickListener;
import com.google.android.material.dialog.InsetDialogOnTouchListener;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.vuitton.android.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialDatePicker<S> extends DialogFragment {
    public final LinkedHashSet A = new LinkedHashSet();
    public final LinkedHashSet B = new LinkedHashSet();
    public final LinkedHashSet C = new LinkedHashSet();
    public final LinkedHashSet D = new LinkedHashSet();
    public int E;
    public DateSelector F;
    public PickerFragment G;
    public CalendarConstraints H;
    public DayViewDecorator I;
    public MaterialCalendar J;
    public int K;
    public CharSequence L;
    public boolean M;
    public int N;
    public int O;
    public CharSequence P;
    public int Q;
    public CharSequence R;
    public int S;
    public CharSequence T;
    public int V;
    public CharSequence W;
    public TextView X;
    public TextView Y;
    public CheckableImageButton Z;
    public boolean b1;
    public CharSequence c1;
    public CharSequence d1;
    public MaterialShapeDrawable h0;
    public Button t0;

    @Retention(RetentionPolicy.SOURCE)
    public @interface InputMode {
    }

    public static int K(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_content_padding);
        Month month = new Month(UtcDates.f());
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_width);
        int dimensionPixelOffset2 = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_horizontal_padding);
        int i2 = month.f32569e;
        return ((i2 - 1) * dimensionPixelOffset2) + (dimensionPixelSize * i2) + (dimensionPixelOffset * 2);
    }

    public static boolean L(int i2, Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(MaterialAttributes.d(context, R.attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()).data, new int[]{i2});
        boolean z = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z;
    }

    public final DateSelector J() {
        if (this.F == null) {
            this.F = (DateSelector) getArguments().getParcelable("DATE_SELECTOR_KEY");
        }
        return this.F;
    }

    public final void M() {
        Context contextRequireContext = requireContext();
        int iF = this.E;
        if (iF == 0) {
            iF = J().F(contextRequireContext);
        }
        DateSelector dateSelectorJ = J();
        CalendarConstraints calendarConstraints = this.H;
        DayViewDecorator dayViewDecorator = this.I;
        MaterialCalendar materialCalendar = new MaterialCalendar();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", iF);
        bundle.putParcelable("GRID_SELECTOR_KEY", dateSelectorJ);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", dayViewDecorator);
        bundle.putParcelable("CURRENT_MONTH_KEY", calendarConstraints.f32518e);
        materialCalendar.setArguments(bundle);
        this.J = materialCalendar;
        PickerFragment pickerFragment = materialCalendar;
        if (this.N == 1) {
            DateSelector dateSelectorJ2 = J();
            CalendarConstraints calendarConstraints2 = this.H;
            MaterialTextInputPicker materialTextInputPicker = new MaterialTextInputPicker();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("THEME_RES_ID_KEY", iF);
            bundle2.putParcelable("DATE_SELECTOR_KEY", dateSelectorJ2);
            bundle2.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints2);
            materialTextInputPicker.setArguments(bundle2);
            pickerFragment = materialTextInputPicker;
        }
        this.G = pickerFragment;
        this.X.setText((this.N == 1 && getResources().getConfiguration().orientation == 2) ? this.d1 : this.c1);
        String strP0 = J().P0(getContext());
        this.Y.setContentDescription(J().E(requireContext()));
        this.Y.setText(strP0);
        FragmentTransaction fragmentTransactionD = getChildFragmentManager().d();
        fragmentTransactionD.m(R.id.mtrl_calendar_frame, this.G, null);
        fragmentTransactionD.g();
        this.G.p(new OnSelectionChangedListener<Object>() { // from class: com.google.android.material.datepicker.MaterialDatePicker.2
            @Override // com.google.android.material.datepicker.OnSelectionChangedListener
            public final void a() {
                MaterialDatePicker.this.t0.setEnabled(false);
            }

            @Override // com.google.android.material.datepicker.OnSelectionChangedListener
            public final void b(Object obj) {
                MaterialDatePicker materialDatePicker = MaterialDatePicker.this;
                String strP1 = materialDatePicker.J().P0(materialDatePicker.getContext());
                materialDatePicker.Y.setContentDescription(materialDatePicker.J().E(materialDatePicker.requireContext()));
                materialDatePicker.Y.setText(strP1);
                materialDatePicker.t0.setEnabled(materialDatePicker.J().u1());
            }
        });
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.C.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.E = bundle.getInt("OVERRIDE_THEME_RES_ID");
        this.F = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.H = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.I = (DayViewDecorator) bundle.getParcelable("DAY_VIEW_DECORATOR_KEY");
        this.K = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.L = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.N = bundle.getInt("INPUT_MODE_KEY");
        this.O = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.P = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.Q = bundle.getInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.R = bundle.getCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        this.S = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.T = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
        this.V = bundle.getInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.W = bundle.getCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        CharSequence text = this.L;
        if (text == null) {
            text = requireContext().getResources().getText(this.K);
        }
        this.c1 = text;
        if (text != null) {
            CharSequence[] charSequenceArrSplit = TextUtils.split(String.valueOf(text), "\n");
            if (charSequenceArrSplit.length > 1) {
                text = charSequenceArrSplit[0];
            }
        } else {
            text = null;
        }
        this.d1 = text;
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Context contextRequireContext = requireContext();
        Context contextRequireContext2 = requireContext();
        int iF = this.E;
        if (iF == 0) {
            iF = J().F(contextRequireContext2);
        }
        Dialog dialog = new Dialog(contextRequireContext, iF);
        Context context = dialog.getContext();
        this.M = L(android.R.attr.windowFullscreen, context);
        this.h0 = new MaterialShapeDrawable(context, null, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, R$styleable.z, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        int color = typedArrayObtainStyledAttributes.getColor(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.h0.n(context);
        this.h0.r(ColorStateList.valueOf(color));
        this.h0.q(dialog.getWindow().getDecorView().getElevation());
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.M ? R.layout.mtrl_picker_fullscreen : R.layout.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        if (this.M) {
            viewInflate.findViewById(R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(K(context), -2));
        } else {
            viewInflate.findViewById(R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(K(context), -1));
        }
        TextView textView = (TextView) viewInflate.findViewById(R.id.mtrl_picker_header_selection_text);
        this.Y = textView;
        final int i2 = 1;
        textView.setAccessibilityLiveRegion(1);
        this.Z = (CheckableImageButton) viewInflate.findViewById(R.id.mtrl_picker_header_toggle);
        this.X = (TextView) viewInflate.findViewById(R.id.mtrl_picker_title_text);
        this.Z.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.Z;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, AppCompatResources.a(context, R.drawable.material_ic_calendar_black_24dp));
        final int i3 = 0;
        stateListDrawable.addState(new int[0], AppCompatResources.a(context, R.drawable.material_ic_edit_black_24dp));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.Z.setChecked(this.N != 0);
        ViewCompat.t(this.Z, null);
        CheckableImageButton checkableImageButton2 = this.Z;
        this.Z.setContentDescription(this.N == 1 ? checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode));
        final int i4 = 2;
        this.Z.setOnClickListener(new View.OnClickListener(this) { // from class: jc0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ MaterialDatePicker f71363c;

            {
                this.f71363c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i5 = i4;
                MaterialDatePicker materialDatePicker = this.f71363c;
                switch (i5) {
                    case 0:
                        Callback.n(view);
                        try {
                            for (MaterialPickerOnPositiveButtonClickListener materialPickerOnPositiveButtonClickListener : materialDatePicker.A) {
                                materialDatePicker.J().H1();
                                materialPickerOnPositiveButtonClickListener.a();
                            }
                            materialDatePicker.dismiss();
                            return;
                        } finally {
                            Callback.o();
                        }
                    case 1:
                        Callback.n(view);
                        try {
                            Iterator it = materialDatePicker.B.iterator();
                            while (it.hasNext()) {
                                ((View.OnClickListener) it.next()).onClick(view);
                            }
                            materialDatePicker.dismiss();
                            return;
                        } finally {
                            Callback.o();
                        }
                    default:
                        Callback.n(view);
                        try {
                            materialDatePicker.t0.setEnabled(materialDatePicker.J().u1());
                            materialDatePicker.Z.toggle();
                            int i6 = materialDatePicker.N == 1 ? 0 : 1;
                            materialDatePicker.N = i6;
                            CheckableImageButton checkableImageButton3 = materialDatePicker.Z;
                            materialDatePicker.Z.setContentDescription(i6 == 1 ? checkableImageButton3.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton3.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode));
                            materialDatePicker.M();
                            return;
                        } finally {
                            Callback.o();
                        }
                }
            }
        });
        this.t0 = (Button) viewInflate.findViewById(R.id.confirm_button);
        boolean zU1 = J().u1();
        Button button = this.t0;
        if (zU1) {
            button.setEnabled(true);
        } else {
            button.setEnabled(false);
        }
        this.t0.setTag("CONFIRM_BUTTON_TAG");
        CharSequence charSequence = this.P;
        if (charSequence != null) {
            this.t0.setText(charSequence);
        } else {
            int i5 = this.O;
            if (i5 != 0) {
                this.t0.setText(i5);
            }
        }
        CharSequence charSequence2 = this.R;
        if (charSequence2 != null) {
            this.t0.setContentDescription(charSequence2);
        } else if (this.Q != 0) {
            this.t0.setContentDescription(getContext().getResources().getText(this.Q));
        }
        this.t0.setOnClickListener(new View.OnClickListener(this) { // from class: jc0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ MaterialDatePicker f71363c;

            {
                this.f71363c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i6 = i3;
                MaterialDatePicker materialDatePicker = this.f71363c;
                switch (i6) {
                    case 0:
                        Callback.n(view);
                        try {
                            for (MaterialPickerOnPositiveButtonClickListener materialPickerOnPositiveButtonClickListener : materialDatePicker.A) {
                                materialDatePicker.J().H1();
                                materialPickerOnPositiveButtonClickListener.a();
                            }
                            materialDatePicker.dismiss();
                            return;
                        } finally {
                            Callback.o();
                        }
                    case 1:
                        Callback.n(view);
                        try {
                            Iterator it = materialDatePicker.B.iterator();
                            while (it.hasNext()) {
                                ((View.OnClickListener) it.next()).onClick(view);
                            }
                            materialDatePicker.dismiss();
                            return;
                        } finally {
                            Callback.o();
                        }
                    default:
                        Callback.n(view);
                        try {
                            materialDatePicker.t0.setEnabled(materialDatePicker.J().u1());
                            materialDatePicker.Z.toggle();
                            int i7 = materialDatePicker.N == 1 ? 0 : 1;
                            materialDatePicker.N = i7;
                            CheckableImageButton checkableImageButton3 = materialDatePicker.Z;
                            materialDatePicker.Z.setContentDescription(i7 == 1 ? checkableImageButton3.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton3.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode));
                            materialDatePicker.M();
                            return;
                        } finally {
                            Callback.o();
                        }
                }
            }
        });
        Button button2 = (Button) viewInflate.findViewById(R.id.cancel_button);
        button2.setTag("CANCEL_BUTTON_TAG");
        CharSequence charSequence3 = this.T;
        if (charSequence3 != null) {
            button2.setText(charSequence3);
        } else {
            int i6 = this.S;
            if (i6 != 0) {
                button2.setText(i6);
            }
        }
        CharSequence charSequence4 = this.W;
        if (charSequence4 != null) {
            button2.setContentDescription(charSequence4);
        } else if (this.V != 0) {
            button2.setContentDescription(getContext().getResources().getText(this.V));
        }
        button2.setOnClickListener(new View.OnClickListener(this) { // from class: jc0

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ MaterialDatePicker f71363c;

            {
                this.f71363c = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i7 = i2;
                MaterialDatePicker materialDatePicker = this.f71363c;
                switch (i7) {
                    case 0:
                        Callback.n(view);
                        try {
                            for (MaterialPickerOnPositiveButtonClickListener materialPickerOnPositiveButtonClickListener : materialDatePicker.A) {
                                materialDatePicker.J().H1();
                                materialPickerOnPositiveButtonClickListener.a();
                            }
                            materialDatePicker.dismiss();
                            return;
                        } finally {
                            Callback.o();
                        }
                    case 1:
                        Callback.n(view);
                        try {
                            Iterator it = materialDatePicker.B.iterator();
                            while (it.hasNext()) {
                                ((View.OnClickListener) it.next()).onClick(view);
                            }
                            materialDatePicker.dismiss();
                            return;
                        } finally {
                            Callback.o();
                        }
                    default:
                        Callback.n(view);
                        try {
                            materialDatePicker.t0.setEnabled(materialDatePicker.J().u1());
                            materialDatePicker.Z.toggle();
                            int i8 = materialDatePicker.N == 1 ? 0 : 1;
                            materialDatePicker.N = i8;
                            CheckableImageButton checkableImageButton3 = materialDatePicker.Z;
                            materialDatePicker.Z.setContentDescription(i8 == 1 ? checkableImageButton3.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton3.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode));
                            materialDatePicker.M();
                            return;
                        } finally {
                            Callback.o();
                        }
                }
            }
        });
        return viewInflate;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.D.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.E);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.F);
        CalendarConstraints calendarConstraints = this.H;
        CalendarConstraints.Builder builder = new CalendarConstraints.Builder();
        builder.f32522b = new DateValidatorPointForward(Long.MIN_VALUE);
        long j2 = calendarConstraints.f32516b.g;
        long j3 = calendarConstraints.f32517c.g;
        builder.f32521a = Long.valueOf(calendarConstraints.f32518e.g);
        int i2 = calendarConstraints.f32519f;
        CalendarConstraints.DateValidator dateValidator = calendarConstraints.d;
        builder.f32522b = dateValidator;
        MaterialCalendar materialCalendar = this.J;
        Month month = materialCalendar == null ? null : materialCalendar.F;
        if (month != null) {
            builder.f32521a = Long.valueOf(month.g);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", dateValidator);
        Month monthB = Month.b(j2);
        Month monthB2 = Month.b(j3);
        CalendarConstraints.DateValidator dateValidator2 = (CalendarConstraints.DateValidator) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY");
        Long l = builder.f32521a;
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new CalendarConstraints(monthB, monthB2, dateValidator2, l == null ? null : Month.b(l.longValue()), i2));
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", this.I);
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.K);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.L);
        bundle.putInt("INPUT_MODE_KEY", this.N);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.O);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.P);
        bundle.putInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.Q);
        bundle.putCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.R);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.S);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.T);
        bundle.putInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.V);
        bundle.putCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.W);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.M) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.h0);
            if (!this.b1) {
                final View viewFindViewById = requireView().findViewById(R.id.fullscreen_header);
                ColorStateList colorStateListD = DrawableUtils.d(viewFindViewById.getBackground());
                Integer numValueOf = colorStateListD != null ? Integer.valueOf(colorStateListD.getDefaultColor()) : null;
                boolean z = numValueOf == null || numValueOf.intValue() == 0;
                int iC = MaterialColors.c(window.getContext(), android.R.attr.colorBackground, com.batch.android.q0.b.v);
                if (z) {
                    numValueOf = Integer.valueOf(iC);
                }
                WindowCompat.a(window, false);
                window.getContext();
                window.getContext();
                window.setStatusBarColor(0);
                window.setNavigationBarColor(0);
                new WindowInsetsControllerCompat(window, window.getDecorView()).e(MaterialColors.f(0) || MaterialColors.f(numValueOf.intValue()));
                new WindowInsetsControllerCompat(window, window.getDecorView()).d(MaterialColors.f(0) || MaterialColors.f(iC));
                final int paddingTop = viewFindViewById.getPaddingTop();
                final int paddingLeft = viewFindViewById.getPaddingLeft();
                final int paddingRight = viewFindViewById.getPaddingRight();
                final int i2 = viewFindViewById.getLayoutParams().height;
                ViewCompat.x(viewFindViewById, new OnApplyWindowInsetsListener() { // from class: com.google.android.material.datepicker.MaterialDatePicker.1
                    @Override // androidx.core.view.OnApplyWindowInsetsListener
                    public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                        Insets insetsE = windowInsetsCompat.e(519);
                        View view2 = viewFindViewById;
                        int i3 = i2;
                        if (i3 >= 0) {
                            view2.getLayoutParams().height = i3 + insetsE.f12055b;
                            view2.setLayoutParams(view2.getLayoutParams());
                        }
                        view2.setPadding(paddingLeft + insetsE.f12054a, paddingTop + insetsE.f12055b, paddingRight + insetsE.f12056c, view2.getPaddingBottom());
                        return windowInsetsCompat;
                    }
                });
                this.b1 = true;
            }
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.h0, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new InsetDialogOnTouchListener(requireDialog(), rect));
        }
        M();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStop() {
        this.G.A.clear();
        super.onStop();
    }
}
