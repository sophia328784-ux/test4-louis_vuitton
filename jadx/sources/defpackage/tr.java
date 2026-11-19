package defpackage;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.fragment.app.Fragment;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.android.exoplayer2.util.Util;
import com.google.crypto.tink.shaded.protobuf.CodedOutputStream;
import com.googlecode.mp4parser.RequiresParseDetailAspect;
import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KProperty1;
import org.aspectj.lang.JoinPoint;
import org.bouncycastle.asn1.ASN1EncodableVector;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.asn1.ASN1OctetString;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DEROctetString;
import org.bouncycastle.asn1.DERSequence;
import org.bouncycastle.jcajce.provider.asymmetric.EC;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;
import org.bouncycastle.math.ec.ECFieldElement;
import org.spongycastle.pqc.crypto.xmss.DefaultXMSSMTOid;

/* JADX INFO: loaded from: classes3.dex */
public abstract /* synthetic */ class tr {
    public static void A(StringBuilder sb, ASN1ObjectIdentifier aSN1ObjectIdentifier, ConfigurableProvider configurableProvider, String str) {
        sb.append(aSN1ObjectIdentifier);
        configurableProvider.addAlgorithm(sb.toString(), str);
    }

    public static void B(JoinPoint joinPoint) {
        RequiresParseDetailAspect.a().getClass();
        RequiresParseDetailAspect.b(joinPoint);
    }

    public static void C(ConfigurableProvider configurableProvider, String str, String str2, String str3, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        configurableProvider.addAlgorithm(str3, aSN1ObjectIdentifier, str + str2);
    }

    public static byte[] D(ASN1Sequence aSN1Sequence, int i2) {
        return ASN1OctetString.getInstance(aSN1Sequence.getObjectAt(i2)).getOctets();
    }

    public static float a(float f2, float f3, float f4, float f5) {
        return ((f2 - f3) * f4) + f5;
    }

    public static int b(int i2, int i3, int i4) {
        return (Integer.hashCode(i2) + i3) * i4;
    }

    public static int c(int i2, int i3, int i4, int i5) {
        return CodedOutputStream.k(i2) + i3 + i4 + i5;
    }

    public static Modifier d(String str, float f2) {
        return SizeKt.d(new DTFunctionNameModifier(str), f2);
    }

    public static DTFunctionNameModifier e(GapComposer gapComposer, Modifier modifier, Function2 function2, String str) {
        Updater.c(gapComposer, modifier, function2);
        return new DTFunctionNameModifier(str);
    }

    public static String f(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    public static String g(String str, String str2) {
        return str + str2;
    }

    public static String h(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String i(String str, String str2, boolean z) {
        return str + z + str2;
    }

    public static String j(String str, ASN1ObjectIdentifier aSN1ObjectIdentifier, String str2) {
        return str + aSN1ObjectIdentifier + str2;
    }

    public static String k(StringBuilder sb, int i2, char c2) {
        sb.append(i2);
        sb.append(c2);
        return sb.toString();
    }

    public static String l(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        return sb.toString();
    }

    public static String m(StringBuilder sb, List list, char c2) {
        sb.append(list);
        sb.append(c2);
        return sb.toString();
    }

    public static String n(GeneralSecurityException generalSecurityException, StringBuilder sb) {
        sb.append(generalSecurityException.getMessage());
        return sb.toString();
    }

    public static StringBuilder o(String str, String str2, String str3, StringBuilder sb, ConfigurableProvider configurableProvider) {
        sb.append(str);
        sb.append(str2);
        configurableProvider.addAlgorithm(str3, sb.toString());
        return new StringBuilder();
    }

    public static Map p(String str, String str2, ConfigurableProvider configurableProvider, String str3, String str4) {
        configurableProvider.addAlgorithm(str, str2, EC.generalEcAttributes);
        configurableProvider.addAlgorithm(str3, str4, EC.generalEcAttributes);
        return EC.generalEcAttributes;
    }

    public static KProperty1 q(Class cls, String str, String str2, int i2, ReflectionFactory reflectionFactory) {
        return reflectionFactory.h(new PropertyReference1Impl(cls, str, str2, i2));
    }

    public static DERSequence r(ASN1EncodableVector aSN1EncodableVector, ASN1OctetString aSN1OctetString, ASN1EncodableVector aSN1EncodableVector2) {
        aSN1EncodableVector.add(aSN1OctetString);
        return new DERSequence(aSN1EncodableVector2);
    }

    public static DERSequence s(ASN1EncodableVector aSN1EncodableVector, DEROctetString dEROctetString, ASN1EncodableVector aSN1EncodableVector2) {
        aSN1EncodableVector.add(dEROctetString);
        return new DERSequence(aSN1EncodableVector2);
    }

    public static ECFieldElement t(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement eCFieldElement3) {
        return eCFieldElement.square().add(eCFieldElement2).add(eCFieldElement3);
    }

    public static org.spongycastle.math.ec.ECFieldElement u(org.spongycastle.math.ec.ECFieldElement eCFieldElement, org.spongycastle.math.ec.ECFieldElement eCFieldElement2, org.spongycastle.math.ec.ECFieldElement eCFieldElement3) {
        return eCFieldElement.o().a(eCFieldElement2).a(eCFieldElement3);
    }

    public static void v(int i2, int i3, int i4, int i5, int i6) {
        Util.e(i2);
        Util.e(i3);
        Util.e(i4);
        Util.e(i5);
        Util.e(i6);
    }

    public static void w(int i2, int i3, String str, String str2, StringBuilder sb) {
        sb.append(str);
        sb.append(i2);
        sb.append(str2);
        sb.append(i3);
    }

    public static /* synthetic */ void x(Object obj) {
        if (obj == null) {
            return;
        }
        r81.h();
    }

    public static void y(String str, String str2, String str3, StringBuilder sb, ConfigurableProvider configurableProvider) {
        sb.append(str);
        sb.append(str2);
        configurableProvider.addAlgorithm(str3, sb.toString());
    }

    public static void z(String str, String str2, HashMap map) {
        map.put(str2, new DefaultXMSSMTOid(str));
    }
}
