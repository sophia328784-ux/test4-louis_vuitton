package com.vuitton.android.presentation.screen.osa.form.contactinformation;

import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$modifyAppointment$1", f = "OsaContactFormViewModelImpl.kt", l = {491, 501, 504, 506, 509}, m = "invokeSuspend", v = 2)
final class OsaContactFormViewModelImpl$modifyAppointment$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public OsaContactFormViewModelImpl f60667b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f60668c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f60669e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f60670f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f60671h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ OsaContactFormViewModelImpl f60672i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ OsaReasonUiModel f60673j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaContactFormViewModelImpl$modifyAppointment$1(OsaContactFormViewModelImpl osaContactFormViewModelImpl, OsaReasonUiModel osaReasonUiModel, Continuation continuation) {
        super(2, continuation);
        this.f60672i = osaContactFormViewModelImpl;
        this.f60673j = osaReasonUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaContactFormViewModelImpl$modifyAppointment$1(this.f60672i, this.f60673j, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaContactFormViewModelImpl$modifyAppointment$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:58:0x013f  */
    /* JADX WARN: Code duplicated, block: B:60:0x014c  */
    /* JADX WARN: Code duplicated, block: B:64:0x0169  */
    /* JADX WARN: Code duplicated, block: B:68:0x0171  */
    /* JADX WARN: Code duplicated, block: B:72:0x0196  */
    /* JADX WARN: Code duplicated, block: B:74:0x019c A[PHI: r2 r6 r9 r11
      0x019c: PHI (r2v12 int) = (r2v10 int), (r2v14 int) binds: [B:57:0x013d, B:73:0x0199] A[DONT_GENERATE, DONT_INLINE]
      0x019c: PHI (r6v15 int) = (r6v12 int), (r6v17 int) binds: [B:57:0x013d, B:73:0x0199] A[DONT_GENERATE, DONT_INLINE]
      0x019c: PHI (r9v3 com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl) = 
      (r9v1 com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl)
      (r9v4 com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl)
     binds: [B:57:0x013d, B:73:0x0199] A[DONT_GENERATE, DONT_INLINE]
      0x019c: PHI (r11v10 java.lang.Object) = (r11v8 java.lang.Object), (r11v11 java.lang.Object) binds: [B:57:0x013d, B:73:0x0199] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:76:0x01a2  */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01bd, code lost:
    
        if (com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl.yc(r9, r3, r20) == r1) goto L78;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r21) {
        /*
            Method dump skipped, instruction units count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$modifyAppointment$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
