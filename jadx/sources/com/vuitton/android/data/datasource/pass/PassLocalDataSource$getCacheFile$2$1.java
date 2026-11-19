package com.vuitton.android.data.datasource.pass;

import com.vuitton.android.data.dto.pass.ContentDispositionName;
import com.vuitton.foundation.exception.CacheException;
import defpackage.md;
import java.io.File;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Ljava/io/File;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.pass.PassLocalDataSource$getCacheFile$2$1", f = "PassLocalDataSource.kt", l = {}, m = "invokeSuspend", v = 2)
final class PassLocalDataSource$getCacheFile$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super File>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ContentDispositionName f44187b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PassLocalDataSource f44188c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassLocalDataSource$getCacheFile$2$1(ContentDispositionName contentDispositionName, PassLocalDataSource passLocalDataSource, Continuation continuation) {
        super(2, continuation);
        this.f44187b = contentDispositionName;
        this.f44188c = passLocalDataSource;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PassLocalDataSource$getCacheFile$2$1(this.f44187b, this.f44188c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PassLocalDataSource$getCacheFile$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws CacheException.NoResultException {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        String value = this.f44187b.getValue();
        if (value == null) {
            md.n("Required value was null.");
            return null;
        }
        File file = new File(this.f44188c.f44183b.getCacheDir(), value);
        if (file.exists()) {
            return file;
        }
        throw new CacheException.NoResultException(value.concat(" is not found in cache"));
    }
}
