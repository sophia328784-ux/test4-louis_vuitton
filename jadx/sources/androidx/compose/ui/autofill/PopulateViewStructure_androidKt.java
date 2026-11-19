package androidx.compose.ui.autofill;

import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.compose.ui.platform.SemanticsUtils_androidKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsInfo;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import defpackage.fc;
import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PopulateViewStructure_androidKt {
    /* JADX WARN: Code duplicated, block: B:179:0x038b  */
    /* JADX WARN: Code duplicated, block: B:184:0x0394  */
    /* JADX WARN: Code duplicated, block: B:187:0x039e  */
    /* JADX WARN: Code duplicated, block: B:188:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:191:0x03a6  */
    /* JADX WARN: Code duplicated, block: B:193:0x03b2 A[LOOP:5: B:192:0x03b0->B:193:0x03b2, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:202:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:204:0x03ef  */
    /* JADX WARN: Code duplicated, block: B:206:0x03f8  */
    /* JADX WARN: Code duplicated, block: B:247:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:248:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(final ViewStructure viewStructure, SemanticsInfo semanticsInfo, AutofillId autofillId, String str, RectManager rectManager) {
        int i2;
        long j2;
        long j3;
        long j4;
        char c2;
        boolean zBooleanValue;
        ToggleableState toggleableState;
        AnnotatedString annotatedString;
        AndroidFillableData androidFillableData;
        Role role;
        ContentDataType contentDataType;
        boolean z;
        ContentType contentType;
        Boolean bool;
        boolean z2;
        Integer num;
        int i3;
        List list;
        Integer numValueOf;
        boolean z3;
        boolean z4;
        boolean z5;
        int i4;
        String strD;
        int size;
        String strL;
        int i5;
        String[] strArrB;
        String[] strArrB2;
        MutableScatterMap mutableScatterMap;
        List list2;
        int i6;
        int i7;
        MutableScatterMap mutableScatterMap2;
        ToggleableState toggleableState2;
        AnnotatedString annotatedString2;
        AndroidFillableData androidFillableData2;
        Role role2;
        long j5;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.f10331a;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsActions.f10302a;
        SemanticsConfiguration semanticsConfigurationI = semanticsInfo.i();
        int i8 = 2;
        long j6 = -9187201950435737472L;
        int i9 = 8;
        if (semanticsConfigurationI == null || (mutableScatterMap2 = semanticsConfigurationI.f10312b) == null) {
            i2 = 2;
            j2 = -9187201950435737472L;
            j3 = 128;
            j4 = 255;
            c2 = 7;
            zBooleanValue = true;
            toggleableState = null;
            annotatedString = null;
            androidFillableData = null;
            role = null;
            contentDataType = null;
            z = false;
            contentType = null;
            bool = null;
            z2 = false;
            num = null;
        } else {
            Object[] objArr = mutableScatterMap2.f3362b;
            Object[] objArr2 = mutableScatterMap2.f3363c;
            long[] jArr = mutableScatterMap2.f3361a;
            j3 = 128;
            int length = jArr.length - 2;
            if (length >= 0) {
                zBooleanValue = true;
                int i10 = 0;
                contentDataType = null;
                z = false;
                toggleableState2 = null;
                annotatedString2 = null;
                androidFillableData2 = null;
                contentType = null;
                bool = null;
                role2 = null;
                z2 = false;
                num = null;
                j4 = 255;
                while (true) {
                    long j7 = jArr[i10];
                    i2 = i8;
                    c2 = 7;
                    if ((((~j7) << 7) & j7 & j6) != j6) {
                        int i11 = 8 - ((~(i10 - length)) >>> 31);
                        int i12 = 0;
                        while (i12 < i11) {
                            if ((j7 & 255) < 128) {
                                int i13 = (i10 << 3) + i12;
                                Object obj = objArr[i13];
                                Object obj2 = objArr2[i13];
                                j5 = j6;
                                SemanticsPropertyKey semanticsPropertyKey3 = (SemanticsPropertyKey) obj;
                                if (Intrinsics.c(semanticsPropertyKey3, SemanticsProperties.s)) {
                                    obj2.getClass();
                                    contentDataType = (ContentDataType) obj2;
                                } else if (Intrinsics.c(semanticsPropertyKey3, SemanticsProperties.f10331a)) {
                                    obj2.getClass();
                                    CharSequence charSequence = (String) CollectionsKt.firstOrNull((List) obj2);
                                    if (charSequence != null) {
                                        viewStructure.setContentDescription(charSequence);
                                    }
                                } else if (Intrinsics.c(semanticsPropertyKey3, SemanticsProperties.r)) {
                                    obj2.getClass();
                                    contentType = (ContentType) obj2;
                                } else if (Intrinsics.c(semanticsPropertyKey3, SemanticsProperties.t)) {
                                    obj2.getClass();
                                    androidFillableData2 = (AndroidFillableData) obj2;
                                } else if (Intrinsics.c(semanticsPropertyKey3, SemanticsProperties.G)) {
                                    obj2.getClass();
                                    annotatedString2 = (AnnotatedString) obj2;
                                } else if (Intrinsics.c(semanticsPropertyKey3, SemanticsProperties.l)) {
                                    obj2.getClass();
                                    viewStructure.setFocused(((Boolean) obj2).booleanValue());
                                } else if (Intrinsics.c(semanticsPropertyKey3, SemanticsProperties.P)) {
                                    obj2.getClass();
                                    num = (Integer) obj2;
                                } else if (Intrinsics.c(semanticsPropertyKey3, SemanticsProperties.L)) {
                                    z2 = true;
                                } else if (Intrinsics.c(semanticsPropertyKey3, SemanticsProperties.o)) {
                                    obj2.getClass();
                                    zBooleanValue = ((Boolean) obj2).booleanValue();
                                } else if (Intrinsics.c(semanticsPropertyKey3, SemanticsProperties.z)) {
                                    obj2.getClass();
                                    role2 = (Role) obj2;
                                } else if (Intrinsics.c(semanticsPropertyKey3, SemanticsProperties.J)) {
                                    obj2.getClass();
                                    bool = (Boolean) obj2;
                                } else if (Intrinsics.c(semanticsPropertyKey3, SemanticsProperties.K)) {
                                    obj2.getClass();
                                    toggleableState2 = (ToggleableState) obj2;
                                } else if (Intrinsics.c(semanticsPropertyKey3, SemanticsActions.f10303b)) {
                                    viewStructure.setClickable(true);
                                } else if (Intrinsics.c(semanticsPropertyKey3, SemanticsActions.f10304c)) {
                                    viewStructure.setLongClickable(true);
                                } else if (Intrinsics.c(semanticsPropertyKey3, SemanticsActions.w)) {
                                    viewStructure.setFocusable(true);
                                } else if (Intrinsics.c(semanticsPropertyKey3, SemanticsActions.f10310k)) {
                                    z = true;
                                }
                            } else {
                                j5 = j6;
                            }
                            j7 >>= 8;
                            i12++;
                            j6 = j5;
                        }
                        j2 = j6;
                        if (i11 != 8) {
                            break;
                        }
                    } else {
                        j2 = j6;
                    }
                    if (i10 == length) {
                        break;
                    }
                    i10++;
                    i8 = i2;
                    j6 = j2;
                }
            } else {
                i2 = 2;
                j2 = -9187201950435737472L;
                j4 = 255;
                c2 = 7;
                zBooleanValue = true;
                contentDataType = null;
                z = false;
                toggleableState2 = null;
                annotatedString2 = null;
                androidFillableData2 = null;
                contentType = null;
                bool = null;
                role2 = null;
                z2 = false;
                num = null;
            }
            toggleableState = toggleableState2;
            annotatedString = annotatedString2;
            androidFillableData = androidFillableData2;
            role = role2;
        }
        SemanticsConfiguration semanticsConfigurationI2 = semanticsInfo.i();
        if (semanticsConfigurationI2 != null && semanticsConfigurationI2.f10314e && !semanticsConfigurationI2.f10315f) {
            SemanticsConfiguration semanticsConfiguration = new SemanticsConfiguration();
            semanticsConfiguration.f10314e = semanticsConfigurationI2.f10314e;
            semanticsConfiguration.f10315f = semanticsConfigurationI2.f10315f;
            semanticsConfiguration.f10312b.l(semanticsConfigurationI2.f10312b);
            MutableObjectList mutableObjectList = new MutableObjectList(semanticsInfo.o().size());
            mutableObjectList.i(semanticsInfo.o());
            while (mutableObjectList.e()) {
                SemanticsInfo semanticsInfo2 = (SemanticsInfo) mutableObjectList.m(mutableObjectList.f3346b - 1);
                SemanticsConfiguration semanticsConfigurationI3 = semanticsInfo2.i();
                if (semanticsConfigurationI3 != null && !semanticsConfigurationI3.f10314e) {
                    semanticsConfiguration.i(semanticsConfigurationI3);
                    if (!semanticsConfigurationI3.f10315f) {
                        mutableObjectList.i(semanticsInfo2.o());
                    }
                }
            }
            semanticsConfigurationI2 = semanticsConfiguration;
        }
        if (semanticsConfigurationI2 == null || (mutableScatterMap = semanticsConfigurationI2.f10312b) == null) {
            i3 = 1;
            list = null;
        } else {
            Object[] objArr3 = mutableScatterMap.f3362b;
            Object[] objArr4 = mutableScatterMap.f3363c;
            long[] jArr2 = mutableScatterMap.f3361a;
            int length2 = jArr2.length - 2;
            if (length2 >= 0) {
                int i14 = 1;
                int i15 = 0;
                list2 = null;
                while (true) {
                    long j8 = jArr2[i15];
                    int i16 = i9;
                    if ((((~j8) << c2) & j8 & j2) != j2) {
                        int i17 = 8 - ((~(i15 - length2)) >>> 31);
                        int i18 = 0;
                        while (i18 < i17) {
                            if ((j8 & j4) < j3) {
                                int i19 = (i15 << 3) + i18;
                                Object obj3 = objArr3[i19];
                                Object obj4 = objArr4[i19];
                                i7 = i14;
                                SemanticsPropertyKey semanticsPropertyKey4 = (SemanticsPropertyKey) obj3;
                                if (Intrinsics.c(semanticsPropertyKey4, SemanticsProperties.f10338j)) {
                                    viewStructure.setEnabled(false);
                                } else if (Intrinsics.c(semanticsPropertyKey4, SemanticsProperties.C)) {
                                    obj4.getClass();
                                    list2 = (List) obj4;
                                }
                            } else {
                                i7 = i14;
                            }
                            j8 >>= i16;
                            i18++;
                            i14 = i7;
                        }
                        i3 = i14;
                        i6 = i16;
                        if (i17 != i6) {
                            break;
                        }
                    } else {
                        i3 = i14;
                        i6 = i16;
                    }
                    if (i15 == length2) {
                        break;
                    }
                    i15++;
                    i9 = i6;
                    i14 = i3;
                }
            } else {
                i3 = 1;
                list2 = null;
            }
            list = list2;
        }
        Integer numValueOf2 = Integer.valueOf(semanticsInfo.getF9689c());
        if (semanticsInfo.j() == null) {
            numValueOf2 = null;
        }
        int iIntValue = numValueOf2 != null ? numValueOf2.intValue() : -1;
        viewStructure.setAutofillId(autofillId, iIntValue);
        viewStructure.setId(iIntValue, str, null, null);
        if (contentDataType != null) {
            numValueOf = Integer.valueOf(((AndroidContentDataType) contentDataType).f8639a);
        } else if (z) {
            numValueOf = Integer.valueOf(i3);
        } else {
            numValueOf = toggleableState != null ? Integer.valueOf(i2) : null;
        }
        if (numValueOf != null) {
            viewStructure.setAutofillType(numValueOf.intValue());
        }
        if (annotatedString != null) {
            viewStructure.setAutofillValue(AutofillApi26Helper.a(annotatedString.f10420c));
        }
        if (androidFillableData != null) {
            viewStructure.setAutofillValue(androidFillableData.f8641a);
        }
        if (contentType != null && (strArrB2 = ContentType_androidKt.b(contentType)) != null) {
            viewStructure.setAutofillHints(strArrB2);
        }
        rectManager.f10385b.e(semanticsInfo.getF9689c(), new Function4<Integer, Integer, Integer, Integer, Unit>() { // from class: androidx.compose.ui.autofill.PopulateViewStructure_androidKt$populate$7
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(4);
            }

            @Override // kotlin.jvm.functions.Function4
            public final Object g(Object obj5, Object obj6, Object obj7, Object obj8) {
                int iIntValue2 = ((Number) obj5).intValue();
                int iIntValue3 = ((Number) obj6).intValue();
                int iIntValue4 = ((Number) obj7).intValue();
                int iIntValue5 = ((Number) obj8).intValue() - iIntValue3;
                viewStructure.setDimens(iIntValue2, iIntValue3, 0, 0, iIntValue4 - iIntValue2, iIntValue5);
                return Unit.f71739a;
            }
        });
        if (bool != null) {
            viewStructure.setSelected(bool.booleanValue());
        }
        if (toggleableState != null) {
            viewStructure.setCheckable(i3);
            viewStructure.setChecked(toggleableState == ToggleableState.On);
        } else if (bool != null) {
            Role.f10289b.getClass();
            int i20 = Role.f10292f;
            if (role == null || role.f10296a != i20) {
                viewStructure.setCheckable(true);
                viewStructure.setChecked(bool.booleanValue());
            }
        }
        ContentType.f8649a.getClass();
        String str2 = (String) ArraysKt.w(ContentType_androidKt.b(ContentType.Companion.f8652c));
        if (contentType != null && (strArrB = ContentType_androidKt.b(contentType)) != null) {
            z3 = true;
            boolean z6 = ArraysKt.f(str2, strArrB);
            if (!z2 || z6) {
                z4 = z3;
            } else {
                z4 = false;
            }
            if (!z4 || zBooleanValue) {
                z5 = z3;
            } else {
                z5 = false;
            }
            viewStructure.setDataIsSensitive(z5);
            if (semanticsInfo.p()) {
                i4 = 4;
            } else {
                i4 = 0;
            }
            viewStructure.setVisibility(i4);
            if (list != null) {
                size = list.size();
                strL = "";
                for (i5 = 0; i5 < size; i5++) {
                    strL = fc.l(n00.t(strL), ((AnnotatedString) list.get(i5)).f10420c, '\n');
                }
                viewStructure.setText(strL);
                viewStructure.setClassName("android.widget.TextView");
            }
            if (semanticsInfo.o().isEmpty() && role != null && (strD = SemanticsUtils_androidKt.d(role.f10296a)) != null) {
                viewStructure.setClassName(strD);
            }
            if (z) {
                viewStructure.setClassName("android.widget.EditText");
                if (num != null) {
                    viewStructure.setMaxTextLength(num.intValue());
                }
                if (z4) {
                    viewStructure.setInputType(129);
                }
            }
        }
        z3 = true;
        if (z2) {
            z4 = z3;
        } else {
            z4 = z3;
        }
        if (z4) {
            z5 = z3;
        } else {
            z5 = z3;
        }
        viewStructure.setDataIsSensitive(z5);
        if (semanticsInfo.p()) {
            i4 = 4;
        } else {
            i4 = 0;
        }
        viewStructure.setVisibility(i4);
        if (list != null) {
            size = list.size();
            strL = "";
            while (i5 < size) {
                strL = fc.l(n00.t(strL), ((AnnotatedString) list.get(i5)).f10420c, '\n');
            }
            viewStructure.setText(strL);
            viewStructure.setClassName("android.widget.TextView");
        }
        if (semanticsInfo.o().isEmpty()) {
            viewStructure.setClassName(strD);
        }
        if (z) {
            viewStructure.setClassName("android.widget.EditText");
            if (num != null) {
                viewStructure.setMaxTextLength(num.intValue());
            }
            if (z4) {
                viewStructure.setInputType(129);
            }
        }
    }
}
