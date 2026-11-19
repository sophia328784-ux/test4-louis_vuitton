package androidx.core.app;

import android.os.Bundle;
import defpackage.md;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class RemoteInput {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f11992a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CharSequence f11993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CharSequence[] f11994c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f11995e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Bundle f11996f;
    public final Set g;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f11997a;
        public CharSequence d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public CharSequence[] f12000e;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final HashSet f11998b = new HashSet();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Bundle f11999c = new Bundle();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f12001f = true;

        public Builder(String str) {
            if (str != null) {
                this.f11997a = str;
            } else {
                md.n("Result key can't be null");
                throw null;
            }
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface EditChoicesBeforeSending {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Source {
    }

    public RemoteInput(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, int i2, Bundle bundle, Set set) {
        this.f11992a = str;
        this.f11993b = charSequence;
        this.f11994c = charSequenceArr;
        this.d = z;
        this.f11995e = i2;
        this.f11996f = bundle;
        this.g = set;
        if (i2 != 2 || z) {
            return;
        }
        md.n("setEditChoicesBeforeSending requires setAllowFreeFormInput");
        throw null;
    }
}
