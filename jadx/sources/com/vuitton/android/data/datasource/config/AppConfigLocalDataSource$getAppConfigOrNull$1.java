package com.vuitton.android.data.datasource.config;

import com.vuitton.foundation.model.domain.model.config.AppConfig;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/config/AppConfig;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.config.AppConfigLocalDataSource$getAppConfigOrNull$1", f = "AppConfigLocalDataSource.kt", l = {EACTags.LANGUAGE_PREFERENCES}, m = "invokeSuspend", v = 2)
final class AppConfigLocalDataSource$getAppConfigOrNull$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends AppConfig>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f43983b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AppConfigLocalDataSource f43984c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppConfigLocalDataSource$getAppConfigOrNull$1(AppConfigLocalDataSource appConfigLocalDataSource, Continuation continuation) {
        super(2, continuation);
        this.f43984c = appConfigLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AppConfigLocalDataSource$getAppConfigOrNull$1(this.f43984c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AppConfigLocalDataSource$getAppConfigOrNull$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objB;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f43983b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f43983b = 1;
            objB = this.f43984c.b(this);
            if (objB == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objB = ((Result) obj).f71708b;
        }
        return new Result(objB);
    }
}
