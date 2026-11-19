package com.vuitton.android.data.datasource.pass;

import com.vuitton.android.data.dto.pass.ContentDispositionName;
import defpackage.md;
import java.io.File;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Ljava/io/File;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.pass.PassLocalDataSource$getCached3DPass$2$1$card3dRectoNormalFileDeferred$1", f = "PassLocalDataSource.kt", l = {61}, m = "invokeSuspend", v = 2)
final class PassLocalDataSource$getCached3DPass$2$1$card3dRectoNormalFileDeferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends File>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f44199b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PassLocalDataSource f44200c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassLocalDataSource$getCached3DPass$2$1$card3dRectoNormalFileDeferred$1(PassLocalDataSource passLocalDataSource, Continuation continuation) {
        super(2, continuation);
        this.f44200c = passLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PassLocalDataSource$getCached3DPass$2$1$card3dRectoNormalFileDeferred$1(this.f44200c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PassLocalDataSource$getCached3DPass$2$1$card3dRectoNormalFileDeferred$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objA;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f44199b;
        if (i2 == 0) {
            ResultKt.b(obj);
            ContentDispositionName contentDispositionName = ContentDispositionName.RECTO_NORMAL;
            this.f44199b = 1;
            objA = this.f44200c.a(contentDispositionName, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        return new Result(objA);
    }
}
