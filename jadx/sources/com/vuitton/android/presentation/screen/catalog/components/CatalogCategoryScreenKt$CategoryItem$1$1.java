package com.vuitton.android.presentation.screen.catalog.components;

import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.MutableState;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.components.CatalogCategoryScreenKt$CategoryItem$1$1", f = "CatalogCategoryScreen.kt", l = {325}, m = "invokeSuspend", v = 2)
final class CatalogCategoryScreenKt$CategoryItem$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f55259b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableInteractionSource f55260c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.catalog.components.CatalogCategoryScreenKt$CategoryItem$1$1$1, reason: invalid class name */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    final class AnonymousClass1<T> implements FlowCollector {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ MutableState f55261b;

        public AnonymousClass1(MutableState mutableState) {
            this.f55261b = mutableState;
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.FlowCollector
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Object emit(Interaction interaction, Continuation continuation) {
            CatalogCategoryScreenKt$CategoryItem$1$1$1$emit$1 catalogCategoryScreenKt$CategoryItem$1$1$1$emit$1;
            if (continuation instanceof CatalogCategoryScreenKt$CategoryItem$1$1$1$emit$1) {
                catalogCategoryScreenKt$CategoryItem$1$1$1$emit$1 = (CatalogCategoryScreenKt$CategoryItem$1$1$1$emit$1) continuation;
                int i2 = catalogCategoryScreenKt$CategoryItem$1$1$1$emit$1.d;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    catalogCategoryScreenKt$CategoryItem$1$1$1$emit$1.d = i2 - Integer.MIN_VALUE;
                } else {
                    catalogCategoryScreenKt$CategoryItem$1$1$1$emit$1 = new CatalogCategoryScreenKt$CategoryItem$1$1$1$emit$1(this, continuation);
                }
            } else {
                catalogCategoryScreenKt$CategoryItem$1$1$1$emit$1 = new CatalogCategoryScreenKt$CategoryItem$1$1$1$emit$1(this, continuation);
            }
            Object obj = catalogCategoryScreenKt$CategoryItem$1$1$1$emit$1.f55262b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i3 = catalogCategoryScreenKt$CategoryItem$1$1$1$emit$1.d;
            MutableState mutableState = this.f55261b;
            if (i3 == 0) {
                ResultKt.b(obj);
                if (interaction instanceof PressInteraction.Press) {
                    mutableState.setValue(Boolean.TRUE);
                } else if ((interaction instanceof PressInteraction.Release) || (interaction instanceof PressInteraction.Cancel)) {
                    Duration.Companion companion = Duration.INSTANCE;
                    long jH = DurationKt.h(150L, DurationUnit.MILLISECONDS);
                    catalogCategoryScreenKt$CategoryItem$1$1$1$emit$1.d = 1;
                    if (DelayKt.c(jH, catalogCategoryScreenKt$CategoryItem$1$1$1$emit$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.f71739a;
            }
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            mutableState.setValue(Boolean.FALSE);
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogCategoryScreenKt$CategoryItem$1$1(MutableInteractionSource mutableInteractionSource, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f55260c = mutableInteractionSource;
        this.d = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CatalogCategoryScreenKt$CategoryItem$1$1(this.f55260c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CatalogCategoryScreenKt$CategoryItem$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55259b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlowImpl f4891a = this.f55260c.getF4891a();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d);
            this.f55259b = 1;
            f4891a.getClass();
            if (SharedFlowImpl.o(f4891a, anonymousClass1, this) == coroutineSingletons) {
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
