package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.view.View;
import androidx.collection.ArraySet;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.signin.SignInOptions;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class ClientSettings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Account f29164a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set f29165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Set f29166c;
    public final Map d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final View f29167e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f29168f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SignInOptions f29169h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Integer f29170i;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Account f29171a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ArraySet f29172b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f29173c;
        public String d;
    }

    public ClientSettings(@Nullable Account account, Set set, Map map, int i2, @Nullable View view, String str, String str2, @Nullable SignInOptions signInOptions, boolean z) {
        this.f29164a = account;
        Set setUnmodifiableSet = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        this.f29165b = setUnmodifiableSet;
        map = map == null ? Collections.EMPTY_MAP : map;
        this.d = map;
        this.f29167e = view;
        this.f29168f = str;
        this.g = str2;
        this.f29169h = signInOptions == null ? SignInOptions.f32056b : signInOptions;
        HashSet hashSet = new HashSet(setUnmodifiableSet);
        Iterator it = map.values().iterator();
        while (it.hasNext()) {
            hashSet.addAll(((zae) it.next()).f29223a);
        }
        this.f29166c = Collections.unmodifiableSet(hashSet);
    }

    public ClientSettings(Account account, Set<Scope> set, Map<Api<?>, zae> map, int i2, @Nullable View view, String str, String str2, @Nullable SignInOptions signInOptions) {
        this(account, set, map, i2, view, str, str2, signInOptions, false);
    }
}
