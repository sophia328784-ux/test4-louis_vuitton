package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import androidx.appcompat.R$styleable;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.view.ViewCompat;

/* JADX INFO: loaded from: classes.dex */
class AppCompatCompoundButtonHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CompoundButton f1117a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ColorStateList f1118b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public PorterDuff.Mode f1119c = null;
    public boolean d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f1120e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1121f;

    public AppCompatCompoundButtonHelper(CompoundButton compoundButton) {
        this.f1117a = compoundButton;
    }

    public final void a() {
        CompoundButton compoundButton = this.f1117a;
        Drawable buttonDrawable = compoundButton.getButtonDrawable();
        if (buttonDrawable != null) {
            if (this.d || this.f1120e) {
                Drawable drawableMutate = buttonDrawable.mutate();
                if (this.d) {
                    drawableMutate.setTintList(this.f1118b);
                }
                if (this.f1120e) {
                    drawableMutate.setTintMode(this.f1119c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(drawableMutate);
            }
        }
    }

    public final void b(AttributeSet attributeSet, int i2) {
        int resourceId;
        int resourceId2;
        CompoundButton compoundButton = this.f1117a;
        Context context = compoundButton.getContext();
        int[] iArr = R$styleable.m;
        TintTypedArray tintTypedArrayE = TintTypedArray.e(i2, 0, context, attributeSet, iArr);
        TypedArray typedArray = tintTypedArrayE.f1313b;
        ViewCompat.s(compoundButton, compoundButton.getContext(), iArr, attributeSet, tintTypedArrayE.f1313b, i2, 0);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    compoundButton.setButtonDrawable(AppCompatResources.a(compoundButton.getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                    if (typedArray.hasValue(0)) {
                        compoundButton.setButtonDrawable(AppCompatResources.a(compoundButton.getContext(), resourceId));
                    }
                }
            } else if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                compoundButton.setButtonDrawable(AppCompatResources.a(compoundButton.getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
                compoundButton.setButtonTintList(tintTypedArrayE.a(2));
            }
            if (typedArray.hasValue(3)) {
                compoundButton.setButtonTintMode(DrawableUtils.c(typedArray.getInt(3, -1), null));
            }
        } finally {
            tintTypedArrayE.g();
        }
    }
}
