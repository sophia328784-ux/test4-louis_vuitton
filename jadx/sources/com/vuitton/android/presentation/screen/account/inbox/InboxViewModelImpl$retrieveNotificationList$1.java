package com.vuitton.android.presentation.screen.account.inbox;

import android.content.Context;
import androidx.lifecycle.ViewModelKt;
import com.batch.android.BatchInboxNotificationContent;
import com.batch.android.BatchPushPayload;
import com.vuitton.android.presentation.push.NotificationsManager;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import defpackage.md;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.inbox.InboxViewModelImpl$retrieveNotificationList$1", f = "InboxViewModelImpl.kt", l = {162}, m = "invokeSuspend", v = 2)
final class InboxViewModelImpl$retrieveNotificationList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ InboxViewModelImpl f52371c;
    public final /* synthetic */ Context d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InboxViewModelImpl$retrieveNotificationList$1(InboxViewModelImpl inboxViewModelImpl, Context context, Continuation continuation) {
        super(2, continuation);
        this.f52371c = inboxViewModelImpl;
        this.d = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new InboxViewModelImpl$retrieveNotificationList$1(this.f52371c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((InboxViewModelImpl$retrieveNotificationList$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws BatchPushPayload.ParsingException {
        Object obj2;
        InboxViewModelImpl inboxViewModelImpl = this.f52371c;
        MutableStateFlow mutableStateFlow = inboxViewModelImpl.f52355k;
        NotificationsManager notificationsManager = inboxViewModelImpl.d;
        MutableStateFlow mutableStateFlow2 = inboxViewModelImpl.f52354j;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52370b;
        if (i2 == 0) {
            ResultKt.b(obj);
            mutableStateFlow2.setValue(Boolean.TRUE);
            this.f52370b = 1;
            Object objD = notificationsManager.d(this);
            if (objD == coroutineSingletons) {
                return coroutineSingletons;
            }
            obj2 = objD;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            obj2 = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            List<BatchInboxNotificationContent> listO = notificationsManager.o();
            ArrayList arrayList = new ArrayList(CollectionsKt.t(listO, 10));
            for (BatchInboxNotificationContent batchInboxNotificationContent : listO) {
                batchInboxNotificationContent.getClass();
                Context context = this.d;
                context.getClass();
                String notificationIdentifier = batchInboxNotificationContent.getNotificationIdentifier();
                notificationIdentifier.getClass();
                String title = batchInboxNotificationContent.getTitle();
                String body = batchInboxNotificationContent.getBody();
                if (body == null) {
                    body = "";
                }
                BatchPushPayload pushPayload = batchInboxNotificationContent.getPushPayload();
                pushPayload.getClass();
                String bigPictureURL = pushPayload.hasBigPicture() ? pushPayload.getBigPictureURL(context) : null;
                BatchPushPayload pushPayload2 = batchInboxNotificationContent.getPushPayload();
                pushPayload2.getClass();
                String deeplink = pushPayload2.hasDeeplink() ? pushPayload2.getDeeplink() : null;
                boolean zIsUnread = batchInboxNotificationContent.isUnread();
                Date date = batchInboxNotificationContent.getDate();
                date.getClass();
                arrayList.add(new InboxNotificationUiModel(notificationIdentifier, title, body, bigPictureURL, deeplink, zIsUnread, date));
            }
            Boolean bool = Boolean.FALSE;
            mutableStateFlow.setValue(bool);
            mutableStateFlow2.setValue(bool);
            inboxViewModelImpl.n.setValue(arrayList);
            if (!arrayList.isEmpty() && inboxViewModelImpl.f52351f.f50378a.c()) {
                BuildersKt.c(ViewModelKt.a(inboxViewModelImpl), null, null, new InboxViewModelImpl$tryShowLongPressTooltip$1(null, inboxViewModelImpl), 3);
            }
        }
        if (Result.a(obj2) != null) {
            mutableStateFlow.setValue(Boolean.TRUE);
            mutableStateFlow2.setValue(Boolean.FALSE);
        }
        return Unit.f71739a;
    }
}
