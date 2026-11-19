package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.composer.GroupSourceInformation;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;", "Landroidx/compose/runtime/composer/GroupSourceInformation;", "", ConfigurationName.KEY, "", "sourceInformation", "dataStartOffset", "<init>", "(ILjava/lang/String;I)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GapGroupSourceInformation implements GroupSourceInformation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f8188a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f8189b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f8190c;
    public ArrayList d;

    public GapGroupSourceInformation(int i2, String str, int i3) {
        this.f8188a = i2;
        this.f8189b = str;
        this.f8190c = i3;
    }

    @Override // androidx.compose.runtime.composer.GroupSourceInformation
    /* JADX INFO: renamed from: a, reason: from getter */
    public final ArrayList getD() {
        return this.d;
    }

    @Override // androidx.compose.runtime.composer.GroupSourceInformation
    public final int b() {
        return 0;
    }

    @Override // androidx.compose.runtime.composer.GroupSourceInformation
    public final boolean c() {
        return false;
    }

    @Override // androidx.compose.runtime.composer.GroupSourceInformation
    /* JADX INFO: renamed from: d, reason: from getter */
    public final int getF8190c() {
        return this.f8190c;
    }

    @Override // androidx.compose.runtime.composer.GroupSourceInformation
    /* JADX INFO: renamed from: e, reason: from getter */
    public final String getF8189b() {
        return this.f8189b;
    }

    public final boolean f(GapAnchor gapAnchor) {
        ArrayList arrayList = this.d;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                Object obj = arrayList.get(i2);
                if (Intrinsics.c(obj, gapAnchor)) {
                    return true;
                }
                if ((obj instanceof GapGroupSourceInformation) && ((GapGroupSourceInformation) obj).f(gapAnchor)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final GapGroupSourceInformation g() {
        Object obj;
        ArrayList arrayList = this.d;
        if (arrayList == null) {
            obj = null;
            break;
        }
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                obj = null;
                break;
            }
            obj = arrayList.get(size);
            if (obj instanceof GapGroupSourceInformation) {
                break;
            }
            size--;
        }
        GapGroupSourceInformation gapGroupSourceInformation = obj instanceof GapGroupSourceInformation ? (GapGroupSourceInformation) obj : null;
        return gapGroupSourceInformation != null ? gapGroupSourceInformation.g() : this;
    }

    @Override // androidx.compose.runtime.composer.GroupSourceInformation
    /* JADX INFO: renamed from: getKey, reason: from getter */
    public final int getF8188a() {
        return this.f8188a;
    }

    public final boolean h(GapAnchor gapAnchor) {
        ArrayList arrayList = this.d;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                Object obj = arrayList.get(size);
                if (obj instanceof GapAnchor) {
                    if (obj == gapAnchor) {
                        arrayList.remove(size);
                    }
                } else if ((obj instanceof GapGroupSourceInformation) && !((GapGroupSourceInformation) obj).h(gapAnchor)) {
                    arrayList.remove(size);
                }
            }
            if (arrayList.isEmpty()) {
                this.d = null;
                return false;
            }
        }
        return true;
    }
}
