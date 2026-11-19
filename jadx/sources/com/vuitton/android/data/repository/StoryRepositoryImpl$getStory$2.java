package com.vuitton.android.data.repository;

import com.vuitton.android.data.api.bff.publication.StoryApi;
import com.vuitton.android.data.dto.story.StoryDto;
import com.vuitton.android.data.dto.story.mapper.StoryMapperKt;
import com.vuitton.foundation.model.domain.model.story.Story;
import defpackage.md;
import java.util.concurrent.CancellationException;
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
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/story/Story;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.StoryRepositoryImpl$getStory$2", f = "StoryRepositoryImpl.kt", l = {16}, m = "invokeSuspend", v = 2)
final class StoryRepositoryImpl$getStory$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Story>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f48053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ StoryRepositoryImpl f48054c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StoryRepositoryImpl$getStory$2(StoryRepositoryImpl storyRepositoryImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f48054c = storyRepositoryImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new StoryRepositoryImpl$getStory$2(this.f48054c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((StoryRepositoryImpl$getStory$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f48053b;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                StoryRepositoryImpl storyRepositoryImpl = this.f48054c;
                String str = this.d;
                Result.Companion companion = Result.INSTANCE;
                StoryApi storyApi = storyRepositoryImpl.f48050a;
                this.f48053b = 1;
                obj = storyApi.getStory(str, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(StoryMapperKt.a((StoryDto) obj));
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
        return new Result(((Result) failure).f71708b);
    }
}
