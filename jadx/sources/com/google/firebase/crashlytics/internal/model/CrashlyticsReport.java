package com.google.firebase.crashlytics.internal.model;

import com.google.firebase.encoders.annotations.Encodable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.charset.Charset;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Encodable
public abstract class CrashlyticsReport {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Charset f34993a = Charset.forName("UTF-8");

    public static abstract class ApplicationExitInfo {

        public static abstract class BuildIdMappingForArch {

            public static abstract class Builder {
                public abstract BuildIdMappingForArch a();

                public abstract Builder b(String str);

                public abstract Builder c(String str);

                public abstract Builder d(String str);
            }

            public static Builder a() {
                return new AutoValue_CrashlyticsReport_ApplicationExitInfo_BuildIdMappingForArch.Builder();
            }

            public abstract String b();

            public abstract String c();

            public abstract String d();
        }

        public static abstract class Builder {
            public abstract ApplicationExitInfo a();

            public abstract Builder b(List list);

            public abstract Builder c(int i2);

            public abstract Builder d(int i2);

            public abstract Builder e(String str);

            public abstract Builder f(long j2);

            public abstract Builder g(int i2);

            public abstract Builder h(long j2);

            public abstract Builder i(long j2);

            public abstract Builder j(String str);
        }

        public static Builder a() {
            return new AutoValue_CrashlyticsReport_ApplicationExitInfo.Builder();
        }

        public abstract List b();

        public abstract int c();

        public abstract int d();

        public abstract String e();

        public abstract long f();

        public abstract int g();

        public abstract long h();

        public abstract long i();

        public abstract String j();
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Architecture {
    }

    public static abstract class Builder {
        public abstract CrashlyticsReport a();

        public abstract Builder b(ApplicationExitInfo applicationExitInfo);

        public abstract Builder c(String str);

        public abstract Builder d(String str);

        public abstract Builder e(String str);

        public abstract Builder f(String str);

        public abstract Builder g(String str);

        public abstract Builder h(String str);

        public abstract Builder i(String str);

        public abstract Builder j(FilesPayload filesPayload);

        public abstract Builder k(int i2);

        public abstract Builder l(String str);

        public abstract Builder m(Session session);
    }

    public static abstract class CustomAttribute {

        public static abstract class Builder {
            public abstract CustomAttribute a();

            public abstract Builder b(String str);

            public abstract Builder c(String str);
        }

        public static Builder a() {
            return new AutoValue_CrashlyticsReport_CustomAttribute.Builder();
        }

        public abstract String b();

        public abstract String c();
    }

    public static abstract class FilesPayload {

        public static abstract class Builder {
            public abstract FilesPayload a();

            public abstract Builder b(List list);

            public abstract Builder c(String str);
        }

        public static abstract class File {

            public static abstract class Builder {
                public abstract File a();

                public abstract Builder b(byte[] bArr);

                public abstract Builder c(String str);
            }

            public static Builder a() {
                return new AutoValue_CrashlyticsReport_FilesPayload_File.Builder();
            }

            public abstract byte[] b();

            public abstract String c();
        }

        public static Builder a() {
            return new AutoValue_CrashlyticsReport_FilesPayload.Builder();
        }

        public abstract List b();

        public abstract String c();
    }

    public static abstract class ProfilingManagerInfo {

        public static abstract class Builder {
            public abstract ProfilingManagerInfo a();

            public abstract Builder b(ProfilingTrigger profilingTrigger);
        }

        public static abstract class ProfilingTrigger {

            public static abstract class Builder {
                public abstract ProfilingTrigger a();

                public abstract Builder b(int i2);
            }

            public static Builder a() {
                return new AutoValue_CrashlyticsReport_ProfilingManagerInfo_ProfilingTrigger.Builder();
            }

            public abstract int b();
        }

        public static Builder a() {
            return new AutoValue_CrashlyticsReport_ProfilingManagerInfo.Builder();
        }

        public abstract ProfilingTrigger b();
    }

    public static abstract class Session {

        public static abstract class Application {

