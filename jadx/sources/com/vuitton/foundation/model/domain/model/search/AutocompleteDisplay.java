package com.vuitton.foundation.model.domain.model.search;

import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/search/AutocompleteDisplay;", "", "", "text", "", "isHighlighted", "<init>", "(Ljava/lang/String;Z)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AutocompleteDisplay {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68183a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f68184b;

    public AutocompleteDisplay(String str, boolean z) {
        str.getClass();
        this.f68183a = str;
        this.f68184b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AutocompleteDisplay)) {
            return false;
        }
        AutocompleteDisplay autocompleteDisplay = (AutocompleteDisplay) obj;
        return Intrinsics.c(this.f68183a, autocompleteDisplay.f68183a) && this.f68184b == autocompleteDisplay.f68184b;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f68184b) + (this.f68183a.hashCode() * 31);
    }

    public final String toString() {
        return d21.m("AutocompleteDisplay(text=", this.f68183a, ", isHighlighted=", ")", this.f68184b);
    }
}
