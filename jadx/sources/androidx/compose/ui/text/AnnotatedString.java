package androidx.compose.ui.text;

import androidx.collection.IntListKt;
import androidx.collection.MutableIntList;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.fc;
import defpackage.tr;
import defpackage.z21;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001:\u0004\u0010\u0011\u0012\u0013B)\b\u0000\u0012\u0016\u0010\u0005\u001a\u0012\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tB=\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u00030\u0002\u0012\u0014\b\u0002\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00030\u0002¢\u0006\u0004\b\b\u0010\u000eB)\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0016\b\u0002\u0010\u0005\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u00030\u0002¢\u0006\u0004\b\b\u0010\u000f¨\u0006\u0014"}, d2 = {"Landroidx/compose/ui/text/AnnotatedString;", "", "", "Landroidx/compose/ui/text/AnnotatedString$Range;", "Landroidx/compose/ui/text/AnnotatedString$Annotation;", "annotations", "", "text", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "Landroidx/compose/ui/text/SpanStyle;", "spanStyles", "Landroidx/compose/ui/text/ParagraphStyle;", "paragraphStyles", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V", "(Ljava/lang/String;Ljava/util/List;)V", "Range", "Builder", "Annotation", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AnnotatedString implements CharSequence {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ int f10418f = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f10419b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f10420c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f10421e;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001\u0082\u0001\u0007\u0002\u0003\u0004\u0005\u0006\u0007\bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Landroidx/compose/ui/text/AnnotatedString$Annotation;", "", "Landroidx/compose/ui/text/Bullet;", "Landroidx/compose/ui/text/LinkAnnotation;", "Landroidx/compose/ui/text/ParagraphStyle;", "Landroidx/compose/ui/text/SpanStyle;", "Landroidx/compose/ui/text/StringAnnotation;", "Landroidx/compose/ui/text/TtsAnnotation;", "Landroidx/compose/ui/text/UrlAnnotation;", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Annotation {
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/AnnotatedString$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.f10504a;
    }

    public AnnotatedString(List<? extends Range<? extends Annotation>> list, String str) {
        ArrayList arrayList;
        ArrayList arrayList2;
        this.f10419b = list;
        this.f10420c = str;
        if (list != null) {
            int size = list.size();
            arrayList = null;
            arrayList2 = null;
            for (int i2 = 0; i2 < size; i2++) {
                Range<? extends Annotation> range = list.get(i2);
                Object obj = range.f10428a;
                if (obj instanceof SpanStyle) {
                    arrayList = arrayList == null ? new ArrayList() : arrayList;
                    arrayList.add(range);
                } else if (obj instanceof ParagraphStyle) {
                    arrayList2 = arrayList2 == null ? new ArrayList() : arrayList2;
                    arrayList2.add(range);
                }
            }
        } else {
            arrayList = null;
            arrayList2 = null;
        }
        this.d = arrayList;
        this.f10421e = arrayList2;
        List listO0 = arrayList2 != null ? CollectionsKt.o0(arrayList2, new Comparator() { // from class: androidx.compose.ui.text.AnnotatedString$special$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(Object obj2, Object obj3) {
                return Integer.valueOf(((AnnotatedString.Range) obj2).f10429b).compareTo(Integer.valueOf(((AnnotatedString.Range) obj3).f10429b));
            }
        }) : null;
        List list2 = listO0;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        int i3 = ((Range) CollectionsKt.B(listO0)).f10430c;
        MutableIntList mutableIntList = IntListKt.f3257a;
        MutableIntList mutableIntList2 = new MutableIntList(1);
        mutableIntList2.e(i3);
        int size2 = listO0.size();
        for (int i4 = 1; i4 < size2; i4++) {
            Range range2 = (Range) listO0.get(i4);
            while (mutableIntList2.f3256b != 0) {
                int iC = mutableIntList2.c();
                int i5 = range2.f10429b;
                int i6 = range2.f10430c;
                if (i5 < iC) {
                    if (i6 > iC) {
                        InlineClassHelperKt.a("Paragraph overlap not allowed, end " + i6 + " should be less than or equal to " + iC);
                        break;
                    }
                    break;
                }
                mutableIntList2.g(mutableIntList2.f3256b - 1);
            }
            mutableIntList2.e(range2.f10430c);
        }
    }

    public final AnnotatedString a(z21 z21Var) {
        Builder builder = new Builder(this);
        ArrayList arrayList = builder.d;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Builder.MutableRange mutableRange = (Builder.MutableRange) arrayList.get(i2);
            Builder.MutableRange.Companion companion = Builder.MutableRange.f10424e;
            List list = (List) z21Var.invoke(mutableRange.a(Integer.MIN_VALUE));
            ArrayList arrayList3 = new ArrayList(list.size());
            int size2 = list.size();
            for (int i3 = 0; i3 < size2; i3++) {
                Range range = (Range) list.get(i3);
                Builder.MutableRange.f10424e.getClass();
                arrayList3.add(new Builder.MutableRange(range.f10428a, range.f10429b, range.f10430c, range.d));
            }
            CollectionsKt.j(arrayList2, arrayList3);
        }
        arrayList.clear();
        arrayList.addAll(arrayList2);
        return builder.i();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, java.util.List] */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.ArrayList] */
    public final List b(int i2) {
        ?? arrayList;
        List list = this.f10419b;
        if (list != null) {
            arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                Object obj = list.get(i3);
                Range range = (Range) obj;
                if ((range.f10428a instanceof LinkAnnotation) && AnnotatedStringKt.b(0, i2, range.f10429b, range.f10430c)) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = EmptyList.f71768b;
        }
        arrayList.getClass();
        return arrayList;
    }

    public final List c(int i2, int i3, String str) {
        List list = this.f10419b;
        if (list == null) {
            return EmptyList.f71768b;
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            Range range = (Range) list.get(i4);
            Object obj = range.f10428a;
            int i5 = range.f10430c;
            int i6 = range.f10429b;
            String str2 = range.d;
            if ((obj instanceof StringAnnotation) && str.equals(str2) && AnnotatedStringKt.b(i2, i3, i6, i5)) {
                Object obj2 = range.f10428a;
                obj2.getClass();
                arrayList.add(new Range(((StringAnnotation) obj2).f10534a, i6, i5, str2));
            }
        }
        return arrayList;
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i2) {
        return this.f10420c.charAt(i2);
    }

    public final boolean d(int i2) {
        List list = this.f10419b;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                Range range = (Range) list.get(i3);
                if ((range.f10428a instanceof LinkAnnotation) && AnnotatedStringKt.b(0, i2, range.f10429b, range.f10430c)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final AnnotatedString e(Function1 function1) {
        Builder builder = new Builder(this);
        ArrayList arrayList = builder.d;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            Builder.MutableRange mutableRange = (Builder.MutableRange) arrayList.get(i2);
            Builder.MutableRange.Companion companion = Builder.MutableRange.f10424e;
            Range range = (Range) function1.invoke(mutableRange.a(Integer.MIN_VALUE));
            Builder.MutableRange.f10424e.getClass();
            arrayList.set(i2, new Builder.MutableRange(range.f10428a, range.f10429b, range.f10430c, range.d));
        }
        return builder.i();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnnotatedString)) {
            return false;
        }
        AnnotatedString annotatedString = (AnnotatedString) obj;
        return Intrinsics.c(this.f10420c, annotatedString.f10420c) && Intrinsics.c(this.f10419b, annotatedString.f10419b);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x009c  */
    @Override // java.lang.CharSequence
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public final AnnotatedString subSequence(int i2, int i3) {
        ArrayList arrayList;
        if (!(i2 <= i3)) {
            InlineClassHelperKt.a("start (" + i2 + ") should be less or equal to end (" + i3 + ')');
        }
        String str = this.f10420c;
        if (i2 == 0 && i3 == str.length()) {
            return this;
        }
        String strSubstring = str.substring(i2, i3);
        AnnotatedString annotatedString = AnnotatedStringKt.f10431a;
        if (i2 > i3) {
            InlineClassHelperKt.a("start (" + i2 + ") should be less than or equal to end (" + i3 + ')');
        }
        List list = this.f10419b;
        if (list == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                Range range = (Range) list.get(i4);
                int i5 = range.f10429b;
                int i6 = range.f10430c;
                if (AnnotatedStringKt.b(i2, i3, i5, i6)) {
                    arrayList.add(new Range(range.f10428a, Math.max(i2, range.f10429b) - i2, Math.min(i3, i6) - i2, range.d));
                }
            }
            if (arrayList.isEmpty()) {
                arrayList = null;
            }
        }
        return new AnnotatedString(arrayList, strSubstring);
    }

    public final int hashCode() {
        int iHashCode = this.f10420c.hashCode() * 31;
        List list = this.f10419b;
        return iHashCode + (list != null ? list.hashCode() : 0);
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.f10420c.length();
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.f10420c;
    }

    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0002\f\rB\u0011\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\tB\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\n¢\u0006\u0004\b\u0005\u0010\u000b¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/text/AnnotatedString$Builder;", "Ljava/lang/Appendable;", "Lkotlin/text/Appendable;", "", "capacity", "<init>", "(I)V", "", "text", "(Ljava/lang/String;)V", "Landroidx/compose/ui/text/AnnotatedString;", "(Landroidx/compose/ui/text/AnnotatedString;)V", "MutableRange", "BulletScope", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Builder implements Appendable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final StringBuilder f10422b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f10423c;
        public final ArrayList d;

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/AnnotatedString$Builder$BulletScope;", "", "Landroidx/compose/ui/text/AnnotatedString$Builder;", "builder", "<init>", "(Landroidx/compose/ui/text/AnnotatedString$Builder;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class BulletScope {
            public BulletScope(Builder builder) {
                new ArrayList();
            }
        }

        public Builder(int i2) {
            this.f10422b = new StringBuilder(i2);
            this.f10423c = new ArrayList();
            this.d = new ArrayList();
            new BulletScope(this);
        }

        public final void a(LinkAnnotation.Clickable clickable, int i2, int i3) {
            this.d.add(new MutableRange(clickable, i2, i3, null, 8, null));
        }

        @Override // java.lang.Appendable
        public final Appendable append(CharSequence charSequence, int i2, int i3) {
            boolean z = charSequence instanceof AnnotatedString;
            StringBuilder sb = this.f10422b;
            if (!z) {
                sb.append(charSequence, i2, i3);
                return this;
            }
            AnnotatedString annotatedString = (AnnotatedString) charSequence;
            int length = sb.length();
            sb.append((CharSequence) annotatedString.f10420c, i2, i3);
            List listA = AnnotatedStringKt.a(annotatedString, i2, i3, null);
            if (listA != null) {
                int size = listA.size();
                for (int i4 = 0; i4 < size; i4++) {
                    Range range = (Range) listA.get(i4);
                    this.d.add(new MutableRange(range.f10428a, range.f10429b + length, range.f10430c + length, range.d));
                }
            }
            return this;
        }

        public final void b(int i2, int i3, String str, String str2) {
            this.d.add(new MutableRange(new StringAnnotation(str2), i2, i3, str));
        }

        public final void c(SpanStyle spanStyle, int i2, int i3) {
            this.d.add(new MutableRange(spanStyle, i2, i3, null, 8, null));
        }

        public final void d(AnnotatedString annotatedString) {
            StringBuilder sb = this.f10422b;
            int length = sb.length();
            sb.append(annotatedString.f10420c);
            List list = annotatedString.f10419b;
            if (list != null) {
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    Range range = (Range) list.get(i2);
                    this.d.add(new MutableRange(range.f10428a, range.f10429b + length, range.f10430c + length, range.d));
                }
            }
        }

        public final void e(String str) {
            this.f10422b.append(str);
        }

        public final void f(int i2) {
            ArrayList arrayList = this.f10423c;
            if (i2 >= arrayList.size()) {
                InlineClassHelperKt.c(i2 + " should be less than " + arrayList.size());
            }
            while (arrayList.size() - 1 >= i2) {
                if (arrayList.isEmpty()) {
                    InlineClassHelperKt.c("Nothing to pop.");
                }
                ((MutableRange) arrayList.remove(arrayList.size() - 1)).f10427c = this.f10422b.length();
            }
        }

        public final int g(LinkAnnotation.Url url) {
            MutableRange mutableRange = new MutableRange(url, this.f10422b.length(), 0, null, 12, null);
            ArrayList arrayList = this.f10423c;
            arrayList.add(mutableRange);
            this.d.add(mutableRange);
            return arrayList.size() - 1;
        }

        public final int h(SpanStyle spanStyle) {
            MutableRange mutableRange = new MutableRange(spanStyle, this.f10422b.length(), 0, null, 12, null);
            ArrayList arrayList = this.f10423c;
            arrayList.add(mutableRange);
            this.d.add(mutableRange);
            return arrayList.size() - 1;
        }

        public final AnnotatedString i() {
            StringBuilder sb = this.f10422b;
            String string = sb.toString();
            ArrayList arrayList = this.d;
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                arrayList2.add(((MutableRange) arrayList.get(i2)).a(sb.length()));
            }
            return new AnnotatedString(string, arrayList2);
        }

        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0082\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002:\u0001\u000bB+\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange;", "T", "", "item", "", "start", "end", "", "tag", "<init>", "(Ljava/lang/Object;IILjava/lang/String;)V", "Companion", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final /* data */ class MutableRange<T> {

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public static final Companion f10424e = new Companion(null);

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final Object f10425a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final int f10426b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f10427c;
            public final String d;

            @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/AnnotatedString$Builder$MutableRange$Companion;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
            public static final class Companion {
                public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                }
            }

            public /* synthetic */ MutableRange(Object obj, int i2, int i3, String str, int i4, DefaultConstructorMarker defaultConstructorMarker) {
                this(obj, i2, (i4 & 4) != 0 ? Integer.MIN_VALUE : i3, (i4 & 8) != 0 ? "" : str);
            }

            public final Range a(int i2) {
                int i3 = this.f10427c;
                if (i3 != Integer.MIN_VALUE) {
                    i2 = i3;
                }
                if (!(i2 != Integer.MIN_VALUE)) {
                    InlineClassHelperKt.c("Item.end should be set first");
                }
                return new Range(this.f10425a, this.f10426b, i2, this.d);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof MutableRange)) {
                    return false;
                }
                MutableRange mutableRange = (MutableRange) obj;
                return Intrinsics.c(this.f10425a, mutableRange.f10425a) && this.f10426b == mutableRange.f10426b && this.f10427c == mutableRange.f10427c && Intrinsics.c(this.d, mutableRange.d);
            }

            public final int hashCode() {
                Object obj = this.f10425a;
                return this.d.hashCode() + tr.b(this.f10427c, tr.b(this.f10426b, (obj == null ? 0 : obj.hashCode()) * 31, 31), 31);
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("MutableRange(item=");
                sb.append(this.f10425a);
                sb.append(", start=");
                sb.append(this.f10426b);
                sb.append(", end=");
                sb.append(this.f10427c);
                sb.append(", tag=");
                return fc.l(sb, this.d, ')');
            }

            public MutableRange(T t, int i2, int i3, String str) {
                this.f10425a = t;
                this.f10426b = i2;
                this.f10427c = i3;
                this.d = str;
            }
        }

        public Builder() {
            this(0, 1, null);
        }

        public /* synthetic */ Builder(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this((i3 & 1) != 0 ? 16 : i2);
        }

        public Builder(String str) {
            this(0, 1, null);
            e(str);
        }

        public Builder(AnnotatedString annotatedString) {
            this(0, 1, null);
            d(annotatedString);
        }

        @Override // java.lang.Appendable
        public final Appendable append(CharSequence charSequence) {
            if (charSequence instanceof AnnotatedString) {
                d((AnnotatedString) charSequence);
                return this;
            }
            this.f10422b.append(charSequence);
            return this;
        }

        @Override // java.lang.Appendable
        public final Appendable append(char c2) {
            this.f10422b.append(c2);
            return this;
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B'\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nB!\b\u0016\u0012\u0006\u0010\u0003\u001a\u00028\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004¢\u0006\u0004\b\t\u0010\u000b¨\u0006\f"}, d2 = {"Landroidx/compose/ui/text/AnnotatedString$Range;", "T", "", "item", "", "start", "end", "", "tag", "<init>", "(Ljava/lang/Object;IILjava/lang/String;)V", "(Ljava/lang/Object;II)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class Range<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f10428a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f10429b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f10430c;
        public final String d;

        public Range(T t, int i2, int i3, String str) {
            this.f10428a = t;
            this.f10429b = i2;
            this.f10430c = i3;
            this.d = str;
            if (i2 <= i3) {
                return;
            }
            InlineClassHelperKt.a("Reversed range is not supported");
        }

        public static Range a(Range range, Annotation annotation, int i2, int i3) {
            Object obj = annotation;
            if ((i3 & 1) != 0) {
                obj = range.f10428a;
            }
            int i4 = range.f10429b;
            if ((i3 & 4) != 0) {
                i2 = range.f10430c;
            }
            String str = range.d;
            range.getClass();
            return new Range(obj, i4, i2, str);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Range)) {
                return false;
            }
            Range range = (Range) obj;
            return Intrinsics.c(this.f10428a, range.f10428a) && this.f10429b == range.f10429b && this.f10430c == range.f10430c && Intrinsics.c(this.d, range.d);
        }

        public final int hashCode() {
            Object obj = this.f10428a;
            return this.d.hashCode() + tr.b(this.f10430c, tr.b(this.f10429b, (obj == null ? 0 : obj.hashCode()) * 31, 31), 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("Range(item=");
            sb.append(this.f10428a);
            sb.append(", start=");
            sb.append(this.f10429b);
            sb.append(", end=");
            sb.append(this.f10430c);
            sb.append(", tag=");
            return fc.l(sb, this.d, ')');
        }

        public Range(T t, int i2, int i3) {
            this(t, i2, i3, "");
        }
    }

    public AnnotatedString(String str, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (List<? extends Range<? extends Annotation>>) ((i2 & 2) != 0 ? EmptyList.f71768b : list));
    }

    public AnnotatedString(String str, List list, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? EmptyList.f71768b : list, (i2 & 4) != 0 ? EmptyList.f71768b : list2);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AnnotatedString(String str, List<Range<SpanStyle>> list, List<Range<ParagraphStyle>> list2) {
        List list3;
        AnnotatedString annotatedString = AnnotatedStringKt.f10431a;
        if (list.isEmpty() && list2.isEmpty()) {
            list3 = null;
        } else {
            list3 = list;
            if (!list2.isEmpty()) {
                if (list.isEmpty()) {
                    list3 = list2;
                } else {
                    ArrayList arrayList = new ArrayList(list2.size() + list.size());
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        arrayList.add(list.get(i2));
                    }
                    int size2 = list2.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        arrayList.add(list2.get(i3));
                    }
                    list3 = arrayList;
                }
            }
        }
        this((List<? extends Range<? extends Annotation>>) list3, str);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public AnnotatedString(String str, List<? extends Range<? extends Annotation>> list) {
        List<? extends Range<? extends Annotation>> list2 = list;
        this(list2.isEmpty() ? null : list2, str);
    }
}
