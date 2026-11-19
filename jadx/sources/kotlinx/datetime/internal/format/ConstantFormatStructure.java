package kotlinx.datetime.internal.format;

import defpackage.fc;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.datetime.internal.UtilKt;
import kotlinx.datetime.internal.format.formatter.ConstantStringFormatterStructure;
import kotlinx.datetime.internal.format.formatter.FormatterStructure;
import kotlinx.datetime.internal.format.parser.ConstantNumberConsumer;
import kotlinx.datetime.internal.format.parser.NumberSpanParserOperation;
import kotlinx.datetime.internal.format.parser.ParserStructure;
import kotlinx.datetime.internal.format.parser.PlainStringParserOperation;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\b\u0012\u0004\u0012\u00028\u00000\u0002B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lkotlinx/datetime/internal/format/ConstantFormatStructure;", "T", "Lkotlinx/datetime/internal/format/NonConcatenatedFormatStructure;", "", "string", "<init>", "(Ljava/lang/String;)V", "kotlinx-datetime"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConstantFormatStructure<T> implements NonConcatenatedFormatStructure<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f75391a;

    public ConstantFormatStructure(String str) {
        str.getClass();
        this.f75391a = str;
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    /* JADX INFO: renamed from: a */
    public final FormatterStructure getF75385b() {
        return new ConstantStringFormatterStructure(this.f75391a);
    }

    @Override // kotlinx.datetime.internal.format.FormatStructure
    /* JADX INFO: renamed from: b */
    public final ParserStructure getF75386c() {
        List listR;
        String strSubstring;
        String strSubstring2 = this.f75391a;
        if (strSubstring2.length() == 0) {
            listR = EmptyList.f71768b;
        } else {
            ListBuilder listBuilderV = CollectionsKt.v();
            String strSubstring3 = "";
            if (UtilKt.a(strSubstring2.charAt(0))) {
                int length = strSubstring2.length();
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        strSubstring = strSubstring2;
                        break;
                    }
                    if (!UtilKt.a(strSubstring2.charAt(i2))) {
                        strSubstring = strSubstring2.substring(0, i2);
                        break;
                    }
                    i2++;
                }
                listBuilderV.add(new NumberSpanParserOperation(CollectionsKt.O(new ConstantNumberConsumer(strSubstring))));
                int length2 = strSubstring2.length();
                int i3 = 0;
                while (true) {
                    if (i3 >= length2) {
                        strSubstring2 = "";
                        break;
                    }
                    if (!UtilKt.a(strSubstring2.charAt(i3))) {
                        strSubstring2 = strSubstring2.substring(i3);
                        break;
                    }
                    i3++;
                }
            }
            if (strSubstring2.length() > 0) {
                if (UtilKt.a(strSubstring2.charAt(strSubstring2.length() - 1))) {
                    int length3 = strSubstring2.length();
                    while (true) {
                        length3--;
                        if (-1 >= length3) {
                            break;
                        }
                        if (!UtilKt.a(strSubstring2.charAt(length3))) {
                            strSubstring3 = strSubstring2.substring(0, length3 + 1);
                            break;
                        }
                    }
                    listBuilderV.add(new PlainStringParserOperation(strSubstring3));
                    for (int length4 = strSubstring2.length() - 1; -1 < length4; length4--) {
                        if (!UtilKt.a(strSubstring2.charAt(length4))) {
                            strSubstring2 = strSubstring2.substring(length4 + 1);
                            break;
                        }
                    }
                    listBuilderV.add(new NumberSpanParserOperation(CollectionsKt.O(new ConstantNumberConsumer(strSubstring2))));
                } else {
                    listBuilderV.add(new PlainStringParserOperation(strSubstring2));
                }
            }
            listR = CollectionsKt.r(listBuilderV);
        }
        return new ParserStructure(listR, EmptyList.f71768b);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ConstantFormatStructure) {
            return Intrinsics.c(this.f75391a, ((ConstantFormatStructure) obj).f75391a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f75391a.hashCode();
    }

    public final String toString() {
        return fc.l(new StringBuilder("ConstantFormatStructure("), this.f75391a, ')');
    }
}
