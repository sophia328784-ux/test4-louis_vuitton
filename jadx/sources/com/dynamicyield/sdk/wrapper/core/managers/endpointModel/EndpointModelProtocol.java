package com.dynamicyield.sdk.wrapper.core.managers.endpointModel;

import com.dynamicyield.sdk.wrapper.core.enums.DataCenter;
import com.dynamicyield.sdk.wrapper.core.enums.HttpMethod;
import com.dynamicyield.sdk.wrapper.core.enums.ResultStatus;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.DYLogger;
import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.LogLevel;
import com.dynamicyield.sdk.wrapper.core.models.exception.NetworkFailedException;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.v40;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import kotlin.Metadata;
import kotlin.ranges.IntRange;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/endpointModel/EndpointModelProtocol;", "", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, "", "isValidUrl", "(Ljava/lang/String;)Z", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface EndpointModelProtocol {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final class DefaultImpls {
        public static NetworkFailedException a(EndpointModelProtocol endpointModelProtocol, String str, Integer num, String str2, String str3) {
            endpointModelProtocol.a().a("checkNetworkError", null);
            IntRange intRange = new IntRange(200, 299);
            if (num != null && intRange.m(num.intValue())) {
                return null;
            }
            NetworkFailedException networkFailedException = new NetworkFailedException(str, num, str2, str3);
            DYLogger dYLoggerA = endpointModelProtocol.a();
            StringBuilder sb = new StringBuilder("Network error for url ");
            sb.append(str);
            sb.append(", code: ");
            sb.append(num);
            sb.append(", body: ");
            if (str3 == null) {
                str3 = "";
            }
            sb.append(str3);
            dYLoggerA.a(sb.toString(), LogLevel.ERROR);
            return networkFailedException;
        }

        public static ResultStatus b(EndpointModelProtocol endpointModelProtocol, Integer num, List list, Exception exc) {
            ResultStatus resultStatus;
            if (num != null && new IntRange(200, 299).m(num.intValue()) && exc == null) {
                List list2 = list;
                resultStatus = (list2 == null || list2.isEmpty()) ? ResultStatus.SUCCESS : ResultStatus.WARNING;
            } else {
                resultStatus = ResultStatus.ERROR;
            }
            endpointModelProtocol.a().a("getStatus: Status is " + resultStatus, null);
            return resultStatus;
        }

        /* JADX WARN: Code duplicated, block: B:11:0x003a  */
        /* JADX WARN: Code duplicated, block: B:12:0x003d  */
        /* JADX WARN: Code duplicated, block: B:14:0x0042  */
        /* JADX WARN: Code duplicated, block: B:9:0x0037  */
        public static String c(EndpointModelProtocol endpointModelProtocol) {
            String str;
            int i2;
            StringBuilder sb = new StringBuilder();
            String str2 = endpointModelProtocol.j().a().l;
            if (str2 == null) {
                i2 = WhenMappings.f25894a[endpointModelProtocol.j().a().f25861a.ordinal()];
                if (i2 != 1) {
                    str = "https://dy-api.com";
                } else {
                    if (i2 == 2) {
                        v40.g();
                        return null;
                    }
                    str = "https://dy-api.eu";
                }
            } else {
                try {
                    new URL(str2);
                    str = endpointModelProtocol.j().a().l;
                } catch (MalformedURLException unused) {
                    i2 = WhenMappings.f25894a[endpointModelProtocol.j().a().f25861a.ordinal()];
                    if (i2 != 1) {
                        str = "https://dy-api.com";
                    } else {
                        if (i2 == 2) {
                            v40.g();
                            return null;
                        }
                        str = "https://dy-api.eu";
                    }
                }
            }
            sb.append(str);
            sb.append("/v2/");
            sb.append(endpointModelProtocol.g());
            return sb.toString();
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f25894a;

        static {
            int[] iArr = new int[DataCenter.values().length];
            try {
                iArr[DataCenter.US.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[DataCenter.EU.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f25894a = iArr;
        }
    }

    DYLogger a();

    List b(String str);

    ResultStatus c(Integer num, List list, Exception exc);

    NetworkFailedException d(String str, Integer num, String str2, String str3);

    String e();

    boolean f();

    String g();

    String getUrl();

    HttpMethod h();

    String i();

    EndpointModelProvider j();

    String k();
}
