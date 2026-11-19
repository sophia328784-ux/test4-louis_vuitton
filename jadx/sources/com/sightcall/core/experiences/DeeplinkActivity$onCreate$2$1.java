package com.sightcall.core.experiences;

import android.net.Uri;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.sightcall.core.experiences.DeeplinkActivity$onCreate$2$1", f = "DeeplinkActivity.kt", l = {38}, m = "invokeSuspend", v = 2)
public final class DeeplinkActivity$onCreate$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Uri $it;
    int label;
    final /* synthetic */ DeeplinkActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeeplinkActivity$onCreate$2$1(DeeplinkActivity deeplinkActivity, Uri uri, Continuation<? super DeeplinkActivity$onCreate$2$1> continuation) {
        super(2, continuation);
        this.this$0 = deeplinkActivity;
        this.$it = uri;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DeeplinkActivity$onCreate$2$1(this.this$0, this.$it, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((DeeplinkActivity$onCreate$2$1) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.label;
        try {
            if (i2 == 0) {
                ResultKt.b(obj);
                DeeplinkActivity deeplinkActivity = this.this$0;
                Uri uri = this.$it;
                this.label = 1;
                if (deeplinkActivity.showConsentDialog(uri, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
        } catch (SightCallUnknownUrlException unused) {
        } finally {
            this.this$0.finish();
        }
        return Unit.f71739a;
    }
}
