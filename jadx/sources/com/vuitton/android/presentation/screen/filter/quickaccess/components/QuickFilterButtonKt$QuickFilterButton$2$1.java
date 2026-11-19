package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.filter.quickaccess.models.FiltersButtonState;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickFilterButtonKt$QuickFilterButton$2$1", f = "QuickFilterButton.kt", l = {}, m = "invokeSuspend", v = 2)
final class QuickFilterButtonKt$QuickFilterButton$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ FiltersButtonState f58105b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f58106c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f58107e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f58108f;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickFilterButtonKt$QuickFilterButton$2$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.components.QuickFilterButtonKt$QuickFilterButton$2$1$1", f = "QuickFilterButton.kt", l = {EACTags.MESSAGE_REFERENCE}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f58109b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Function1 f58110c;
        public final /* synthetic */ MutableState d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Function1 function1, MutableState mutableState, Continuation continuation) {
            super(2, continuation);
            this.f58110c = function1;
            this.d = mutableState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f58110c, this.d, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f58109b;
            MutableState mutableState = this.d;
            if (i2 == 0) {
                ResultKt.b(obj);
                mutableState.setValue(Boolean.TRUE);
                this.f58109b = 1;
                if (DelayKt.b(2000L, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            mutableState.setValue(Boolean.FALSE);
            this.f58110c.invoke(FiltersButtonState.Visible);
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public QuickFilterButtonKt$QuickFilterButton$2$1(FiltersButtonState filtersButtonState, CoroutineScope coroutineScope, MutableState mutableState, Function1 function1, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.f58105b = filtersButtonState;
        this.f58106c = coroutineScope;
        this.d = mutableState;
        this.f58107e = function1;
        this.f58108f = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new QuickFilterButtonKt$QuickFilterButton$2$1(this.f58105b, this.f58106c, this.d, this.f58107e, this.f58108f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((QuickFilterButtonKt$QuickFilterButton$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (this.f58105b == FiltersButtonState.InitialAnimation) {
            MutableState mutableState = this.d;
            Job job = (Job) mutableState.getF10755b();
            if (job != null) {
                job.cancel(null);
            }
            mutableState.setValue(BuildersKt.c(this.f58106c, null, null, new AnonymousClass1(this.f58107e, this.f58108f, null), 3));
        }
        return Unit.f71739a;
    }
}
