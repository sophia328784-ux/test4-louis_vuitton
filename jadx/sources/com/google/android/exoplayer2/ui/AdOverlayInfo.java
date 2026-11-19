package com.google.android.exoplayer2.ui;

import android.view.View;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class AdOverlayInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f28359a;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Purpose {
    }

    @Deprecated
    public AdOverlayInfo(View view, int i2, String str) {
        this.f28359a = view;
    }

    @Deprecated
    public AdOverlayInfo(View view, int i2) {
        this(view, i2, null);
    }
}
