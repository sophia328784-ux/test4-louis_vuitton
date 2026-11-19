package defpackage;

import android.os.Parcel;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.navigation.NavBackStackEntry;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.firebase.encoders.FieldDescriptor;
import com.google.firebase.encoders.proto.AtProtobuf;
import com.google.firebase.encoders.proto.Protobuf;
import com.perfectcorp.common.utility.Log;
import com.vuitton.core.infrastructure.data.forms.models.FormFieldDto;
import com.vuitton.foundation.logger.Logger;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* JADX INFO: loaded from: classes3.dex */
public abstract /* synthetic */ class a {
    public static void A(StringBuilder sb, String str, int i2, String str2) {
        sb.append(str);
        Log.g(i2, str2, sb.toString());
    }

    public static void B(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
    }

    public static void C(StringBuilder sb, List list, String str, List list2, String str2) {
        sb.append(list);
        sb.append(str);
        sb.append(list2);
        sb.append(str2);
    }

    public static void D(Function0 function0, Function0 function1, Function0 function2, Function0 function3, Function0 function4) {
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
    }

    public static int a(int i2, int i3, int i4, int i5) {
        return ((i2 - i3) / i4) + i5;
    }

    public static int b(FormFieldDto formFieldDto, int i2, int i3) {
        return (formFieldDto.hashCode() + i2) * i3;
    }

    public static GapComposer c(Function0 function0, Function0 function1, Composer composer, int i2) {
        function0.getClass();
        function1.getClass();
        return composer.h(i2);
    }

    public static ProvidedValue d(long j2, DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal) {
        return dynamicProvidableCompositionLocal.c(new Color(j2));
    }

    public static Modifier e(Modifier modifier, String str) {
        return modifier.o(new DTFunctionNameModifier(str));
    }

    public static DTFunctionNameModifier f(Composer composer, Modifier modifier, Function2 function2, String str) {
        Updater.c(composer, modifier, function2);
        return new DTFunctionNameModifier(str);
    }

    public static FieldDescriptor g(AtProtobuf atProtobuf, FieldDescriptor.Builder builder) {
        Protobuf protobufA = atProtobuf.a();
        if (builder.f35092b == null) {
            builder.f35092b = new HashMap();
        }
        builder.f35092b.put(Protobuf.class, protobufA);
        return new FieldDescriptor(builder.f35091a, builder.f35092b == null ? Collections.EMPTY_MAP : Collections.unmodifiableMap(new HashMap(builder.f35092b)));
    }

    public static Integer h(int i2, HashMap map, Integer num, int i3) {
        map.put(num, Integer.valueOf(i2));
        return Integer.valueOf(i3);
    }

    public static String i(int i2, String str, StringBuilder sb) {
        sb.append(i2);
        sb.append(str);
        return sb.toString();
    }

    public static String j(Exception exc, StringBuilder sb) {
        sb.append(exc.toString());
        return sb.toString();
    }

    public static String k(String str, StringBuilder sb) {
        return str + ((Object) sb);
    }

    public static String l(String str, CipherParameters cipherParameters) {
        return str.concat(cipherParameters.getClass().getName());
    }

    public static String m(StringBuilder sb, float f2, char c2) {
        sb.append(f2);
        sb.append(c2);
        return sb.toString();
    }

    public static String n(StringBuilder sb, Object obj, String str) {
        sb.append(obj);
        sb.append(str);
        return sb.toString();
    }

    public static String o(StringBuilder sb, List list, String str) {
        sb.append(list);
        sb.append(str);
        return sb.toString();
    }

    public static String p(StringBuilder sb, boolean z, String str) {
        sb.append(z);
        sb.append(str);
        return sb.toString();
    }

    public static StringBuilder q(String str, String str2, StringBuilder sb, ASN1ObjectIdentifier aSN1ObjectIdentifier, ConfigurableProvider configurableProvider) {
        sb.append(str);
        configurableProvider.addAlgorithm(str2, aSN1ObjectIdentifier, sb.toString());
        return new StringBuilder();
    }

    public static StringBuilder r(ConfigurableProvider configurableProvider, String str, String str2, String str3, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        configurableProvider.addAlgorithm(str, aSN1ObjectIdentifier, str2);
        StringBuilder sb = new StringBuilder();
        sb.append(str3);
        return sb;
    }

    public static KotlinNothingValueException s(String str) {
        InlineClassHelperKt.d(str);
        return new KotlinNothingValueException();
    }

    public static void t(int i2, GapComposer gapComposer, int i3, Function2 function2) {
        gapComposer.q(Integer.valueOf(i2));
        gapComposer.a(Integer.valueOf(i3), function2);
    }

    public static void u(int i2, String str) {
        androidx.media3.common.util.Log.g(str + i2);
    }

    public static void v(int i2, String str, String str2, String str3) {
        Log.g(i2, str3, str + str2);
    }

    public static void w(Parcel parcel, int i2, Boolean bool) {
        parcel.writeInt(i2);
        parcel.writeInt(bool.booleanValue() ? 1 : 0);
    }

    public static void x(Integer num, AnimatedContentScope animatedContentScope, NavBackStackEntry navBackStackEntry) {
        num.getClass();
        animatedContentScope.getClass();
        navBackStackEntry.getClass();
    }

    public static void y(String str, String str2, Logger logger, String str3, Throwable th) {
        logger.c(str3, str + str2, th);
    }

    public static void z(StringBuilder sb, FormFieldDto formFieldDto, String str, FormFieldDto formFieldDto2, String str2) {
        sb.append(formFieldDto);
        sb.append(str);
        sb.append(formFieldDto2);
        sb.append(str2);
    }
}
