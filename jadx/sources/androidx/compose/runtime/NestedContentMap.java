package androidx.compose.runtime;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectList;
import androidx.compose.runtime.collection.MultiValueMap;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/runtime/NestedContentMap;", "", "<init>", "()V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class NestedContentMap {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableScatterMap f8037a = MultiValueMap.b();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableScatterMap f8038b = MultiValueMap.b();

    public final void a(MovableContentStateReference movableContentStateReference) {
        Object objE = this.f8038b.e(movableContentStateReference);
        if (objE != null) {
            boolean z = objE instanceof MutableObjectList;
            MutableScatterMap mutableScatterMap = this.f8037a;
            if (!z) {
                MultiValueMap.d(mutableScatterMap, (MovableContent) objE, new f(movableContentStateReference, 0));
                return;
            }
            ObjectList objectList = (ObjectList) objE;
            Object[] objArr = objectList.f3345a;
            int i2 = objectList.f3346b;
            for (int i3 = 0; i3 < i2; i3++) {
                Object obj = objArr[i3];
                obj.getClass();
                MultiValueMap.d(mutableScatterMap, (MovableContent) obj, new f(movableContentStateReference, 0));
            }
        }
    }
}
