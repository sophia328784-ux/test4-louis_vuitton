package com.vuitton.android.presentation.screen.connectivity.lightup.sneakers;

import androidx.lifecycle.Observer;
import defpackage.xo0;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionAdapter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final class SneakerDetailFragment$sam$androidx_lifecycle_Observer$0 implements Observer, FunctionAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ xo0 f56242b;

    public SneakerDetailFragment$sam$androidx_lifecycle_Observer$0(xo0 xo0Var) {
        this.f56242b = xo0Var;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
            return this.f56242b == ((FunctionAdapter) obj).getFunctionDelegate();
        }
        return false;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        return this.f56242b;
    }

    public final int hashCode() {
        return this.f56242b.hashCode();
    }

    @Override // androidx.lifecycle.Observer
    public final /* synthetic */ void onChanged(Object obj) {
        this.f56242b.invoke(obj);
    }
}
