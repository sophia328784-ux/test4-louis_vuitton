package com.dynatrace.agent.compose.userinteraction.handler;

import androidx.compose.ui.layout.LayoutInfo;
import androidx.compose.ui.layout.ModifierInfo;
import androidx.compose.ui.semantics.SemanticsModifier;
import com.dynatrace.agent.compose.api.DTMaskingModifier;
import com.dynatrace.agent.compose.userinteraction.model.Label;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.dynatrace.agent.compose.userinteraction.utils.ItemByteCodeSuffixProcessor;
import com.dynatrace.agent.compose.userinteraction.utils.ItemLambdaProcessor;
import com.dynatrace.agent.compose.userinteraction.utils.ItemRepeatedWordsProcessor;
import com.dynatrace.agent.compose.userinteraction.utils.ItemUnderscoreWithLambdaProcessor;
import com.dynatrace.agent.compose.userinteraction.utils.MeasurePolicyType;
import com.dynatrace.agent.compose.userinteraction.utils.StringProcessor;
import com.dynatrace.agent.compose.userinteraction.utils.UserInteractionUtilsKt;
import defpackage.fc;
import defpackage.y41;
import defpackage.z21;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler;", "", "<init>", "()V", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class TouchUserInteractionHandler {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ int f26685b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f26686a = new LinkedHashMap();

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/compose/userinteraction/handler/TouchUserInteractionHandler$Companion;", "", "", "MASKED_LABEL", "Ljava/lang/String;", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    /* JADX WARN: Code duplicated, block: B:120:0x0216  */
    /* JADX WARN: Code duplicated, block: B:57:0x0132  */
    public static String a(LayoutInfo layoutInfo, boolean z) {
        MeasurePolicyType measurePolicyType;
        String upperCase;
        List listC;
        List listC2;
        String str;
        List listC3;
        List listC4;
        List listZ = layoutInfo.z();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listZ, 10));
        Iterator it = listZ.iterator();
        while (it.hasNext()) {
            arrayList.add(((ModifierInfo) it.next()).f9537a);
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (obj instanceof DTFunctionNameModifier) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj2 : arrayList2) {
            if (!StringsKt.w(((DTFunctionNameModifier) obj2).f26697b)) {
                arrayList3.add(obj2);
            }
        }
        String strK = CollectionsKt.K(arrayList3, "->", null, null, new z21(27), 30);
        StringProcessor[] stringProcessorArr = {new ItemByteCodeSuffixProcessor(), new ItemRepeatedWordsProcessor(), new ItemUnderscoreWithLambdaProcessor(), new ItemLambdaProcessor()};
        for (int i2 = 0; i2 < 4; i2++) {
            strK = stringProcessorArr[i2].a(strK);
        }
        String str2 = null;
        if (StringsKt.w(strK)) {
            strK = null;
        }
        if (strK == null) {
            strK = null;
        } else if (z) {
            strK = StringsKt.U(strK, "->");
        }
        if (strK != null) {
            return strK;
        }
        try {
            String string = layoutInfo.toString();
            if (StringsKt.k(string, "createMeasurePolicy", false)) {
                measurePolicyType = null;
            } else {
                MatchResult matchResultB = new Regex("\\$(\\w+)MeasurePolicy\\$").b(string);
                String str3 = (matchResultB == null || (listC4 = matchResultB.c()) == null) ? null : (String) listC4.get(1);
                if (str3 == null || StringsKt.w(str3)) {
                    measurePolicyType = null;
                } else if (str3.equals("rowColumn")) {
                    MatchResult matchResultB2 = new Regex("orientation\\s*=\\s*(\\w+)").b(string);
                    String str4 = (matchResultB2 == null || (listC3 = matchResultB2.c()) == null) ? null : (String) listC3.get(1);
                    if (Intrinsics.c(str4, "Horizontal")) {
                        measurePolicyType = MeasurePolicyType.ROW;
                    } else if (Intrinsics.c(str4, "Vertical")) {
                        measurePolicyType = MeasurePolicyType.COLUMN;
                    } else {
                        measurePolicyType = null;
                    }
                } else {
                    if (str3.length() > 0) {
                        str3 = Character.toUpperCase(str3.charAt(0)) + str3.substring(1);
                    }
                    String upperCase2 = str3.toUpperCase(Locale.ROOT);
                    upperCase2.getClass();
                    int iHashCode = upperCase2.hashCode();
                    if (iHashCode != 65963) {
                        if (iHashCode != 81338) {
                            if (iHashCode == 1993459542 && upperCase2.equals("COLUMN")) {
                                measurePolicyType = MeasurePolicyType.COLUMN;
                            } else {
                                measurePolicyType = null;
                            }
                        } else if (upperCase2.equals("ROW")) {
                            measurePolicyType = MeasurePolicyType.ROW;
                        } else {
                            measurePolicyType = null;
                        }
                    } else if (upperCase2.equals("BOX")) {
                        measurePolicyType = MeasurePolicyType.BOX;
                    } else {
                        measurePolicyType = null;
                    }
                }
                if (measurePolicyType == null) {
                    MatchResult matchResultB3 = new Regex("(?:\\W|^)(\\w*MeasurePolicy)\\b").b(string);
                    String strF = (matchResultB3 == null || (listC2 = matchResultB3.c()) == null || (str = (String) listC2.get(1)) == null) ? null : StringsKt.F(str, "MeasurePolicy");
                    if (Intrinsics.c(strF, "RowColumn")) {
                        MatchResult matchResultB4 = new Regex("orientation*=*(\\w+)").b(string);
                        String str5 = (matchResultB4 == null || (listC = matchResultB4.c()) == null) ? null : (String) listC.get(1);
                        if (Intrinsics.c(str5, "Horizontal")) {
                            measurePolicyType = MeasurePolicyType.ROW;
                        } else if (Intrinsics.c(str5, "Vertical")) {
                            measurePolicyType = MeasurePolicyType.COLUMN;
                        } else {
                            measurePolicyType = null;
                        }
                    } else {
                        if (strF != null) {
                            upperCase = strF.toUpperCase(Locale.ROOT);
                            upperCase.getClass();
                        } else {
                            upperCase = null;
                        }
                        if (upperCase == null) {
                            measurePolicyType = null;
                        } else {
                            int iHashCode2 = upperCase.hashCode();
                            if (iHashCode2 != 65963) {
                                if (iHashCode2 != 81338) {
                                    if (iHashCode2 == 1993459542 && upperCase.equals("COLUMN")) {
                                        measurePolicyType = MeasurePolicyType.COLUMN;
                                    } else {
                                        measurePolicyType = null;
                                    }
                                } else if (upperCase.equals("ROW")) {
                                    measurePolicyType = MeasurePolicyType.ROW;
                                } else {
                                    measurePolicyType = null;
                                }
                            } else if (upperCase.equals("BOX")) {
                                measurePolicyType = MeasurePolicyType.BOX;
                            } else {
                                measurePolicyType = null;
                            }
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        String string2 = measurePolicyType != null ? measurePolicyType.toString() : null;
        if (string2 != null) {
            return string2;
        }
        Set set = UserInteractionUtilsKt.f26700a;
        String str6 = (String) SequencesKt.h(SequencesKt.r(SequencesKt.f(SequencesKt.f(SequencesKt.r(CollectionsKt.o(layoutInfo.z()), new y41(7)), new Function1<Object, Boolean>() { // from class: com.dynatrace.agent.compose.userinteraction.utils.UserInteractionUtilsKt$getRole$$inlined$filterIsInstance$1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj3) {
                return Boolean.valueOf(obj3 instanceof SemanticsModifier);
            }
        }), new y41(8)), new y41(9)));
        if (str6 != null) {
            str2 = str6;
        } else if (UserInteractionUtilsKt.b(layoutInfo) != null) {
            str2 = "Text";
        }
        return str2 == null ? "no-info" : str2;
    }

    public static Label b(LayoutInfo layoutInfo) {
        Set set = UserInteractionUtilsKt.f26700a;
        layoutInfo.getClass();
        List listZ = layoutInfo.z();
        if (!(listZ instanceof Collection) || !listZ.isEmpty()) {
            Iterator it = listZ.iterator();
            while (it.hasNext()) {
                if (((ModifierInfo) it.next()).f9537a instanceof DTMaskingModifier) {
                    return new Label("***", Label.Origin.MASKED);
                }
            }
        }
        String strB = UserInteractionUtilsKt.b(layoutInfo);
        return strB != null ? new Label(strB, Label.Origin.TEXT) : new Label(a(layoutInfo, true), Label.Origin.COMPONENT);
    }

    public static String c(LayoutInfo layoutInfo, ArrayList arrayList) {
        Object next;
        if (layoutInfo == null || layoutInfo.y() == null) {
            return "";
        }
        String strC = c(layoutInfo.y(), arrayList);
        String strA = a(layoutInfo, false);
        StringBuilder sb = new StringBuilder();
        sb.append(strC);
        sb.append('/');
        sb.append(strA);
        sb.append('[');
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (Integer.parseInt((String) CollectionsKt.B((List) next)) != layoutInfo.getF9689c());
        List list = (List) next;
        String strValueOf = list != null ? (String) CollectionsKt.G(1, list) : null;
        if (strValueOf == null) {
            strValueOf = String.valueOf(layoutInfo.getF9689c());
        }
        return fc.l(sb, strValueOf, ']');
    }
}
