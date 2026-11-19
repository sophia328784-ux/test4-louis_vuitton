package com.google.android.material.tabs;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.R$styleable;

/* JADX INFO: loaded from: classes2.dex */
public class TabItem extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CharSequence f33108b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Drawable f33109c;
    public final int d;

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TintTypedArray tintTypedArrayF = TintTypedArray.f(context, attributeSet, R$styleable.V);
        TypedArray typedArray = tintTypedArrayF.f1313b;
        this.f33108b = typedArray.getText(2);
        this.f33109c = tintTypedArrayF.b(0);
        this.d = typedArray.getResourceId(1, 0);
        tintTypedArrayF.g();
    }

    public TabItem(Context context) {
        this(context, null);
    }
}
