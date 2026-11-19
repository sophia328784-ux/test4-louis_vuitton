package kotlinx.serialization.internal;

import java.lang.annotation.Annotation;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"kotlinx-serialization-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class EnumsKt {
    public static final EnumSerializer a(String str, Enum[] enumArr, String[] strArr, Annotation[][] annotationArr) {
        enumArr.getClass();
        EnumDescriptor enumDescriptor = new EnumDescriptor(str, enumArr.length);
        int length = enumArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            Enum r5 = enumArr[i2];
            int i4 = i3 + 1;
            String strName = (String) ArraysKt.C(i3, strArr);
            if (strName == null) {
                strName = r5.name();
            }
            enumDescriptor.k(strName, false);
            Annotation[] annotationArr2 = (Annotation[]) ArraysKt.C(i3, annotationArr);
            if (annotationArr2 != null) {
                for (Annotation annotation : annotationArr2) {
                    enumDescriptor.l(annotation);
                }
            }
            i2++;
            i3 = i4;
        }
        return new EnumSerializer(str, enumArr, enumDescriptor);
    }
}
