package com.vuitton.android.presentation.screen.storemode;

import com.github.druk.dnssd.NSType;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.StoreModeViewModelImpl$fetchUserInfo$1$1", f = "StoreModeViewModelImpl.kt", l = {NSType.TKEY}, m = "emit", v = 2)
final class StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LoginState f64808b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f64809c;
    public final /* synthetic */ StoreModeViewModelImpl$fetchUserInfo$1.AnonymousClass1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f64810e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoreModeViewModelImpl$fetchUserInfo$1$1$emit$1(StoreModeViewModelImpl$fetchUserInfo$1.AnonymousClass1 anonymousClass1, Continuation continuation) {
        super(continuation);
        this.d = anonymousClass1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f64809c = obj;
        this.f64810e |= Integer.MIN_VALUE;
        return this.d.emit(null, this);
    }
}
