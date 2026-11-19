package com.vuitton.android.presentation.screen.imagepicker;

import androidx.lifecycle.Observer;
import defpackage.m20;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionAdapter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final class ImagePickerFragment$sam$androidx_lifecycle_Observer$0 implements Observer, FunctionAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m20 f58204b;

    public ImagePickerFragment$sam$androidx_lifecycle_Observer$0(m20 m20Var) {
        this.f58204b = m20Var;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
            return this.f58204b == ((FunctionAdapter) obj).getFunctionDelegate();
        }
        return false;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        return this.f58204b;
    }

    public final int hashCode() {
        return this.f58204b.hashCode();
    }

    @Override // androidx.lifecycle.Observer
    public final /* synthetic */ void onChanged(Object obj) {
        this.f58204b.invoke(obj);
    }
}
