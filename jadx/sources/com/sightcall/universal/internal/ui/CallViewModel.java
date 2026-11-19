package com.sightcall.universal.internal.ui;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.location.Location;
import androidx.activity.result.IntentSenderRequest;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import androidx.lifecycle.ViewModelKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.viewmodel.CreationExtras;
import com.google.android.gms.common.api.ResolvableApiException;
import com.google.gson.Gson;
import com.networkbench.agent.impl.floatbtnmanager.ActionFloatingViewItem;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.sightcall.capabilities.SwitchRequest;
import com.sightcall.common.DataChannelAction;
import com.sightcall.common.IgnoreAndFilterInBandDataChannel;
import com.sightcall.gpslocation.GpsRepository;
import com.sightcall.gpslocation.NoProviderFoundException;
import com.sightcall.gpslocation.rtcc.GeolocationResponseMapperKt;
import com.sightcall.gpslocation.rtcc.model.GeoLocationRequest;
import com.sightcall.gpslocation.rtcc.model.GeolocationStatus;
import com.sightcall.httpclient.AuthorizationToken;
import com.sightcall.mediacapture.domain.entities.Media;
import com.sightcall.mediacapture.presenter.item.MediaCaptureError;
import com.sightcall.pratik.Result;
import com.sightcall.pratik.extensions.JsonException;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.session.ReferenceUpdate;
import com.sightcall.session.SessionRepository;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.extensions.UniversalExtensionKt;
import com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapper;
import com.sightcall.universal.internal.ui.videoplayer.VideoPlayerWrapperImpl;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.model.Session;
import defpackage.md;
import defpackage.v40;
import java.util.Date;
import java.util.Objects;
import java.util.Timer;
import java.util.TimerTask;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KClass;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u00020\u0001:\u0001[B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J \u0010:\u001a\u00020;2\b\u0010<\u001a\u0004\u0018\u00010\u001b2\f\u0010=\u001a\b\u0012\u0004\u0012\u00020;0>H\u0007J\u0006\u0010?\u001a\u00020;J\u000e\u0010@\u001a\u00020;2\u0006\u0010A\u001a\u00020BJ\u000e\u0010C\u001a\u00020;2\u0006\u0010D\u001a\u00020EJ\u0018\u0010F\u001a\u00020;2\u0006\u0010D\u001a\u00020G2\u0006\u0010H\u001a\u00020IH\u0002J\u0006\u0010J\u001a\u00020;J\u0006\u0010K\u001a\u00020\u0011J\u0006\u0010L\u001a\u00020\u0011J\"\u0010M\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020;0&2\u0006\u0010O\u001a\u00020PH\u0082@¢\u0006\u0002\u0010QJ\"\u0010R\u001a\u000e\u0012\u0004\u0012\u00020N\u0012\u0004\u0012\u00020;0&2\u0006\u0010O\u001a\u00020PH\u0082@¢\u0006\u0002\u0010QJ\u0012\u0010S\u001a\u00020;2\b\u0010T\u001a\u0004\u0018\u000106H\u0002J\u001c\u0010)\u001a\u00020;2\u0014\u0010U\u001a\u0010\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020(\u0018\u00010&J\u001c\u0010.\u001a\u00020;2\u0014\u0010U\u001a\u0010\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020(\u0018\u00010&J\u001c\u00101\u001a\u00020;2\u0014\u0010U\u001a\u0010\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020(\u0018\u00010&J\u0010\u0010V\u001a\u00020;2\b\u0010W\u001a\u0004\u0018\u00010\u001bJ\u001f\u0010X\u001a\u00020;2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\b\u0010 \u001a\u0004\u0018\u00010\u001f¢\u0006\u0002\u0010YJ\u0010\u0010Z\u001a\u00020;2\u0006\u0010T\u001a\u000206H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR$\u0010\u0012\u001a\u0004\u0018\u00010\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011@BX\u0086\u000e¢\u0006\n\n\u0002\u0010\u0015\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0016\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\"\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u001b@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR$\u0010 \u001a\u0004\u0018\u00010\u001f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u001f@BX\u0086\u000e¢\u0006\n\n\u0002\u0010#\u001a\u0004\b!\u0010\"R\"\u0010$\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020(\u0018\u00010&0%X\u0082\u0004¢\u0006\u0002\n\u0000R%\u0010)\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020(\u0018\u00010&0*8F¢\u0006\u0006\u001a\u0004\b+\u0010,R\"\u0010-\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020(\u0018\u00010&0%X\u0082\u0004¢\u0006\u0002\n\u0000R%\u0010.\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020(\u0018\u00010&0*8F¢\u0006\u0006\u001a\u0004\b/\u0010,R\"\u00100\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020(\u0018\u00010&0%X\u0082\u0004¢\u0006\u0002\n\u0000R%\u00101\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020(\u0018\u00010&0*8F¢\u0006\u0006\u001a\u0004\b2\u0010,R\u001a\u00103\u001a\u00020\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b3\u0010\u0018\"\u0004\b4\u0010\u001aR\u0010\u00105\u001a\u0004\u0018\u000106X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u00108\u001a\u000209X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\\"}, d2 = {"Lcom/sightcall/universal/internal/ui/CallViewModel;", "Landroidx/lifecycle/ViewModel;", "sessionRepository", "Lcom/sightcall/session/SessionRepository;", "gpsRepository", "Lcom/sightcall/gpslocation/GpsRepository;", "<init>", "(Lcom/sightcall/session/SessionRepository;Lcom/sightcall/gpslocation/GpsRepository;)V", "session", "Lcom/sightcall/universal/model/Session;", "getSession", "()Lcom/sightcall/universal/model/Session;", "videoPlayerWrapper", "Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;", "getVideoPlayerWrapper", "()Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper;", "value", "", "shouldSendGuestGpsOnStartup", "getShouldSendGuestGpsOnStartup", "()Ljava/lang/Boolean;", "Ljava/lang/Boolean;", "shouldRestartCamera", "getShouldRestartCamera", "()Z", "setShouldRestartCamera", "(Z)V", "", "dataInBandRequestId", "getDataInBandRequestId", "()Ljava/lang/String;", "", "dataInBandRequestTimeout", "getDataInBandRequestTimeout", "()Ljava/lang/Long;", "Ljava/lang/Long;", "_mediaCaptureEventFromGallery", "Landroidx/lifecycle/MutableLiveData;", "Lcom/sightcall/pratik/Result;", "Lcom/sightcall/mediacapture/domain/entities/Media;", "Lcom/sightcall/mediacapture/presenter/item/MediaCaptureError;", "mediaCaptureEventFromGallery", "Landroidx/lifecycle/LiveData;", "getMediaCaptureEventFromGallery", "()Landroidx/lifecycle/LiveData;", "_mediaCaptureEventFromCamera", "mediaCaptureEventFromCamera", "getMediaCaptureEventFromCamera", "_mediaCaptureEventVideoFromGallery", "mediaCaptureEventVideoFromGallery", "getMediaCaptureEventVideoFromGallery", "isSDFOpened", "setSDFOpened", "bestAccuracyLocation", "Landroid/location/Location;", "locationServiceDuration", "timer", "Ljava/util/Timer;", "onRoleSwitch", "", "extra", "onRoleSwitchCompleted", "Lkotlin/Function0;", "onGuestGpsOnStartupSent", "sendLocationStatus", "geolocationStatus", "Lcom/sightcall/gpslocation/rtcc/model/GeolocationStatus;", "startLocationService", ActionFloatingViewItem.f37018a, "Landroid/app/Activity;", "handleResolvableApiException", "Lcom/sightcall/universal/internal/ui/CallActivity;", MvelScriptManager.VAR_EXCEPTION, "Lcom/google/android/gms/common/api/ResolvableApiException;", "stopLocationService", "checkLocationPermission", "isGPSEnabled", "switchToGuest", "Lcom/sightcall/session/ReferenceUpdate;", "token", "Lcom/sightcall/httpclient/AuthorizationToken;", "(Lcom/sightcall/httpclient/AuthorizationToken;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "switchToAttendee", "sendLocationToRemote", "location", "result", "updateDataInBandFromGeoLocationRequest", DbParams.KEY_DATA, "updateDataInBandGeoLocationParameters", "(Ljava/lang/String;Ljava/lang/Long;)V", "keepBestAccuracyLocation", "Factory", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CallViewModel extends ViewModel {
    private final MutableLiveData<Result<Media, MediaCaptureError>> _mediaCaptureEventFromCamera;
    private final MutableLiveData<Result<Media, MediaCaptureError>> _mediaCaptureEventFromGallery;
    private final MutableLiveData<Result<Media, MediaCaptureError>> _mediaCaptureEventVideoFromGallery;
    private Location bestAccuracyLocation;
    private String dataInBandRequestId;
    private Long dataInBandRequestTimeout;
    private final GpsRepository gpsRepository;
    private boolean isSDFOpened;
    private final long locationServiceDuration;
    private final Session session;
    private final SessionRepository sessionRepository;
    private boolean shouldRestartCamera;
    private Boolean shouldSendGuestGpsOnStartup;
    private final Timer timer;
    private final VideoPlayerWrapper videoPlayerWrapper;

    /* JADX INFO: renamed from: com.sightcall.universal.internal.ui.CallViewModel$onRoleSwitch$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.universal.internal.ui.CallViewModel$onRoleSwitch$1", f = "CallViewModel.kt", l = {92}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $extra;
        final /* synthetic */ Function0<Unit> $onRoleSwitchCompleted;
        int label;

        /* JADX INFO: renamed from: com.sightcall.universal.internal.ui.CallViewModel$onRoleSwitch$1$1, reason: invalid class name and collision with other inner class name */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
        @DebugMetadata(c = "com.sightcall.universal.internal.ui.CallViewModel$onRoleSwitch$1$1", f = "CallViewModel.kt", l = {95, 98, 106}, m = "invokeSuspend", v = 2)
        public static final class C02471 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ String $extra;
            final /* synthetic */ Function0<Unit> $onRoleSwitchCompleted;
            Object L$0;
            int label;
            final /* synthetic */ CallViewModel this$0;

            /* JADX INFO: renamed from: com.sightcall.universal.internal.ui.CallViewModel$onRoleSwitch$1$1$1, reason: invalid class name and collision with other inner class name */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
            @DebugMetadata(c = "com.sightcall.universal.internal.ui.CallViewModel$onRoleSwitch$1$1$1", f = "CallViewModel.kt", l = {}, m = "invokeSuspend", v = 2)
            public static final class C02481 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                final /* synthetic */ Function0<Unit> $onRoleSwitchCompleted;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C02481(Function0<Unit> function0, Continuation<? super C02481> continuation) {
                    super(2, continuation);
                    this.$onRoleSwitchCompleted = function0;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                    return new C02481(this.$onRoleSwitchCompleted, continuation);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                    return ((C02481) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Object invokeSuspend(Object obj) {
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                    if (this.label != 0) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                    this.$onRoleSwitchCompleted.mo47invoke();
                    return Unit.f71739a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C02471(CallViewModel callViewModel, String str, Function0<Unit> function0, Continuation<? super C02471> continuation) {
                super(2, continuation);
                this.this$0 = callViewModel;
                this.$extra = str;
                this.$onRoleSwitchCompleted = function0;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C02471(this.this$0, this.$extra, this.$onRoleSwitchCompleted, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C02471) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
            }

            /* JADX WARN: Code restructure failed: missing block: B:15:0x004d, code lost:
            
                if (r8 == r0) goto L35;
             */
            /* JADX WARN: Code restructure failed: missing block: B:23:0x0080, code lost:
            
                if (r8 == r0) goto L35;
             */
            /* JADX WARN: Code restructure failed: missing block: B:34:0x00b8, code lost:
            
                if (kotlinx.coroutines.BuildersKt.f(r8, r1, r7) == r0) goto L35;
             */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invokeSuspend(java.lang.Object r8) {
                /*
                    r7 = this;
                    kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                    int r1 = r7.label
                    r2 = 3
                    r3 = 2
                    r4 = 1
                    r5 = 0
                    if (r1 == 0) goto L27
                    if (r1 == r4) goto L23
                    if (r1 == r3) goto L1f
                    if (r1 != r2) goto L19
                    java.lang.Object r7 = r7.L$0
                    com.sightcall.pratik.Result r7 = (com.sightcall.pratik.Result) r7
                    kotlin.ResultKt.b(r8)
                    goto Lc2
                L19:
                    java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                    defpackage.md.k(r7)
                    return r5
                L1f:
                    kotlin.ResultKt.b(r8)
                    goto L83
                L23:
                    kotlin.ResultKt.b(r8)
                    goto L50
                L27:
                    kotlin.ResultKt.b(r8)
                    com.sightcall.universal.internal.ui.CallViewModel r8 = r7.this$0
                    com.sightcall.universal.model.Session r8 = r8.getSession()
                    com.sightcall.universal.model.Config r8 = r8.config
                    com.sightcall.universal.model.Session$Role r8 = r8.role()
                    com.sightcall.universal.model.Session$Role r1 = com.sightcall.universal.model.Session.Role.GUEST
                    com.sightcall.universal.internal.ui.CallViewModel r6 = r7.this$0
                    if (r8 != r1) goto L53
                    com.sightcall.universal.model.Session r8 = r6.getSession()
                    com.sightcall.universal.model.Config r8 = r8.config
                    com.sightcall.httpclient.AuthorizationToken r8 = r8.authorizationToken
                    r8.getClass()
                    r7.label = r4
                    java.lang.Object r8 = com.sightcall.universal.internal.ui.CallViewModel.access$switchToAttendee(r6, r8, r7)
                    if (r8 != r0) goto L50
                    goto Lba
                L50:
                    com.sightcall.pratik.Result r8 = (com.sightcall.pratik.Result) r8
                    goto L87
                L53:
                    com.sightcall.universal.model.Session r8 = r6.getSession()
                    com.sightcall.universal.model.Config r8 = r8.config
                    com.sightcall.universal.model.Session$Role r8 = r8.role()
                    com.sightcall.universal.model.Session$Role r1 = com.sightcall.universal.model.Session.Role.ATTENDEE
                    if (r8 != r1) goto L86
                    com.sightcall.capabilities.SwitchRequest r8 = com.sightcall.capabilities.SwitchRequest.getInstance()
                    java.lang.String r1 = r7.$extra
                    boolean r8 = r8.isSameId(r1)
                    if (r8 == 0) goto L86
                    com.sightcall.universal.internal.ui.CallViewModel r8 = r7.this$0
                    com.sightcall.universal.model.Session r1 = r8.getSession()
                    com.sightcall.universal.model.Config r1 = r1.config
                    com.sightcall.httpclient.AuthorizationToken r1 = r1.authorizationToken
                    r1.getClass()
                    r7.label = r3
                    java.lang.Object r8 = com.sightcall.universal.internal.ui.CallViewModel.access$switchToGuest(r8, r1, r7)
                    if (r8 != r0) goto L83
                    goto Lba
                L83:
                    com.sightcall.pratik.Result r8 = (com.sightcall.pratik.Result) r8
                    goto L87
                L86:
                    r8 = r5
                L87:
                    boolean r1 = r8 instanceof com.sightcall.pratik.Result.Error
                    if (r1 != 0) goto Lbf
                    if (r8 != 0) goto L8e
                    goto Lbf
                L8e:
                    boolean r1 = r8 instanceof com.sightcall.pratik.Result.Success
                    if (r1 == 0) goto Lbb
                    com.sightcall.universal.internal.ui.CallViewModel r1 = r7.this$0
                    com.sightcall.universal.model.Session r1 = r1.getSession()
                    com.sightcall.universal.agent.Usecase r1 = r1.usecase
                    com.sightcall.pratik.Result$Success r8 = (com.sightcall.pratik.Result.Success) r8
                    java.lang.Object r8 = r8.getSuccess()
                    com.sightcall.session.ReferenceUpdate r8 = (com.sightcall.session.ReferenceUpdate) r8
                    r1.updateRole(r8)
                    kotlinx.coroutines.scheduling.DefaultScheduler r8 = kotlinx.coroutines.Dispatchers.f74659a
                    kotlinx.coroutines.MainCoroutineDispatcher r8 = kotlinx.coroutines.internal.MainDispatcherLoader.f75131a
                    com.sightcall.universal.internal.ui.CallViewModel$onRoleSwitch$1$1$1 r1 = new com.sightcall.universal.internal.ui.CallViewModel$onRoleSwitch$1$1$1
                    kotlin.jvm.functions.Function0<kotlin.Unit> r3 = r7.$onRoleSwitchCompleted
                    r1.<init>(r3, r5)
                    r7.L$0 = r5
                    r7.label = r2
                    java.lang.Object r7 = kotlinx.coroutines.BuildersKt.f(r8, r1, r7)
                    if (r7 != r0) goto Lc2
                Lba:
                    return r0
                Lbb:
                    defpackage.v40.g()
                    return r5
                Lbf:
                    com.sightcall.pratik.misc.DoNothingKt.doNothing()
                Lc2:
                    kotlin.Unit r7 = kotlin.Unit.f71739a
                    return r7
                */
                throw new UnsupportedOperationException("Method not decompiled: com.sightcall.universal.internal.ui.CallViewModel.AnonymousClass1.C02471.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(String str, Function0<Unit> function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$extra = str;
            this.$onRoleSwitchCompleted = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CallViewModel.this.new AnonymousClass1(this.$extra, this.$onRoleSwitchCompleted, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.label;
            if (i2 == 0) {
                ResultKt.b(obj);
                if (CallViewModel.this.getSession() == null) {
                    return Unit.f71739a;
                }
                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                DefaultIoScheduler defaultIoScheduler = DefaultIoScheduler.f75161b;
                C02471 c02471 = new C02471(CallViewModel.this, this.$extra, this.$onRoleSwitchCompleted, null);
                this.label = 1;
                if (BuildersKt.f(defaultIoScheduler, c02471, this) == coroutineSingletons) {
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

    /* JADX INFO: renamed from: com.sightcall.universal.internal.ui.CallViewModel$startLocationService$1, reason: invalid class name and case insensitive filesystem */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.universal.internal.ui.CallViewModel$startLocationService$1", f = "CallViewModel.kt", l = {147}, m = "invokeSuspend", v = 2)
    public static final class C04041 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Activity $activity;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C04041(Activity activity, Continuation<? super C04041> continuation) {
            super(2, continuation);
            this.$activity = activity;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CallViewModel.this.new C04041(this.$activity, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04041) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.label;
            if (i2 == 0) {
                ResultKt.b(obj);
                Flow<Result<Location, Exception>> locations = CallViewModel.this.gpsRepository.getLocations();
                final CallViewModel callViewModel = CallViewModel.this;
                final Activity activity = this.$activity;
                FlowCollector flowCollector = new FlowCollector() { // from class: com.sightcall.universal.internal.ui.CallViewModel.startLocationService.1.1
                    public final Object emit(Result<Location, Exception> result, Continuation<? super Unit> continuation) {
                        if (result instanceof Result.Error) {
                            Result.Error error = (Result.Error) result;
                            Exception exc = (Exception) error.getError();
                            if (exc instanceof ResolvableApiException) {
                                CallViewModel callViewModel2 = callViewModel;
                                Activity activity2 = activity;
                                activity2.getClass();
                                Object error2 = error.getError();
                                error2.getClass();
                                callViewModel2.handleResolvableApiException((CallActivity) activity2, (ResolvableApiException) error2);
                                DataChannelAction.GEOLOCATION_RESPONSE.send(GeolocationResponseMapperKt.locationResponseStatus(GeolocationStatus.FirstUsagePopupDisplayed.INSTANCE, callViewModel.getDataInBandRequestId()));
                            } else if (exc instanceof NoProviderFoundException) {
                                Intent intent = new Intent("android.settings.LOCATION_SOURCE_SETTINGS");
                                Activity activity3 = activity;
                                activity3.getClass();
                                ((CallActivity) activity3).locationSettingsLauncher.a(intent);
                                DataChannelAction.GEOLOCATION_RESPONSE.send(GeolocationResponseMapperKt.locationResponseStatus(GeolocationStatus.FirstUsagePopupDisplayed.INSTANCE, callViewModel.getDataInBandRequestId()));
                            } else {
                                Logger logger = Logger.INSTANCE;
                                logger.getTag();
                            }
                        } else {
                            if (!(result instanceof Result.Success)) {
                                v40.g();
                                return null;
                            }
                            Logger logger2 = Logger.INSTANCE;
                            Result.Success success = (Result.Success) result;
                            Objects.toString(success.getSuccess());
                            logger2.getTag();
                            callViewModel.sendLocationToRemote((Location) success.getSuccess());
                            callViewModel.keepBestAccuracyLocation((Location) success.getSuccess());
                            Timer timer = callViewModel.timer;
                            long j2 = callViewModel.locationServiceDuration;
                            final CallViewModel callViewModel3 = callViewModel;
                            timer.schedule(new TimerTask() { // from class: com.sightcall.universal.internal.ui.CallViewModel$startLocationService$1$1$emit$$inlined$schedule$1
                                @Override // java.util.TimerTask, java.lang.Runnable
                                public void run() {
                                    callViewModel3.gpsRepository.stopGPS();
                                    cancel();
                                }
                            }, j2);
                        }
                        return Unit.f71739a;
                    }

                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, Continuation continuation) {
                        return emit((Result<Location, Exception>) obj2, (Continuation<? super Unit>) continuation);
                    }
                };
                this.label = 1;
                if (locations.f(flowCollector, this) == coroutineSingletons) {
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

    /* JADX WARN: Code duplicated, block: B:20:0x0049  */
    public CallViewModel(SessionRepository sessionRepository, GpsRepository gpsRepository) {
        boolean zBooleanValue;
        Config config;
        Usecase usecase;
        Usecase.User user;
        Usecase usecase2;
        sessionRepository.getClass();
        gpsRepository.getClass();
        this.sessionRepository = sessionRepository;
        this.gpsRepository = gpsRepository;
        Session session = UniversalExtensionKt.getSession();
        this.session = session;
        this.videoPlayerWrapper = new VideoPlayerWrapperImpl();
        Boolean boolValueOf = null;
        this.shouldSendGuestGpsOnStartup = (session == null || (usecase2 = session.usecase) == null) ? null : usecase2.guestGpsOnStartup();
        if (session == null || (config = session.config) == null) {
            zBooleanValue = false;
        } else {
            if (session != null && (usecase = session.usecase) != null && (user = usecase.user(config)) != null) {
                boolValueOf = Boolean.valueOf(user.camera);
            }
            if (boolValueOf != null) {
                zBooleanValue = boolValueOf.booleanValue();
            } else {
                zBooleanValue = false;
            }
        }
        this.shouldRestartCamera = zBooleanValue;
        this._mediaCaptureEventFromGallery = new MutableLiveData<>();
        this._mediaCaptureEventFromCamera = new MutableLiveData<>();
        this._mediaCaptureEventVideoFromGallery = new MutableLiveData<>();
        this.locationServiceDuration = 60000L;
        this.timer = new Timer("LocationService", false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void handleResolvableApiException(CallActivity activity, ResolvableApiException exception) {
        try {
            PendingIntent pendingIntent = exception.f28974b.d;
            pendingIntent.getClass();
            IntentSenderRequest.Builder builder = new IntentSenderRequest.Builder(pendingIntent);
            activity.resolutionForResultLauncher.a(new IntentSenderRequest(builder.f752a, builder.f753b, builder.f754c, builder.d));
        } catch (IntentSender.SendIntentException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void keepBestAccuracyLocation(Location location) {
        Location location2 = this.bestAccuracyLocation;
        if (location2 != null) {
            location2.getClass();
            if (location2.hasAccuracy()) {
                if (!location.hasAccuracy()) {
                    return;
                }
                float accuracy = location.getAccuracy();
                Location location3 = this.bestAccuracyLocation;
                location3.getClass();
                if (accuracy > location3.getAccuracy()) {
                    return;
                }
            }
        }
        this.bestAccuracyLocation = location;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void sendLocationToRemote(Location location) {
        if (location == null) {
            return;
        }
        DataChannelAction.GEOLOCATION_RESPONSE.send(GeolocationResponseMapperKt.toGeolocationResponse(location, GeolocationStatus.Success.INSTANCE, new Date(location.getTime()).getTime(), this.dataInBandRequestId));
        Session session = this.session;
        if (session != null) {
            session.parameters.lastLocation = location;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object switchToAttendee(AuthorizationToken authorizationToken, Continuation<? super Result<ReferenceUpdate, Unit>> continuation) {
        Config config;
        SwitchRequest.getInstance().clear();
        IgnoreAndFilterInBandDataChannel.INSTANCE.setValue(true);
        Session session = this.session;
        if (session != null && (config = session.config) != null) {
            config.role(Session.Role.ATTENDEE);
        }
        return this.sessionRepository.switchToAttendee(authorizationToken, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object switchToGuest(AuthorizationToken authorizationToken, Continuation<? super Result<ReferenceUpdate, Unit>> continuation) {
        Config config;
        IgnoreAndFilterInBandDataChannel.INSTANCE.setValue(false);
        Session session = this.session;
        if (session != null && (config = session.config) != null) {
            config.role(Session.Role.GUEST);
        }
        return this.sessionRepository.switchToGuest(authorizationToken, continuation);
    }

    public final boolean checkLocationPermission() {
        return this.gpsRepository.getHasPermissions();
    }

    public final String getDataInBandRequestId() {
        return this.dataInBandRequestId;
    }

    public final Long getDataInBandRequestTimeout() {
        return this.dataInBandRequestTimeout;
    }

    public final LiveData<Result<Media, MediaCaptureError>> getMediaCaptureEventFromCamera() {
        return this._mediaCaptureEventFromCamera;
    }

    public final LiveData<Result<Media, MediaCaptureError>> getMediaCaptureEventFromGallery() {
        return this._mediaCaptureEventFromGallery;
    }

    public final LiveData<Result<Media, MediaCaptureError>> getMediaCaptureEventVideoFromGallery() {
        return this._mediaCaptureEventVideoFromGallery;
    }

    public final Session getSession() {
        return this.session;
    }

    public final boolean getShouldRestartCamera() {
        return this.shouldRestartCamera;
    }

    public final Boolean getShouldSendGuestGpsOnStartup() {
        return this.shouldSendGuestGpsOnStartup;
    }

    public final VideoPlayerWrapper getVideoPlayerWrapper() {
        return this.videoPlayerWrapper;
    }

    public final boolean isGPSEnabled() {
        return this.gpsRepository.isGpsEnabled();
    }

    /* JADX INFO: renamed from: isSDFOpened, reason: from getter */
    public final boolean getIsSDFOpened() {
        return this.isSDFOpened;
    }

    public final void mediaCaptureEventFromCamera(Result<Media, MediaCaptureError> result) {
        this._mediaCaptureEventFromCamera.postValue(result);
    }

    public final void mediaCaptureEventFromGallery(Result<Media, MediaCaptureError> result) {
        this._mediaCaptureEventFromGallery.postValue(result);
    }

    public final void mediaCaptureEventVideoFromGallery(Result<Media, MediaCaptureError> result) {
        this._mediaCaptureEventVideoFromGallery.postValue(result);
    }

    public final void onGuestGpsOnStartupSent() {
        this.shouldSendGuestGpsOnStartup = Boolean.FALSE;
    }

    public final void onRoleSwitch(String extra, Function0<Unit> onRoleSwitchCompleted) {
        onRoleSwitchCompleted.getClass();
        BuildersKt.c(ViewModelKt.a(this), null, null, new AnonymousClass1(extra, onRoleSwitchCompleted, null), 3);
    }

    public final void sendLocationStatus(GeolocationStatus geolocationStatus) {
        geolocationStatus.getClass();
        DataChannelAction.GEOLOCATION_RESPONSE.send(GeolocationResponseMapperKt.locationResponseStatus(geolocationStatus, this.dataInBandRequestId));
    }

    public final void setSDFOpened(boolean z) {
        this.isSDFOpened = z;
    }

    public final void setShouldRestartCamera(boolean z) {
        this.shouldRestartCamera = z;
    }

    public final void startLocationService(Activity activity) {
        activity.getClass();
        if (!this.gpsRepository.getHasGpsFeature()) {
            DataChannelAction.GEOLOCATION_RESPONSE.send(GeolocationResponseMapperKt.locationResponseStatus(GeolocationStatus.FirstUsagePopupDeclined.INSTANCE, this.dataInBandRequestId));
            Logger.INSTANCE.getTag();
            return;
        }
        if (!this.gpsRepository.getHasPermissions()) {
            DataChannelAction.GEOLOCATION_RESPONSE.send(GeolocationResponseMapperKt.locationResponseStatus(GeolocationStatus.FirstUsagePopupDisplayed.INSTANCE, this.dataInBandRequestId));
            ((CallActivity) activity).requestPermissionsLauncher.a(new String[]{"android.permission.ACCESS_FINE_LOCATION"});
        }
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        BuildersKt.c(CoroutineScopeKt.a(DefaultIoScheduler.f75161b), null, null, new C04041(activity, null), 3);
    }

    public final void stopLocationService() {
        this.gpsRepository.stopGPS();
    }

    public final void updateDataInBandFromGeoLocationRequest(String data) {
        GeoLocationRequest geoLocationRequest;
        if (data != null) {
            try {
                geoLocationRequest = (GeoLocationRequest) new Gson().fromJson(data, GeoLocationRequest.class);
            } catch (Exception e2) {
                throw new JsonException("Unable to deserialize: ".concat(data), e2);
            }
        } else {
            geoLocationRequest = null;
        }
        updateDataInBandGeoLocationParameters(geoLocationRequest != null ? geoLocationRequest.getRequestId() : null, geoLocationRequest != null ? geoLocationRequest.getExpirationTimeout() : null);
    }

    public final void updateDataInBandGeoLocationParameters(String dataInBandRequestId, Long dataInBandRequestTimeout) {
        this.dataInBandRequestId = dataInBandRequestId;
        this.dataInBandRequestTimeout = dataInBandRequestTimeout;
    }

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J%\u0010\b\u001a\u0002H\t\"\b\b\u0000\u0010\t*\u00020\n2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u0002H\t0\fH\u0016¢\u0006\u0002\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/sightcall/universal/internal/ui/CallViewModel$Factory;", "Landroidx/lifecycle/ViewModelProvider$Factory;", "sessionRepository", "Lcom/sightcall/session/SessionRepository;", "gpsRepository", "Lcom/sightcall/gpslocation/GpsRepository;", "<init>", "(Lcom/sightcall/session/SessionRepository;Lcom/sightcall/gpslocation/GpsRepository;)V", "create", "T", "Landroidx/lifecycle/ViewModel;", "modelClass", "Ljava/lang/Class;", "(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Factory implements ViewModelProvider.Factory {
        private final GpsRepository gpsRepository;
        private final SessionRepository sessionRepository;

        @Inject
        public Factory(SessionRepository sessionRepository, GpsRepository gpsRepository) {
            sessionRepository.getClass();
            gpsRepository.getClass();
            this.sessionRepository = sessionRepository;
            this.gpsRepository = gpsRepository;
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public <T extends ViewModel> T create(Class<T> modelClass) {
            modelClass.getClass();
            return new CallViewModel(this.sessionRepository, this.gpsRepository);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public /* bridge */ <T extends ViewModel> T create(KClass<T> kClass, CreationExtras creationExtras) {
            return (T) super.create(kClass, creationExtras);
        }

        @Override // androidx.lifecycle.ViewModelProvider.Factory
        public /* bridge */ <T extends ViewModel> T create(Class<T> cls, CreationExtras creationExtras) {
            return (T) super.create(cls, creationExtras);
        }
    }
}
