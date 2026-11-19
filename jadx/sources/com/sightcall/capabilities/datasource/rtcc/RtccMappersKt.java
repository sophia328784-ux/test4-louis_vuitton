package com.sightcall.capabilities.datasource.rtcc;

import com.batch.android.s.b;
import com.sightcall.capabilities.datasource.rtcc.entities.CapabilitiesResponseEntity;
import com.sightcall.capabilities.datasource.rtcc.entities.CapabilitiesUpdateEntity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u001e\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0000\u001a,\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0002\u001a\u00020\u00032\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H\u0000¨\u0006\u000b"}, d2 = {"toCapabilitiesResponseEntity", "Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesResponseEntity;", b.a.f24015b, "", "caps", "", "Lcom/sightcall/capabilities/datasource/rtcc/RtccCapability;", "toCapabilitiesUpdateEntity", "Lcom/sightcall/capabilities/datasource/rtcc/entities/CapabilitiesUpdateEntity;", "add", "remove", "capabilities_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class RtccMappersKt {
    public static final CapabilitiesResponseEntity toCapabilitiesResponseEntity(String str, List<? extends RtccCapability> list) {
        str.getClass();
        list.getClass();
        List<? extends RtccCapability> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((RtccCapability) it.next()).getCode());
        }
        return new CapabilitiesResponseEntity(str, arrayList);
    }

    public static final CapabilitiesUpdateEntity toCapabilitiesUpdateEntity(String str, List<? extends RtccCapability> list, List<? extends RtccCapability> list2) {
        str.getClass();
        list.getClass();
        list2.getClass();
        List<? extends RtccCapability> list3 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list3, 10));
        Iterator<T> it = list3.iterator();
        while (it.hasNext()) {
            arrayList.add(((RtccCapability) it.next()).getCode());
        }
        List<? extends RtccCapability> list4 = list2;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list4, 10));
        Iterator<T> it2 = list4.iterator();
        while (it2.hasNext()) {
            arrayList2.add(((RtccCapability) it2.next()).getCode());
        }
        return new CapabilitiesUpdateEntity(str, arrayList, arrayList2);
    }
}
