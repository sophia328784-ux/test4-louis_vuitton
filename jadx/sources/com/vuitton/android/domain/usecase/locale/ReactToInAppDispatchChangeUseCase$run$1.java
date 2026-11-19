package com.vuitton.android.domain.usecase.locale;

import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.usecase.locale.ReactToInAppDispatchChangeUseCase", f = "ReactToInAppDispatchChangeUseCase.kt", l = {46, 50, 56, EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION, 60, EACTags.APPLICATION_IMAGE, EACTags.MESSAGE_REFERENCE}, m = "run", v = 2)
final class ReactToInAppDispatchChangeUseCase$run$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public InAppDispatch f50138b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public InAppDispatch f50139c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public /* synthetic */ Object f50140e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ReactToInAppDispatchChangeUseCase f50141f;
    public int g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReactToInAppDispatchChangeUseCase$run$1(ReactToInAppDispatchChangeUseCase reactToInAppDispatchChangeUseCase, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f50141f = reactToInAppDispatchChangeUseCase;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f50140e = obj;
        this.g |= Integer.MIN_VALUE;
        return this.f50141f.a(null, false, this);
    }
}
