package com.kizitonwose.calendar.data;

import com.appsflyer.sdk_base.referrer.Payload;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMutableMap;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028\u00000\u0002B@\u0012\u0014\b\u0002\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00028\u00000\u0002\u0012!\u0010\t\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\u0006\u0012\b\b\u0007\u0012\u0004\b\b(\b\u0012\u0004\u0012\u00028\u00000\u0005¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/kizitonwose/calendar/data/DataStore;", "V", "", "", Payload.TYPE_STORE, "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "offset", "create", "<init>", "(Ljava/util/Map;Lkotlin/jvm/functions/Function1;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DataStore<V> implements Map<Integer, V>, KMutableMap {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map f35960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Function1 f35961c;

    public DataStore(Map<Integer, V> map, Function1<? super Integer, ? extends V> function1) {
        map.getClass();
        function1.getClass();
        this.f35960b = map;
        this.f35961c = function1;
    }

    @Override // java.util.Map
    public final void clear() {
        this.f35960b.clear();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        if (!(obj instanceof Integer)) {
            return false;
        }
        return this.f35960b.containsKey(Integer.valueOf(((Number) obj).intValue()));
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return this.f35960b.containsValue(obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        return this.f35960b.entrySet();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final Object get(Object obj) {
        if (!(obj instanceof Integer)) {
            return null;
        }
        int iIntValue = ((Number) obj).intValue();
        Integer numValueOf = Integer.valueOf(iIntValue);
        Map map = this.f35960b;
        Object obj2 = map.get(numValueOf);
        if (obj2 != null) {
            return obj2;
        }
        Object objInvoke = this.f35961c.invoke(Integer.valueOf(iIntValue));
        map.put(Integer.valueOf(iIntValue), objInvoke);
        return objInvoke;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f35960b.isEmpty();
    }

    @Override // java.util.Map
    public final Set<Integer> keySet() {
        return this.f35960b.keySet();
    }

    @Override // java.util.Map
    public final Object put(Integer num, Object obj) {
        return this.f35960b.put(Integer.valueOf(num.intValue()), obj);
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        map.getClass();
        this.f35960b.putAll(map);
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        if (!(obj instanceof Integer)) {
            return null;
        }
        return this.f35960b.remove(Integer.valueOf(((Number) obj).intValue()));
    }

    @Override // java.util.Map
    public final int size() {
        return this.f35960b.size();
    }

    @Override // java.util.Map
    public final Collection values() {
        return this.f35960b.values();
    }

    public /* synthetic */ DataStore(Map map, Function1 function1, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new HashMap() : map, function1);
    }
}
