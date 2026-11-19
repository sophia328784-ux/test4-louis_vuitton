package com.vuitton.android.presentation.compose.components;

import androidx.compose.foundation.lazy.LazyListState;
import defpackage.md;
import java.util.List;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.compose.components.LVDialogListPickerKt$LVDialogListPicker$3$1$2$1", f = "LVDialogListPicker.kt", l = {}, m = "invokeSuspend", v = 2)
final class LVDialogListPickerKt$LVDialogListPicker$3$1$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f50972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LazyListState f50973c;
    public final /* synthetic */ List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ListPickerItem f50974e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.compose.components.LVDialogListPickerKt$LVDialogListPicker$3$1$2$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.compose.components.LVDialogListPickerKt$LVDialogListPicker$3$1$2$1$1", f = "LVDialogListPicker.kt", l = {130}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f50975b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ LazyListState f50976c;
        public final /* synthetic */ List d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ ListPickerItem f50977e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(LazyListState lazyListState, List list, ListPickerItem listPickerItem, Continuation continuation) {
            super(2, continuation);
            this.f50976c = lazyListState;
            this.d = list;
            this.f50977e = listPickerItem;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f50976c, this.d, this.f50977e, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f50975b;
            if (i2 == 0) {
                ResultKt.b(obj);
                List list = this.d;
                list.getClass();
                Integer num = new Integer(list.indexOf(this.f50977e));
                Integer num2 = num.intValue() >= 0 ? num : null;
                int iIntValue = num2 != null ? num2.intValue() : 0;
                this.f50975b = 1;
                LazyListState.Companion companion = LazyListState.y;
                if (this.f50976c.k(iIntValue, 0, this) == coroutineSingletons) {
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
    public LVDialogListPickerKt$LVDialogListPicker$3$1$2$1(CoroutineScope coroutineScope, LazyListState lazyListState, List list, ListPickerItem listPickerItem, Continuation continuation) {
        super(2, continuation);
        this.f50972b = coroutineScope;
        this.f50973c = lazyListState;
        this.d = list;
        this.f50974e = listPickerItem;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LVDialogListPickerKt$LVDialogListPicker$3$1$2$1(this.f50972b, this.f50973c, this.d, this.f50974e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LVDialogListPickerKt$LVDialogListPicker$3$1$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        BuildersKt.c(this.f50972b, null, null, new AnonymousClass1(this.f50973c, this.d, this.f50974e, null), 3);
        return Unit.f71739a;
    }
}
