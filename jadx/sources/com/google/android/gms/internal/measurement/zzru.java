package com.google.android.gms.internal.measurement;

import android.net.Uri;
import android.text.TextUtils;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;
import defpackage.md;
import defpackage.tr;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.regex.Matcher;

/* JADX INFO: loaded from: classes2.dex */
public final class zzru {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f30883a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashMap f30884b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList f30885c;

    public zzru(List list) {
        zztc zztcVar;
        zzsx zzsxVar;
        List<zztc> list2 = Collections.EMPTY_LIST;
        this.f30883a = new HashMap();
        this.f30884b = new HashMap();
        this.f30885c = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzsx zzsxVar2 = (zzsx) it.next();
            if (!TextUtils.isEmpty(zzsxVar2.f0()) && (zzsxVar = (zzsx) this.f30883a.put(zzsxVar2.f0(), zzsxVar2)) != null) {
                String canonicalName = zzsxVar.getClass().getCanonicalName();
                String canonicalName2 = zzsxVar2.getClass().getCanonicalName();
                md.n(tr.l(new StringBuilder(String.valueOf(canonicalName).length() + 30 + String.valueOf(canonicalName2).length()), "Cannot override Backend ", canonicalName, " with ", canonicalName2));
                throw null;
            }
        }
        for (zztc zztcVar2 : list2) {
            if (!TextUtils.isEmpty(zztcVar2.d0()) && (zztcVar = (zztc) this.f30884b.put(zztcVar2.d0(), zztcVar2)) != null) {
                String canonicalName3 = zztcVar.getClass().getCanonicalName();
                String canonicalName4 = zztcVar2.getClass().getCanonicalName();
                md.n(tr.l(new StringBuilder(String.valueOf(canonicalName3).length() + 35 + String.valueOf(canonicalName4).length()), "Cannot to override Transform ", canonicalName3, " with ", canonicalName4));
                throw null;
            }
        }
        this.f30885c.addAll(list2);
    }

    public final Object a(Uri uri, zzrt zzrtVar) {
        return zzrtVar.a(b(uri));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final zzrs b(Uri uri) throws zzsk {
        ImmutableList immutableListX;
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        ImmutableList.Builder builder2 = new ImmutableList.Builder();
        String encodedFragment = uri.getEncodedFragment();
        if (TextUtils.isEmpty(encodedFragment) || !encodedFragment.startsWith("transform=")) {
            immutableListX = ImmutableList.x();
        } else {
            String strSubstring = encodedFragment.substring(10);
            Splitter splitterB = Splitter.b("+");
            immutableListX = ImmutableList.s(new Splitter(splitterB.f33489c, true, splitterB.f33487a, splitterB.d).c(strSubstring));
        }
        int size = immutableListX.size();
        for (int i2 = 0; i2 < size; i2++) {
            String str = (String) immutableListX.get(i2);
            Matcher matcher = zzsp.f30911a.matcher(str);
            if (!matcher.matches()) {
                md.n("Invalid fragment spec: ".concat(String.valueOf(str)));
                return null;
            }
            builder2.e(matcher.group(1));
        }
        ImmutableList immutableListJ = builder2.j();
        int size2 = immutableListJ.size();
        for (int i3 = 0; i3 < size2; i3++) {
            String str2 = (String) immutableListJ.get(i3);
            zztc zztcVar = (zztc) this.f30884b.get(str2);
            if (zztcVar == null) {
                String strValueOf = String.valueOf(uri);
                throw new zzsk(tr.l(new StringBuilder(String.valueOf(str2).length() + 40 + strValueOf.length()), "Requested transform isn't registered: ", str2, ": ", strValueOf));
            }
            builder.e(zztcVar);
        }
        ImmutableList immutableListF = builder.j().F();
        zzrr zzrrVar = new zzrr();
        String scheme = uri.getScheme();
        zzsx zzsxVar = (zzsx) this.f30883a.get(scheme);
        if (zzsxVar == null) {
            throw new zzsk(tr.g("Requested backend isn't registered: ", scheme));
        }
        zzrrVar.f30876a = zzsxVar;
        zzrrVar.f30878c = this.f30885c;
        zzrrVar.f30877b = immutableListF;
        zzrrVar.d = uri;
        if (!immutableListF.isEmpty()) {
            ArrayList arrayList = new ArrayList(uri.getPathSegments());
            if (!arrayList.isEmpty() && !uri.getPath().endsWith("/")) {
                String str3 = (String) arrayList.get(arrayList.size() - 1);
                ListIterator<E> listIterator = immutableListF.listIterator(immutableListF.size());
                while (listIterator.hasPrevious()) {
                }
                arrayList.set(arrayList.size() - 1, str3);
                uri = uri.buildUpon().path(TextUtils.join("/", arrayList)).encodedFragment(null).build();
            }
        }
        zzrrVar.f30879e = uri;
        return new zzrs(zzrrVar);
    }
}
