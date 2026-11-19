package defpackage;

import android.os.Parcelable;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d2 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68400b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Collection f68401c;

    public /* synthetic */ d2(Collection collection, int i2) {
        this.f68400b = i2;
        this.f68401c = collection;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean zContains;
        int i2 = this.f68400b;
        Collection<?> collection = this.f68401c;
        switch (i2) {
            case 0:
                int i3 = AbstractPersistentList.f8303c;
                zContains = collection.contains(obj);
                break;
            case 1:
                int i4 = PersistentVectorBuilder.f8307j;
                zContains = collection.contains(obj);
                break;
            default:
                Parcelable.Creator<SnapshotStateList<Object>> creator = SnapshotStateList.CREATOR;
                zContains = ((List) obj).retainAll(collection);
                break;
        }
        return Boolean.valueOf(zContains);
    }
}
