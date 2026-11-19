package androidx.compose.ui.text;

import defpackage.u5;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AnnotatedStringKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AnnotatedString f10431a = new AnnotatedString("", null, 2, null);

    public static final List a(AnnotatedString annotatedString, int i2, int i3, u5 u5Var) {
        List list;
        if (i2 == i3 || (list = annotatedString.f10419b) == null) {
            return null;
        }
        int i4 = 0;
        if (i2 == 0 && i3 >= annotatedString.f10420c.length()) {
            if (u5Var == null) {
                return list;
            }
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            while (i4 < size) {
                Object obj = list.get(i4);
                if (((Boolean) u5Var.invoke(((AnnotatedString.Range) obj).f10428a)).booleanValue()) {
                    arrayList.add(obj);
                }
                i4++;
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(list.size());
        int size2 = list.size();
        while (i4 < size2) {
            AnnotatedString.Range range = (AnnotatedString.Range) list.get(i4);
            if (u5Var != null ? ((Boolean) u5Var.invoke(range.f10428a)).booleanValue() : true) {
                int i5 = range.f10429b;
                int i6 = range.f10430c;
                if (b(i2, i3, i5, i6)) {
                    arrayList2.add(new AnnotatedString.Range((AnnotatedString.Annotation) range.f10428a, RangesKt.d(range.f10429b, i2, i3) - i2, RangesKt.d(i6, i2, i3) - i2, range.d));
                }
            }
            i4++;
        }
        return arrayList2;
    }

    public static final boolean b(int i2, int i3, int i4, int i5) {
        return ((i2 < i5) & (i4 < i3)) | (((i2 == i3) | (i4 == i5)) & (i2 == i4));
    }
}
