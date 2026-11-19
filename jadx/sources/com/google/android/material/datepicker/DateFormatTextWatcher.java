package com.google.android.material.datepicker;

import android.content.Context;
import android.text.Editable;
import android.text.TextUtils;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.textfield.TextInputLayout;
import com.vuitton.android.R;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
abstract class DateFormatTextWatcher extends TextWatcherAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TextInputLayout f32537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f32538c;
    public final SimpleDateFormat d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CalendarConstraints f32539e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f32540f;
    public final a g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public b f32541h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f32542i = 0;

    /* JADX WARN: Type inference failed for: r3v3, types: [com.google.android.material.datepicker.a] */
    public DateFormatTextWatcher(final String str, SimpleDateFormat simpleDateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.f32538c = str;
        this.d = simpleDateFormat;
        this.f32537b = textInputLayout;
        this.f32539e = calendarConstraints;
        this.f32540f = textInputLayout.getContext().getString(R.string.mtrl_picker_out_of_range);
        this.g = new Runnable() { // from class: com.google.android.material.datepicker.a
            @Override // java.lang.Runnable
            public final void run() {
                DateFormatTextWatcher dateFormatTextWatcher = this.f32602b;
                TextInputLayout textInputLayout2 = dateFormatTextWatcher.f32537b;
                SimpleDateFormat simpleDateFormat2 = dateFormatTextWatcher.d;
                Context context = textInputLayout2.getContext();
                textInputLayout2.setError(context.getString(R.string.mtrl_picker_invalid_format) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_use), str.replace(' ', (char) 160)) + "\n" + String.format(context.getString(R.string.mtrl_picker_invalid_format_example), simpleDateFormat2.format(new Date(UtcDates.f().getTimeInMillis())).replace(' ', (char) 160)));
                dateFormatTextWatcher.a();
            }
        };
    }

    public abstract void a();

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        if (Locale.getDefault().getLanguage().equals(Locale.KOREAN.getLanguage()) || editable.length() == 0) {
            return;
        }
        int length = editable.length();
        String str = this.f32538c;
        if (length >= str.length() || editable.length() < this.f32542i) {
            return;
        }
        char cCharAt = str.charAt(editable.length());
        if (Character.isLetterOrDigit(cCharAt)) {
            return;
        }
        editable.append(cCharAt);
    }

    public abstract void b(Long l);

    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        this.f32542i = charSequence.length();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3, types: [com.google.android.material.datepicker.b, java.lang.Runnable] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        CalendarConstraints calendarConstraints = this.f32539e;
        TextInputLayout textInputLayout = this.f32537b;
        a aVar = this.g;
        textInputLayout.removeCallbacks(aVar);
        textInputLayout.removeCallbacks(this.f32541h);
        textInputLayout.setError(null);
        b(null);
        if (TextUtils.isEmpty(charSequence) || charSequence.length() < this.f32538c.length()) {
            return;
        }
        try {
            Date date = this.d.parse(charSequence.toString());
            textInputLayout.setError(null);
            final long time = date.getTime();
            if (calendarConstraints.d.G(time)) {
                Calendar calendarC = UtcDates.c(calendarConstraints.f32516b.f32567b);
                calendarC.set(5, 1);
                if (calendarC.getTimeInMillis() <= time) {
                    Month month = calendarConstraints.f32517c;
                    int i5 = month.f32570f;
                    Calendar calendarC2 = UtcDates.c(month.f32567b);
                    calendarC2.set(5, i5);
                    if (time <= calendarC2.getTimeInMillis()) {
                        b(Long.valueOf(date.getTime()));
                        return;
                    }
                }
            }
            ?? r7 = new Runnable() { // from class: com.google.android.material.datepicker.b
                @Override // java.lang.Runnable
                public final void run() {
                    String strB = DateStrings.b(time);
                    DateFormatTextWatcher dateFormatTextWatcher = this.f32604b;
                    dateFormatTextWatcher.f32537b.setError(String.format(dateFormatTextWatcher.f32540f, strB.replace(' ', (char) 160)));
                    dateFormatTextWatcher.a();
                }
            };
            this.f32541h = r7;
            textInputLayout.post(r7);
        } catch (ParseException unused) {
            textInputLayout.post(aVar);
        }
    }
}
