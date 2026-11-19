package com.vuitton.android.data.repository;

import android.content.SharedPreferences;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.ConsentRepositoryImpl$setPiplCbdtAgreement$2", f = "ConsentRepositoryImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class ConsentRepositoryImpl$setPiplCbdtAgreement$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ConsentRepositoryImpl f47633b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f47634c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConsentRepositoryImpl$setPiplCbdtAgreement$2(ConsentRepositoryImpl consentRepositoryImpl, boolean z, Continuation continuation) {
        super(2, continuation);
        this.f47633b = consentRepositoryImpl;
        this.f47634c = z;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ConsentRepositoryImpl$setPiplCbdtAgreement$2(this.f47633b, this.f47634c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConsentRepositoryImpl$setPiplCbdtAgreement$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        SharedPreferences.Editor editorEdit = this.f47633b.f47625a.edit();
        editorEdit.putBoolean("pipl_cbdt_agreement", this.f47634c);
        editorEdit.apply();
        return Unit.f71739a;
    }
}
