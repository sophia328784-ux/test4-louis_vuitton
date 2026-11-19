package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.google.android.material.R$styleable;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.vuitton.android.R;

/* JADX INFO: loaded from: classes2.dex */
final class CalendarStyle {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CalendarItemStyle f32528a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CalendarItemStyle f32529b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CalendarItemStyle f32530c;
    public final CalendarItemStyle d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CalendarItemStyle f32531e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CalendarItemStyle f32532f;
    public final CalendarItemStyle g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Paint f32533h;

    public CalendarStyle(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(MaterialAttributes.d(context, R.attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()).data, R$styleable.z);
        this.f32528a = CalendarItemStyle.a(typedArrayObtainStyledAttributes.getResourceId(4, 0), context);
        this.g = CalendarItemStyle.a(typedArrayObtainStyledAttributes.getResourceId(2, 0), context);
        this.f32529b = CalendarItemStyle.a(typedArrayObtainStyledAttributes.getResourceId(3, 0), context);
        this.f32530c = CalendarItemStyle.a(typedArrayObtainStyledAttributes.getResourceId(5, 0), context);
        ColorStateList colorStateListA = MaterialResources.a(context, typedArrayObtainStyledAttributes, 7);
        this.d = CalendarItemStyle.a(typedArrayObtainStyledAttributes.getResourceId(9, 0), context);
        this.f32531e = CalendarItemStyle.a(typedArrayObtainStyledAttributes.getResourceId(8, 0), context);
        this.f32532f = CalendarItemStyle.a(typedArrayObtainStyledAttributes.getResourceId(10, 0), context);
        Paint paint = new Paint();
        this.f32533h = paint;
        paint.setColor(colorStateListA.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}
