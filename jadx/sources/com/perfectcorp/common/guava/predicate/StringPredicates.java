package com.perfectcorp.common.guava.predicate;

import android.text.TextUtils;
import com.perfectcorp.thirdparty.com.google.common.base.Predicate;

/* JADX INFO: loaded from: classes3.dex */
public abstract class StringPredicates {

    public static final class a implements Predicate<String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final a f39264b = new a();

        @Override // com.perfectcorp.thirdparty.com.google.common.base.Predicate
        public final /* synthetic */ boolean apply(Object obj) {
            return !TextUtils.isEmpty((String) obj);
        }

        public final String toString() {
            return "StringPredicates.notEmpty()";
        }
    }

    public static Predicate a() {
        return a.f39264b;
    }
}
