package com.vuitton.android.presentation.screen.certificates.nfc;

import androidx.lifecycle.Observer;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.jvm.internal.FunctionAdapter;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public final class CertificateNfcScanViewModelImplKt$sam$androidx_lifecycle_Observer$0 implements Observer, FunctionAdapter {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a f55922b;

    public CertificateNfcScanViewModelImplKt$sam$androidx_lifecycle_Observer$0(a aVar) {
        this.f55922b = aVar;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
            return this.f55922b == ((FunctionAdapter) obj).getFunctionDelegate();
        }
        return false;
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        return this.f55922b;
    }

    public final int hashCode() {
        return this.f55922b.hashCode();
    }

    @Override // androidx.lifecycle.Observer
    public final /* synthetic */ void onChanged(Object obj) {
        this.f55922b.invoke(obj);
    }
}
