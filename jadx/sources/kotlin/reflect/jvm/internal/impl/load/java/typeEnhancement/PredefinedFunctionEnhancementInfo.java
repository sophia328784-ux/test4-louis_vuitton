package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.resolve.ReturnValueStatus;

/* JADX INFO: loaded from: classes4.dex */
public final class PredefinedFunctionEnhancementInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TypeEnhancementInfo f73169a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f73170b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f73171c;
    public final PredefinedFunctionEnhancementInfo d;

    public PredefinedFunctionEnhancementInfo(TypeEnhancementInfo typeEnhancementInfo, List<TypeEnhancementInfo> list, String str, ReturnValueStatus returnValueStatus) {
        list.getClass();
        this.f73169a = typeEnhancementInfo;
        this.f73170b = list;
        this.f73171c = str;
        PredefinedFunctionEnhancementInfo predefinedFunctionEnhancementInfo = null;
        if (str != null) {
            TypeEnhancementInfo typeEnhancementInfoA = typeEnhancementInfo != null ? typeEnhancementInfo.a() : null;
            List<TypeEnhancementInfo> list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (TypeEnhancementInfo typeEnhancementInfo2 : list2) {
                arrayList.add(typeEnhancementInfo2 != null ? typeEnhancementInfo2.a() : null);
            }
            predefinedFunctionEnhancementInfo = new PredefinedFunctionEnhancementInfo(typeEnhancementInfoA, arrayList, null, null, 8, null);
        }
        this.d = predefinedFunctionEnhancementInfo;
    }

    public PredefinedFunctionEnhancementInfo() {
        this(null, null, null, null, 15, null);
    }

    public PredefinedFunctionEnhancementInfo(TypeEnhancementInfo typeEnhancementInfo, List list, String str, ReturnValueStatus returnValueStatus, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : typeEnhancementInfo, (i2 & 2) != 0 ? EmptyList.f71768b : list, (i2 & 4) != 0 ? null : str, (i2 & 8) != 0 ? null : returnValueStatus);
    }
}
