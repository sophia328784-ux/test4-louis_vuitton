package com.vuitton.android.presentation.screen.connectivity.lightup.keepall;

import androidx.lifecycle.Observer;
import defpackage.l00;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionAdapter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final class KeepAllDetailFragment$sam$androidx_lifecycle_Observer$0 implements Observer, FunctionAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l00 f56203b;

    public KeepAllDetailFragment$sam$androidx_lifecycle_Observer$0(l00 l00Var) {
        this.f56203b = l00Var;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
            return this.f56203b == ((FunctionAdapter) obj).getFunctionDelegate();
        }
        return false;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        return this.f56203b;
    }

    public final int hashCode() {
        return this.f56203b.hashCode();
    }

    @Override // androidx.lifecycle.Observer
    public final /* synthetic */ void onChanged(Object obj) throws Exception {
        this.f56203b.invoke(obj);
    }
}
