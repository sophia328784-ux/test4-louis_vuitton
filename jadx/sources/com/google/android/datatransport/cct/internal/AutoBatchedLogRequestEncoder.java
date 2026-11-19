package com.google.android.datatransport.cct.internal;

import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;

/* JADX INFO: loaded from: classes2.dex */
public final class AutoBatchedLogRequestEncoder implements Configurator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoBatchedLogRequestEncoder f27810a = new AutoBatchedLogRequestEncoder();

    public static final class AndroidClientInfoEncoder implements ObjectEncoder<AndroidClientInfo> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final AndroidClientInfoEncoder f27811a = new AndroidClientInfoEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f27812b = FieldDescriptor.a("sdkVersion");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f27813c = FieldDescriptor.a("model");
        public static final FieldDescriptor d = FieldDescriptor.a("hardware");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f27814e = FieldDescriptor.a("device");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final FieldDescriptor f27815f = FieldDescriptor.a("product");
        public static final FieldDescriptor g = FieldDescriptor.a("osBuild");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final FieldDescriptor f27816h = FieldDescriptor.a("manufacturer");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final FieldDescriptor f27817i = FieldDescriptor.a("fingerprint");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final FieldDescriptor f27818j = FieldDescriptor.a("locale");

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final FieldDescriptor f27819k = FieldDescriptor.a("country");
        public static final FieldDescriptor l = FieldDescriptor.a("mccMnc");
        public static final FieldDescriptor m = FieldDescriptor.a("applicationBuild");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            AndroidClientInfo androidClientInfo = (AndroidClientInfo) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f27812b, androidClientInfo.m());
            objectEncoderContext.e(f27813c, androidClientInfo.j());
            objectEncoderContext.e(d, androidClientInfo.f());
            objectEncoderContext.e(f27814e, androidClientInfo.d());
            objectEncoderContext.e(f27815f, androidClientInfo.l());
            objectEncoderContext.e(g, androidClientInfo.k());
            objectEncoderContext.e(f27816h, androidClientInfo.h());
            objectEncoderContext.e(f27817i, androidClientInfo.e());
            objectEncoderContext.e(f27818j, androidClientInfo.g());
            objectEncoderContext.e(f27819k, androidClientInfo.c());
            objectEncoderContext.e(l, androidClientInfo.i());
            objectEncoderContext.e(m, androidClientInfo.b());
        }
    }

    public static final class BatchedLogRequestEncoder implements ObjectEncoder<BatchedLogRequest> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final BatchedLogRequestEncoder f27820a = new BatchedLogRequestEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f27821b = FieldDescriptor.a("logRequest");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ((ObjectEncoderContext) obj2).e(f27821b, ((BatchedLogRequest) obj).b());
        }
    }

    public static final class ClientInfoEncoder implements ObjectEncoder<ClientInfo> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ClientInfoEncoder f27822a = new ClientInfoEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f27823b = FieldDescriptor.a("clientType");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f27824c = FieldDescriptor.a("androidClientInfo");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ClientInfo clientInfo = (ClientInfo) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f27823b, clientInfo.c());
            objectEncoderContext.e(f27824c, clientInfo.b());
        }
    }

    public static final class ComplianceDataEncoder implements ObjectEncoder<ComplianceData> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ComplianceDataEncoder f27825a = new ComplianceDataEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f27826b = FieldDescriptor.a("privacyContext");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f27827c = FieldDescriptor.a("productIdOrigin");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ComplianceData complianceData = (ComplianceData) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f27826b, complianceData.b());
            objectEncoderContext.e(f27827c, complianceData.c());
        }
    }

    public static final class ExperimentIdsEncoder implements ObjectEncoder<ExperimentIds> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ExperimentIdsEncoder f27828a = new ExperimentIdsEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f27829b = FieldDescriptor.a("clearBlob");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f27830c = FieldDescriptor.a("encryptedBlob");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ExperimentIds experimentIds = (ExperimentIds) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f27829b, experimentIds.b());
            objectEncoderContext.e(f27830c, experimentIds.c());
        }
    }

    public static final class ExternalPRequestContextEncoder implements ObjectEncoder<ExternalPRequestContext> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ExternalPRequestContextEncoder f27831a = new ExternalPRequestContextEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f27832b = FieldDescriptor.a("originAssociatedProductId");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ((ObjectEncoderContext) obj2).e(f27832b, ((ExternalPRequestContext) obj).b());
        }
    }

    public static final class ExternalPrivacyContextEncoder implements ObjectEncoder<ExternalPrivacyContext> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final ExternalPrivacyContextEncoder f27833a = new ExternalPrivacyContextEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f27834b = FieldDescriptor.a("prequest");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ((ObjectEncoderContext) obj2).e(f27834b, ((ExternalPrivacyContext) obj).b());
        }
    }

    public static final class LogEventEncoder implements ObjectEncoder<LogEvent> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final LogEventEncoder f27835a = new LogEventEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f27836b = FieldDescriptor.a("eventTimeMs");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f27837c = FieldDescriptor.a("eventCode");
        public static final FieldDescriptor d = FieldDescriptor.a("complianceData");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f27838e = FieldDescriptor.a("eventUptimeMs");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final FieldDescriptor f27839f = FieldDescriptor.a("sourceExtension");
        public static final FieldDescriptor g = FieldDescriptor.a("sourceExtensionJsonProto3");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final FieldDescriptor f27840h = FieldDescriptor.a("timezoneOffsetSeconds");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final FieldDescriptor f27841i = FieldDescriptor.a("networkConnectionInfo");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final FieldDescriptor f27842j = FieldDescriptor.a("experimentIds");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            LogEvent logEvent = (LogEvent) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.b(f27836b, logEvent.c());
            objectEncoderContext.e(f27837c, logEvent.b());
            objectEncoderContext.e(d, logEvent.a());
            objectEncoderContext.b(f27838e, logEvent.d());
            objectEncoderContext.e(f27839f, logEvent.g());
            objectEncoderContext.e(g, logEvent.h());
            objectEncoderContext.b(f27840h, logEvent.i());
            objectEncoderContext.e(f27841i, logEvent.f());
            objectEncoderContext.e(f27842j, logEvent.e());
        }
    }

    public static final class LogRequestEncoder implements ObjectEncoder<LogRequest> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final LogRequestEncoder f27843a = new LogRequestEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f27844b = FieldDescriptor.a("requestTimeMs");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f27845c = FieldDescriptor.a("requestUptimeMs");
        public static final FieldDescriptor d = FieldDescriptor.a("clientInfo");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f27846e = FieldDescriptor.a("logSource");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final FieldDescriptor f27847f = FieldDescriptor.a("logSourceName");
        public static final FieldDescriptor g = FieldDescriptor.a("logEvent");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final FieldDescriptor f27848h = FieldDescriptor.a("qosTier");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            LogRequest logRequest = (LogRequest) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.b(f27844b, logRequest.g());
            objectEncoderContext.b(f27845c, logRequest.h());
            objectEncoderContext.e(d, logRequest.b());
            objectEncoderContext.e(f27846e, logRequest.d());
            objectEncoderContext.e(f27847f, logRequest.e());
            objectEncoderContext.e(g, logRequest.c());
            objectEncoderContext.e(f27848h, logRequest.f());
        }
    }

    public static final class NetworkConnectionInfoEncoder implements ObjectEncoder<NetworkConnectionInfo> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final NetworkConnectionInfoEncoder f27849a = new NetworkConnectionInfoEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f27850b = FieldDescriptor.a("networkType");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f27851c = FieldDescriptor.a("mobileSubtype");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            NetworkConnectionInfo networkConnectionInfo = (NetworkConnectionInfo) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f27850b, networkConnectionInfo.c());
            objectEncoderContext.e(f27851c, networkConnectionInfo.b());
        }
    }

    public final void a(EncoderConfig encoderConfig) {
        BatchedLogRequestEncoder batchedLogRequestEncoder = BatchedLogRequestEncoder.f27820a;
        JsonDataEncoderBuilder jsonDataEncoderBuilder = (JsonDataEncoderBuilder) encoderConfig;
        jsonDataEncoderBuilder.b(BatchedLogRequest.class, batchedLogRequestEncoder);
        jsonDataEncoderBuilder.b(AutoValue_BatchedLogRequest.class, batchedLogRequestEncoder);
        LogRequestEncoder logRequestEncoder = LogRequestEncoder.f27843a;
        jsonDataEncoderBuilder.b(LogRequest.class, logRequestEncoder);
        jsonDataEncoderBuilder.b(AutoValue_LogRequest.class, logRequestEncoder);
        ClientInfoEncoder clientInfoEncoder = ClientInfoEncoder.f27822a;
        jsonDataEncoderBuilder.b(ClientInfo.class, clientInfoEncoder);
        jsonDataEncoderBuilder.b(AutoValue_ClientInfo.class, clientInfoEncoder);
        AndroidClientInfoEncoder androidClientInfoEncoder = AndroidClientInfoEncoder.f27811a;
        jsonDataEncoderBuilder.b(AndroidClientInfo.class, androidClientInfoEncoder);
        jsonDataEncoderBuilder.b(AutoValue_AndroidClientInfo.class, androidClientInfoEncoder);
        LogEventEncoder logEventEncoder = LogEventEncoder.f27835a;
        jsonDataEncoderBuilder.b(LogEvent.class, logEventEncoder);
        jsonDataEncoderBuilder.b(AutoValue_LogEvent.class, logEventEncoder);
        ComplianceDataEncoder complianceDataEncoder = ComplianceDataEncoder.f27825a;
        jsonDataEncoderBuilder.b(ComplianceData.class, complianceDataEncoder);
        jsonDataEncoderBuilder.b(AutoValue_ComplianceData.class, complianceDataEncoder);
        ExternalPrivacyContextEncoder externalPrivacyContextEncoder = ExternalPrivacyContextEncoder.f27833a;
        jsonDataEncoderBuilder.b(ExternalPrivacyContext.class, externalPrivacyContextEncoder);
        jsonDataEncoderBuilder.b(AutoValue_ExternalPrivacyContext.class, externalPrivacyContextEncoder);
        ExternalPRequestContextEncoder externalPRequestContextEncoder = ExternalPRequestContextEncoder.f27831a;
        jsonDataEncoderBuilder.b(ExternalPRequestContext.class, externalPRequestContextEncoder);
        jsonDataEncoderBuilder.b(AutoValue_ExternalPRequestContext.class, externalPRequestContextEncoder);
        NetworkConnectionInfoEncoder networkConnectionInfoEncoder = NetworkConnectionInfoEncoder.f27849a;
        jsonDataEncoderBuilder.b(NetworkConnectionInfo.class, networkConnectionInfoEncoder);
        jsonDataEncoderBuilder.b(AutoValue_NetworkConnectionInfo.class, networkConnectionInfoEncoder);
        ExperimentIdsEncoder experimentIdsEncoder = ExperimentIdsEncoder.f27828a;
        jsonDataEncoderBuilder.b(ExperimentIds.class, experimentIdsEncoder);
        jsonDataEncoderBuilder.b(AutoValue_ExperimentIds.class, experimentIdsEncoder);
    }
}
