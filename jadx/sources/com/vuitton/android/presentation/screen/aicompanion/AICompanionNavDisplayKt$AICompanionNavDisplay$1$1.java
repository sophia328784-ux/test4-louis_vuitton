package com.vuitton.android.presentation.screen.aicompanion;

import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.NavKey;
import com.vuitton.android.presentation.extensions.Nav3ExtKt;
import defpackage.md;
import defpackage.os;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlow;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.AICompanionNavDisplayKt$AICompanionNavDisplay$1$1", f = "AICompanionNavDisplay.kt", l = {EACTags.SEX}, m = "invokeSuspend", v = 2)
final class AICompanionNavDisplayKt$AICompanionNavDisplay$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52717b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SharedFlow f52718c;
    public final /* synthetic */ NavBackStack d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionNavDisplayKt$AICompanionNavDisplay$1$1(SharedFlow sharedFlow, NavBackStack navBackStack, Continuation continuation) {
        super(2, continuation);
        this.f52718c = sharedFlow;
        this.d = navBackStack;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionNavDisplayKt$AICompanionNavDisplay$1$1(this.f52718c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionNavDisplayKt$AICompanionNavDisplay$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52717b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final NavBackStack navBackStack = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.aicompanion.AICompanionNavDisplayKt$AICompanionNavDisplay$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    NavBackStack navBackStack2 = navBackStack;
                    NavKey navKey = (NavKey) CollectionsKt.N(navBackStack2);
                    if (!Intrinsics.c(navKey, AICompanionRoutes.Onboarding.INSTANCE)) {
                        AICompanionRoutes.Chat chat = AICompanionRoutes.Chat.INSTANCE;
                        if (!Intrinsics.c(navKey, chat)) {
                            Nav3ExtKt.a(navBackStack2, chat);
                        }
                    }
                    return Unit.f71739a;
                }
            };
            this.f52717b = 1;
            if (this.f52718c.f(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        os.d();
        return null;
    }
}
