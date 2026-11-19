package com.vuitton.android.domain.service.authentication;

import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.domain.service.authentication.UserSessionService", f = "UserSessionService.kt", l = {EACTags.DYNAMIC_INTERNAL_AUTHENTIFICATION, EACTags.ELEMENT_LIST, EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID, 86}, m = "refreshLoadingState-IoAF18A", v = 2)
final class UserSessionService$refreshLoadingState$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f49016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f49017c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LoginState f49018e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f49019f;
    public final /* synthetic */ UserSessionService g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f49020h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserSessionService$refreshLoadingState$1(UserSessionService userSessionService, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = userSessionService;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f49019f = obj;
        this.f49020h |= Integer.MIN_VALUE;
        Object objC = this.g.c(this);
        return objC == CoroutineSingletons.COROUTINE_SUSPENDED ? objC : new Result(objC);
    }
}