            public static abstract class Builder {
                public abstract Application a();

                public abstract Builder b(String str);

                public abstract Builder c(String str);

                public abstract Builder d(String str);

                public abstract Builder e(String str);

                public abstract Builder f(String str);

                public abstract Builder g(String str);
            }

            public static abstract class Organization {
                public abstract String a();
            }

            public static Builder a() {
                return new AutoValue_CrashlyticsReport_Session_Application.Builder();
            }

            public abstract String b();

            public abstract String c();

            public abstract String d();

            public abstract String e();

            public abstract String f();

            public abstract Organization g();

            public abstract String h();
        }

        public static abstract class Builder {
            public abstract Session a();

            public abstract Builder b(Application application);

            public abstract Builder c(String str);

            public abstract Builder d(boolean z);

            public abstract Builder e(Device device);

            public abstract Builder f(Long l);

            public abstract Builder g(List list);

            public abstract Builder h(String str);

            public abstract Builder i(int i2);

            public abstract Builder j(String str);

            public abstract Builder k(OperatingSystem operatingSystem);

            public abstract Builder l(long j2);

            public abstract Builder m(User user);
        }

        public static abstract class Device {

            public static abstract class Builder {
                public abstract Device a();

                public abstract Builder b(int i2);

                public abstract Builder c(int i2);

                public abstract Builder d(long j2);

                public abstract Builder e(String str);

                public abstract Builder f(String str);

                public abstract Builder g(String str);

                public abstract Builder h(long j2);

                public abstract Builder i(boolean z);

                public abstract Builder j(int i2);
            }

            public static Builder a() {
                return new AutoValue_CrashlyticsReport_Session_Device.Builder();
            }

            public abstract int b();

            public abstract int c();

            public abstract long d();

            public abstract String e();

            public abstract String f();

            public abstract String g();

            public abstract long h();

            public abstract int i();

            public abstract boolean j();
        }

        public static abstract class Event {

            public static abstract class Application {

                public static abstract class Builder {
                    public abstract Application a();

                    public abstract Builder b(List list);

                    public abstract Builder c(Boolean bool);

                    public abstract Builder d(ProcessDetails processDetails);

                    public abstract Builder e(List list);

                    public abstract Builder f(Execution execution);

                    public abstract Builder g(List list);

                    public abstract Builder h(int i2);
                }

                public static abstract class Execution {

                    public static abstract class BinaryImage {

                        public static abstract class Builder {
                            public abstract BinaryImage a();

                            public abstract Builder b(long j2);

                            public abstract Builder c(String str);

                            public abstract Builder d(long j2);

                            public abstract Builder e(String str);
                        }

                        public static Builder a() {
                            return new AutoValue_CrashlyticsReport_Session_Event_Application_Execution_BinaryImage.Builder();
                        }

                        public abstract long b();

                        public abstract String c();

                        public abstract long d();

                        public abstract String e();
                    }

                    public static abstract class Builder {
                        public abstract Execution a();

                        public abstract Builder b(ApplicationExitInfo applicationExitInfo);

                        public abstract Builder c(List list);

                        public abstract Builder d(Exception exception);

                        public abstract Builder e(ProfilingManagerInfo profilingManagerInfo);

                        public abstract Builder f(Signal signal);

                        public abstract Builder g(List list);
                    }

                    public static abstract class Exception {

                        public static abstract class Builder {
                            public abstract Exception a();

                            public abstract Builder b(Exception exception);

                            public abstract Builder c(List list);

                            public abstract Builder d(int i2);

                            public abstract Builder e(String str);

                            public abstract Builder f(String str);
                        }

                        public static Builder a() {
                            return new AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception.Builder();
                        }

                        public abstract Exception b();

                        public abstract List c();

                        public abstract int d();

                        public abstract String e();

                        public abstract String f();
                    }

                    public static abstract class Signal {

                        public static abstract class Builder {
                            public abstract Signal a();

                            public abstract Builder b(long j2);

                            public abstract Builder c(String str);

                            public abstract Builder d(String str);
                        }

