package defpackage;

import android.os.Parcel;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.media3.common.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import com.canhub.cropper.CropImageView;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import com.vuitton.foundation.model.domain.model.product.SkuId$$serializer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.jvm.internal.impl.types.model.TypeConstructorMarker;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class cj {
    public static void A(String str, String str2, String str3, StringBuilder sb, boolean z) {
        sb.append(z);
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
    }

    public static void B(String str, CompositeEncoder compositeEncoder, SerialDescriptor serialDescriptor, int i2, SkuId$$serializer skuId$$serializer) {
        compositeEncoder.A(serialDescriptor, i2, skuId$$serializer, new SkuId(str));
    }

    public static void C(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    public static void D(HashMap map, String str, Integer num, int i2, String str2) {
        map.put(str, num);
        map.put(str2, Integer.valueOf(i2));
    }

    public static int a(int i2, int i3, int i4, int i5) {
        return (i2 * i3) + i4 + i5;
    }

    public static Modifier b(String str, RowScopeInstance rowScopeInstance, float f2, boolean z) {
        return rowScopeInstance.a(new DTFunctionNameModifier(str), f2, z);
    }

    public static Object c(int i2, ArrayList arrayList) {
        return arrayList.get(arrayList.size() - i2);
    }

    public static String d(int i2, String str) {
        return i2 + str;
    }

    public static String e(int i2, String str, String str2) {
        return str + str2 + i2;
    }

    public static String f(GapComposer gapComposer, int i2, int i3, GapComposer gapComposer2, boolean z) {
        gapComposer.L(i2);
        String strC = StringResources_androidKt.c(gapComposer2, i3);
        gapComposer.Z(z);
        return strC;
    }

    public static String g(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.exceptionLabel());
        return sb.toString();
    }

    public static String h(Exception exc, String str, StringBuilder sb) {
        sb.append(str);
        sb.append(exc.getMessage());
        return sb.toString();
    }

    public static String i(Object obj, String str) {
        return str + obj;
    }

    public static String j(String str, Exception exc) {
        return str + exc;
    }

    public static String k(String str, String str2, String str3, List list, String str4) {
        return str + str2 + str3 + list + str4;
    }

    public static String l(ReflectionFactory reflectionFactory, Class cls, StringBuilder sb) {
        sb.append(reflectionFactory.b(cls));
        return sb.toString();
    }

    public static StringBuilder m(String str, String str2, String str3, boolean z, boolean z2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(z);
        sb.append(str2);
        sb.append(z2);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder n(String str, TypeConstructorMarker typeConstructorMarker, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(typeConstructorMarker);
        sb.append(str2);
        return sb;
    }

    public static ArrayList o(int i2, HashMap map, ArrayList arrayList, int i3, String str) {
        map.put(Integer.valueOf(i2), arrayList);
        ArrayList arrayList2 = new ArrayList(i3);
        arrayList2.add(str);
        return arrayList2;
    }

    public static Iterator p(List list, Parcel parcel) {
        parcel.writeInt(list.size());
        return list.iterator();
    }

    public static List q(SkuIdUiModel.Companion companion, String str) {
        companion.getClass();
        return CollectionsKt.O(new SkuId(str));
    }

    public static KMutableProperty1 r(Class cls, String str, String str2, int i2, ReflectionFactory reflectionFactory) {
        return reflectionFactory.f(new MutablePropertyReference1Impl(cls, str, str2, i2));
    }

    public static void s(int i2, Composer composer, Function2 function2, Composer composer2, Function1 function1) {
        Updater.c(composer, Integer.valueOf(i2), function2);
        Updater.b(composer2, function1);
    }

    public static void t(int i2, GapComposer gapComposer, Function2 function2, GapComposer gapComposer2, Function1 function1) {
        Updater.c(gapComposer, Integer.valueOf(i2), function2);
        Updater.b(gapComposer2, function1);
    }

    public static void u(int i2, HashMap map, String str, int i3, String str2) {
        map.put(str, Integer.valueOf(i2));
        map.put(str2, Integer.valueOf(i3));
    }

    public static void v(CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType) {
        cropShape.getClass();
        cropCornerShape.getClass();
        guidelines.getClass();
        scaleType.getClass();
    }

    public static void w(CropImageView.CropShape cropShape, CropImageView.CropCornerShape cropCornerShape, CropImageView.Guidelines guidelines, CropImageView.ScaleType scaleType, CharSequence charSequence) {
        cropShape.getClass();
        cropCornerShape.getClass();
        guidelines.getClass();
        scaleType.getClass();
        charSequence.getClass();
    }

    public static void x(DTFunctionNameModifier dTFunctionNameModifier, float f2, GapComposer gapComposer, boolean z) {
        SpacerKt.a(gapComposer, SizeKt.f(dTFunctionNameModifier, f2));
        gapComposer.Z(z);
    }

    public static void y(String str, String str2) {
        Log.g(str + str2);
    }

    public static void z(String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        str3.getClass();
    }
}
