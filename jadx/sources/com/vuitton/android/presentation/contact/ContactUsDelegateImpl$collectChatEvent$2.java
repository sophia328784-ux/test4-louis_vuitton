package com.vuitton.android.presentation.contact;

import com.vuitton.android.presentation.contact.models.ContactUsOrigin;
import com.vuitton.foundation.model.domain.model.chat.ChatResponseEvent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", MvelScriptManager.VAR_EVENT, "Lcom/vuitton/foundation/model/domain/model/chat/ChatResponseEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.contact.ContactUsDelegateImpl$collectChatEvent$2", f = "ContactUsDelegateImpl.kt", l = {164, 183}, m = "invokeSuspend", v = 2)
final class ContactUsDelegateImpl$collectChatEvent$2 extends SuspendLambda implements Function2<ChatResponseEvent, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f51100b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f51101c;
    public final /* synthetic */ ContactUsDelegateImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ContactUsOrigin f51102e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContactUsDelegateImpl$collectChatEvent$2(ContactUsDelegateImpl contactUsDelegateImpl, ContactUsOrigin contactUsOrigin, Continuation continuation) {
        super(2, continuation);
        this.d = contactUsDelegateImpl;
        this.f51102e = contactUsOrigin;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ContactUsDelegateImpl$collectChatEvent$2 contactUsDelegateImpl$collectChatEvent$2 = new ContactUsDelegateImpl$collectChatEvent$2(this.d, this.f51102e, continuation);
        contactUsDelegateImpl$collectChatEvent$2.f51101c = obj;
        return contactUsDelegateImpl$collectChatEvent$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ContactUsDelegateImpl$collectChatEvent$2) create((ChatResponseEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0054, code lost:
    
        if (kotlinx.coroutines.DelayKt.c(r2, r9) == r4) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0098, code lost:
    
        if (r0.S0(r9) == r4) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x009a, code lost:
    
        return r4;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r10) {
        /*
            r9 = this;
            com.vuitton.android.presentation.contact.ContactUsDelegateImpl r0 = r9.d
            kotlinx.coroutines.flow.MutableStateFlow r1 = r0.f51095h
            kotlinx.coroutines.flow.MutableStateFlow r2 = r0.f51094f
            java.lang.Object r3 = r9.f51101c
            com.vuitton.foundation.model.domain.model.chat.ChatResponseEvent r3 = (com.vuitton.foundation.model.domain.model.chat.ChatResponseEvent) r3
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r5 = r9.f51100b
            r6 = 0
            r7 = 2
            r8 = 1
            if (r5 == 0) goto L26
            if (r5 == r8) goto L22
            if (r5 != r7) goto L1c
            kotlin.ResultKt.b(r10)
            goto L9b
        L1c:
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r9)
            return r6
        L22:
            kotlin.ResultKt.b(r10)
            goto L57
        L26:
            kotlin.ResultKt.b(r10)
            boolean r10 = r3 instanceof com.vuitton.foundation.model.domain.model.chat.ChatResponseEvent.UiNotification.ChatIsVisibleUiNotification
            if (r10 == 0) goto L35
            java.lang.Boolean r9 = java.lang.Boolean.FALSE
            r2.setValue(r9)
            r0.f51098k = r8
            goto L9b
        L35:
            boolean r10 = r3 instanceof com.vuitton.foundation.model.domain.model.chat.ChatResponseEvent.UiNotification.ChatIsClosedUiNotification
            if (r10 == 0) goto L76
            boolean r10 = r0.f51098k
            if (r10 == 0) goto L9b
            java.lang.Boolean r10 = java.lang.Boolean.TRUE
            r1.setValue(r10)
            kotlin.time.Duration$Companion r10 = kotlin.time.Duration.INSTANCE
            r2 = 500(0x1f4, double:2.47E-321)
            kotlin.time.DurationUnit r10 = kotlin.time.DurationUnit.MILLISECONDS
            long r2 = kotlin.time.DurationKt.h(r2, r10)
            r9.f51101c = r6
            r9.f51100b = r8
            java.lang.Object r10 = kotlinx.coroutines.DelayKt.c(r2, r9)
            if (r10 != r4) goto L57
            goto L9a
        L57:
            java.lang.Boolean r10 = java.lang.Boolean.FALSE
            r1.setValue(r10)
            r10 = 0
            r0.f51098k = r10
            com.vuitton.android.presentation.contact.models.ContactUsOrigin r9 = r9.f51102e
            if (r9 == 0) goto L9b
            com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModel$OnPowerfrontCloseEvent r10 = new com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModel$OnPowerfrontCloseEvent
            java.lang.String r9 = r9.getValue()
            r10.<init>(r9)
            com.vuitton.android.presentation.screen.analytics.AnalyticsTracker r9 = r0.d
            com.vuitton.foundation.model.domain.model.analytics.Hit r10 = com.vuitton.android.presentation.contact.models.ContactUsTrackingUiModelKt.a(r10)
            r9.a(r10)
            goto L9b
        L76:
            boolean r10 = r3 instanceof com.vuitton.foundation.model.domain.model.chat.ChatResponseEvent.UiNotification.MessageChatUiNotificationReceived
            if (r10 == 0) goto L80
            java.lang.Boolean r9 = java.lang.Boolean.TRUE
            r2.setValue(r9)
            goto L9b
        L80:
            boolean r10 = r3 instanceof com.vuitton.foundation.model.domain.model.chat.ChatResponseEvent.UiNotification.AppShouldAskForPermissions
            if (r10 == 0) goto L8c
            kotlinx.coroutines.flow.MutableStateFlow r9 = r0.g
            java.lang.Boolean r10 = java.lang.Boolean.TRUE
            r9.setValue(r10)
            goto L9b
        L8c:
            boolean r10 = r3 instanceof com.vuitton.foundation.model.domain.model.chat.ChatResponseEvent.OnLoadingChat
            if (r10 == 0) goto L9b
            r9.f51101c = r6
            r9.f51100b = r7
            java.lang.Object r9 = r0.S0(r9)
            if (r9 != r4) goto L9b
        L9a:
            return r4
        L9b:
            kotlin.Unit r9 = kotlin.Unit.f71739a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.contact.ContactUsDelegateImpl$collectChatEvent$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
