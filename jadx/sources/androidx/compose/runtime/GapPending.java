package androidx.compose.runtime;

import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.collection.MultiValueMap;
import androidx.compose.runtime.composer.GroupInfo;
import androidx.compose.runtime.composer.gapbuffer.KeyInfo;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/runtime/GapPending;", "", "", "Landroidx/compose/runtime/composer/gapbuffer/KeyInfo;", "keyInfos", "", "startIndex", "<init>", "(Ljava/util/List;I)V", "runtime"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class GapPending {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f7995a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f7996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f7997c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MutableIntObjectMap f7998e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Lazy f7999f;

    public GapPending(List<KeyInfo> list, int i2) {
        this.f7995a = list;
        this.f7996b = i2;
        if (i2 < 0) {
            PreconditionsKt.a("Invalid start index");
        }
        this.d = new ArrayList();
        MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(0, 1, null);
        int size = list.size();
        int i3 = 0;
        for (int i4 = 0; i4 < size; i4++) {
            KeyInfo keyInfo = (KeyInfo) this.f7995a.get(i4);
            int i5 = keyInfo.f8196c;
            int i6 = keyInfo.d;
            mutableIntObjectMap.i(i5, new GroupInfo(i4, i3, i6));
            i3 += i6;
        }
        this.f7998e = mutableIntObjectMap;
        this.f7999f = LazyKt.b(new Function0<MultiValueMap<Object, KeyInfo>>() { // from class: androidx.compose.runtime.GapPending$keyMap$2
            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: invoke */
            public final Object mo47invoke() {
                List list2 = this.f8000b.f7995a;
                MutableScatterMap mutableScatterMap = new MutableScatterMap(list2.size());
                int size2 = list2.size();
                for (int i7 = 0; i7 < size2; i7++) {
                    KeyInfo keyInfo2 = (KeyInfo) list2.get(i7);
                    Object obj = keyInfo2.f8195b;
                    int i8 = keyInfo2.f8194a;
                    MultiValueMap.a(mutableScatterMap, obj != null ? new JoinedKey(Integer.valueOf(i8), keyInfo2.f8195b) : Integer.valueOf(i8), keyInfo2);
                }
                return new MultiValueMap(mutableScatterMap);
            }
        });
    }

    public final boolean a(int i2, int i3) {
        GroupInfo groupInfo;
        int i4;
        int i5;
        MutableIntObjectMap mutableIntObjectMap = this.f7998e;
        GroupInfo groupInfo2 = (GroupInfo) mutableIntObjectMap.b(i2);
        if (groupInfo2 == null) {
            return false;
        }
        int i6 = groupInfo2.f8181b;
        int i7 = i3 - groupInfo2.f8182c;
        groupInfo2.f8182c = i3;
        if (i7 == 0) {
            return true;
        }
        Object[] objArr = mutableIntObjectMap.f3260c;
        long[] jArr = mutableIntObjectMap.f3258a;
        int length = jArr.length - 2;
        if (length < 0) {
            return true;
        }
        int i8 = 0;
        while (true) {
            long j2 = jArr[i8];
            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i9 = 8 - ((~(i8 - length)) >>> 31);
                for (int i10 = 0; i10 < i9; i10++) {
                    if ((255 & j2) < 128 && (i4 = (groupInfo = (GroupInfo) objArr[(i8 << 3) + i10]).f8181b) >= i6 && groupInfo != groupInfo2 && (i5 = i4 + i7) >= 0) {
                        groupInfo.f8181b = i5;
                    }
                    j2 >>= 8;
                }
                if (i9 != 8) {
                    return true;
                }
            }
            if (i8 == length) {
                return true;
            }
            i8++;
        }
    }
}
