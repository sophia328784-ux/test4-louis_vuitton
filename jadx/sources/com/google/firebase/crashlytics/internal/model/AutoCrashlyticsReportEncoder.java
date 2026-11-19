package com.google.firebase.crashlytics.internal.model;

import com.appsflyer.sdk_base.referrer.Payload;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.ObjectEncoder;
import com.google.firebase.encoders.ObjectEncoderContext;
import com.google.firebase.encoders.config.Configurator;
import com.google.firebase.encoders.config.EncoderConfig;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes2.dex */
public final class AutoCrashlyticsReportEncoder implements Configurator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AutoCrashlyticsReportEncoder f34647a = new AutoCrashlyticsReportEncoder();

    public static final class CrashlyticsReportApplicationExitInfoBuildIdMappingForArchEncoder implements ObjectEncoder<CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportApplicationExitInfoBuildIdMappingForArchEncoder f34648a = new CrashlyticsReportApplicationExitInfoBuildIdMappingForArchEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34649b = FieldDescriptor.a("arch");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34650c = FieldDescriptor.a("libraryName");
        public static final FieldDescriptor d = FieldDescriptor.a("buildId");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch buildIdMappingForArch = (CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f34649b, buildIdMappingForArch.b());
            objectEncoderContext.e(f34650c, buildIdMappingForArch.d());
            objectEncoderContext.e(d, buildIdMappingForArch.c());
        }
    }

    public static final class CrashlyticsReportApplicationExitInfoEncoder implements ObjectEncoder<CrashlyticsReport.ApplicationExitInfo> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportApplicationExitInfoEncoder f34651a = new CrashlyticsReportApplicationExitInfoEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34652b = FieldDescriptor.a(m.q);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34653c = FieldDescriptor.a("processName");
        public static final FieldDescriptor d = FieldDescriptor.a("reasonCode");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f34654e = FieldDescriptor.a("importance");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final FieldDescriptor f34655f = FieldDescriptor.a("pss");
        public static final FieldDescriptor g = FieldDescriptor.a("rss");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final FieldDescriptor f34656h = FieldDescriptor.a("timestamp");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final FieldDescriptor f34657i = FieldDescriptor.a("traceFile");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final FieldDescriptor f34658j = FieldDescriptor.a("buildIdMappingForArch");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.ApplicationExitInfo applicationExitInfo = (CrashlyticsReport.ApplicationExitInfo) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.c(f34652b, applicationExitInfo.d());
            objectEncoderContext.e(f34653c, applicationExitInfo.e());
            objectEncoderContext.c(d, applicationExitInfo.g());
            objectEncoderContext.c(f34654e, applicationExitInfo.c());
            objectEncoderContext.b(f34655f, applicationExitInfo.f());
            objectEncoderContext.b(g, applicationExitInfo.h());
            objectEncoderContext.b(f34656h, applicationExitInfo.i());
            objectEncoderContext.e(f34657i, applicationExitInfo.j());
            objectEncoderContext.e(f34658j, applicationExitInfo.b());
        }
    }

    public static final class CrashlyticsReportCustomAttributeEncoder implements ObjectEncoder<CrashlyticsReport.CustomAttribute> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportCustomAttributeEncoder f34659a = new CrashlyticsReportCustomAttributeEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34660b = FieldDescriptor.a(ConfigurationName.KEY);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34661c = FieldDescriptor.a("value");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.CustomAttribute customAttribute = (CrashlyticsReport.CustomAttribute) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f34660b, customAttribute.b());
            objectEncoderContext.e(f34661c, customAttribute.c());
        }
    }

    public static final class CrashlyticsReportEncoder implements ObjectEncoder<CrashlyticsReport> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportEncoder f34662a = new CrashlyticsReportEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34663b = FieldDescriptor.a("sdkVersion");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34664c = FieldDescriptor.a("gmpAppId");
        public static final FieldDescriptor d = FieldDescriptor.a("platform");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f34665e = FieldDescriptor.a("installationUuid");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final FieldDescriptor f34666f = FieldDescriptor.a("firebaseInstallationId");
        public static final FieldDescriptor g = FieldDescriptor.a("firebaseAuthenticationToken");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final FieldDescriptor f34667h = FieldDescriptor.a("appQualitySessionId");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final FieldDescriptor f34668i = FieldDescriptor.a("buildVersion");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final FieldDescriptor f34669j = FieldDescriptor.a("displayVersion");

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final FieldDescriptor f34670k = FieldDescriptor.a("session");
        public static final FieldDescriptor l = FieldDescriptor.a("ndkPayload");
        public static final FieldDescriptor m = FieldDescriptor.a("appExitInfo");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport crashlyticsReport = (CrashlyticsReport) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f34663b, crashlyticsReport.l());
            objectEncoderContext.e(f34664c, crashlyticsReport.h());
            objectEncoderContext.c(d, crashlyticsReport.k());
            objectEncoderContext.e(f34665e, crashlyticsReport.i());
            objectEncoderContext.e(f34666f, crashlyticsReport.g());
            objectEncoderContext.e(g, crashlyticsReport.f());
            objectEncoderContext.e(f34667h, crashlyticsReport.c());
            objectEncoderContext.e(f34668i, crashlyticsReport.d());
            objectEncoderContext.e(f34669j, crashlyticsReport.e());
            objectEncoderContext.e(f34670k, crashlyticsReport.m());
            objectEncoderContext.e(l, crashlyticsReport.j());
            objectEncoderContext.e(m, crashlyticsReport.b());
        }
    }

    public static final class CrashlyticsReportFilesPayloadEncoder implements ObjectEncoder<CrashlyticsReport.FilesPayload> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportFilesPayloadEncoder f34671a = new CrashlyticsReportFilesPayloadEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34672b = FieldDescriptor.a("files");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34673c = FieldDescriptor.a("orgId");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.FilesPayload filesPayload = (CrashlyticsReport.FilesPayload) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f34672b, filesPayload.b());
            objectEncoderContext.e(f34673c, filesPayload.c());
        }
    }

    public static final class CrashlyticsReportFilesPayloadFileEncoder implements ObjectEncoder<CrashlyticsReport.FilesPayload.File> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportFilesPayloadFileEncoder f34674a = new CrashlyticsReportFilesPayloadFileEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34675b = FieldDescriptor.a("filename");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34676c = FieldDescriptor.a("contents");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.FilesPayload.File file = (CrashlyticsReport.FilesPayload.File) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f34675b, file.c());
            objectEncoderContext.e(f34676c, file.b());
        }
    }

    public static final class CrashlyticsReportProfilingManagerInfoEncoder implements ObjectEncoder<CrashlyticsReport.ProfilingManagerInfo> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportProfilingManagerInfoEncoder f34677a = new CrashlyticsReportProfilingManagerInfoEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34678b = FieldDescriptor.a("profilingTrigger");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ((ObjectEncoderContext) obj2).e(f34678b, ((CrashlyticsReport.ProfilingManagerInfo) obj).b());
        }
    }

    public static final class CrashlyticsReportProfilingManagerInfoProfilingTriggerEncoder implements ObjectEncoder<CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportProfilingManagerInfoProfilingTriggerEncoder f34679a = new CrashlyticsReportProfilingManagerInfoProfilingTriggerEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34680b = FieldDescriptor.a("trigger");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ((ObjectEncoderContext) obj2).c(f34680b, ((CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger) obj).b());
        }
    }

    public static final class CrashlyticsReportSessionApplicationEncoder implements ObjectEncoder<CrashlyticsReport.Session.Application> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionApplicationEncoder f34681a = new CrashlyticsReportSessionApplicationEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34682b = FieldDescriptor.a("identifier");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34683c = FieldDescriptor.a("version");
        public static final FieldDescriptor d = FieldDescriptor.a("displayVersion");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f34684e = FieldDescriptor.a("organization");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final FieldDescriptor f34685f = FieldDescriptor.a("installationUuid");
        public static final FieldDescriptor g = FieldDescriptor.a("developmentPlatform");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final FieldDescriptor f34686h = FieldDescriptor.a("developmentPlatformVersion");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.Session.Application application = (CrashlyticsReport.Session.Application) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f34682b, application.e());
            objectEncoderContext.e(f34683c, application.h());
            objectEncoderContext.e(d, application.d());
            objectEncoderContext.e(f34684e, application.g());
            objectEncoderContext.e(f34685f, application.f());
            objectEncoderContext.e(g, application.b());
            objectEncoderContext.e(f34686h, application.c());
        }
    }

    public static final class CrashlyticsReportSessionApplicationOrganizationEncoder implements ObjectEncoder<CrashlyticsReport.Session.Application.Organization> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionApplicationOrganizationEncoder f34687a = new CrashlyticsReportSessionApplicationOrganizationEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34688b = FieldDescriptor.a("clsId");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ((ObjectEncoderContext) obj2).e(f34688b, ((CrashlyticsReport.Session.Application.Organization) obj).a());
        }
    }

    public static final class CrashlyticsReportSessionDeviceEncoder implements ObjectEncoder<CrashlyticsReport.Session.Device> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionDeviceEncoder f34689a = new CrashlyticsReportSessionDeviceEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34690b = FieldDescriptor.a("arch");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34691c = FieldDescriptor.a("model");
        public static final FieldDescriptor d = FieldDescriptor.a("cores");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f34692e = FieldDescriptor.a("ram");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final FieldDescriptor f34693f = FieldDescriptor.a("diskSpace");
        public static final FieldDescriptor g = FieldDescriptor.a("simulator");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final FieldDescriptor f34694h = FieldDescriptor.a("state");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final FieldDescriptor f34695i = FieldDescriptor.a("manufacturer");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final FieldDescriptor f34696j = FieldDescriptor.a("modelClass");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.Session.Device device = (CrashlyticsReport.Session.Device) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.c(f34690b, device.b());
            objectEncoderContext.e(f34691c, device.f());
            objectEncoderContext.c(d, device.c());
            objectEncoderContext.b(f34692e, device.h());
            objectEncoderContext.b(f34693f, device.d());
            objectEncoderContext.a(g, device.j());
            objectEncoderContext.c(f34694h, device.i());
            objectEncoderContext.e(f34695i, device.e());
            objectEncoderContext.e(f34696j, device.g());
        }
    }

    public static final class CrashlyticsReportSessionEncoder implements ObjectEncoder<CrashlyticsReport.Session> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionEncoder f34697a = new CrashlyticsReportSessionEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34698b = FieldDescriptor.a("generator");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34699c = FieldDescriptor.a("identifier");
        public static final FieldDescriptor d = FieldDescriptor.a("appQualitySessionId");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f34700e = FieldDescriptor.a("startedAt");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final FieldDescriptor f34701f = FieldDescriptor.a("endedAt");
        public static final FieldDescriptor g = FieldDescriptor.a("crashed");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final FieldDescriptor f34702h = FieldDescriptor.a(Payload.TYPE_APP);

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final FieldDescriptor f34703i = FieldDescriptor.a("user");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final FieldDescriptor f34704j = FieldDescriptor.a("os");

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final FieldDescriptor f34705k = FieldDescriptor.a("device");
        public static final FieldDescriptor l = FieldDescriptor.a(DbParams.TABLE_EVENTS);
        public static final FieldDescriptor m = FieldDescriptor.a("generatorType");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.Session session = (CrashlyticsReport.Session) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f34698b, session.g());
            objectEncoderContext.e(f34699c, session.i().getBytes(CrashlyticsReport.f34993a));
            objectEncoderContext.e(d, session.c());
            objectEncoderContext.b(f34700e, session.k());
            objectEncoderContext.e(f34701f, session.e());
            objectEncoderContext.a(g, session.m());
            objectEncoderContext.e(f34702h, session.b());
            objectEncoderContext.e(f34703i, session.l());
            objectEncoderContext.e(f34704j, session.j());
            objectEncoderContext.e(f34705k, session.d());
            objectEncoderContext.e(l, session.f());
            objectEncoderContext.c(m, session.h());
        }
    }

    public static final class CrashlyticsReportSessionEventApplicationEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.Application> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionEventApplicationEncoder f34706a = new CrashlyticsReportSessionEventApplicationEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34707b = FieldDescriptor.a("execution");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34708c = FieldDescriptor.a("customAttributes");
        public static final FieldDescriptor d = FieldDescriptor.a("internalKeys");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f34709e = FieldDescriptor.a("background");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final FieldDescriptor f34710f = FieldDescriptor.a("currentProcessDetails");
        public static final FieldDescriptor g = FieldDescriptor.a("appProcessDetails");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final FieldDescriptor f34711h = FieldDescriptor.a("uiOrientation");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.Session.Event.Application application = (CrashlyticsReport.Session.Event.Application) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f34707b, application.f());
            objectEncoderContext.e(f34708c, application.e());
            objectEncoderContext.e(d, application.g());
            objectEncoderContext.e(f34709e, application.c());
            objectEncoderContext.e(f34710f, application.d());
            objectEncoderContext.e(g, application.b());
            objectEncoderContext.c(f34711h, application.h());
        }
    }

    public static final class CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.Application.Execution.BinaryImage> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder f34712a = new CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34713b = FieldDescriptor.a("baseAddress");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34714c = FieldDescriptor.a("size");
        public static final FieldDescriptor d = FieldDescriptor.a("name");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f34715e = FieldDescriptor.a("uuid");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.Session.Event.Application.Execution.BinaryImage binaryImage = (CrashlyticsReport.Session.Event.Application.Execution.BinaryImage) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.b(f34713b, binaryImage.b());
            objectEncoderContext.b(f34714c, binaryImage.d());
            objectEncoderContext.e(d, binaryImage.c());
            String strE = binaryImage.e();
            objectEncoderContext.e(f34715e, strE != null ? strE.getBytes(CrashlyticsReport.f34993a) : null);
        }
    }

    public static final class CrashlyticsReportSessionEventApplicationExecutionEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.Application.Execution> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionEventApplicationExecutionEncoder f34716a = new CrashlyticsReportSessionEventApplicationExecutionEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34717b = FieldDescriptor.a("threads");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34718c = FieldDescriptor.a(MvelScriptManager.VAR_EXCEPTION);
        public static final FieldDescriptor d = FieldDescriptor.a("appExitInfo");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f34719e = FieldDescriptor.a("profilingManagerInfo");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final FieldDescriptor f34720f = FieldDescriptor.a(m.u);
        public static final FieldDescriptor g = FieldDescriptor.a("binaries");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.Session.Event.Application.Execution execution = (CrashlyticsReport.Session.Event.Application.Execution) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f34717b, execution.g());
            objectEncoderContext.e(f34718c, execution.d());
            objectEncoderContext.e(d, execution.b());
            objectEncoderContext.e(f34719e, execution.e());
            objectEncoderContext.e(f34720f, execution.f());
            objectEncoderContext.e(g, execution.c());
        }
    }

    public static final class CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.Application.Execution.Exception> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder f34721a = new CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34722b = FieldDescriptor.a("type");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34723c = FieldDescriptor.a("reason");
        public static final FieldDescriptor d = FieldDescriptor.a("frames");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f34724e = FieldDescriptor.a("causedBy");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final FieldDescriptor f34725f = FieldDescriptor.a("overflowCount");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.Session.Event.Application.Execution.Exception exception = (CrashlyticsReport.Session.Event.Application.Execution.Exception) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f34722b, exception.f());
            objectEncoderContext.e(f34723c, exception.e());
            objectEncoderContext.e(d, exception.c());
            objectEncoderContext.e(f34724e, exception.b());
            objectEncoderContext.c(f34725f, exception.d());
        }
    }

    public static final class CrashlyticsReportSessionEventApplicationExecutionSignalEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.Application.Execution.Signal> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionEventApplicationExecutionSignalEncoder f34726a = new CrashlyticsReportSessionEventApplicationExecutionSignalEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34727b = FieldDescriptor.a("name");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34728c = FieldDescriptor.a(m.v);
        public static final FieldDescriptor d = FieldDescriptor.a("address");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.Session.Event.Application.Execution.Signal signal = (CrashlyticsReport.Session.Event.Application.Execution.Signal) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f34727b, signal.d());
            objectEncoderContext.e(f34728c, signal.c());
            objectEncoderContext.b(d, signal.b());
        }
    }

    public static final class CrashlyticsReportSessionEventApplicationExecutionThreadEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.Application.Execution.Thread> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionEventApplicationExecutionThreadEncoder f34729a = new CrashlyticsReportSessionEventApplicationExecutionThreadEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34730b = FieldDescriptor.a("name");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34731c = FieldDescriptor.a("importance");
        public static final FieldDescriptor d = FieldDescriptor.a("frames");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.Session.Event.Application.Execution.Thread thread = (CrashlyticsReport.Session.Event.Application.Execution.Thread) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f34730b, thread.d());
            objectEncoderContext.c(f34731c, thread.c());
            objectEncoderContext.e(d, thread.b());
        }
    }

    public static final class CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder f34732a = new CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34733b = FieldDescriptor.a("pc");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34734c = FieldDescriptor.a("symbol");
        public static final FieldDescriptor d = FieldDescriptor.a("file");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f34735e = FieldDescriptor.a("offset");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final FieldDescriptor f34736f = FieldDescriptor.a("importance");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame frame = (CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.b(f34733b, frame.e());
            objectEncoderContext.e(f34734c, frame.f());
            objectEncoderContext.e(d, frame.b());
            objectEncoderContext.b(f34735e, frame.d());
            objectEncoderContext.c(f34736f, frame.c());
        }
    }

    public static final class CrashlyticsReportSessionEventApplicationProcessDetailsEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.Application.ProcessDetails> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionEventApplicationProcessDetailsEncoder f34737a = new CrashlyticsReportSessionEventApplicationProcessDetailsEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34738b = FieldDescriptor.a("processName");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34739c = FieldDescriptor.a(m.q);
        public static final FieldDescriptor d = FieldDescriptor.a("importance");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f34740e = FieldDescriptor.a("defaultProcess");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.Session.Event.Application.ProcessDetails processDetails = (CrashlyticsReport.Session.Event.Application.ProcessDetails) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f34738b, processDetails.d());
            objectEncoderContext.c(f34739c, processDetails.c());
            objectEncoderContext.c(d, processDetails.b());
            objectEncoderContext.a(f34740e, processDetails.e());
        }
    }

    public static final class CrashlyticsReportSessionEventDeviceEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.Device> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionEventDeviceEncoder f34741a = new CrashlyticsReportSessionEventDeviceEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34742b = FieldDescriptor.a("batteryLevel");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34743c = FieldDescriptor.a("batteryVelocity");
        public static final FieldDescriptor d = FieldDescriptor.a("proximityOn");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f34744e = FieldDescriptor.a("orientation");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final FieldDescriptor f34745f = FieldDescriptor.a("ramUsed");
        public static final FieldDescriptor g = FieldDescriptor.a("diskUsed");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.Session.Event.Device device = (CrashlyticsReport.Session.Event.Device) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f34742b, device.b());
            objectEncoderContext.c(f34743c, device.c());
            objectEncoderContext.a(d, device.g());
            objectEncoderContext.c(f34744e, device.e());
            objectEncoderContext.b(f34745f, device.f());
            objectEncoderContext.b(g, device.d());
        }
    }

    public static final class CrashlyticsReportSessionEventEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionEventEncoder f34746a = new CrashlyticsReportSessionEventEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34747b = FieldDescriptor.a("timestamp");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34748c = FieldDescriptor.a("type");
        public static final FieldDescriptor d = FieldDescriptor.a(Payload.TYPE_APP);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f34749e = FieldDescriptor.a("device");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final FieldDescriptor f34750f = FieldDescriptor.a("log");
        public static final FieldDescriptor g = FieldDescriptor.a("rollouts");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.Session.Event event = (CrashlyticsReport.Session.Event) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.b(f34747b, event.f());
            objectEncoderContext.e(f34748c, event.g());
            objectEncoderContext.e(d, event.b());
            objectEncoderContext.e(f34749e, event.c());
            objectEncoderContext.e(f34750f, event.d());
            objectEncoderContext.e(g, event.e());
        }
    }

    public static final class CrashlyticsReportSessionEventLogEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.Log> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionEventLogEncoder f34751a = new CrashlyticsReportSessionEventLogEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34752b = FieldDescriptor.a("content");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ((ObjectEncoderContext) obj2).e(f34752b, ((CrashlyticsReport.Session.Event.Log) obj).b());
        }
    }

    public static final class CrashlyticsReportSessionEventRolloutAssignmentEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.RolloutAssignment> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionEventRolloutAssignmentEncoder f34753a = new CrashlyticsReportSessionEventRolloutAssignmentEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34754b = FieldDescriptor.a("rolloutVariant");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34755c = FieldDescriptor.a("parameterKey");
        public static final FieldDescriptor d = FieldDescriptor.a("parameterValue");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f34756e = FieldDescriptor.a("templateVersion");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.Session.Event.RolloutAssignment rolloutAssignment = (CrashlyticsReport.Session.Event.RolloutAssignment) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f34754b, rolloutAssignment.d());
            objectEncoderContext.e(f34755c, rolloutAssignment.b());
            objectEncoderContext.e(d, rolloutAssignment.c());
            objectEncoderContext.b(f34756e, rolloutAssignment.e());
        }
    }

    public static final class CrashlyticsReportSessionEventRolloutAssignmentRolloutVariantEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionEventRolloutAssignmentRolloutVariantEncoder f34757a = new CrashlyticsReportSessionEventRolloutAssignmentRolloutVariantEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34758b = FieldDescriptor.a("rolloutId");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34759c = FieldDescriptor.a("variantId");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant rolloutVariant = (CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.e(f34758b, rolloutVariant.b());
            objectEncoderContext.e(f34759c, rolloutVariant.c());
        }
    }

    public static final class CrashlyticsReportSessionEventRolloutsStateEncoder implements ObjectEncoder<CrashlyticsReport.Session.Event.RolloutsState> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionEventRolloutsStateEncoder f34760a = new CrashlyticsReportSessionEventRolloutsStateEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34761b = FieldDescriptor.a("assignments");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ((ObjectEncoderContext) obj2).e(f34761b, ((CrashlyticsReport.Session.Event.RolloutsState) obj).b());
        }
    }

    public static final class CrashlyticsReportSessionOperatingSystemEncoder implements ObjectEncoder<CrashlyticsReport.Session.OperatingSystem> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionOperatingSystemEncoder f34762a = new CrashlyticsReportSessionOperatingSystemEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34763b = FieldDescriptor.a("platform");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final FieldDescriptor f34764c = FieldDescriptor.a("version");
        public static final FieldDescriptor d = FieldDescriptor.a("buildVersion");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final FieldDescriptor f34765e = FieldDescriptor.a("jailbroken");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            CrashlyticsReport.Session.OperatingSystem operatingSystem = (CrashlyticsReport.Session.OperatingSystem) obj;
            ObjectEncoderContext objectEncoderContext = (ObjectEncoderContext) obj2;
            objectEncoderContext.c(f34763b, operatingSystem.c());
            objectEncoderContext.e(f34764c, operatingSystem.d());
            objectEncoderContext.e(d, operatingSystem.b());
            objectEncoderContext.a(f34765e, operatingSystem.e());
        }
    }

    public static final class CrashlyticsReportSessionUserEncoder implements ObjectEncoder<CrashlyticsReport.Session.User> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final CrashlyticsReportSessionUserEncoder f34766a = new CrashlyticsReportSessionUserEncoder();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final FieldDescriptor f34767b = FieldDescriptor.a("identifier");

        @Override // com.google.firebase.encoders.ObjectEncoder
        public final void a(Object obj, Object obj2) {
            ((ObjectEncoderContext) obj2).e(f34767b, ((CrashlyticsReport.Session.User) obj).b());
        }
    }

    public final void a(EncoderConfig encoderConfig) {
        CrashlyticsReportEncoder crashlyticsReportEncoder = CrashlyticsReportEncoder.f34662a;
        JsonDataEncoderBuilder jsonDataEncoderBuilder = (JsonDataEncoderBuilder) encoderConfig;
        jsonDataEncoderBuilder.b(CrashlyticsReport.class, crashlyticsReportEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport.class, crashlyticsReportEncoder);
        CrashlyticsReportSessionEncoder crashlyticsReportSessionEncoder = CrashlyticsReportSessionEncoder.f34697a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.class, crashlyticsReportSessionEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session.class, crashlyticsReportSessionEncoder);
        CrashlyticsReportSessionApplicationEncoder crashlyticsReportSessionApplicationEncoder = CrashlyticsReportSessionApplicationEncoder.f34681a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.Application.class, crashlyticsReportSessionApplicationEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_Application.class, crashlyticsReportSessionApplicationEncoder);
        CrashlyticsReportSessionApplicationOrganizationEncoder crashlyticsReportSessionApplicationOrganizationEncoder = CrashlyticsReportSessionApplicationOrganizationEncoder.f34687a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.Application.Organization.class, crashlyticsReportSessionApplicationOrganizationEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_Application_Organization.class, crashlyticsReportSessionApplicationOrganizationEncoder);
        CrashlyticsReportSessionUserEncoder crashlyticsReportSessionUserEncoder = CrashlyticsReportSessionUserEncoder.f34766a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.User.class, crashlyticsReportSessionUserEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_User.class, crashlyticsReportSessionUserEncoder);
        CrashlyticsReportSessionOperatingSystemEncoder crashlyticsReportSessionOperatingSystemEncoder = CrashlyticsReportSessionOperatingSystemEncoder.f34762a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.OperatingSystem.class, crashlyticsReportSessionOperatingSystemEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_OperatingSystem.class, crashlyticsReportSessionOperatingSystemEncoder);
        CrashlyticsReportSessionDeviceEncoder crashlyticsReportSessionDeviceEncoder = CrashlyticsReportSessionDeviceEncoder.f34689a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.Device.class, crashlyticsReportSessionDeviceEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_Device.class, crashlyticsReportSessionDeviceEncoder);
        CrashlyticsReportSessionEventEncoder crashlyticsReportSessionEventEncoder = CrashlyticsReportSessionEventEncoder.f34746a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.Event.class, crashlyticsReportSessionEventEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_Event.class, crashlyticsReportSessionEventEncoder);
        CrashlyticsReportSessionEventApplicationEncoder crashlyticsReportSessionEventApplicationEncoder = CrashlyticsReportSessionEventApplicationEncoder.f34706a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.Event.Application.class, crashlyticsReportSessionEventApplicationEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_Event_Application.class, crashlyticsReportSessionEventApplicationEncoder);
        CrashlyticsReportSessionEventApplicationExecutionEncoder crashlyticsReportSessionEventApplicationExecutionEncoder = CrashlyticsReportSessionEventApplicationExecutionEncoder.f34716a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.Event.Application.Execution.class, crashlyticsReportSessionEventApplicationExecutionEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_Event_Application_Execution.class, crashlyticsReportSessionEventApplicationExecutionEncoder);
        CrashlyticsReportSessionEventApplicationExecutionThreadEncoder crashlyticsReportSessionEventApplicationExecutionThreadEncoder = CrashlyticsReportSessionEventApplicationExecutionThreadEncoder.f34729a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.Event.Application.Execution.Thread.class, crashlyticsReportSessionEventApplicationExecutionThreadEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread.class, crashlyticsReportSessionEventApplicationExecutionThreadEncoder);
        CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder crashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder = CrashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder.f34732a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.Event.Application.Execution.Thread.Frame.class, crashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame.class, crashlyticsReportSessionEventApplicationExecutionThreadFrameEncoder);
        CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder crashlyticsReportSessionEventApplicationExecutionExceptionEncoder = CrashlyticsReportSessionEventApplicationExecutionExceptionEncoder.f34721a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.Event.Application.Execution.Exception.class, crashlyticsReportSessionEventApplicationExecutionExceptionEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception.class, crashlyticsReportSessionEventApplicationExecutionExceptionEncoder);
        CrashlyticsReportApplicationExitInfoEncoder crashlyticsReportApplicationExitInfoEncoder = CrashlyticsReportApplicationExitInfoEncoder.f34651a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.ApplicationExitInfo.class, crashlyticsReportApplicationExitInfoEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_ApplicationExitInfo.class, crashlyticsReportApplicationExitInfoEncoder);
        CrashlyticsReportApplicationExitInfoBuildIdMappingForArchEncoder crashlyticsReportApplicationExitInfoBuildIdMappingForArchEncoder = CrashlyticsReportApplicationExitInfoBuildIdMappingForArchEncoder.f34648a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.ApplicationExitInfo.BuildIdMappingForArch.class, crashlyticsReportApplicationExitInfoBuildIdMappingForArchEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_ApplicationExitInfo_BuildIdMappingForArch.class, crashlyticsReportApplicationExitInfoBuildIdMappingForArchEncoder);
        CrashlyticsReportProfilingManagerInfoEncoder crashlyticsReportProfilingManagerInfoEncoder = CrashlyticsReportProfilingManagerInfoEncoder.f34677a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.ProfilingManagerInfo.class, crashlyticsReportProfilingManagerInfoEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_ProfilingManagerInfo.class, crashlyticsReportProfilingManagerInfoEncoder);
        CrashlyticsReportProfilingManagerInfoProfilingTriggerEncoder crashlyticsReportProfilingManagerInfoProfilingTriggerEncoder = CrashlyticsReportProfilingManagerInfoProfilingTriggerEncoder.f34679a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.ProfilingManagerInfo.ProfilingTrigger.class, crashlyticsReportProfilingManagerInfoProfilingTriggerEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_ProfilingManagerInfo_ProfilingTrigger.class, crashlyticsReportProfilingManagerInfoProfilingTriggerEncoder);
        CrashlyticsReportSessionEventApplicationExecutionSignalEncoder crashlyticsReportSessionEventApplicationExecutionSignalEncoder = CrashlyticsReportSessionEventApplicationExecutionSignalEncoder.f34726a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.Event.Application.Execution.Signal.class, crashlyticsReportSessionEventApplicationExecutionSignalEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal.class, crashlyticsReportSessionEventApplicationExecutionSignalEncoder);
        CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder crashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder = CrashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder.f34712a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.Event.Application.Execution.BinaryImage.class, crashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage.class, crashlyticsReportSessionEventApplicationExecutionBinaryImageEncoder);
        CrashlyticsReportCustomAttributeEncoder crashlyticsReportCustomAttributeEncoder = CrashlyticsReportCustomAttributeEncoder.f34659a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.CustomAttribute.class, crashlyticsReportCustomAttributeEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_CustomAttribute.class, crashlyticsReportCustomAttributeEncoder);
        CrashlyticsReportSessionEventApplicationProcessDetailsEncoder crashlyticsReportSessionEventApplicationProcessDetailsEncoder = CrashlyticsReportSessionEventApplicationProcessDetailsEncoder.f34737a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.Event.Application.ProcessDetails.class, crashlyticsReportSessionEventApplicationProcessDetailsEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_Event_Application_ProcessDetails.class, crashlyticsReportSessionEventApplicationProcessDetailsEncoder);
        CrashlyticsReportSessionEventDeviceEncoder crashlyticsReportSessionEventDeviceEncoder = CrashlyticsReportSessionEventDeviceEncoder.f34741a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.Event.Device.class, crashlyticsReportSessionEventDeviceEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_Event_Device.class, crashlyticsReportSessionEventDeviceEncoder);
        CrashlyticsReportSessionEventLogEncoder crashlyticsReportSessionEventLogEncoder = CrashlyticsReportSessionEventLogEncoder.f34751a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.Event.Log.class, crashlyticsReportSessionEventLogEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_Event_Log.class, crashlyticsReportSessionEventLogEncoder);
        CrashlyticsReportSessionEventRolloutsStateEncoder crashlyticsReportSessionEventRolloutsStateEncoder = CrashlyticsReportSessionEventRolloutsStateEncoder.f34760a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.Event.RolloutsState.class, crashlyticsReportSessionEventRolloutsStateEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_Event_RolloutsState.class, crashlyticsReportSessionEventRolloutsStateEncoder);
        CrashlyticsReportSessionEventRolloutAssignmentEncoder crashlyticsReportSessionEventRolloutAssignmentEncoder = CrashlyticsReportSessionEventRolloutAssignmentEncoder.f34753a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.Event.RolloutAssignment.class, crashlyticsReportSessionEventRolloutAssignmentEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_Event_RolloutAssignment.class, crashlyticsReportSessionEventRolloutAssignmentEncoder);
        CrashlyticsReportSessionEventRolloutAssignmentRolloutVariantEncoder crashlyticsReportSessionEventRolloutAssignmentRolloutVariantEncoder = CrashlyticsReportSessionEventRolloutAssignmentRolloutVariantEncoder.f34757a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.Session.Event.RolloutAssignment.RolloutVariant.class, crashlyticsReportSessionEventRolloutAssignmentRolloutVariantEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_Session_Event_RolloutAssignment_RolloutVariant.class, crashlyticsReportSessionEventRolloutAssignmentRolloutVariantEncoder);
        CrashlyticsReportFilesPayloadEncoder crashlyticsReportFilesPayloadEncoder = CrashlyticsReportFilesPayloadEncoder.f34671a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.FilesPayload.class, crashlyticsReportFilesPayloadEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_FilesPayload.class, crashlyticsReportFilesPayloadEncoder);
        CrashlyticsReportFilesPayloadFileEncoder crashlyticsReportFilesPayloadFileEncoder = CrashlyticsReportFilesPayloadFileEncoder.f34674a;
        jsonDataEncoderBuilder.b(CrashlyticsReport.FilesPayload.File.class, crashlyticsReportFilesPayloadFileEncoder);
        jsonDataEncoderBuilder.b(AutoValue_CrashlyticsReport_FilesPayload_File.class, crashlyticsReportFilesPayloadFileEncoder);
    }
}
