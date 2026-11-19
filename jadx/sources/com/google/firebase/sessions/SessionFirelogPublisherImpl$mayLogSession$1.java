package com.google.firebase.sessions;

import com.google.firebase.FirebaseApp;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.api.FirebaseSessionsDependencies;
import com.google.firebase.sessions.api.SessionSubscriber;
import com.google.firebase.sessions.settings.SessionsSettings;
import defpackage.md;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.google.firebase.sessions.SessionFirelogPublisherImpl$mayLogSession$1", f = "SessionFirelogPublisher.kt", l = {70, EACTags.MESSAGE_REFERENCE, EACTags.INTEGRATED_CIRCUIT_MANUFACTURER_ID}, m = "invokeSuspend")
final class SessionFirelogPublisherImpl$mayLogSession$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public InstallationId f35480b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SessionFirelogPublisherImpl f35481c;
    public SessionEvents d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public FirebaseApp f35482e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public SessionDetails f35483f;
    public SessionsSettings g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f35484h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ SessionFirelogPublisherImpl f35485i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ SessionDetails f35486j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SessionFirelogPublisherImpl$mayLogSession$1(SessionFirelogPublisherImpl sessionFirelogPublisherImpl, SessionDetails sessionDetails, Continuation continuation) {
        super(2, continuation);
        this.f35485i = sessionFirelogPublisherImpl;
        this.f35486j = sessionDetails;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SessionFirelogPublisherImpl$mayLogSession$1(this.f35485i, this.f35486j, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SessionFirelogPublisherImpl$mayLogSession$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x007c  */
    /* JADX WARN: Code duplicated, block: B:26:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:28:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:30:0x00be  */
    /* JADX WARN: Code duplicated, block: B:31:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:34:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:36:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:38:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:39:0x00dc  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objB;
        Object objA;
        InstallationId installationId;
        SessionEvents sessionEvents;
        FirebaseApp firebaseApp;
        SessionsSettings sessionsSettings;
        SessionDetails sessionDetails;
        Object objC;
        FirebaseApp firebaseApp2;
        SessionsSettings sessionsSettings2;
        SessionSubscriber sessionSubscriber;
        DataCollectionState dataCollectionState;
        SessionSubscriber sessionSubscriber2;
        DataCollectionState dataCollectionState2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f35484h;
        SessionFirelogPublisherImpl sessionFirelogPublisherImpl = this.f35485i;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f35484h = 1;
            objB = SessionFirelogPublisherImpl.b(sessionFirelogPublisherImpl, this);
            if (objB != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            objB = obj;
        } else {
            if (i2 == 2) {
                ResultKt.b(obj);
                objA = obj;
                installationId = (InstallationId) objA;
                sessionEvents = SessionEvents.f35473a;
                firebaseApp = sessionFirelogPublisherImpl.f35476a;
                sessionsSettings = sessionFirelogPublisherImpl.f35478c;
                FirebaseSessionsDependencies firebaseSessionsDependencies = FirebaseSessionsDependencies.f35544a;
                this.f35480b = installationId;
                this.f35481c = sessionFirelogPublisherImpl;
                this.d = sessionEvents;
                this.f35482e = firebaseApp;
                sessionDetails = this.f35486j;
                this.f35483f = sessionDetails;
                this.g = sessionsSettings;
                this.f35484h = 3;
                objC = firebaseSessionsDependencies.c(this);
                if (objC != coroutineSingletons) {
                    firebaseApp2 = firebaseApp;
                    sessionsSettings2 = sessionsSettings;
                }
                return coroutineSingletons;
            }
            if (i2 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            sessionsSettings2 = this.g;
            SessionDetails sessionDetails2 = this.f35483f;
            firebaseApp2 = this.f35482e;
            sessionEvents = this.d;
            sessionFirelogPublisherImpl = this.f35481c;
            InstallationId installationId2 = this.f35480b;
            ResultKt.b(obj);
            sessionDetails = sessionDetails2;
            installationId = installationId2;
            objC = obj;
        }
        Map map = (Map) objC;
        String str = installationId.f35442a;
        String str2 = installationId.f35443b;
        sessionEvents.getClass();
        firebaseApp2.getClass();
        sessionDetails.getClass();
        sessionsSettings2.getClass();
        map.getClass();
        str.getClass();
        str2.getClass();
        EventType eventType = EventType.SESSION_START;
        String str3 = sessionDetails.f35466a;
        String str4 = sessionDetails.f35467b;
        int i3 = sessionDetails.f35468c;
        long j2 = sessionDetails.d;
        sessionSubscriber = (SessionSubscriber) map.get(SessionSubscriber.Name.PERFORMANCE);
        if (sessionSubscriber == null) {
            dataCollectionState = DataCollectionState.COLLECTION_SDK_NOT_INSTALLED;
        } else if (sessionSubscriber.a()) {
            dataCollectionState = DataCollectionState.COLLECTION_ENABLED;
        } else {
            dataCollectionState = DataCollectionState.COLLECTION_DISABLED;
        }
        SessionsSettings sessionsSettings3 = sessionsSettings2;
        sessionSubscriber2 = (SessionSubscriber) map.get(SessionSubscriber.Name.CRASHLYTICS);
        if (sessionSubscriber2 == null) {
            dataCollectionState2 = DataCollectionState.COLLECTION_SDK_NOT_INSTALLED;
        } else if (sessionSubscriber2.a()) {
            dataCollectionState2 = DataCollectionState.COLLECTION_ENABLED;
        } else {
            dataCollectionState2 = DataCollectionState.COLLECTION_DISABLED;
        }
        SessionEvent sessionEvent = new SessionEvent(eventType, new SessionInfo(str3, str4, i3, j2, new DataCollectionStatus(dataCollectionState, dataCollectionState2, sessionsSettings3.a()), str, str2), SessionEvents.a(firebaseApp2));
        int i4 = SessionFirelogPublisherImpl.g;
        sessionFirelogPublisherImpl.getClass();
        try {
            sessionFirelogPublisherImpl.d.a(sessionEvent);
        } catch (RuntimeException unused) {
        }
        return Unit.f71739a;
        if (((Boolean) objB).booleanValue()) {
            InstallationId.Companion companion = InstallationId.f35441c;
            FirebaseInstallationsApi firebaseInstallationsApi = sessionFirelogPublisherImpl.f35477b;
            this.f35484h = 2;
            objA = companion.a(firebaseInstallationsApi, this);
            if (objA != coroutineSingletons) {
                installationId = (InstallationId) objA;
                sessionEvents = SessionEvents.f35473a;
                firebaseApp = sessionFirelogPublisherImpl.f35476a;
                sessionsSettings = sessionFirelogPublisherImpl.f35478c;
                FirebaseSessionsDependencies firebaseSessionsDependencies2 = FirebaseSessionsDependencies.f35544a;
                this.f35480b = installationId;
                this.f35481c = sessionFirelogPublisherImpl;
                this.d = sessionEvents;
                this.f35482e = firebaseApp;
                sessionDetails = this.f35486j;
                this.f35483f = sessionDetails;
                this.g = sessionsSettings;
                this.f35484h = 3;
                objC = firebaseSessionsDependencies2.c(this);
                if (objC != coroutineSingletons) {
                    firebaseApp2 = firebaseApp;
                    sessionsSettings2 = sessionsSettings;
                    Map map2 = (Map) objC;
                    String str5 = installationId.f35442a;
                    String str6 = installationId.f35443b;
                    sessionEvents.getClass();
                    firebaseApp2.getClass();
                    sessionDetails.getClass();
                    sessionsSettings2.getClass();
                    map2.getClass();
                    str5.getClass();
                    str6.getClass();
                    EventType eventType2 = EventType.SESSION_START;
                    String str7 = sessionDetails.f35466a;
                    String str8 = sessionDetails.f35467b;
                    int i5 = sessionDetails.f35468c;
                    long j3 = sessionDetails.d;
                    sessionSubscriber = (SessionSubscriber) map2.get(SessionSubscriber.Name.PERFORMANCE);
                    if (sessionSubscriber == null) {
                        dataCollectionState = DataCollectionState.COLLECTION_SDK_NOT_INSTALLED;
                    } else if (sessionSubscriber.a()) {
                        dataCollectionState = DataCollectionState.COLLECTION_ENABLED;
                    } else {
                        dataCollectionState = DataCollectionState.COLLECTION_DISABLED;
                    }
                    SessionsSettings sessionsSettings4 = sessionsSettings2;
                    sessionSubscriber2 = (SessionSubscriber) map2.get(SessionSubscriber.Name.CRASHLYTICS);
                    if (sessionSubscriber2 == null) {
                        dataCollectionState2 = DataCollectionState.COLLECTION_SDK_NOT_INSTALLED;
                    } else if (sessionSubscriber2.a()) {
                        dataCollectionState2 = DataCollectionState.COLLECTION_ENABLED;
                    } else {
                        dataCollectionState2 = DataCollectionState.COLLECTION_DISABLED;
                    }
                    SessionEvent sessionEvent2 = new SessionEvent(eventType2, new SessionInfo(str7, str8, i5, j3, new DataCollectionStatus(dataCollectionState, dataCollectionState2, sessionsSettings4.a()), str5, str6), SessionEvents.a(firebaseApp2));
                    int i6 = SessionFirelogPublisherImpl.g;
                    sessionFirelogPublisherImpl.getClass();
                    sessionFirelogPublisherImpl.d.a(sessionEvent2);
                }
            }
            return coroutineSingletons;
        }
        return Unit.f71739a;
    }
}
