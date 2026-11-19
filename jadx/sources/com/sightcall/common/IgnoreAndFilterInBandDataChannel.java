package com.sightcall.common;

import kotlin.Metadata;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R+\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00058F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u000b\u0010\f\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/sightcall/common/IgnoreAndFilterInBandDataChannel;", "", "<init>", "()V", "<set-?>", "", "value", "getValue", "()Z", "setValue", "(Z)V", "value$delegate", "Lkotlin/properties/ReadWriteProperty;", "common_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class IgnoreAndFilterInBandDataChannel {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.f71922a.f(new MutablePropertyReference1Impl(IgnoreAndFilterInBandDataChannel.class, "value", "getValue()Z", 0))};
    public static final IgnoreAndFilterInBandDataChannel INSTANCE = new IgnoreAndFilterInBandDataChannel();

    /* JADX INFO: renamed from: value$delegate, reason: from kotlin metadata */
    private static final ReadWriteProperty value;

    static {
        Delegates.f71937a.getClass();
        value = Delegates.a();
    }

    private IgnoreAndFilterInBandDataChannel() {
    }

    public final boolean getValue() {
        return ((Boolean) value.b(this, $$delegatedProperties[0])).booleanValue();
    }

    public final void setValue(boolean z) {
        value.a(Boolean.valueOf(z), $$delegatedProperties[0]);
    }
}
