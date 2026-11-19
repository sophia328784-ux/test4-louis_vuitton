package com.linecorp.linesdk;

import android.text.TextUtils;
import defpackage.n00;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class Scope {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f36099b = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Scope f36100c = new Scope("profile");
    public static final Scope d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Scope f36101e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f36102a;

    static {
        new Scope("friends");
        new Scope("groups");
        new Scope("message.write");
        d = new Scope("openid");
        f36101e = new Scope("email");
        new Scope("phone");
        new Scope("gender");
        new Scope("birthdate");
        new Scope("address");
        new Scope("real_name");
        new Scope("onetime.share");
        new Scope("openchat.term.agreement.status");
        new Scope("openchat.create.join");
        new Scope("openchat.info");
        new Scope("openchatplug.managament");
        new Scope("openchatplug.info");
        new Scope("openchatplug.profile");
        new Scope("openchatplug.send.message");
        new Scope("openchatplug.receive.message.and.event");
    }

    public Scope(String str) {
        this.f36102a = str;
        f36099b.put(str, this);
    }

    public static ArrayList a(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((Scope) it.next()).f36102a);
        }
        return arrayList;
    }

    public static ArrayList b(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Scope scope = (Scope) f36099b.get(str);
            if (scope != null) {
                arrayList.add(scope);
            } else {
                arrayList.add(new Scope(str));
            }
        }
        return arrayList;
    }

    public static List c(String str) {
        return TextUtils.isEmpty(str) ? Collections.EMPTY_LIST : b(Arrays.asList(str.split(" ")));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f36102a.equals(((Scope) obj).f36102a);
    }

    public final int hashCode() {
        return this.f36102a.hashCode();
    }

    public final String toString() {
        return n00.r(this.f36102a, "'}", new StringBuilder("Scope{code='"));
    }
}
