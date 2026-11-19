package org.teleal.cling.support.model;

import java.net.URI;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class DIDLObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f78569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f78570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f78571c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f78572e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public WriteStatus f78573f;
    public Class g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List f78574h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List f78575i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final List f78576j;

    public DIDLObject(String str, String str2, String str3, String str4, boolean z, WriteStatus writeStatus, Class r8, List list, List list2, List list3) {
        this.f78572e = true;
        this.f78574h = new ArrayList();
        this.f78575i = new ArrayList();
        new ArrayList();
        this.f78569a = str;
        this.f78570b = str2;
        this.f78571c = str3;
        this.d = str4;
        this.f78572e = z;
        this.f78573f = writeStatus;
        this.g = r8;
        this.f78574h = list;
        this.f78575i = list2;
        this.f78576j = list3;
    }

    public final void a(Property property) {
        this.f78575i.add(property);
    }

    public final void b(Property property) {
        Iterator it = this.f78575i.iterator();
        while (it.hasNext()) {
            if (((Property) it.next()).getClass().isAssignableFrom(property.getClass())) {
                it.remove();
            }
        }
        a(property);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.f78569a.equals(((DIDLObject) obj).f78569a);
    }

    public final int hashCode() {
        return this.f78569a.hashCode();
    }

    public static abstract class Property<V> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f78579a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f78580b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f78581c;

        public interface NAMESPACE {
        }

        public Property(Object obj, String str) {
            this.f78581c = new ArrayList();
            this.f78579a = obj;
            this.f78580b = str == null ? getClass().getSimpleName().toLowerCase() : str;
        }

        public final String toString() {
            Object obj = this.f78579a;
            return obj != null ? obj.toString() : "";
        }

        public static class PropertyPersonWithRole extends Property<PersonWithRole> {
            public PropertyPersonWithRole() {
                super((Object) null, (String) null);
            }

            public PropertyPersonWithRole(String str) {
                super((Object) null, str);
            }

            public PropertyPersonWithRole(PersonWithRole personWithRole, String str) {
                super(personWithRole, str);
            }
        }

        public Property(URI uri, List list) {
            ArrayList arrayList = new ArrayList();
            this.f78581c = arrayList;
            this.f78579a = uri;
            this.f78580b = "albumArtURI";
            arrayList.addAll(list);
        }
    }

    public static class Class {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f78577a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f78578b;

        public Class(String str, String str2) {
            this.f78577a = str;
            this.f78578b = str2;
        }

        public Class(String str) {
            this.f78577a = str;
        }

        public Class() {
        }

        public Class(String str, String str2, boolean z) {
            this.f78577a = str;
            this.f78578b = str2;
        }
    }

    public DIDLObject(DIDLObject dIDLObject) {
        this(dIDLObject.f78569a, dIDLObject.f78570b, dIDLObject.f78571c, dIDLObject.d, dIDLObject.f78572e, dIDLObject.f78573f, dIDLObject.g, dIDLObject.f78574h, dIDLObject.f78575i, dIDLObject.f78576j);
    }

    public DIDLObject() {
        this.f78572e = true;
        this.f78574h = new ArrayList();
        this.f78575i = new ArrayList();
        this.f78576j = new ArrayList();
    }
}
