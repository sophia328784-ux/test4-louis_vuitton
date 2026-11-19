package com.sightcall.universal.internal.view;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.sightcall.universal.R;

/* JADX INFO: loaded from: classes2.dex */
class RoundRectOutlineProvider extends ViewOutlineProvider {
    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), view.getContext().getResources().getDimensionPixelSize(R.dimen.universal_thumbnail_radius));
    }
}
