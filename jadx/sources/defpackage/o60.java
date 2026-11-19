package defpackage;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.res.StringResources_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.crypto.tink.shaded.protobuf.CodedOutputStream;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.util.ak;
import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import java.io.IOException;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;

/* JADX INFO: loaded from: classes3.dex */
public abstract /* synthetic */ class o60 {
    public static void A(Exception exc, NBSTransactionState nBSTransactionState, int i2, int i3) {
        nBSTransactionState.setErrorCode(i2, exc.toString());
        nBSTransactionState.setStatusCode(i3);
    }

    public static void B(String str, String str2, String str3, StringBuilder sb, List list) {
        sb.append(list);
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
    }

    public static void C(Throwable th, StringBuilder sb, e eVar) {
        sb.append(th.getMessage());
        eVar.f(sb.toString());
    }

    public static String D(int i2, int i3, String str) {
        return str.substring(str.indexOf(i2) + i3);
    }

    public static int a(int i2, int i3, int i4) {
        return CodedOutputStream.i(i2) + i3 + i4;
    }

    public static int b(int i2, int i3, boolean z) {
        return (Boolean.hashCode(z) + i2) * i3;
    }

    public static Modifier c(GapComposer gapComposer, int i2, String str, float f2) {
        gapComposer.L(i2);
        return SizeKt.d(new DTFunctionNameModifier(str), f2);
    }

    public static Modifier d(GapComposer gapComposer, boolean z, String str, float f2) {
        gapComposer.Z(z);
        return SizeKt.d(new DTFunctionNameModifier(str), f2);
    }

    public static Modifier e(String str, PaddingValues paddingValues) {
        return PaddingKt.h(new DTFunctionNameModifier(str), paddingValues);
    }

    public static DTFunctionNameModifier f(GapComposer gapComposer, boolean z, String str) {
        gapComposer.Z(z);
        return new DTFunctionNameModifier(str);
    }

    public static String g(int i2, int i3, String str) {
        return str.substring(i3, str.length() - i2);
    }

    public static String h(int i2, int i3, String str, String str2) {
        return str + i2 + str2 + i3;
    }

    public static String i(long j2, String str, String str2) {
        return str + j2 + str2;
    }

    public static String j(long j2, String str, StringBuilder sb) {
        sb.append(j2);
        sb.append(str);
        return sb.toString();
    }

    public static String k(Composer composer, int i2, int i3, Composer composer2) {
        composer.L(i2);
        String strC = StringResources_androidKt.c(composer2, i3);
        composer.F();
        return strC;
    }

    public static String l(Object obj, String str) {
        return str.concat(obj.getClass().getName());
    }

    public static String m(String str, IOException iOException) {
        return str + iOException;
    }

    public static String n(String str, Object obj, String str2) {
        return str + obj + str2;
    }

    public static String o(String str, String str2, String str3, StringBuilder sb, List list) {
        sb.append(str);
        sb.append(str2);
        sb.append(list);
        sb.append(str3);
        return sb.toString();
    }

    public static String p(String str, StringBuilder sb) {
        sb.append(ak.b());
        sb.append(str);
        return sb.toString();
    }

    public static String q(String str, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return str + aSN1ObjectIdentifier;
    }

    public static String r(StringBuilder sb, Object obj, char c2) {
        sb.append(obj);
        sb.append(c2);
        return sb.toString();
    }

    public static StringBuilder s(String str, String str2, String str3, List list, List list2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(list);
        sb.append(str2);
        sb.append(list2);
        sb.append(str3);
        return sb;
    }

    public static List t(String str) {
        return CollectionsKt.O(new AdditionalProperty.ContentId(str));
    }

    public static KotlinNothingValueException u(String str) {
        InlineClassHelperKt.b(str);
        return new KotlinNothingValueException();
    }

    public static NoWhenBranchMatchedException v(Composer composer, int i2) {
        composer.L(i2);
        composer.F();
        return new NoWhenBranchMatchedException();
    }

    public static ASN1ObjectIdentifier w(String str) {
        return new ASN1ObjectIdentifier(str).intern();
    }

    public static void x(int i2, String str, StringBuilder sb) {
        sb.append(str.length() % i2);
    }

    public static void y(long j2, String str, StringBuilder sb) {
        sb.append((Object) Color.i(j2));
        sb.append(str);
    }

    public static void z(Class cls, StringBuilder sb, String str) {
        sb.append(cls.getName());
        sb.append(str);
    }
}
