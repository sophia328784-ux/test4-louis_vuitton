package kotlin.reflect.jvm.internal.impl.km;

import defpackage.cj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KMutableProperty1;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.km.internal.BooleanFlagDelegate;
import kotlin.reflect.jvm.internal.impl.km.internal.FlagDelegatesImplKt;
import kotlin.reflect.jvm.internal.impl.km.internal.FlagImpl;
import kotlin.reflect.jvm.internal.impl.km.internal.extensions.MetadataExtensions;
import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;

/* JADX INFO: loaded from: classes4.dex */
public final class KmProperty {
    public static final /* synthetic */ KProperty[] l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f72726a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KmPropertyAccessorAttributes f72727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final KmPropertyAccessorAttributes f72728c;
    public final ArrayList d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ArrayList f72729e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ArrayList f72730f;
    public final ArrayList g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final ArrayList f72731h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f72732i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ArrayList f72733j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ArrayList f72734k;

    static {
        MutablePropertyReference1Impl mutablePropertyReference1Impl = new MutablePropertyReference1Impl(KmProperty.class, "_hasSetter", "get_hasSetter()Z", 0);
        ReflectionFactory reflectionFactory = Reflection.f71922a;
        l = new KProperty[]{reflectionFactory.f(mutablePropertyReference1Impl), cj.r(KmProperty.class, "_hasGetter", "get_hasGetter()Z", 0, reflectionFactory)};
    }

    public KmProperty(int i2, String str, int i3, int i4) {
        str.getClass();
        this.f72726a = i2;
        Flags.BooleanFlagField booleanFlagField = Flags.A;
        booleanFlagField.getClass();
        BooleanFlagDelegate booleanFlagDelegateG = FlagDelegatesImplKt.g(new FlagImpl(booleanFlagField));
        Flags.BooleanFlagField booleanFlagField2 = Flags.z;
        booleanFlagField2.getClass();
        BooleanFlagDelegate booleanFlagDelegateG2 = FlagDelegatesImplKt.g(new FlagImpl(booleanFlagField2));
        KmPropertyAccessorAttributes kmPropertyAccessorAttributes = new KmPropertyAccessorAttributes(i3);
        KProperty[] kPropertyArr = l;
        KProperty kProperty = kPropertyArr[1];
        int i5 = booleanFlagDelegateG2.f72764c;
        kProperty.getClass();
        KMutableProperty1 kMutableProperty1 = booleanFlagDelegateG2.f72762a;
        kMutableProperty1.o(this, Integer.valueOf(((Number) kMutableProperty1.get(this)).intValue() | i5));
        this.f72727b = kmPropertyAccessorAttributes;
        this.f72728c = booleanFlagDelegateG.a(this, kPropertyArr[0]) ? new KmPropertyAccessorAttributes(i4) : null;
        this.d = new ArrayList(0);
        this.f72729e = new ArrayList(0);
        new ArrayList(0);
        this.f72730f = new ArrayList();
        this.g = new ArrayList(0);
        this.f72731h = new ArrayList(0);
        this.f72732i = new ArrayList(0);
        this.f72733j = new ArrayList(0);
        MetadataExtensions.f72792a.getClass();
        List listA = MetadataExtensions.Companion.a();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(listA, 10));
        Iterator it = listA.iterator();
        while (it.hasNext()) {
            arrayList.add(((MetadataExtensions) it.next()).i());
        }
        this.f72734k = arrayList;
    }
}
