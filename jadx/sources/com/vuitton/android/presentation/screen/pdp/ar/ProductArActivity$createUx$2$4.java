package com.vuitton.android.presentation.screen.pdp.ar;

import com.vuitton.android.presentation.ar.renderer.ModelRenderer;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$createUx$2$4", f = "ProductArActivity.kt", l = {396}, m = "invokeSuspend", v = 2)
final class ProductArActivity$createUx$2$4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ProductArActivity f61297c;
    public final /* synthetic */ ModelRenderer d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProductArActivity$createUx$2$4(ProductArActivity productArActivity, ModelRenderer modelRenderer, Continuation continuation) {
        super(2, continuation);
        this.f61297c = productArActivity;
        this.d = modelRenderer;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ProductArActivity$createUx$2$4(this.f61297c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ProductArActivity$createUx$2$4) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61296b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final SharedFlowImpl sharedFlowImpl = this.f61297c.w;
            Flow<ModelRenderer.ModelEvent.Update> flow = new Flow<ModelRenderer.ModelEvent.Update>() { // from class: com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$createUx$2$4$invokeSuspend$$inlined$map$1

                /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$createUx$2$4$invokeSuspend$$inlined$map$1$2, reason: invalid class name */
                @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                public final class AnonymousClass2<T> implements FlowCollector {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public final /* synthetic */ FlowCollector f61300b;

                    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$createUx$2$4$invokeSuspend$$inlined$map$1$2$1, reason: invalid class name */
                    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
                    @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$createUx$2$4$invokeSuspend$$inlined$map$1$2", f = "ProductArActivity.kt", l = {217}, m = "emit", v = 2)
                    public final class AnonymousClass1 extends ContinuationImpl {

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public /* synthetic */ Object f61301b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public int f61302c;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.f61301b = obj;
                            this.f61302c |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector) {
                        this.f61300b = flowCollector;
                    }

                    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object emit(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1;
                        if (continuation instanceof AnonymousClass1) {
                            anonymousClass1 = (AnonymousClass1) continuation;
                            int i2 = anonymousClass1.f61302c;
                            if ((i2 & Integer.MIN_VALUE) != 0) {
                                anonymousClass1.f61302c = i2 - Integer.MIN_VALUE;
                            } else {
                                anonymousClass1 = new AnonymousClass1(continuation);
                            }
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                        Object obj2 = anonymousClass1.f61301b;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        int i3 = anonymousClass1.f61302c;
                        if (i3 == 0) {
                            ResultKt.b(obj2);
                            ModelRenderer.ModelEvent.Update update = new ModelRenderer.ModelEvent.Update(((Number) obj).floatValue(), 1.0f);
                            anonymousClass1.f61302c = 1;
                            if (this.f61300b.emit(update, anonymousClass1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        } else {
                            if (i3 != 1) {
                                md.k("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            ResultKt.b(obj2);
                        }
                        return Unit.f71739a;
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public final Object f(FlowCollector flowCollector, Continuation continuation) {
                    Object objF = sharedFlowImpl.f(new AnonymousClass2(flowCollector), continuation);
                    return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
                }
            };
            final ModelRenderer modelRenderer = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.pdp.ar.ProductArActivity$createUx$2$4.2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    modelRenderer.f50625f.a((ModelRenderer.ModelEvent.Update) obj2);
                    return Unit.f71739a;
                }
            };
            this.f61296b = 1;
            if (flow.f(flowCollector, this) == coroutineSingletons) {
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