                        public static Builder a() {
                            return new AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Signal.Builder();
                        }

                        public abstract long b();

                        public abstract String c();

                        public abstract String d();
                    }

                    public static abstract class Thread {

                        public static abstract class Builder {
                            public abstract Thread a();

                            public abstract Builder b(List list);

                            public abstract Builder c(int i2);

                            public abstract Builder d(String str);
                        }

                        public static abstract class Frame {

                            public static abstract class Builder {
                                public abstract Frame a();

                                public abstract Builder b(String str);

                                public abstract Builder c(int i2);

                                public abstract Builder d(long j2);

                                public abstract Builder e(long j2);

                                public abstract Builder f(String str);
                            }

                            public static Builder a() {
                                return new AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread_Frame.Builder();
                            }

                            public abstract String b();

                            public abstract int c();

                            public abstract long d();

                            public abstract long e();

                            public abstract String f();
                        }

                        public static Builder a() {
                            return new AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread.Builder();
                        }

                        public abstract List b();

                        public abstract int c();

                        public abstract String d();
                    }

                    public static Builder a() {
                        return new AutoValue_CrashlyticsReport_Session_Event_Application_Execution.Builder();
                    }

                    public abstract ApplicationExitInfo b();

                    public abstract List c();

                    public abstract Exception d();

                    public abstract ProfilingManagerInfo e();

                    public abstract Signal f();

                    public abstract List g();

                    public abstract Builder h();
                }

                public static abstract class ProcessDetails {

                    public static abstract class Builder {
                        public abstract ProcessDetails a();

                        public abstract Builder b(boolean z);

                        public abstract Builder c(int i2);

                        public abstract Builder d(int i2);

                        public abstract Builder e(String str);
                    }

                    public static Builder a() {
                        return new AutoValue_CrashlyticsReport_Session_Event_Application_ProcessDetails.Builder();
                    }

                    public abstract int b();

                    public abstract int c();

                    public abstract String d();

                    public abstract boolean e();
                }

                public static Builder a() {
                    return new AutoValue_CrashlyticsReport_Session_Event_Application.Builder();
                }

                public abstract List b();

                public abstract Boolean c();

                public abstract ProcessDetails d();

                public abstract List e();

                public abstract Execution f();

                public abstract List g();

                public abstract int h();

                public abstract Builder i();
            }

            public static abstract class Builder {
                public abstract Event a();

                public abstract Builder b(Application application);

                public abstract Builder c(Device device);

                public abstract Builder d(Log log);

                public abstract Builder e(RolloutsState rolloutsState);

                public abstract Builder f(long j2);

                public abstract Builder g(String str);
            }

            public static abstract class Device {

                public static abstract class Builder {
                    public abstract Device a();

                    public abstract Builder b(Double d);

                    public abstract Builder c(int i2);

                    public abstract Builder d(long j2);

                    public abstract Builder e(int i2);

                    public abstract Builder f(boolean z);

                    public abstract Builder g(long j2);
                }

                public static Builder a() {
                    return new AutoValue_CrashlyticsReport_Session_Event_Device.Builder();
                }

                public abstract Double b();

                public abstract int c();

                public abstract long d();

                public abstract int e();

                public abstract long f();

                public abstract boolean g();
            }

            public static abstract class Log {

                public static abstract class Builder {
                    public abstract Log a();

                    public abstract Builder b(String str);
                }

                public static Builder a() {
                    return new AutoValue_CrashlyticsReport_Session_Event_Log.Builder();
                }

                public abstract String b();
            }

            public static abstract class RolloutAssignment {

                public static abstract class Builder {
                    public abstract RolloutAssignment a();

                    public abstract Builder b(String str);

                    public abstract Builder c(String str);

                    public abstract Builder d(RolloutVariant rolloutVariant);

                    public abstract Builder e(long j2);
                }

                public static abstract class RolloutVariant {

                    public static abstract class Builder {
                        public abstract RolloutVariant a();

                        public abstract Builder b(String str);

                        public abstract Builder c(String str);
                    }

