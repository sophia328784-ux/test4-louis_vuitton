package com.vuitton.android.presentation.screen.osa.form.contactinformation;

import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl", f = "OsaContactFormViewModelImpl.kt", l = {656}, m = "handleBottomSheetError", v = 2)
final class OsaContactFormViewModelImpl$handleBottomSheetError$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public StringResourceUiModel f60652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f60653c;
    public final /* synthetic */ OsaContactFormViewModelImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f60654e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaContactFormViewModelImpl$handleBottomSheetError$1(OsaContactFormViewModelImpl osaContactFormViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = osaContactFormViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f60653c = obj;
        this.f60654e |= Integer.MIN_VALUE;
        return OsaContactFormViewModelImpl.yc(this.d, null, this);
    }
}
