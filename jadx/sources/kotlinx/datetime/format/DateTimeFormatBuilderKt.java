package kotlinx.datetime.format;

import defpackage.md;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.TypeIntrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-datetime"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class DateTimeFormatBuilderKt {
    public static final void a(DateTimeFormatBuilder dateTimeFormatBuilder, Function1[] function1Arr, Function1 function1) {
        dateTimeFormatBuilder.getClass();
        function1.getClass();
        if (!(dateTimeFormatBuilder instanceof AbstractDateTimeFormatBuilder)) {
            md.k("impossible");
            return;
        }
        Function1[] function1Arr2 = (Function1[]) Arrays.copyOf(function1Arr, function1Arr.length);
        TypeIntrinsics.e(1, function1);
        ((AbstractDateTimeFormatBuilder) dateTimeFormatBuilder).e(function1Arr2, function1);
    }

    public static final void b(DateTimeFormatBuilder dateTimeFormatBuilder, char c2) {
        dateTimeFormatBuilder.getClass();
        dateTimeFormatBuilder.i(String.valueOf(c2));
    }

    public static final void c(DateTimeFormatBuilder dateTimeFormatBuilder, String str, Function1 function1) {
        dateTimeFormatBuilder.getClass();
        function1.getClass();
        if (!(dateTimeFormatBuilder instanceof AbstractDateTimeFormatBuilder)) {
            md.k("impossible");
        } else {
            TypeIntrinsics.e(1, function1);
            ((AbstractDateTimeFormatBuilder) dateTimeFormatBuilder).b(str, function1);
        }
    }
}