                    public static Builder a() {
                        return new AutoValue_CrashlyticsReport_Session_Event_RolloutAssignment_RolloutVariant.Builder();
                    }

                    public abstract String b();

                    public abstract String c();
                }

                public static Builder a() {
                    return new AutoValue_CrashlyticsReport_Session_Event_RolloutAssignment.Builder();
                }

                public abstract String b();

                public abstract String c();

                public abstract RolloutVariant d();

                public abstract long e();
            }

            public static abstract class RolloutsState {

                public static abstract class Builder {
                    public abstract RolloutsState a();

                    public abstract Builder b(List list);
                }

                public static Builder a() {
                    return new AutoValue_CrashlyticsReport_Session_Event_RolloutsState.Builder();
                }

                public abstract List b();
            }

            public static Builder a() {
                return new AutoValue_CrashlyticsReport_Session_Event.Builder();
            }

            public abstract Application b();

            public abstract Device c();

            public abstract Log d();

            public abstract RolloutsState e();

            public abstract long f();

            public abstract String g();

            public abstract Builder h();
        }

        public static abstract class OperatingSystem {

            public static abstract class Builder {
                public abstract OperatingSystem a();

                public abstract Builder b(String str);

                public abstract Builder c(boolean z);

                public abstract Builder d(int i2);

                public abstract Builder e(String str);
            }

            public static Builder a() {
                return new AutoValue_CrashlyticsReport_Session_OperatingSystem.Builder();
            }

            public abstract String b();

            public abstract int c();

            public abstract String d();

            public abstract boolean e();
        }

        public static abstract class User {

            public static abstract class Builder {
                public abstract User a();

                public abstract Builder b(String str);
            }

            public static Builder a() {
                return new AutoValue_CrashlyticsReport_Session_User.Builder();
            }

            public abstract String b();
        }

        public static Builder a() {
            AutoValue_CrashlyticsReport_Session.Builder builder = new AutoValue_CrashlyticsReport_Session.Builder();
            builder.d(false);
            return builder;
        }

        public abstract Application b();

        public abstract String c();

        public abstract Device d();

        public abstract Long e();

        public abstract List f();

        public abstract String g();

        public abstract int h();

        public abstract String i();

        public abstract OperatingSystem j();

        public abstract long k();

        public abstract User l();

        public abstract boolean m();

        public abstract Builder n();
    }

    public static Builder a() {
        return new AutoValue_CrashlyticsReport.Builder();
    }

    public abstract ApplicationExitInfo b();

    public abstract String c();

    public abstract String d();

    public abstract String e();

    public abstract String f();

    public abstract String g();

    public abstract String h();

    public abstract String i();

    public abstract FilesPayload j();

    public abstract int k();

    public abstract String l();

    public abstract Session m();

    public abstract Builder n();

    public final CrashlyticsReport o(String str) {
        AutoValue_CrashlyticsReport.Builder builder = (AutoValue_CrashlyticsReport.Builder) n();
        builder.g = str;
        if (m() != null) {
            AutoValue_CrashlyticsReport_Session.Builder builder2 = (AutoValue_CrashlyticsReport_Session.Builder) m().n();
            builder2.f34834c = str;
            builder.f34783j = builder2.a();
        }
        return builder.a();
    }

    public final CrashlyticsReport p(long j2, String str, boolean z) {
        Builder builderN = n();
        if (m() != null) {
            Session.Builder builderN2 = m().n();
            ((AutoValue_CrashlyticsReport_Session.Builder) builderN2).f34835e = Long.valueOf(j2);
            builderN2.d(z);
            if (str != null) {
                AutoValue_CrashlyticsReport_Session_User.Builder builder = new AutoValue_CrashlyticsReport_Session_User.Builder();
                builder.f34974a = str;
                ((AutoValue_CrashlyticsReport_Session.Builder) builderN2).f34837h = builder.a();
            }
            ((AutoValue_CrashlyticsReport.Builder) builderN).f34783j = builderN2.a();
        }
        return builderN.a();
    }
}
