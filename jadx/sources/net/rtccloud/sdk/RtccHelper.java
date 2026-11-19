package net.rtccloud.sdk;

import com.sightcall.analytics.AnalyticsChunk;
import com.sightcall.analytics.AnalyticsRepository;
import com.sightcall.pratik.logs.Logger;
import defpackage.md;
import defpackage.pq0;
import java.nio.ByteBuffer;
import java.util.Date;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.rtccloud.sdk.mappers.AnalyticsMappersKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J2\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0010\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0017"}, d2 = {"Lnet/rtccloud/sdk/RtccHelper;", "", "<init>", "()V", "onAnalyticsSentListener", "Lkotlin/Function0;", "", "getOnAnalyticsSentListener", "()Lkotlin/jvm/functions/Function0;", "setOnAnalyticsSentListener", "(Lkotlin/jvm/functions/Function0;)V", "onAnalyticsReady", "analyticsRepository", "Lcom/sightcall/analytics/AnalyticsRepository;", "analyticsUploadUrl", "", "analyticsUploadToken", "analyticsUuid", "Ljava/util/UUID;", "param", "", "toParam", "Lnet/rtccloud/sdk/RtccAnalyticsChunk$Param;", "rtcc_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RtccHelper {
    public static final RtccHelper INSTANCE = new RtccHelper();
    private static Function0<Unit> onAnalyticsSentListener;

    /* JADX INFO: renamed from: net.rtccloud.sdk.RtccHelper$onAnalyticsReady$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "net.rtccloud.sdk.RtccHelper$onAnalyticsReady$1", f = "RtccHelper.kt", l = {37}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AnalyticsRepository $analyticsRepository;
        final /* synthetic */ String $analyticsUploadToken;
        final /* synthetic */ String $analyticsUploadUrl;
        final /* synthetic */ UUID $analyticsUuid;
        final /* synthetic */ int $param;
        Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(int i2, AnalyticsRepository analyticsRepository, String str, String str2, UUID uuid, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$param = i2;
            this.$analyticsRepository = analyticsRepository;
            this.$analyticsUploadUrl = str;
            this.$analyticsUploadToken = str2;
            this.$analyticsUuid = uuid;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$param, this.$analyticsRepository, this.$analyticsUploadUrl, this.$analyticsUploadToken, this.$analyticsUuid, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.label;
            try {
                if (i2 == 0) {
                    ResultKt.b(obj);
                    Date date = new Date();
                    ByteBuffer byteBufferDuplicate = Jni.nDumpAnalyticsChunk().duplicate();
                    byteBufferDuplicate.getClass();
                    RtccAnalyticsChunk rtccAnalyticsChunk = new RtccAnalyticsChunk(byteBufferDuplicate, RtccHelper.INSTANCE.toParam(this.$param), date);
                    AnalyticsRepository analyticsRepository = this.$analyticsRepository;
                    String str = this.$analyticsUploadUrl;
                    String str2 = this.$analyticsUploadToken;
                    AnalyticsChunk analyticsChunk = AnalyticsMappersKt.toAnalyticsChunk(rtccAnalyticsChunk, this.$analyticsUuid);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 1;
                    if (analyticsRepository.uploadChunk(str, str2, analyticsChunk, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                } else {
                    if (i2 != 1) {
                        md.k("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj);
                }
                Function0<Unit> onAnalyticsSentListener = RtccHelper.INSTANCE.getOnAnalyticsSentListener();
                if (onAnalyticsSentListener != null) {
                    onAnalyticsSentListener.mo47invoke();
                }
            } catch (UnknownAnalyticsParamException unused) {
                Logger.INSTANCE.getTag();
            }
            return Unit.f71739a;
        }
    }

    private RtccHelper() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RtccAnalyticsChunk.Param toParam(int param) throws UnknownAnalyticsParamException {
        if (param == 0) {
            return RtccAnalyticsChunk.Param.Call.INSTANCE;
        }
        if (param == 1) {
            return RtccAnalyticsChunk.Param.Startup.INSTANCE;
        }
        throw new UnknownAnalyticsParamException(pq0.k(param, "param="));
    }

    public final Function0<Unit> getOnAnalyticsSentListener() {
        return onAnalyticsSentListener;
    }

    public final void onAnalyticsReady(AnalyticsRepository analyticsRepository, String analyticsUploadUrl, String analyticsUploadToken, UUID analyticsUuid, int param) {
        analyticsRepository.getClass();
        analyticsUuid.getClass();
        if (analyticsUploadUrl == null || analyticsUploadToken == null) {
            Logger.INSTANCE.getTag();
        } else {
            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
            BuildersKt.c(CoroutineScopeKt.a(DefaultIoScheduler.f75161b), null, null, new AnonymousClass1(param, analyticsRepository, analyticsUploadUrl, analyticsUploadToken, analyticsUuid, null), 3);
        }
    }

    public final void setOnAnalyticsSentListener(Function0<Unit> function0) {
        onAnalyticsSentListener = function0;
    }
}
