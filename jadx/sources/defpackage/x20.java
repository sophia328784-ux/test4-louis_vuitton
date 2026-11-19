package defpackage;

import android.app.Activity;
import android.os.Process;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.datastore.core.CorruptionException;
import androidx.datastore.preferences.core.PreferencesFactory;
import com.dynatrace.agent.events.enrichment.sanitation.JsonAttributeSanitationKt;
import com.google.firebase.datastorage.JavaDataStorage;
import com.vuitton.android.core.platform.serialization.JsonProviderKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVHeaderTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt;
import com.vuitton.android.presentation.compose.components.LVCalendarKt;
import com.vuitton.android.presentation.inappbanner.InAppBannerSupervisor;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleSectionUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ProductsArticleSectionUiModel;
import java.time.LocalDate;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.serialization.descriptors.ClassSerialDescriptorBuilder;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonBuilder;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementSerializer;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.a;
import kotlinx.serialization.json.internal.StringOpsKt;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class x20 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81001b;

    public /* synthetic */ x20(JavaDataStorage javaDataStorage) {
        this.f81001b = 13;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        String strSubstring;
        int i2 = 6;
        switch (this.f81001b) {
            case 0:
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver);
                return Unit.f71739a;
            case 1:
                ((Long) obj).getClass();
                return Unit.f71739a;
            case 2:
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver2.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver2, 0);
                return Unit.f71739a;
            case 3:
                SemanticsPropertyReceiver semanticsPropertyReceiver3 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver3.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver3);
                return Unit.f71739a;
            case 4:
                SemanticsPropertyReceiver semanticsPropertyReceiver4 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver4.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver4);
                return Unit.f71739a;
            case 5:
                return Boolean.valueOf(((ImmersiveArticleSectionUiModel) obj) instanceof ProductsArticleSectionUiModel);
            case 6:
                SemanticsPropertyReceiver semanticsPropertyReceiver5 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver5.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver5, 0);
                return Unit.f71739a;
            case 7:
                SemanticsPropertyReceiver semanticsPropertyReceiver6 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver6.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver6);
                return Unit.f71739a;
            case 8:
                return Float.valueOf(((Float) obj).floatValue() * 0.25f);
            case 9:
                Activity activity = (Activity) obj;
                Set set = InAppBannerSupervisor.f51567e;
                activity.getClass();
                return Boolean.valueOf(activity instanceof AICompanionActivity);
            case 10:
                String str = (String) obj;
                str.getClass();
                int iU = StringsKt.u(str, '[', 0, 6);
                String strSubstring2 = iU >= 0 ? str.substring(0, iU) : str;
                strSubstring = iU >= 0 ? str.substring(iU) : "";
                int iU2 = StringsKt.u(strSubstring2, '-', 0, 6);
                if (iU2 >= 0) {
                    strSubstring2 = strSubstring2.substring(0, iU2);
                }
                return strSubstring2.concat(strSubstring);
            case 11:
                String str2 = (String) obj;
                str2.getClass();
                int iU3 = StringsKt.u(str2, '[', 0, 6);
                String strSubstring3 = iU3 >= 0 ? str2.substring(0, iU3) : str2;
                strSubstring = iU3 >= 0 ? str2.substring(iU3) : "";
                int iV = StringsKt.v(strSubstring3, "$lambda", 0, false, 6);
                if (iV >= 0) {
                    strSubstring3 = strSubstring3.substring(0, iV);
                }
                return strSubstring3.concat(strSubstring);
            case 12:
                String str3 = (String) obj;
                str3.getClass();
                int iU4 = StringsKt.u(str3, '[', 0, 6);
                String strSubstring4 = iU4 >= 0 ? str3.substring(0, iU4) : str3;
                strSubstring = iU4 >= 0 ? str3.substring(iU4) : "";
                if (StringsKt.k(strSubstring4, "$lambda", false) && StringsKt.l(strSubstring4, '_')) {
                    strSubstring4 = strSubstring4.substring(0, StringsKt.u(strSubstring4, '_', 0, 6));
                }
                return strSubstring4.concat(strSubstring);
            case 13:
                KProperty[] kPropertyArr = JavaDataStorage.d;
                ((CorruptionException) obj).getClass();
                Reflection.f71922a.b(JavaDataStorage.class).B();
                Process.myPid();
                return PreferencesFactory.a();
            case 14:
                String str4 = (String) obj;
                Regex regex = JsonAttributeSanitationKt.f26788a;
                str4.getClass();
                return Boolean.valueOf(StringsKt.P(str4, "event_properties.", false));
            case 15:
                ClassSerialDescriptorBuilder classSerialDescriptorBuilder = (ClassSerialDescriptorBuilder) obj;
                JsonElementSerializer jsonElementSerializer = JsonElementSerializer.f75746a;
                classSerialDescriptorBuilder.getClass();
                final k40 k40Var = new k40(4);
                SerialDescriptor serialDescriptor = new SerialDescriptor(k40Var) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final Lazy f75748a;

                    {
                        this.f75748a = LazyKt.b(k40Var);
                    }

                    public final SerialDescriptor a() {
                        return (SerialDescriptor) this.f75748a.getF71699b();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int c(String str5) {
                        str5.getClass();
                        return a().c(str5);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    /* JADX INFO: renamed from: d */
                    public final int getF75661c() {
                        return a().getF75661c();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    /* JADX INFO: renamed from: e */
                    public final SerialKind getF75548b() {
                        return a().getF75548b();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String f(int i3) {
                        return a().f(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List g(int i3) {
                        return a().g(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor h(int i3) {
                        return a().h(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    /* JADX INFO: renamed from: i */
                    public final String getF75659a() {
                        return a().getF75659a();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean j(int i3) {
                        return a().j(i3);
                    }
                };
                EmptyList emptyList = EmptyList.f71768b;
                classSerialDescriptorBuilder.a("JsonPrimitive", serialDescriptor, emptyList, false);
                final k40 k40Var2 = new k40(5);
                classSerialDescriptorBuilder.a("JsonNull", new SerialDescriptor(k40Var2) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final Lazy f75748a;

                    {
                        this.f75748a = LazyKt.b(k40Var2);
                    }

                    public final SerialDescriptor a() {
                        return (SerialDescriptor) this.f75748a.getF71699b();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int c(String str5) {
                        str5.getClass();
                        return a().c(str5);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    /* JADX INFO: renamed from: d */
                    public final int getF75661c() {
                        return a().getF75661c();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    /* JADX INFO: renamed from: e */
                    public final SerialKind getF75548b() {
                        return a().getF75548b();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String f(int i3) {
                        return a().f(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List g(int i3) {
                        return a().g(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor h(int i3) {
                        return a().h(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    /* JADX INFO: renamed from: i */
                    public final String getF75659a() {
                        return a().getF75659a();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean j(int i3) {
                        return a().j(i3);
                    }
                }, emptyList, false);
                final a aVar = new a();
                classSerialDescriptorBuilder.a("JsonLiteral", new SerialDescriptor(aVar) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final Lazy f75748a;

                    {
                        this.f75748a = LazyKt.b(aVar);
                    }

                    public final SerialDescriptor a() {
                        return (SerialDescriptor) this.f75748a.getF71699b();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int c(String str5) {
                        str5.getClass();
                        return a().c(str5);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    /* JADX INFO: renamed from: d */
                    public final int getF75661c() {
                        return a().getF75661c();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    /* JADX INFO: renamed from: e */
                    public final SerialKind getF75548b() {
                        return a().getF75548b();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String f(int i3) {
                        return a().f(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List g(int i3) {
                        return a().g(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor h(int i3) {
                        return a().h(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    /* JADX INFO: renamed from: i */
                    public final String getF75659a() {
                        return a().getF75659a();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean j(int i3) {
                        return a().j(i3);
                    }
                }, emptyList, false);
                final k40 k40Var3 = new k40(i2);
                classSerialDescriptorBuilder.a("JsonObject", new SerialDescriptor(k40Var3) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final Lazy f75748a;

                    {
                        this.f75748a = LazyKt.b(k40Var3);
                    }

                    public final SerialDescriptor a() {
                        return (SerialDescriptor) this.f75748a.getF71699b();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int c(String str5) {
                        str5.getClass();
                        return a().c(str5);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    /* JADX INFO: renamed from: d */
                    public final int getF75661c() {
                        return a().getF75661c();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    /* JADX INFO: renamed from: e */
                    public final SerialKind getF75548b() {
                        return a().getF75548b();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String f(int i3) {
                        return a().f(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List g(int i3) {
                        return a().g(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor h(int i3) {
                        return a().h(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    /* JADX INFO: renamed from: i */
                    public final String getF75659a() {
                        return a().getF75659a();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean j(int i3) {
                        return a().j(i3);
                    }
                }, emptyList, false);
                final k40 k40Var4 = new k40(7);
                classSerialDescriptorBuilder.a("JsonArray", new SerialDescriptor(k40Var4) { // from class: kotlinx.serialization.json.JsonElementSerializersKt$defer$1

                    /* JADX INFO: renamed from: a, reason: collision with root package name */
                    public final Lazy f75748a;

                    {
                        this.f75748a = LazyKt.b(k40Var4);
                    }

                    public final SerialDescriptor a() {
                        return (SerialDescriptor) this.f75748a.getF71699b();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final int c(String str5) {
                        str5.getClass();
                        return a().c(str5);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    /* JADX INFO: renamed from: d */
                    public final int getF75661c() {
                        return a().getF75661c();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    /* JADX INFO: renamed from: e */
                    public final SerialKind getF75548b() {
                        return a().getF75548b();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final String f(int i3) {
                        return a().f(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final List g(int i3) {
                        return a().g(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final SerialDescriptor h(int i3) {
                        return a().h(i3);
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    /* JADX INFO: renamed from: i */
                    public final String getF75659a() {
                        return a().getF75659a();
                    }

                    @Override // kotlinx.serialization.descriptors.SerialDescriptor
                    public final boolean j(int i3) {
                        return a().j(i3);
                    }
                }, emptyList, false);
                return Unit.f71739a;
            case 16:
                Map.Entry entry = (Map.Entry) obj;
                JsonObject.Companion companion = JsonObject.INSTANCE;
                entry.getClass();
                String str5 = (String) entry.getKey();
                JsonElement jsonElement = (JsonElement) entry.getValue();
                StringBuilder sb = new StringBuilder();
                StringOpsKt.a(str5, sb);
                sb.append(':');
                sb.append(jsonElement);
                return sb.toString();
            case 17:
                JsonBuilder jsonBuilder = (JsonBuilder) obj;
                Json json = JsonProviderKt.f43520a;
                jsonBuilder.getClass();
                jsonBuilder.o = true;
                jsonBuilder.m = true;
                jsonBuilder.g = true;
                jsonBuilder.l = true;
                jsonBuilder.f75725a = true;
                jsonBuilder.f75726b = false;
                jsonBuilder.f75727c = true;
                jsonBuilder.d = true;
                jsonBuilder.f75728e = false;
                jsonBuilder.f75732j = true;
                return Unit.f71739a;
            case 18:
                Integer num = (Integer) obj;
                num.intValue();
                return num;
            case 19:
                return Integer.valueOf(-((Integer) obj).intValue());
            case 20:
                return Integer.valueOf(-((Integer) obj).intValue());
            case 21:
                float f2 = LVCalendarKt.f50961a;
                ((LocalDate) obj).getClass();
                return Unit.f71739a;
            case 22:
                SemanticsPropertyReceiver semanticsPropertyReceiver7 = (SemanticsPropertyReceiver) obj;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVCheckboxKt.f48456a;
                semanticsPropertyReceiver7.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver7, Role.f10290c);
                return Unit.f71739a;
            case 23:
                ((SemanticsPropertyReceiver) obj).getClass();
                return Unit.f71739a;
            case 24:
                ((Integer) obj).intValue();
                return Unit.f71739a;
            case 25:
                ((String) obj).getClass();
                return Unit.f71739a;
            case 26:
                SemanticsPropertyReceiver semanticsPropertyReceiver8 = (SemanticsPropertyReceiver) obj;
                float f3 = LVHeaderTopBarKt.f48745a;
                semanticsPropertyReceiver8.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver8);
                return Unit.f71739a;
            case 27:
                SemanticsPropertyReceiver semanticsPropertyReceiver9 = (SemanticsPropertyReceiver) obj;
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LVLinkKt.f48485a;
                semanticsPropertyReceiver9.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver9, 0);
                return Unit.f71739a;
            case 28:
                SemanticsPropertyReceiver semanticsPropertyReceiver10 = (SemanticsPropertyReceiver) obj;
                CubicBezierEasing cubicBezierEasing = LVMediumTopBarKt.f48747a;
                semanticsPropertyReceiver10.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver10);
                return Unit.f71739a;
            default:
                SemanticsPropertyReceiver semanticsPropertyReceiver11 = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver11.getClass();
                SemanticsPropertiesKt.d(semanticsPropertyReceiver11);
                return Unit.f71739a;
        }
    }

    public /* synthetic */ x20(int i2) {
        this.f81001b = i2;
    }
}
