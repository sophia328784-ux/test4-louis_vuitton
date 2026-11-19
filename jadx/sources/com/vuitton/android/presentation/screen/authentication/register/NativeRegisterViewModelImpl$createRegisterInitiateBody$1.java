package com.vuitton.android.presentation.screen.authentication.register;

import com.vuitton.android.domain.usecase.forms.mapping.GetAddressCivilitiesMappingUseCase;
import com.vuitton.android.presentation.screen.dynamicform.model.FormUiModel;
import com.vuitton.foundation.model.domain.model.account.consent.KisaConsents;
import com.vuitton.foundation.model.domain.model.authentication.LoginParam;
import com.vuitton.foundation.model.domain.model.authentication.RegistrationAddress;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModelImpl", f = "NativeRegisterViewModelImpl.kt", l = {1309, 1307, 1340}, m = "createRegisterInitiateBody-IoAF18A", v = 2)
final class NativeRegisterViewModelImpl$createRegisterInitiateBody$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public GetAddressCivilitiesMappingUseCase f53739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f53740c;
    public LoginParam d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RegistrationAddress f53741e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public KisaConsents f53742f;
    public FormUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public FormUiModel f53743h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public FormUiModel f53744i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f53745j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ NativeRegisterViewModelImpl f53746k;
    public int l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeRegisterViewModelImpl$createRegisterInitiateBody$1(NativeRegisterViewModelImpl nativeRegisterViewModelImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f53746k = nativeRegisterViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f53745j = obj;
        this.l |= Integer.MIN_VALUE;
        Object objGc = this.f53746k.Gc(this);
        return objGc == CoroutineSingletons.COROUTINE_SUSPENDED ? objGc : new Result(objGc);
    }
}
