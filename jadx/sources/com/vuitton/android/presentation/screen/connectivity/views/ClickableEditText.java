package com.vuitton.android.presentation.screen.connectivity.views;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.appcompat.widget.AppCompatEditText;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\t\b\u0001\u0018\u00002\u00020\u0001:\u0001\u0015B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fR\"\u0010\u0014\u001a\u00020\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText;", "Landroidx/appcompat/widget/AppCompatEditText;", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText$ClickableEditTextListener;", "clickableEditTextListener", "", "setClickableEditTextListener", "(Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText$ClickableEditTextListener;)V", "", "i", "Z", "getShowDrawableFocusedOnly", "()Z", "setShowDrawableFocusedOnly", "(Z)V", "showDrawableFocusedOnly", "ClickableEditTextListener", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ClickableEditText extends AppCompatEditText {
    public Drawable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ClickableEditTextListener f56675h;

    /* JADX INFO: renamed from: i, reason: collision with root package name and from kotlin metadata */
    public boolean showDrawableFocusedOnly;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/views/ClickableEditText$ClickableEditTextListener;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface ClickableEditTextListener {
        void a(ClickableEditText clickableEditText);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClickableEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        attributeSet.getClass();
        this.showDrawableFocusedOnly = true;
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        compoundDrawablesRelative.getClass();
        this.g = compoundDrawablesRelative[2];
        setCompoundDrawables(compoundDrawablesRelative[0], compoundDrawablesRelative[1], null, compoundDrawablesRelative[3]);
    }

    public final boolean getShowDrawableFocusedOnly() {
        return this.showDrawableFocusedOnly;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z, int i2, Rect rect) {
        super.onFocusChanged(z, i2, rect);
        if (this.showDrawableFocusedOnly) {
            Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
            super.setCompoundDrawablesRelative(compoundDrawablesRelative[0], compoundDrawablesRelative[1], z ? this.g : null, compoundDrawablesRelative[3]);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        Drawable drawable;
        if (motionEvent != null && motionEvent.getAction() == 0 && (drawable = this.g) != null) {
            int width = (getWidth() - getPaddingEnd()) - drawable.getBounds().width();
            int width2 = getWidth() - getPaddingEnd();
            int x = (int) motionEvent.getX();
            boolean z = width <= x && x <= width2;
            int paddingTop = getPaddingTop();
            int height = getHeight() - getPaddingBottom();
            int y = (int) motionEvent.getY();
            boolean z2 = paddingTop <= y && y <= height;
            if (z && z2) {
                ClickableEditTextListener clickableEditTextListener = this.f56675h;
                if (clickableEditTextListener != null) {
                    clickableEditTextListener.a(this);
                } else {
                    setText("");
                }
                motionEvent.setAction(3);
                return false;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public final void setClickableEditTextListener(ClickableEditTextListener clickableEditTextListener) {
        clickableEditTextListener.getClass();
        this.f56675h = clickableEditTextListener;
    }

    @Override // androidx.appcompat.widget.AppCompatEditText, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable3 != null) {
            this.g = drawable3;
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    public final void setShowDrawableFocusedOnly(boolean z) {
        this.showDrawableFocusedOnly = z;
    }
}
