package com.kakao.sdk.auth;

import android.content.Context;
import android.net.Uri;
import android.util.Base64;
import com.kakao.sdk.common.KakaoSdk;
import com.kakao.sdk.common.model.ApplicationInfo;
import com.kakao.sdk.common.model.ApprovalType;
import com.kakao.sdk.common.model.ContextInfo;
import com.kakao.sdk.common.util.IntentResolveClient;
import com.kakao.sdk.common.util.SdkLog;
import com.linkplay.network.SecurityConstants;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Charsets;
import lv.nfc.reader.utils.LVConstants;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\fB/\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/kakao/sdk/auth/AuthCodeClient;", "", "Lcom/kakao/sdk/common/util/IntentResolveClient;", "intentResolveClient", "Lcom/kakao/sdk/common/model/ApplicationInfo;", "applicationInfo", "Lcom/kakao/sdk/common/model/ContextInfo;", "contextInfo", "Lcom/kakao/sdk/common/model/ApprovalType;", "approvalType", "<init>", "(Lcom/kakao/sdk/common/util/IntentResolveClient;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;)V", "Companion", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AuthCodeClient {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Companion f35821e = new Companion(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Lazy f35822f = LazyKt.b(AuthCodeClient$Companion$instance$2.f35826c);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IntentResolveClient f35823a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ApplicationInfo f35824b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ContextInfo f35825c;
    public final ApprovalType d;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/kakao/sdk/auth/AuthCodeClient$Companion;", "", "", "DEFAULT_REQUEST_CODE", "I", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static String a() throws NoSuchAlgorithmException {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-512");
            String string = UUID.randomUUID().toString();
            string.getClass();
            byte[] bytes = string.getBytes(Charsets.UTF_8);
            bytes.getClass();
            String strEncodeToString = Base64.encodeToString(messageDigest.digest(bytes), 3);
            strEncodeToString.getClass();
            return strEncodeToString;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AuthCodeClient(IntentResolveClient intentResolveClient, ApplicationInfo applicationInfo, ContextInfo contextInfo, ApprovalType approvalType, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 1) != 0) {
            IntentResolveClient.f35878c.getClass();
            intentResolveClient = (IntentResolveClient) IntentResolveClient.d.getF71699b();
        }
        applicationInfo = (i2 & 2) != 0 ? KakaoSdk.a() : applicationInfo;
        contextInfo = (i2 & 4) != 0 ? KakaoSdk.a() : contextInfo;
        if ((i2 & 8) == 0 || (approvalType = KakaoSdk.d) != null) {
            this(intentResolveClient, applicationInfo, contextInfo, approvalType);
        } else {
            Intrinsics.h("approvalType");
            throw null;
        }
    }

    public static void a(AuthCodeClient authCodeClient, Context context, List list, String str, String str2, String str3, Function2 function2, int i2) {
        String strEncodeToString;
        List list2 = (i2 & 4) != 0 ? null : list;
        String str4 = (i2 & 8) != 0 ? null : str;
        String str5 = (i2 & 16) != 0 ? null : str2;
        authCodeClient.getClass();
        context.getClass();
        UriUtility uriUtility = new UriUtility(null, 1, null);
        ApplicationInfo applicationInfo = authCodeClient.f35824b;
        String mClientId = applicationInfo.getMClientId();
        String strA = applicationInfo.a();
        String mKaHeader = authCodeClient.f35825c.getMKaHeader();
        String value = authCodeClient.d.getValue();
        if (str3 != null) {
            byte[] bytes = str3.getBytes(Charsets.UTF_8);
            bytes.getClass();
            f35821e.getClass();
            strEncodeToString = Base64.encodeToString(MessageDigest.getInstance("SHA-256").digest(bytes), 11);
            strEncodeToString.getClass();
        } else {
            strEncodeToString = null;
        }
        String str6 = str3 != null ? "S256" : null;
        mClientId.getClass();
        Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme(SecurityConstants.SECURITY_HTTPS).authority(uriUtility.f35846a.getKauth()).path("oauth/authorize").appendQueryParameter(LVConstants.LV_CLIENT_ID_KEY, mClientId).appendQueryParameter("redirect_uri", strA).appendQueryParameter("response_type", m.v).appendQueryParameter("ka", mKaHeader);
        if (str5 != null) {
            builderAppendQueryParameter.appendQueryParameter("agt", str5);
        }
        List list3 = list2;
        if (list3 != null && !list3.isEmpty()) {
            builderAppendQueryParameter.appendQueryParameter("scope", CollectionsKt.K(list2, ",", null, null, null, 62));
        }
        if (str4 != null) {
            builderAppendQueryParameter.appendQueryParameter("nonce", str4);
        }
        if (value != null) {
            builderAppendQueryParameter.appendQueryParameter("approval_type", value);
        }
        if (strEncodeToString != null) {
            builderAppendQueryParameter.appendQueryParameter("code_challenge", strEncodeToString);
        }
        if (str6 != null) {
            builderAppendQueryParameter.appendQueryParameter("code_challenge_method", str6);
        }
        Uri uriBuild = builderAppendQueryParameter.build();
        uriBuild.getClass();
        SdkLog.d.getClass();
        SdkLog.Companion.b(uriBuild);
        try {
            context.startActivity(IntentFactory.a(context, uriBuild, applicationInfo.a(), authCodeClient.b(function2)));
        } catch (Throwable th) {
            SdkLog.d.getClass();
            SdkLog.Companion.a(th);
            function2.invoke(null, th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.kakao.sdk.auth.SingleResultReceiver$Companion$create$1, com.kakao.sdk.common.util.BaseResultReceiver] */
    public final SingleResultReceiver$Companion$create$1 b(Function2 function2) {
        SingleResultReceiver.Companion companion = SingleResultReceiver.d;
        final AuthCodeClient$resultReceiver$1 authCodeClient$resultReceiver$1 = AuthCodeClient$resultReceiver$1.f35827c;
        final AuthCodeClient$resultReceiver$2 authCodeClient$resultReceiver$2 = new AuthCodeClient$resultReceiver$2(1);
        final AuthCodeClient$resultReceiver$3 authCodeClient$resultReceiver$3 = AuthCodeClient$resultReceiver$3.f35828c;
        companion.getClass();
        authCodeClient$resultReceiver$1.getClass();
        authCodeClient$resultReceiver$3.getClass();
        ?? r3 = new SingleResultReceiver<Object>() { // from class: com.kakao.sdk.auth.SingleResultReceiver$Companion$create$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super("Auth Code", null);
            }

            @Override // com.kakao.sdk.common.util.BaseResultReceiver
            public final boolean a(Uri uri) {
                return ((Boolean) authCodeClient$resultReceiver$3.invoke(uri)).booleanValue();
            }

            @Override // com.kakao.sdk.common.util.BaseResultReceiver
            public final Throwable d(Uri uri) {
                return (Throwable) ((AuthCodeClient$resultReceiver$2) authCodeClient$resultReceiver$2).invoke(uri);
            }

            @Override // com.kakao.sdk.common.util.BaseResultReceiver
            public final Object e(Uri uri) {
                return authCodeClient$resultReceiver$1.invoke(uri);
            }
        };
        r3.f35877c = (Lambda) function2;
        return r3;
    }

    public AuthCodeClient(IntentResolveClient intentResolveClient, ApplicationInfo applicationInfo, ContextInfo contextInfo, ApprovalType approvalType) {
        intentResolveClient.getClass();
        applicationInfo.getClass();
        contextInfo.getClass();
        approvalType.getClass();
        this.f35823a = intentResolveClient;
        this.f35824b = applicationInfo;
        this.f35825c = contextInfo;
        this.d = approvalType;
    }

    public AuthCodeClient() {
        this(null, null, null, null, 15, null);
    }
}
