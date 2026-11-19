package com.vuitton.android.domain.usecase.connectivity.watch;

import com.vuitton.android.domain.repository.WatchRepository;
import com.vuitton.foundation.model.domain.error.connectivity.GetWatchException;
import com.vuitton.foundation.model.domain.model.connectivity.Watch;
import defpackage.d21;
import defpackage.md;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase;", "", "Lcom/vuitton/android/domain/repository/WatchRepository;", "watchRepository", "<init>", "(Lcom/vuitton/android/domain/repository/WatchRepository;)V", "Params", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetWatchUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final WatchRepository f49832a;

    @Inject
    public GetWatchUseCase(WatchRepository watchRepository) {
        watchRepository.getClass();
        this.f49832a = watchRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(Params params, ContinuationImpl continuationImpl) {
        GetWatchUseCase$run$1 getWatchUseCase$run$1;
        Object failure;
        Object next;
        if (continuationImpl instanceof GetWatchUseCase$run$1) {
            getWatchUseCase$run$1 = (GetWatchUseCase$run$1) continuationImpl;
            int i2 = getWatchUseCase$run$1.f49837e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getWatchUseCase$run$1.f49837e = i2 - Integer.MIN_VALUE;
            } else {
                getWatchUseCase$run$1 = new GetWatchUseCase$run$1(this, continuationImpl);
            }
        } else {
            getWatchUseCase$run$1 = new GetWatchUseCase$run$1(this, continuationImpl);
        }
        Object objB = getWatchUseCase$run$1.f49836c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getWatchUseCase$run$1.f49837e;
        try {
            if (i3 == 0) {
                ResultKt.b(objB);
                Result.Companion companion = Result.INSTANCE;
                WatchRepository watchRepository = this.f49832a;
                boolean z = params.f49834b;
                getWatchUseCase$run$1.f49835b = params;
                getWatchUseCase$run$1.f49837e = 1;
                objB = watchRepository.b(z, getWatchUseCase$run$1);
                if (objB == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                params = getWatchUseCase$run$1.f49835b;
                ResultKt.b(objB);
            }
            Iterator it = ((Iterable) objB).iterator();
            do {
                if (!it.hasNext()) {
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
                next = it.next();
            } while (!Intrinsics.c(((Watch) next).f67300a, params.f49833a));
            failure = new Result((Watch) next);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        Object obj = ((Result) failure).f71708b;
        Throwable thA2 = Result.a(obj);
        if (thA2 == null) {
            return obj;
        }
        try {
            if (thA2 instanceof NoSuchElementException) {
                throw new GetWatchException.NotFound(params.f49833a);
            }
            throw new GetWatchException.UnknownError(params.f49833a);
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            return new Result.Failure(th2);
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/connectivity/watch/GetWatchUseCase$Params;", "", "", "watchId", "", "fromServer", "<init>", "(Ljava/lang/String;Z)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Params {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f49833a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f49834b;

        public Params(String str, boolean z) {
            str.getClass();
            this.f49833a = str;
            this.f49834b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Params)) {
                return false;
            }
            Params params = (Params) obj;
            return Intrinsics.c(this.f49833a, params.f49833a) && this.f49834b == params.f49834b;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f49834b) + (this.f49833a.hashCode() * 31);
        }

        public final String toString() {
            return d21.m("Params(watchId=", this.f49833a, ", fromServer=", ")", this.f49834b);
        }

        public /* synthetic */ Params(String str, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i2 & 2) != 0 ? false : z);
        }
    }
}
