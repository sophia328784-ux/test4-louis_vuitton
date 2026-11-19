package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.Map;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
class AbstractSignatureParts$$Lambda$3 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final TypeEnhancementInfo f73093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final JavaTypeQualifiers[] f73094c;

    public AbstractSignatureParts$$Lambda$3(TypeEnhancementInfo typeEnhancementInfo, JavaTypeQualifiers[] javaTypeQualifiersArr) {
        this.f73093b = typeEnhancementInfo;
        this.f73094c = javaTypeQualifiersArr;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Map map;
        JavaTypeQualifiers javaTypeQualifiers;
        int iIntValue = ((Number) obj).intValue();
        TypeEnhancementInfo typeEnhancementInfo = this.f73093b;
        if (typeEnhancementInfo != null && (map = typeEnhancementInfo.f73190a) != null && (javaTypeQualifiers = (JavaTypeQualifiers) map.get(Integer.valueOf(iIntValue))) != null) {
            return javaTypeQualifiers;
        }
        if (iIntValue >= 0) {
            JavaTypeQualifiers[] javaTypeQualifiersArr = this.f73094c;
            if (iIntValue < javaTypeQualifiersArr.length) {
                return javaTypeQualifiersArr[iIntValue];
            }
        }
        JavaTypeQualifiers.f73108e.getClass();
        return JavaTypeQualifiers.f73109f;
    }
}
