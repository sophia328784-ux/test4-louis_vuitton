package defpackage;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.camera.core.impl.SurfaceCombination;
import androidx.camera.core.impl.SurfaceConfig;
import androidx.compose.foundation.layout.FillElement;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope$drawContext$1;
import androidx.compose.ui.text.TextStyle;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* JADX INFO: loaded from: classes.dex */
public abstract /* synthetic */ class pq0 {
    public static void A(String str, String str2, String str3, StringBuilder sb, boolean z) {
        sb.append(str);
        sb.append(str2);
        sb.append(z);
        sb.append(str3);
    }

    public static void B(String str, String str2, List list) {
        str.getClass();
        str2.getClass();
        list.getClass();
    }

    public static void C(StringBuilder sb, String str, ConfigurableProvider configurableProvider, String str2) {
        sb.append(str);
        configurableProvider.addAlgorithm(str2, sb.toString());
    }

    public static int D(int i2, int i3, int i4, int i5) {
        return i2 + i3 + i4 + i5;
    }

    public static float a(float f2, float f3, float f4, float f5) {
        return (f4 - (f2 * f3)) * f5;
    }

    public static int b(int i2, int i3, float f2) {
        return (Float.hashCode(f2) + i2) * i3;
    }

    public static int c(int i2, int i3, int i4, int i5) {
        return ((i2 * i3) / i4) + i5;
    }

    public static int d(Parcelable.Creator creator, Parcel parcel, ArrayList arrayList, int i2, int i3) {
        arrayList.add(creator.createFromParcel(parcel));
        return i2 + i3;
    }

    public static int e(TextStyle textStyle, int i2, int i3) {
        return (textStyle.hashCode() + i2) * i3;
    }

    public static SurfaceCombination f(SurfaceConfig.ConfigType configType, SurfaceConfig.ConfigSize configSize, SurfaceCombination surfaceCombination, ArrayList arrayList, SurfaceCombination surfaceCombination2) {
        surfaceCombination.a(SurfaceConfig.a(configType, configSize));
        arrayList.add(surfaceCombination2);
        return new SurfaceCombination();
    }

    public static SurfaceCombination g(ArrayList arrayList, SurfaceCombination surfaceCombination) {
        arrayList.add(surfaceCombination);
        return new SurfaceCombination();
    }

    public static Modifier h(float f2, int i2, Composer composer, String str) {
        composer.L(i2);
        return SizeKt.d(new DTFunctionNameModifier(str), f2);
    }

    public static Modifier i(String str, FillElement fillElement) {
        return new DTFunctionNameModifier(str).o(fillElement);
    }

    public static DTFunctionNameModifier j(int i2, Composer composer, String str) {
        composer.L(i2);
        return new DTFunctionNameModifier(str);
    }

    public static String k(int i2, String str) {
        return str + i2;
    }

    public static String l(Uri uri, String str) {
        return str + uri;
    }

    public static String m(Class cls, String str) {
        return str + cls;
    }

    public static String n(Class cls, String str, String str2) {
        return str + cls + str2;
    }

    public static String o(String str, String str2, ConfigurableProvider configurableProvider, String str3, String str4) {
        configurableProvider.addAlgorithm(str, str2);
        return str3 + str4;
    }

    public static String p(StringBuilder sb, boolean z, String str, boolean z2, String str2) {
        sb.append(z);
        sb.append(str);
        sb.append(z2);
        sb.append(str2);
        return sb.toString();
    }

    public static StringBuilder q(long j2, String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(j2);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder r(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder s(String str, String str2, String str3, StringBuilder sb, ConfigurableProvider configurableProvider) {
        sb.append(str);
        configurableProvider.addAlgorithm(str2, sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str3);
        return sb2;
    }

    public static StringBuilder t(String str, String str2, ConfigurableProvider configurableProvider, String str3, String str4) {
        configurableProvider.addAlgorithm(str3, str + str2);
        return new StringBuilder(str4);
    }

    public static StringBuilder u(ConfigurableProvider configurableProvider, String str, String str2, String str3, String str4) {
        configurableProvider.addAlgorithm(str, str2);
        configurableProvider.addAlgorithm(str3, str4);
        return new StringBuilder();
    }

    public static List v() {
        return Collections.synchronizedList(new ArrayList());
    }

    public static void w(SurfaceConfig.ConfigType configType, SurfaceConfig.ConfigSize configSize, SurfaceCombination surfaceCombination, SurfaceConfig.ConfigType configType2, SurfaceConfig.ConfigSize configSize2) {
        surfaceCombination.a(SurfaceConfig.a(configType, configSize));
        surfaceCombination.a(SurfaceConfig.a(configType2, configSize2));
    }

    public static void x(GapComposer gapComposer, boolean z, boolean z2, boolean z3) {
        gapComposer.Z(z);
        gapComposer.Z(z2);
        gapComposer.Z(z3);
    }

    public static void y(CanvasDrawScope$drawContext$1 canvasDrawScope$drawContext$1, long j2) {
        canvasDrawScope$drawContext$1.a().restore();
        canvasDrawScope$drawContext$1.h(j2);
    }

    public static void z(String str, String str2, String str3, String str4, String str5) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
    }
}
