package defpackage;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.key.Key_androidKt;
import com.airbnb.lottie.compose.LottieCompositionResultImpl;
import com.airbnb.lottie.compose.LottieCompositionSpec;
import com.airbnb.lottie.compose.RememberLottieCompositionKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.linkplay.bonjour.utils.BonjourLog;
import com.linkplay.core.device.LPDevice;
import com.linkplay.core.listener.LPDevicePlayerListener;
import com.linkplay.network.HttpRequestUtils;
import com.linkplay.request.RequestItem;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import java.io.IOException;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function2;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.internal.connection.RealCall;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.asn1.ASN1ObjectIdentifier;

/* JADX INFO: loaded from: classes3.dex */
public abstract /* synthetic */ class n00 {
    public static void A(int i2, int i3, String str, String str2, StringBuilder sb) {
        sb.append(str.substring(i2, i3));
        sb.append(str2);
    }

    public static void B(String str, LPDevicePlayerListener lPDevicePlayerListener) {
        lPDevicePlayerListener.onFailure(new Exception(str));
    }

    public static void C(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        BonjourLog.i(str3, sb.toString());
    }

    public static void D(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str, String str2, String str3, String str4) {
        aSN1ObjectIdentifier.r(str);
        aSN1ObjectIdentifier.r(str2);
        aSN1ObjectIdentifier.r(str3);
        aSN1ObjectIdentifier.r(str4);
    }

    public static int a(int i2, int i3, List list) {
        return (list.hashCode() + i2) * i3;
    }

    public static SnackbarHostState b(GapComposer gapComposer) {
        SnackbarHostState snackbarHostState = new SnackbarHostState();
        gapComposer.q(snackbarHostState);
        return snackbarHostState;
    }

    public static Modifier c(Composer composer, Modifier modifier, Function2 function2, String str, float f2) {
        Updater.c(composer, modifier, function2);
        return SizeKt.d(new DTFunctionNameModifier(str), f2);
    }

    public static Modifier d(GapComposer gapComposer, int i2, String str, String str2) {
        gapComposer.L(i2);
        return ModifierExtKt.e(new DTFunctionNameModifier(str), str2);
    }

    public static Modifier e(GapComposer gapComposer, Modifier modifier, Function2 function2, String str, float f2) {
        Updater.c(gapComposer, modifier, function2);
        return SizeKt.d(new DTFunctionNameModifier(str), f2);
    }

    public static Modifier f(GapComposer gapComposer, Modifier modifier, Function2 function2, String str, String str2) {
        Updater.c(gapComposer, modifier, function2);
        return ModifierExtKt.e(new DTFunctionNameModifier(str), str2);
    }

    public static Modifier g(String str, String str2) {
        return ModifierExtKt.e(new DTFunctionNameModifier(str), str2);
    }

    public static LottieCompositionResultImpl h(int i2, GapComposer gapComposer, int i3) {
        return RememberLottieCompositionKt.c(new LottieCompositionSpec.RawRes(i2), gapComposer, i3);
    }

    public static DTFunctionNameModifier i(GapComposer gapComposer, int i2, String str) {
        gapComposer.L(i2);
        return new DTFunctionNameModifier(str);
    }

    public static DTFunctionNameModifier j(GapComposer gapComposer, int i2, boolean z, String str) {
        gapComposer.L(i2);
        gapComposer.Z(z);
        return new DTFunctionNameModifier(str);
    }

    public static RequestItem.Builder k(LPDevice lPDevice, RequestItem.Builder builder) {
        return builder.ip(lPDevice.getDeviceStatus().getIP());
    }

    public static RequestItem l(LPDevice lPDevice, RequestItem.Builder builder) {
        return builder.security(lPDevice.getDeviceStatus().getSecurity()).build();
    }

    public static String m(int i2, String str, String str2) {
        return str + i2 + str2;
    }

    public static String n(RequestItem requestItem, StringBuilder sb, String str) {
        sb.append(HttpRequestUtils.getRequestPrefix(requestItem));
        sb.append(str);
        return sb.toString();
    }

    public static String o(IOException iOException, StringBuilder sb) {
        sb.append(iOException.getMessage());
        return sb.toString();
    }

    public static String p(Class cls, StringBuilder sb, String str) {
        sb.append(cls.getName());
        sb.append(str);
        return sb.toString();
    }

    public static String q(String str, int i2, char c2) {
        return str + i2 + c2;
    }

    public static String r(String str, String str2, StringBuilder sb) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static String s(ConfigurableProvider configurableProvider, String str, String str2, String str3, org.bouncycastle.asn1.ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        configurableProvider.addAlgorithm(str, str2);
        return str3 + aSN1ObjectIdentifier;
    }

    public static StringBuilder t(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    public static StringBuilder u(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    public static List v(String str) {
        return CollectionsKt.O(new SkuId(str));
    }

    public static RealCall w(OkHttpClient okHttpClient, OkHttpClient okHttpClient2, Request request, boolean z) {
        okHttpClient.getClass();
        return new RealCall(okHttpClient2, request, z);
    }

    public static ASN1EncodableVector x(ASN1EncodableVector aSN1EncodableVector, ASN1EncodableVector aSN1EncodableVector2) {
        aSN1EncodableVector2.add(new DERSequence(aSN1EncodableVector));
        return new ASN1EncodableVector();
    }

    public static DERSequence y(ASN1EncodableVector aSN1EncodableVector, ASN1Integer aSN1Integer, ASN1EncodableVector aSN1EncodableVector2) {
        aSN1EncodableVector.add(aSN1Integer);
        return new DERSequence(aSN1EncodableVector2);
    }

    public static void z(int i2, int i3, int i4, int i5, int i6) {
        Key_androidKt.a(i2);
        Key_androidKt.a(i3);
        Key_androidKt.a(i4);
        Key_androidKt.a(i5);
        Key_androidKt.a(i6);
    }
}
