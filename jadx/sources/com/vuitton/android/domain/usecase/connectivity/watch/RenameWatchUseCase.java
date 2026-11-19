package com.vuitton.android.domain.usecase.connectivity.watch;

import com.vuitton.android.domain.repository.WatchRepository;
import com.vuitton.foundation.model.domain.model.connectivity.watch.RenameWatchParam;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/watch/RenameWatchUseCase;", "", "Lcom/vuitton/android/domain/repository/WatchRepository;", "watchRepository", "<init>", "(Lcom/vuitton/android/domain/repository/WatchRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RenameWatchUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WatchRepository f49843a;

    @Inject
    public RenameWatchUseCase(WatchRepository watchRepository) {
        watchRepository.getClass();
        this.f49843a = watchRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(RenameWatchParam renameWatchParam, ContinuationImpl continuationImpl) {
        RenameWatchUseCase$run$1 renameWatchUseCase$run$1;
        if (continuationImpl instanceof RenameWatchUseCase$run$1) {
            renameWatchUseCase$run$1 = (RenameWatchUseCase$run$1) continuationImpl;
            int i2 = renameWatchUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                renameWatchUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                renameWatchUseCase$run$1 = new RenameWatchUseCase$run$1(this, continuationImpl);
            }
        } else {
            renameWatchUseCase$run$1 = new RenameWatchUseCase$run$1(this, continuationImpl);
        }
        Object obj = renameWatchUseCase$run$1.f49844b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = renameWatchUseCase$run$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        String str = renameWatchParam.f67389a;
        String str2 = renameWatchParam.f67390b;
        renameWatchUseCase$run$1.d = 1;
        Object objE = this.f49843a.e(str, str2, renameWatchUseCase$run$1);
        return objE == coroutineSingletons ? coroutineSingletons : objE;
    }
}
