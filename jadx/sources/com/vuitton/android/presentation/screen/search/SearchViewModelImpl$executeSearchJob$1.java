package com.vuitton.android.presentation.screen.search;

import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.search.SearchViewModelImpl$executeSearchJob$1", f = "SearchViewModelImpl.kt", l = {169}, m = "invokeSuspend", v = 2)
final class SearchViewModelImpl$executeSearchJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f64126b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f64127c;
    public final /* synthetic */ long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SearchViewModelImpl f64128e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f64129f;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.search.SearchViewModelImpl$executeSearchJob$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.search.SearchViewModelImpl$executeSearchJob$1$1", f = "SearchViewModelImpl.kt", l = {171}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f64130b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ SearchViewModelImpl f64131c;
        public final /* synthetic */ String d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SearchViewModelImpl searchViewModelImpl, String str, Continuation continuation) {
            super(2, continuation);
            this.f64131c = searchViewModelImpl;
            this.d = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f64131c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f64130b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f64130b = 1;
                if (SearchViewModelImpl.yc(this.f64131c, this.d, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            return Unit.f71739a;
        }
    }

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.search.SearchViewModelImpl$executeSearchJob$1$2, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.search.SearchViewModelImpl$executeSearchJob$1$2", f = "SearchViewModelImpl.kt", l = {172}, m = "invokeSuspend", v = 2)
    final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f64132b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ SearchViewModelImpl f64133c;
        public final /* synthetic */ String d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(SearchViewModelImpl searchViewModelImpl, String str, Continuation continuation) {
            super(2, continuation);
            this.f64133c = searchViewModelImpl;
            this.d = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.f64133c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f64132b;
            if (i2 == 0) {
                ResultKt.b(obj);
                this.f64132b = 1;
                if (SearchViewModelImpl.zc(this.f64133c, this.d, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchViewModelImpl$executeSearchJob$1(long j2, SearchViewModelImpl searchViewModelImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.d = j2;
        this.f64128e = searchViewModelImpl;
        this.f64129f = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        SearchViewModelImpl$executeSearchJob$1 searchViewModelImpl$executeSearchJob$1 = new SearchViewModelImpl$executeSearchJob$1(this.d, this.f64128e, this.f64129f, continuation);
        searchViewModelImpl$executeSearchJob$1.f64127c = obj;
        return searchViewModelImpl$executeSearchJob$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SearchViewModelImpl$executeSearchJob$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope = (CoroutineScope) this.f64127c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f64126b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f64127c = coroutineScope;
            this.f64126b = 1;
            if (DelayKt.b(this.d, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        SearchViewModelImpl searchViewModelImpl = this.f64128e;
        searchViewModelImpl.o = jCurrentTimeMillis;
        String str = this.f64129f;
        BuildersKt.c(coroutineScope, null, null, new AnonymousClass1(searchViewModelImpl, str, null), 3);
        BuildersKt.c(coroutineScope, null, null, new AnonymousClass2(searchViewModelImpl, str, null), 3);
        return Unit.f71739a;
    }
}
