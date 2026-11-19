package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.unit.Dp;
import com.perfectcorp.common.utility.Log;
import com.squareup.wire.ProtoAdapterKt$commonUint64$1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.security.Key;
import java.security.spec.KeySpec;
import java.util.List;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.pqc.jcajce.provider.sphincsplus.SPHINCSPlusKeyFactorySpi;
import org.bouncycastle.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public abstract /* synthetic */ class fc {
    public static void A(Function2 function2, int i2, Composer composer, int i3) {
        composer.q(Integer.valueOf(i2));
        composer.a(Integer.valueOf(i3), function2);
    }

    public static void B(BouncyCastleProvider bouncyCastleProvider, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        bouncyCastleProvider.addKeyInfoConverter(aSN1ObjectIdentifier, new SPHINCSPlusKeyFactorySpi());
    }

    public static byte[] C(ASN1Sequence aSN1Sequence, int i2) {
        return Arrays.clone(ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(i2)).getOctets());
    }

    public static StringBuilder D(String str, String str2, StringBuilder sb, ASN1ObjectIdentifier aSN1ObjectIdentifier, ConfigurableProvider configurableProvider) {
        sb.append(aSN1ObjectIdentifier);
        configurableProvider.addAlgorithm(sb.toString(), str);
        return new StringBuilder(str2);
    }

    public static int a(int i2, int i3, long j2) {
        return (Long.hashCode(j2) + i2) * i3;
    }

    public static int b(int i2, int i3, String str) {
        return (str.hashCode() + i2) * i3;
    }

    public static int c(long j2, ProtoAdapterKt$commonUint64$1 protoAdapterKt$commonUint64$1, int i2, int i3) {
        return protoAdapterKt$commonUint64$1.i(i2, Long.valueOf(j2)) + i3;
    }

    public static int d(ASN1Sequence aSN1Sequence, int i2) {
        return ASN1Integer.getInstance(aSN1Sequence.getObjectAt(i2)).intValueExact();
    }

    public static Object e(int i2, List list) {
        return list.get(list.size() - i2);
    }

    public static String f(int i2, int i3, String str, String str2, String str3) {
        return str + i2 + str2 + i3 + str3;
    }

    public static String g(Exception exc, StringBuilder sb) {
        sb.append(exc.getMessage());
        return sb.toString();
    }

    public static String h(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String i(String str, String str2, String str3, String str4) {
        return str + str2 + str3 + str4;
    }

    public static String j(String str, KeySpec keySpec, String str2) {
        return str + keySpec + str2;
    }

    public static String k(StringBuilder sb, long j2, char c2) {
        sb.append(j2);
        sb.append(c2);
        return sb.toString();
    }

    public static String l(StringBuilder sb, String str, char c2) {
        sb.append(str);
        sb.append(c2);
        return sb.toString();
    }

    public static String m(Key key, StringBuilder sb, String str) {
        sb.append(key.getClass());
        sb.append(str);
        return sb.toString();
    }

    public static String n(KeySpec keySpec, StringBuilder sb, String str) {
        sb.append(keySpec.getClass());
        sb.append(str);
        return sb.toString();
    }

    public static String o(ASN1Sequence aSN1Sequence, StringBuilder sb) {
        sb.append(aSN1Sequence.size());
        return sb.toString();
    }

    public static StringBuilder p(int i2, int i3, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i2);
        sb.append(str2);
        sb.append(i3);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder q(int i2, String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(i2);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder r(int i2, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(i2);
        sb.append(str4);
        return sb;
    }

    public static StringBuilder s(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        sb.append(str5);
        return sb;
    }

    public static StringBuilder t(String str, String str2, StringBuilder sb, ASN1ObjectIdentifier aSN1ObjectIdentifier, ConfigurableProvider configurableProvider) {
        sb.append(aSN1ObjectIdentifier);
        configurableProvider.addAlgorithm(sb.toString(), str);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str2);
        return sb2;
    }

    public static StringBuilder u(ConfigurableProvider configurableProvider, String str, String str2, String str3) {
        configurableProvider.addAlgorithm(str, str2);
        return new StringBuilder(str3);
    }

    public static FloatBuffer v(ByteBuffer byteBuffer) {
        return byteBuffer.order(ByteOrder.nativeOrder()).asFloatBuffer();
    }

    public static void w(float f2, String str, StringBuilder sb) {
        sb.append((Object) Dp.c(f2));
        sb.append(str);
    }

    public static void x(int i2, int i3, String str, String str2, StringBuilder sb) {
        sb.append(i2);
        sb.append(str);
        sb.append(i3);
        sb.append(str2);
    }

    public static void y(StringBuilder sb, boolean z, String str, boolean z2, String str2) {
        sb.append(z);
        sb.append(str);
        sb.append(z2);
        sb.append(str2);
    }

    public static void z(List list, StringBuilder sb, int i2, String str) {
        sb.append(list.size());
        Log.g(i2, str, sb.toString());
    }
}
