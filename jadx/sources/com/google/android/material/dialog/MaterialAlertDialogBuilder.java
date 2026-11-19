package com.google.android.material.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.view.ContextThemeWrapper;
import com.google.android.material.R$styleable;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.theme.overlay.MaterialThemeOverlay;
import com.vuitton.android.R;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class MaterialAlertDialogBuilder extends AlertDialog.Builder {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final MaterialShapeDrawable f32608c;
    public final Rect d;

    /* JADX WARN: Illegal instructions before constructor call */
    public MaterialAlertDialogBuilder(Context context, int i2) {
        TypedValue typedValueA = MaterialAttributes.a(R.attr.materialAlertDialogTheme, context);
        int i3 = typedValueA == null ? 0 : typedValueA.data;
        Context contextB = MaterialThemeOverlay.b(context, null, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        contextB = i3 != 0 ? new ContextThemeWrapper(contextB, i3) : contextB;
        if (i2 == 0) {
            TypedValue typedValueA2 = MaterialAttributes.a(R.attr.materialAlertDialogTheme, context);
            i2 = typedValueA2 == null ? 0 : typedValueA2.data;
        }
        super(contextB, i2);
        Context context2 = getContext();
        Resources.Theme theme = context2.getTheme();
        this.d = MaterialDialogs.a(context2, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        int iD = MaterialColors.d(context2, R.attr.colorSurface, getClass().getCanonicalName());
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(null, R$styleable.u, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        int color = typedArrayObtainStyledAttributes.getColor(4, iD);
        typedArrayObtainStyledAttributes.recycle();
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(context2, null, R.attr.alertDialogStyle, R.style.MaterialAlertDialog_MaterialComponents);
        materialShapeDrawable.n(context2);
        materialShapeDrawable.r(ColorStateList.valueOf(color));
        TypedValue typedValue = new TypedValue();
        theme.resolveAttribute(android.R.attr.dialogCornerRadius, typedValue, true);
        float dimension = typedValue.getDimension(getContext().getResources().getDisplayMetrics());
        if (typedValue.type == 5 && dimension >= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            materialShapeDrawable.setShapeAppearanceModel(materialShapeDrawable.f32936c.f32945a.h(dimension));
        }
        this.f32608c = materialShapeDrawable;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    public final AlertDialog.Builder a() {
        this.f810a.l = false;
        return this;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    public final AlertDialog.Builder b(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
        super.b(charSequenceArr, onClickListener);
        return this;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    public final void c(String str) {
        this.f810a.g = str;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    public final AlertDialog create() {
        AlertDialog alertDialogCreate = super.create();
        Window window = alertDialogCreate.getWindow();
        View decorView = window.getDecorView();
        MaterialShapeDrawable materialShapeDrawable = this.f32608c;
        if (materialShapeDrawable != null) {
            materialShapeDrawable.q(decorView.getElevation());
        }
        Rect rect = this.d;
        window.setBackgroundDrawable(new InsetDrawable((Drawable) materialShapeDrawable, rect.left, rect.top, rect.right, rect.bottom));
        decorView.setOnTouchListener(new InsetDialogOnTouchListener(alertDialogCreate, rect));
        return alertDialogCreate;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    public final AlertDialog.Builder d(DialogInterface.OnCancelListener onCancelListener) {
        this.f810a.m = onCancelListener;
        return this;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    public final AlertDialog.Builder e(DialogInterface.OnDismissListener onDismissListener) {
        this.f810a.n = onDismissListener;
        return this;
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    public final void f(int i2) {
        super.f(android.R.string.dialog_alert_title);
    }

    public final void h(int i2) {
        super.f(i2);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    public final AlertDialog.Builder setNegativeButton(int i2, DialogInterface.OnClickListener onClickListener) {
        return (MaterialAlertDialogBuilder) super.setNegativeButton(i2, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    public final AlertDialog.Builder setPositiveButton(int i2, DialogInterface.OnClickListener onClickListener) {
        return (MaterialAlertDialogBuilder) super.setPositiveButton(i2, onClickListener);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    public final AlertDialog.Builder setTitle(CharSequence charSequence) {
        return (MaterialAlertDialogBuilder) super.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.AlertDialog.Builder
    public final AlertDialog.Builder setView(View view) {
        return (MaterialAlertDialogBuilder) super.setView(view);
    }

    public MaterialAlertDialogBuilder(Context context) {
        this(context, 0);
    }
}
