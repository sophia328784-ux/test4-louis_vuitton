package com.vuitton.android.presentation.screen.authentication.register.components;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.authentication.register.NativeRegisterViewModel;
import com.vuitton.android.presentation.screen.authentication.register.Step;
import com.vuitton.android.presentation.screen.authentication.register.models.NativeRegisterViewState;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt$NativeRegisterComposable$2$1", f = "NativeRegisterComposable.kt", l = {EACTags.ANSWER_TO_RESET}, m = "invokeSuspend", v = 2)
final class NativeRegisterComposableKt$NativeRegisterComposable$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f53813b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeRegisterViewModel f53814c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ PagerState f53815e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt$NativeRegisterComposable$2$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "stepOrdinal", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.authentication.register.components.NativeRegisterComposableKt$NativeRegisterComposable$2$1$1", f = "NativeRegisterComposable.kt", l = {84}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<Integer, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f53816b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ int f53817c;
        public final /* synthetic */ MutableState d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ PagerState f53818e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(MutableState mutableState, PagerState pagerState, Continuation continuation) {
            super(2, continuation);
            this.d = mutableState;
            this.f53818e = pagerState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f53818e, continuation);
            anonymousClass1.f53817c = ((Number) obj).intValue();
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create(Integer.valueOf(((Number) obj).intValue()), (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        /* JADX WARN: Code duplicated, block: B:23:0x0051  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            int i2;
            int i3 = this.f53817c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i4 = this.f53816b;
            if (i4 == 0) {
                ResultKt.b(obj);
                if (((NativeRegisterViewState) this.d.getF10755b()).a()) {
                    i2 = i3;
                } else if (i3 == Step.CREDENTIALS.ordinal()) {
                    i2 = 0;
                } else if (i3 == Step.PERSONAL_INFO.ordinal()) {
                    i2 = 1;
                } else if (i3 == Step.BIRTH_INFO.ordinal()) {
                    i2 = 2;
                } else if (i3 == Step.ACCOUNT_ACTIVATION.ordinal()) {
                    i2 = 3;
                } else {
                    i2 = i3;
                }
                Integer num = new Integer(i2);
                int iIntValue = num.intValue();
                PagerState pagerState = this.f53818e;
                if (iIntValue >= pagerState.o()) {
                    num = null;
                }
                if (num != null) {
                    int iIntValue2 = num.intValue();
                    this.f53817c = i3;
                    this.f53816b = 1;
                    if (PagerState.g(pagerState, iIntValue2, null, this, 6) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
            } else {
                if (i4 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeRegisterComposableKt$NativeRegisterComposable$2$1(NativeRegisterViewModel nativeRegisterViewModel, MutableState mutableState, PagerState pagerState, Continuation continuation) {
        super(2, continuation);
        this.f53814c = nativeRegisterViewModel;
        this.d = mutableState;
        this.f53815e = pagerState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeRegisterComposableKt$NativeRegisterComposable$2$1(this.f53814c, this.d, this.f53815e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeRegisterComposableKt$NativeRegisterComposable$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f53813b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow z = this.f53814c.getZ();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f53815e, null);
            this.f53813b = 1;
            if (FlowKt.g(z, anonymousClass1, this) == coroutineSingletons) {
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
