package androidx.compose.ui.text;

import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.util.ListUtilsKt;
import defpackage.ba0;
import defpackage.fc;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class MultiParagraphKt {
    public static final int a(int i2, List list) {
        int i3;
        byte b2;
        int i4 = ((ParagraphInfo) CollectionsKt.M(list)).f10473c;
        if (i2 > ((ParagraphInfo) CollectionsKt.M(list)).f10473c) {
            InlineClassHelperKt.a("Index " + i2 + " should be less or equal than last line's end " + i4);
        }
        int size = list.size() - 1;
        int i5 = 0;
        while (true) {
            if (i5 > size) {
                i3 = -(i5 + 1);
                break;
            }
            i3 = (i5 + size) >>> 1;
            ParagraphInfo paragraphInfo = (ParagraphInfo) list.get(i3);
            if (paragraphInfo.f10472b > i2) {
                b2 = 1;
            } else {
                b2 = paragraphInfo.f10473c <= i2 ? (byte) -1 : (byte) 0;
            }
            if (b2 >= 0) {
                if (b2 <= 0) {
                    break;
                }
                size = i3 - 1;
            } else {
                i5 = i3 + 1;
            }
        }
        if (i3 >= 0 && i3 < list.size()) {
            return i3;
        }
        StringBuilder sbQ = fc.q(i3, "Found paragraph index ", " should be in range [0, ");
        sbQ.append(list.size());
        sbQ.append(").\nDebug info: index=");
        sbQ.append(i2);
        sbQ.append(", paragraphs=[");
        sbQ.append(ListUtilsKt.a(list, null, new ba0(14), 31));
        sbQ.append(']');
        InlineClassHelperKt.a(sbQ.toString());
        return i3;
    }

    public static final int b(int i2, List list) {
        byte b2;
        int size = list.size() - 1;
        int i3 = 0;
        while (i3 <= size) {
            int i4 = (i3 + size) >>> 1;
            ParagraphInfo paragraphInfo = (ParagraphInfo) list.get(i4);
            if (paragraphInfo.d > i2) {
                b2 = 1;
            } else {
                b2 = paragraphInfo.f10474e <= i2 ? (byte) -1 : (byte) 0;
            }
            if (b2 < 0) {
                i3 = i4 + 1;
            } else {
                if (b2 <= 0) {
                    return i4;
                }
                size = i4 - 1;
            }
        }
        return -(i3 + 1);
    }

    public static final int c(ArrayList arrayList, float f2) {
        byte b2;
        if (f2 <= Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            return 0;
        }
        if (f2 >= ((ParagraphInfo) CollectionsKt.M(arrayList)).g) {
            return arrayList.size() - 1;
        }
        int size = arrayList.size() - 1;
        int i2 = 0;
        while (i2 <= size) {
            int i3 = (i2 + size) >>> 1;
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i3);
            if (paragraphInfo.f10475f > f2) {
                b2 = 1;
            } else {
                b2 = paragraphInfo.g <= f2 ? (byte) -1 : (byte) 0;
            }
            if (b2 < 0) {
                i2 = i3 + 1;
            } else {
                if (b2 <= 0) {
                    return i3;
                }
                size = i3 - 1;
            }
        }
        return -(i2 + 1);
    }

    public static final void d(ArrayList arrayList, long j2, Function1 function1) {
        int size = arrayList.size();
        for (int iA = a(TextRange.f(j2), arrayList); iA < size; iA++) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(iA);
            if (paragraphInfo.f10472b >= TextRange.e(j2)) {
                return;
            }
            if (paragraphInfo.f10472b != paragraphInfo.f10473c) {
                function1.invoke(paragraphInfo);
            }
        }
    }
}
