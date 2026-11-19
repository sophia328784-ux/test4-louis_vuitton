package com.vuitton.android.presentation.screen.connectivity.watch.settings;

import androidx.lifecycle.Observer;
import defpackage.c61;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionAdapter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final class WatchSettingsFragment$sam$androidx_lifecycle_Observer$0 implements Observer, FunctionAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c61 f56758b;

    public WatchSettingsFragment$sam$androidx_lifecycle_Observer$0(c61 c61Var) {
        this.f56758b = c61Var;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
            return this.f56758b == ((FunctionAdapter) obj).getFunctionDelegate();
        }
        return false;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        return this.f56758b;
    }

    public final int hashCode() {
        return this.f56758b.hashCode();
    }

    @Override // androidx.lifecycle.Observer
    public final /* synthetic */ void onChanged(Object obj) throws Exception {
        this.f56758b.invoke(obj);
    }
}
